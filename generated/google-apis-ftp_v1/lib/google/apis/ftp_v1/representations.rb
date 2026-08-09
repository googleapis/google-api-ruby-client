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
    module FtpV1
      
      class AllowedConsumer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeniedConsumer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InternalServerConfig
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
      
      class ListServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class PscEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Server
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartServerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopServerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDirectoryMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedConsumer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_limit, :numeric_string => true, as: 'connectionLimit'
          property :project, as: 'project'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeniedConsumer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExternalServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_cidr_blocks, as: 'allowedCidrBlocks'
          property :ip_address, as: 'ipAddress'
        end
      end
      
      class InternalServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_accept_list, as: 'consumerAcceptList', class: Google::Apis::FtpV1::AllowedConsumer, decorator: Google::Apis::FtpV1::AllowedConsumer::Representation
      
          collection :consumer_reject_list, as: 'consumerRejectList', class: Google::Apis::FtpV1::DeniedConsumer, decorator: Google::Apis::FtpV1::DeniedConsumer::Representation
      
          collection :psc_endpoints, as: 'pscEndpoints', class: Google::Apis::FtpV1::PscEndpoint, decorator: Google::Apis::FtpV1::PscEndpoint::Representation
      
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FtpV1::Location, decorator: Google::Apis::FtpV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FtpV1::Operation, decorator: Google::Apis::FtpV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :servers, as: 'servers', class: Google::Apis::FtpV1::Server, decorator: Google::Apis::FtpV1::Server::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :users, as: 'users', class: Google::Apis::FtpV1::User, decorator: Google::Apis::FtpV1::User::Representation
      
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FtpV1::Status, decorator: Google::Apis::FtpV1::Status::Representation
      
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
      
      class PscEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :network, as: 'network'
          property :status, as: 'status'
        end
      end
      
      class Server
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :external_config, as: 'externalConfig', class: Google::Apis::FtpV1::ExternalServerConfig, decorator: Google::Apis::FtpV1::ExternalServerConfig::Representation
      
          property :google_managed_server_credential, as: 'googleManagedServerCredential', class: Google::Apis::FtpV1::ServerCredential, decorator: Google::Apis::FtpV1::ServerCredential::Representation
      
          property :internal_config, as: 'internalConfig', class: Google::Apis::FtpV1::InternalServerConfig, decorator: Google::Apis::FtpV1::InternalServerConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_agent, as: 'serviceAgent'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ServerCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asymmetric_algorithm, as: 'asymmetricAlgorithm'
          property :fingerprint, as: 'fingerprint'
        end
      end
      
      class StartServerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StopServerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StorageDirectoryMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :bucket_prefix, as: 'bucketPrefix'
          property :directory, as: 'directory'
          property :permission, as: 'permission'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :customer_service_account, as: 'customerServiceAccount'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          collection :storage_directory_mappings, as: 'storageDirectoryMappings', class: Google::Apis::FtpV1::StorageDirectoryMapping, decorator: Google::Apis::FtpV1::StorageDirectoryMapping::Representation
      
          property :update_time, as: 'updateTime'
          collection :user_credentials, as: 'userCredentials', class: Google::Apis::FtpV1::UserCredential, decorator: Google::Apis::FtpV1::UserCredential::Representation
      
          property :username, as: 'username'
        end
      end
      
      class UserCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential_name, as: 'credentialName'
          property :credential_type, as: 'credentialType'
          property :ssh_public_key_body, as: 'sshPublicKeyBody'
        end
      end
    end
  end
end
