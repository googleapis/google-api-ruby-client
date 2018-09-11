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
    module FileV1beta1
      
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
      
      # The sets of network addresses and DNS names for hosts to which a given
      # export or share should be allowed or denied.
      class ClientList
        include Google::Apis::Core::Hashable
      
        # DNS names of hosts, with optional wildcards.
        # Corresponds to the JSON property `hostNames`
        # @return [Array<String>]
        attr_accessor :host_names
      
        # IPv4 addresses in the format
        # `octet 1`.`octet 2`.`octet 3`.`octet 4`.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_names = args[:host_names] if args.key?(:host_names)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
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
      
      # File share export specification.
      class Export
        include Google::Apis::Core::Hashable
      
        # The sets of network addresses and DNS names for hosts to which a given
        # export or share should be allowed or denied.
        # Corresponds to the JSON property `allowedClients`
        # @return [Google::Apis::FileV1beta1::ClientList]
        attr_accessor :allowed_clients
      
        # Writes may be completed when not yet on stable storage.
        # Corresponds to the JSON property `async`
        # @return [Boolean]
        attr_accessor :async
        alias_method :async?, :async
      
        # The sets of network addresses and DNS names for hosts to which a given
        # export or share should be allowed or denied.
        # Corresponds to the JSON property `deniedClients`
        # @return [Google::Apis::FileV1beta1::ClientList]
        attr_accessor :denied_clients
      
        # Networks on which the export should appear.
        # If none are specified, the default is all networks to which the instance is
        # connected to.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::FileV1beta1::NetworkConfig>]
        attr_accessor :networks
      
        # NfsExport specifies attributes of a given NFS export rule.
        # Corresponds to the JSON property `nfsExport`
        # @return [Google::Apis::FileV1beta1::NfsExport]
        attr_accessor :nfs_export
      
        # Path to export (either "" or of the form /file_share_name[/subdir]).
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Whether the file share should be exported as read-only.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # SmbExport defines attributes of a given SMB sharing rule.
        # Corresponds to the JSON property `smbExport`
        # @return [Google::Apis::FileV1beta1::SmbExport]
        attr_accessor :smb_export
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_clients = args[:allowed_clients] if args.key?(:allowed_clients)
          @async = args[:async] if args.key?(:async)
          @denied_clients = args[:denied_clients] if args.key?(:denied_clients)
          @networks = args[:networks] if args.key?(:networks)
          @nfs_export = args[:nfs_export] if args.key?(:nfs_export)
          @path = args[:path] if args.key?(:path)
          @read_only = args[:read_only] if args.key?(:read_only)
          @smb_export = args[:smb_export] if args.key?(:smb_export)
        end
      end
      
      # File share configuration for the instance.
      class FileShareConfig
        include Google::Apis::Core::Hashable
      
        # File share capacity in gigabytes (GB).
        # Cloud Filestore defines 1 GB as 1024^3 bytes.
        # Corresponds to the JSON property `capacityGb`
        # @return [Fixnum]
        attr_accessor :capacity_gb
      
        # Delete requested. The file share will be deleted.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Service enabled.
        # When enabled, the instance exposes the exports to the user for mounting.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Exports.
        # If protocols and exports are both zero-length, a default protocol of
        # NFSV3 and a default export of "*" are provided, and enabled is set to
        # true.
        # Corresponds to the JSON property `exports`
        # @return [Array<Google::Apis::FileV1beta1::Export>]
        attr_accessor :exports
      
        # The name of the file share (must be 16 characters or less).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Protocols supported.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_gb = args[:capacity_gb] if args.key?(:capacity_gb)
          @deleted = args[:deleted] if args.key?(:deleted)
          @enabled = args[:enabled] if args.key?(:enabled)
          @exports = args[:exports] if args.key?(:exports)
          @name = args[:name] if args.key?(:name)
          @protocols = args[:protocols] if args.key?(:protocols)
        end
      end
      
      # A Cloud Filestore instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only.
        # The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of the instance (2048 characters or less).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Server-specified ETag for the instance resource to prevent simultaneous
        # updates from overwriting each other.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # File system shares on the instance.
        # For this version, only a single file share is supported.
        # Corresponds to the JSON property `fileShares`
        # @return [Array<Google::Apis::FileV1beta1::FileShareConfig>]
        attr_accessor :file_shares
      
        # Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The logging service the instance should use to write logs.
        # Currently available options:
        # * `logging.googleapis.com` - the Google Cloud Logging service.
        # * `none` - no logs will be exported from the instance.
        # * if left as an empty string,`logging.googleapis.com` will be used.
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # The monitoring service the instance should use to write metrics.
        # Currently available options:
        # * `monitoring.googleapis.com` - the Google Cloud Monitoring service.
        # * `none` - no metrics will be exported from the instance.
        # * if left as an empty string, `monitoring.googleapis.com` will be used.
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        # Output only.
        # The resource name of the instance, in the format
        # projects/`project_id`/locations/`location_id`/instances/`instance_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # VPC networks to which the instance is connected.
        # For this version, only a single network is supported.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::FileV1beta1::NetworkConfig>]
        attr_accessor :networks
      
        # Output only.
        # The instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only.
        # Additional information about the instance state, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # The service tier of the instance.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @file_shares = args[:file_shares] if args.key?(:file_shares)
          @labels = args[:labels] if args.key?(:labels)
          @logging_service = args[:logging_service] if args.key?(:logging_service)
          @monitoring_service = args[:monitoring_service] if args.key?(:monitoring_service)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # ListInstancesResponse is the result of ListInstancesRequest.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of instances in the project for the specified location.
        # If the `location` value in the request is "-", the response contains a list
        # of instances from all locations. If any location is unreachable, the
        # response will only return instances in reachable locations and the
        # "unreachable" field will be populated with a list of unreachable locations.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::FileV1beta1::Instance>]
        attr_accessor :instances
      
        # The token you can use to retrieve the next page of results. Not returned
        # if there are no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FileV1beta1::Location>]
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
        # @return [Array<Google::Apis::FileV1beta1::Operation>]
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
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
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
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
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
      
      # Network configuration for the instance.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Output only.
        # IPv4 addresses in the format
        # `octet 1`.`octet 2`.`octet 3`.`octet 4` or IPv6 addresses in the format
        # `block 1`:`block 2`:`block 3`:`block 4`:`block 5`:`block 6`:`block 7`:`block 8`
        # .
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # Internet protocol versions for which the instance has IP addresses
        # assigned. For this version, only MODE_IPV4 is supported.
        # Corresponds to the JSON property `modes`
        # @return [Array<String>]
        attr_accessor :modes
      
        # The name of the Google Compute Engine
        # [VPC network](/compute/docs/networks-and-firewalls#networks) to which the
        # instance is connected.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # A /29 CIDR block in one of the
        # [internal IP address ranges](https://www.arin.net/knowledge/address_filters.
        # html)
        # that identifies the range of IP addresses reserved for this
        # instance. For example, 10.0.0.0/29 or 192.168.0.0/29. The range you specify
        # can't overlap with either existing subnets or assigned IP address ranges
        # for other Cloud Filestore instances in the selected VPC network.
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        # Output only.
        # The name of the Google Compute Engine
        # [subnetwork](/compute/docs/subnetworks) to which the
        # instance is connected.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @modes = args[:modes] if args.key?(:modes)
          @network = args[:network] if args.key?(:network)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # NfsExport specifies attributes of a given NFS export rule.
      class NfsExport
        include Google::Apis::Core::Hashable
      
        # GID for anonymous or squashed GIDs.
        # Corresponds to the JSON property `anonymousGid`
        # @return [Fixnum]
        attr_accessor :anonymous_gid
      
        # UID for anonymous or squashed UIDs.
        # Corresponds to the JSON property `anonymousUid`
        # @return [Fixnum]
        attr_accessor :anonymous_uid
      
        # Network transport protocols to be enabled.
        # The default is TCP.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # The mode of mapping of UIDs and GIDs (if any).
        # Corresponds to the JSON property `squash`
        # @return [String]
        attr_accessor :squash
      
        # If unauthenticated_locks_allowed is true, locking requests do not require
        # authentication.
        # Corresponds to the JSON property `unauthenticatedLocksAllowed`
        # @return [Boolean]
        attr_accessor :unauthenticated_locks_allowed
        alias_method :unauthenticated_locks_allowed?, :unauthenticated_locks_allowed
      
        # If user_ports_allowed is true, client ports greater than or equal to 1024
        # are allowed.
        # Corresponds to the JSON property `userPortsAllowed`
        # @return [Boolean]
        attr_accessor :user_ports_allowed
        alias_method :user_ports_allowed?, :user_ports_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anonymous_gid = args[:anonymous_gid] if args.key?(:anonymous_gid)
          @anonymous_uid = args[:anonymous_uid] if args.key?(:anonymous_uid)
          @protocols = args[:protocols] if args.key?(:protocols)
          @squash = args[:squash] if args.key?(:squash)
          @unauthenticated_locks_allowed = args[:unauthenticated_locks_allowed] if args.key?(:unauthenticated_locks_allowed)
          @user_ports_allowed = args[:user_ports_allowed] if args.key?(:user_ports_allowed)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
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
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FileV1beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
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
      
        # [Output only] API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # [Output only] Identifies whether the user has requested cancellation
        # of the operation. Operations that have successfully been cancelled
        # have Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # [Output only] The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # [Output only] The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output only] Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # [Output only] Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # [Output only] Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # SmbExport defines attributes of a given SMB sharing rule.
      class SmbExport
        include Google::Apis::Core::Hashable
      
        # If true, allow clients to see this share when browsing the instance for
        # shares.
        # Corresponds to the JSON property `browsable`
        # @return [Boolean]
        attr_accessor :browsable
        alias_method :browsable?, :browsable
      
        # The published name of the share (if different from name).
        # Corresponds to the JSON property `fileShare`
        # @return [String]
        attr_accessor :file_share
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browsable = args[:browsable] if args.key?(:browsable)
          @file_share = args[:file_share] if args.key?(:file_share)
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
    end
  end
end
