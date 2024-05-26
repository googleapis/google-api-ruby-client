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
    module DeveloperconnectV1
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitHubInstallationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitRefsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchLinkableGitRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitRepositoryLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Installation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkableGitRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGitRepositoryLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :disabled, as: 'disabled'
          property :etag, as: 'etag'
          property :github_config, as: 'githubConfig', class: Google::Apis::DeveloperconnectV1::GitHubConfig, decorator: Google::Apis::DeveloperconnectV1::GitHubConfig::Representation
      
          property :installation_state, as: 'installationState', class: Google::Apis::DeveloperconnectV1::InstallationState, decorator: Google::Apis::DeveloperconnectV1::InstallationState::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchGitHubInstallationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :installations, as: 'installations', class: Google::Apis::DeveloperconnectV1::Installation, decorator: Google::Apis::DeveloperconnectV1::Installation::Representation
      
        end
      end
      
      class FetchGitRefsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ref_names, as: 'refNames'
        end
      end
      
      class FetchLinkableGitRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :linkable_git_repositories, as: 'linkableGitRepositories', class: Google::Apis::DeveloperconnectV1::LinkableGitRepository, decorator: Google::Apis::DeveloperconnectV1::LinkableGitRepository::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FetchReadTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :git_username, as: 'gitUsername'
          property :token, as: 'token'
        end
      end
      
      class FetchReadWriteTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadWriteTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :git_username, as: 'gitUsername'
          property :token, as: 'token'
        end
      end
      
      class GitHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_installation_id, :numeric_string => true, as: 'appInstallationId'
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::OAuthCredential, decorator: Google::Apis::DeveloperconnectV1::OAuthCredential::Representation
      
          property :github_app, as: 'githubApp'
          property :installation_uri, as: 'installationUri'
        end
      end
      
      class GitRepositoryLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :clone_uri, as: 'cloneUri'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Installation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class InstallationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_uri, as: 'actionUri'
          property :message, as: 'message'
          property :stage, as: 'stage'
        end
      end
      
      class LinkableGitRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clone_uri, as: 'cloneUri'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::DeveloperconnectV1::Connection, decorator: Google::Apis::DeveloperconnectV1::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGitRepositoryLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :git_repository_links, as: 'gitRepositoryLinks', class: Google::Apis::DeveloperconnectV1::GitRepositoryLink, decorator: Google::Apis::DeveloperconnectV1::GitRepositoryLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DeveloperconnectV1::Location, decorator: Google::Apis::DeveloperconnectV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeveloperconnectV1::Operation, decorator: Google::Apis::DeveloperconnectV1::Operation::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class OAuthCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_token_secret_version, as: 'oauthTokenSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DeveloperconnectV1::Status, decorator: Google::Apis::DeveloperconnectV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
