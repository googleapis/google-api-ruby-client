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
      
      # A consumer project or network that is permitted to connect to the server via
      # PSC.
      class AllowedConsumer
        include Google::Apis::Core::Hashable
      
        # Required. The connection limit for the consumer. Value must be greater than 0.
        # Corresponds to the JSON property `connectionLimit`
        # @return [Fixnum]
        attr_accessor :connection_limit
      
        # The project ID or number of the consumer project. Must be in the format: `
        # projects/`project``.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_limit = args[:connection_limit] if args.key?(:connection_limit)
          @project = args[:project] if args.key?(:project)
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
      
      # A consumer project or network that is denied to connect to the server via PSC.
      class DeniedConsumer
        include Google::Apis::Core::Hashable
      
        # The project ID or number of the consumer project. Must be in the format: `
        # projects/`project``.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project = args[:project] if args.key?(:project)
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
      
      # Configuration for external server.
      class ExternalServerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List of CIDR blocks that are allowed to access the Server. A CIDR
        # range consists of an IP Address and a prefix length to construct the subnet
        # mask. By default, the prefix length is 32 (i.e. matches a single IP address).
        # For now, only IPV4 addresses are supported. Examples: "203.0.113.0/24" -
        # matches with the IP addresses in the range 203.0.113.0 - 203.0.113.255. "0.0.0.
        # 0/0" - matches against any IP address. This field must contain at least one
        # entry if the access type is EXTERNAL. The number of allowed CIDR blocks cannot
        # exceed 500. Example: 192.168.0.0/16
        # Corresponds to the JSON property `allowedCidrBlocks`
        # @return [Array<String>]
        attr_accessor :allowed_cidr_blocks
      
        # Output only. IP address of the LB via which clients will connect.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_cidr_blocks = args[:allowed_cidr_blocks] if args.key?(:allowed_cidr_blocks)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
        end
      end
      
      # Configuration for private server accessible via PSC.
      class InternalServerConfig
        include Google::Apis::Core::Hashable
      
        # Required. A list of projects that are permitted to connect. At least one
        # project is required in the allow list.
        # Corresponds to the JSON property `consumerAcceptList`
        # @return [Array<Google::Apis::FtpV1::AllowedConsumer>]
        attr_accessor :consumer_accept_list
      
        # Optional. A list of projects that are denied connection. Format: "projects/
        # sample_project_id" or "projects/1234567890" Projects in this list will be
        # denied access, even if they are included in the `allow_list`. If this list is
        # empty, no projects are explicitly rejected.
        # Corresponds to the JSON property `consumerRejectList`
        # @return [Array<Google::Apis::FtpV1::DeniedConsumer>]
        attr_accessor :consumer_reject_list
      
        # Output only. Details of endpoints created by the customer.
        # Corresponds to the JSON property `pscEndpoints`
        # @return [Array<Google::Apis::FtpV1::PscEndpoint>]
        attr_accessor :psc_endpoints
      
        # Output only. The resource name of the service attachment. Format: `projects/`
        # project`/regions/`region`/serviceAttachments/`service_attachment``
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_accept_list = args[:consumer_accept_list] if args.key?(:consumer_accept_list)
          @consumer_reject_list = args[:consumer_reject_list] if args.key?(:consumer_reject_list)
          @psc_endpoints = args[:psc_endpoints] if args.key?(:psc_endpoints)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FtpV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
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
        # @return [Array<Google::Apis::FtpV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Servers
      class ListServersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Server
        # Corresponds to the JSON property `servers`
        # @return [Array<Google::Apis::FtpV1::Server>]
        attr_accessor :servers
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @servers = args[:servers] if args.key?(:servers)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Users
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the user should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of User
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::FtpV1::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
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
        # @return [Google::Apis::FtpV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Details of PSC endpoint created by customer.
      class PscEndpoint
        include Google::Apis::Core::Hashable
      
        # Output only. This is a Resource name for Private Service Connect endpoint.
        # Format: `projects/`project`/regions/`region`/forwardingRules/`forwarding_rule``
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Output only. The consumer network. Format: `projects/`project`/locations/`
        # location`/networks/`network``
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The status of the connected endpoint.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @network = args[:network] if args.key?(:network)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Message describing Server object
      class Server
        include Google::Apis::Core::Hashable
      
        # Required. The access type of the Server.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Display name of the Server
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configuration for external server.
        # Corresponds to the JSON property `externalConfig`
        # @return [Google::Apis::FtpV1::ExternalServerConfig]
        attr_accessor :external_config
      
        # Represents credentials of an FTP Server.
        # Corresponds to the JSON property `googleManagedServerCredential`
        # @return [Google::Apis::FtpV1::ServerCredential]
        attr_accessor :google_managed_server_credential
      
        # Configuration for private server accessible via PSC.
        # Corresponds to the JSON property `internalConfig`
        # @return [Google::Apis::FtpV1::InternalServerConfig]
        attr_accessor :internal_config
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Service agent used to access the customer bucket.
        # Corresponds to the JSON property `serviceAgent`
        # @return [String]
        attr_accessor :service_agent
      
        # Output only. The state of the server.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @external_config = args[:external_config] if args.key?(:external_config)
          @google_managed_server_credential = args[:google_managed_server_credential] if args.key?(:google_managed_server_credential)
          @internal_config = args[:internal_config] if args.key?(:internal_config)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service_agent = args[:service_agent] if args.key?(:service_agent)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents credentials of an FTP Server.
      class ServerCredential
        include Google::Apis::Core::Hashable
      
        # Output only. Asymmetric algorithm used by the public key. Possible values (can
        # be expanded in future): - ssh-ed25519
        # Corresponds to the JSON property `asymmetricAlgorithm`
        # @return [String]
        attr_accessor :asymmetric_algorithm
      
        # Output only. The fingerprint is a hash of the public key, and is displayed
        # when clients access the server for the first time to verify the server's
        # identity.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asymmetric_algorithm = args[:asymmetric_algorithm] if args.key?(:asymmetric_algorithm)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
        end
      end
      
      # Request message for starting a Server.
      class StartServerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request message for stopping a Server.
      class StopServerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Mapping of backing Cloud Storage path to the directory where the user lands in
      # the SFTP server. If directory is not specified, it'll default to '/'. Eg 1 - (
      # bucket_name: bucket, bucket_prefix: path1/path2, directory: /abc/def/username)
      # The user will land at /abcd/def/username, and the view there will match that
      # of /bucket/path1/path2. The user will not be aware of Cloud Storage prefix '/
      # bucket/path1' and there will be no such directory in the view. Eg 2 - (
      # bucket_name: bucket, bucket_prefix: path1/path2, directory: '') The user will
      # land at '/', and the view there will match that of /bucket/path1/path2. The
      # user will not be aware of Cloud Storage prefix '/bucket/path1/path2' and there
      # will be no such directory in the view.
      class StorageDirectoryMapping
        include Google::Apis::Core::Hashable
      
        # Required. Name of the bucket.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. Prefix inside the bucket.
        # Corresponds to the JSON property `bucketPrefix`
        # @return [String]
        attr_accessor :bucket_prefix
      
        # Required. Directory where the user lands in the SFTP server.
        # Corresponds to the JSON property `directory`
        # @return [String]
        attr_accessor :directory
      
        # Required. Permission to the bucket.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @bucket_prefix = args[:bucket_prefix] if args.key?(:bucket_prefix)
          @directory = args[:directory] if args.key?(:directory)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Message describing User object
      class User
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Service account in customer project attached to this SFTP User.
        # Corresponds to the JSON property `customerServiceAccount`
        # @return [String]
        attr_accessor :customer_service_account
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. User-friendly name via which User will be identified. projects/`
        # project`/locations/`location`/servers/`server`/users/`user`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Tracks user creation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Mapping of Cloud Storage buckets to directories where the user will
        # land in the SFTP server.
        # Corresponds to the JSON property `storageDirectoryMappings`
        # @return [Array<Google::Apis::FtpV1::StorageDirectoryMapping>]
        attr_accessor :storage_directory_mappings
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. User credential for the user. The maximum number of user credentials
        # is 10.
        # Corresponds to the JSON property `userCredentials`
        # @return [Array<Google::Apis::FtpV1::UserCredential>]
        attr_accessor :user_credentials
      
        # Output only. [Output only] The username of the user.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_service_account = args[:customer_service_account] if args.key?(:customer_service_account)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @storage_directory_mappings = args[:storage_directory_mappings] if args.key?(:storage_directory_mappings)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_credentials = args[:user_credentials] if args.key?(:user_credentials)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Message describing UserCredential object
      class UserCredential
        include Google::Apis::Core::Hashable
      
        # Required. Name of the user credential.
        # Corresponds to the JSON property `credentialName`
        # @return [String]
        attr_accessor :credential_name
      
        # Required. Type of credential.
        # Corresponds to the JSON property `credentialType`
        # @return [String]
        attr_accessor :credential_type
      
        # Optional. SSH public key body in OpenSSH format. Example: "ssh-rsa
        # AAAAB3NzaC1yc2EAAAADAQABAAABAQ..."
        # Corresponds to the JSON property `sshPublicKeyBody`
        # @return [String]
        attr_accessor :ssh_public_key_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credential_name = args[:credential_name] if args.key?(:credential_name)
          @credential_type = args[:credential_type] if args.key?(:credential_type)
          @ssh_public_key_body = args[:ssh_public_key_body] if args.key?(:ssh_public_key_body)
        end
      end
    end
  end
end
