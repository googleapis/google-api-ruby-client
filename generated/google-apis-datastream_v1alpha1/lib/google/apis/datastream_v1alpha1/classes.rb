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
    module DatastreamV1alpha1
      
      # AVRO file format configuration.
      class AvroFileFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Backfill strategy to automatically backfill the Stream's objects. Specific
      # objects can be excluded.
      class BackfillAllStrategy
        include Google::Apis::Core::Hashable
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlExcludedObjects`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlRdbms]
        attr_accessor :mysql_excluded_objects
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleExcludedObjects`
        # @return [Google::Apis::DatastreamV1alpha1::OracleRdbms]
        attr_accessor :oracle_excluded_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_excluded_objects = args[:mysql_excluded_objects] if args.key?(:mysql_excluded_objects)
          @oracle_excluded_objects = args[:oracle_excluded_objects] if args.key?(:oracle_excluded_objects)
        end
      end
      
      # Represents a backfill job on a specific stream object.
      class BackfillJob
        include Google::Apis::Core::Hashable
      
        # Output only. Errors which caused the backfill job to fail.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Error>]
        attr_accessor :errors
      
        # Output only. Backfill job's end time.
        # Corresponds to the JSON property `lastEndTime`
        # @return [String]
        attr_accessor :last_end_time
      
        # Output only. Backfill job's start time.
        # Corresponds to the JSON property `lastStartTime`
        # @return [String]
        attr_accessor :last_start_time
      
        # Backfill job state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Backfill job's triggering reason.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @last_end_time = args[:last_end_time] if args.key?(:last_end_time)
          @last_start_time = args[:last_start_time] if args.key?(:last_start_time)
          @state = args[:state] if args.key?(:state)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Backfill strategy to disable automatic backfill for the Stream's objects.
      class BackfillNoneStrategy
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # 
      class ConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Forward SSH Tunnel connectivity.
        # Corresponds to the JSON property `forwardSshConnectivity`
        # @return [Google::Apis::DatastreamV1alpha1::ForwardSshTunnelConnectivity]
        attr_accessor :forward_ssh_connectivity
      
        # Cloud Storage bucket profile.
        # Corresponds to the JSON property `gcsProfile`
        # @return [Google::Apis::DatastreamV1alpha1::GcsProfile]
        attr_accessor :gcs_profile
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MySQL database profile.
        # Corresponds to the JSON property `mysqlProfile`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlProfile]
        attr_accessor :mysql_profile
      
        # Output only. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # No connectivity settings.
        # Corresponds to the JSON property `noConnectivity`
        # @return [Google::Apis::DatastreamV1alpha1::NoConnectivitySettings]
        attr_accessor :no_connectivity
      
        # Oracle database profile.
        # Corresponds to the JSON property `oracleProfile`
        # @return [Google::Apis::DatastreamV1alpha1::OracleProfile]
        attr_accessor :oracle_profile
      
        # Private Connectivity
        # Corresponds to the JSON property `privateConnectivity`
        # @return [Google::Apis::DatastreamV1alpha1::PrivateConnectivity]
        attr_accessor :private_connectivity
      
        # Static IP address connectivity.
        # Corresponds to the JSON property `staticServiceIpConnectivity`
        # @return [Google::Apis::DatastreamV1alpha1::StaticServiceIpConnectivity]
        attr_accessor :static_service_ip_connectivity
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @forward_ssh_connectivity = args[:forward_ssh_connectivity] if args.key?(:forward_ssh_connectivity)
          @gcs_profile = args[:gcs_profile] if args.key?(:gcs_profile)
          @labels = args[:labels] if args.key?(:labels)
          @mysql_profile = args[:mysql_profile] if args.key?(:mysql_profile)
          @name = args[:name] if args.key?(:name)
          @no_connectivity = args[:no_connectivity] if args.key?(:no_connectivity)
          @oracle_profile = args[:oracle_profile] if args.key?(:oracle_profile)
          @private_connectivity = args[:private_connectivity] if args.key?(:private_connectivity)
          @static_service_ip_connectivity = args[:static_service_ip_connectivity] if args.key?(:static_service_ip_connectivity)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The configuration of the stream destination.
      class DestinationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Destination connection profile identifier.
        # Corresponds to the JSON property `destinationConnectionProfileName`
        # @return [String]
        attr_accessor :destination_connection_profile_name
      
        # Google Cloud Storage destination configuration
        # Corresponds to the JSON property `gcsDestinationConfig`
        # @return [Google::Apis::DatastreamV1alpha1::GcsDestinationConfig]
        attr_accessor :gcs_destination_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_connection_profile_name = args[:destination_connection_profile_name] if args.key?(:destination_connection_profile_name)
          @gcs_destination_config = args[:gcs_destination_config] if args.key?(:gcs_destination_config)
        end
      end
      
      # Request message for 'discover' ConnectionProfile request.
      class DiscoverConnectionProfileRequest
        include Google::Apis::Core::Hashable
      
        # An ad-hoc ConnectionProfile configuration.
        # Corresponds to the JSON property `connectionProfile`
        # @return [Google::Apis::DatastreamV1alpha1::ConnectionProfile]
        attr_accessor :connection_profile
      
        # A reference to an existing ConnectionProfile.
        # Corresponds to the JSON property `connectionProfileName`
        # @return [String]
        attr_accessor :connection_profile_name
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlRdbms`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlRdbms]
        attr_accessor :mysql_rdbms
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleRdbms`
        # @return [Google::Apis::DatastreamV1alpha1::OracleRdbms]
        attr_accessor :oracle_rdbms
      
        # The number of hierarchy levels below the current level to be retrieved.
        # Corresponds to the JSON property `recursionDepth`
        # @return [Fixnum]
        attr_accessor :recursion_depth
      
        # Whether to retrieve the full hierarchy of data objects (TRUE) or only the
        # current level (FALSE).
        # Corresponds to the JSON property `recursive`
        # @return [Boolean]
        attr_accessor :recursive
        alias_method :recursive?, :recursive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_profile = args[:connection_profile] if args.key?(:connection_profile)
          @connection_profile_name = args[:connection_profile_name] if args.key?(:connection_profile_name)
          @mysql_rdbms = args[:mysql_rdbms] if args.key?(:mysql_rdbms)
          @oracle_rdbms = args[:oracle_rdbms] if args.key?(:oracle_rdbms)
          @recursion_depth = args[:recursion_depth] if args.key?(:recursion_depth)
          @recursive = args[:recursive] if args.key?(:recursive)
        end
      end
      
      # 
      class DiscoverConnectionProfileResponse
        include Google::Apis::Core::Hashable
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlRdbms`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlRdbms]
        attr_accessor :mysql_rdbms
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleRdbms`
        # @return [Google::Apis::DatastreamV1alpha1::OracleRdbms]
        attr_accessor :oracle_rdbms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_rdbms = args[:mysql_rdbms] if args.key?(:mysql_rdbms)
          @oracle_rdbms = args[:oracle_rdbms] if args.key?(:oracle_rdbms)
        end
      end
      
      # Configuration to drop large object values.
      class DropLargeObjects
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Represent a user-facing Error.
      class Error
        include Google::Apis::Core::Hashable
      
        # Additional information about the error.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # The time when the error occurred.
        # Corresponds to the JSON property `errorTime`
        # @return [String]
        attr_accessor :error_time
      
        # A unique identifier for this specific error, allowing it to be traced
        # throughout the system in logs and API responses.
        # Corresponds to the JSON property `errorUuid`
        # @return [String]
        attr_accessor :error_uuid
      
        # A message containing more information about the error that occurred.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A title that explains the reason for the error.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @error_time = args[:error_time] if args.key?(:error_time)
          @error_uuid = args[:error_uuid] if args.key?(:error_uuid)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Request message for 'FetchErrors' request.
      class FetchErrorsRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for a 'FetchErrors' response.
      class FetchErrorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of errors on the Stream.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Error>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Response message for a 'FetchStaticIps' response.
      class FetchStaticIpsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # list of static ips by account
        # Corresponds to the JSON property `staticIps`
        # @return [Array<String>]
        attr_accessor :static_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @static_ips = args[:static_ips] if args.key?(:static_ips)
        end
      end
      
      # Forward SSH Tunnel connectivity.
      class ForwardSshTunnelConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the SSH tunnel.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Input only. SSH password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the SSH tunnel, default value is 22.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Input only. SSH private key.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Required. Username for the SSH tunnel.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @private_key = args[:private_key] if args.key?(:private_key)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Google Cloud Storage destination configuration
      class GcsDestinationConfig
        include Google::Apis::Core::Hashable
      
        # AVRO file format configuration.
        # Corresponds to the JSON property `avroFileFormat`
        # @return [Google::Apis::DatastreamV1alpha1::AvroFileFormat]
        attr_accessor :avro_file_format
      
        # The maximum duration for which new events are added before a file is closed
        # and a new file is created.
        # Corresponds to the JSON property `fileRotationInterval`
        # @return [String]
        attr_accessor :file_rotation_interval
      
        # The maximum file size to be saved in the bucket.
        # Corresponds to the JSON property `fileRotationMb`
        # @return [Fixnum]
        attr_accessor :file_rotation_mb
      
        # File format that data should be written in. Deprecated field (b/169501737) -
        # use file_format instead.
        # Corresponds to the JSON property `gcsFileFormat`
        # @return [String]
        attr_accessor :gcs_file_format
      
        # JSON file format configuration.
        # Corresponds to the JSON property `jsonFileFormat`
        # @return [Google::Apis::DatastreamV1alpha1::JsonFileFormat]
        attr_accessor :json_file_format
      
        # Path inside the Cloud Storage bucket to write data to.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro_file_format = args[:avro_file_format] if args.key?(:avro_file_format)
          @file_rotation_interval = args[:file_rotation_interval] if args.key?(:file_rotation_interval)
          @file_rotation_mb = args[:file_rotation_mb] if args.key?(:file_rotation_mb)
          @gcs_file_format = args[:gcs_file_format] if args.key?(:gcs_file_format)
          @json_file_format = args[:json_file_format] if args.key?(:json_file_format)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Cloud Storage bucket profile.
      class GcsProfile
        include Google::Apis::Core::Hashable
      
        # Required. The full project and resource path for Cloud Storage bucket
        # including the name.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # The root path inside the Cloud Storage bucket.
        # Corresponds to the JSON property `rootPath`
        # @return [String]
        attr_accessor :root_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @root_path = args[:root_path] if args.key?(:root_path)
        end
      end
      
      # JSON file format configuration.
      class JsonFileFormat
        include Google::Apis::Core::Hashable
      
        # Compression of the loaded JSON file.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # The schema file format along JSON data files.
        # Corresponds to the JSON property `schemaFileFormat`
        # @return [String]
        attr_accessor :schema_file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression = args[:compression] if args.key?(:compression)
          @schema_file_format = args[:schema_file_format] if args.key?(:schema_file_format)
        end
      end
      
      # 
      class ListConnectionProfilesResponse
        include Google::Apis::Core::Hashable
      
        # List of connection profiles.
        # Corresponds to the JSON property `connectionProfiles`
        # @return [Array<Google::Apis::DatastreamV1alpha1::ConnectionProfile>]
        attr_accessor :connection_profiles
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @connection_profiles = args[:connection_profiles] if args.key?(:connection_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Location>]
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
        # @return [Array<Google::Apis::DatastreamV1alpha1::Operation>]
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
      
      # 
      class ListPrivateConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of private connectivity configurations.
        # Corresponds to the JSON property `privateConnections`
        # @return [Array<Google::Apis::DatastreamV1alpha1::PrivateConnection>]
        attr_accessor :private_connections
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @private_connections = args[:private_connections] if args.key?(:private_connections)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # route list response
      class ListRoutesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Routes.
        # Corresponds to the JSON property `routes`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Route>]
        attr_accessor :routes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @routes = args[:routes] if args.key?(:routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response containing the objects for a stream.
      class ListStreamObjectsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of stream objects.
        # Corresponds to the JSON property `streamObjects`
        # @return [Array<Google::Apis::DatastreamV1alpha1::StreamObject>]
        attr_accessor :stream_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @stream_objects = args[:stream_objects] if args.key?(:stream_objects)
        end
      end
      
      # 
      class ListStreamsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of streams
        # Corresponds to the JSON property `streams`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Stream>]
        attr_accessor :streams
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @streams = args[:streams] if args.key?(:streams)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # MySQL Column.
      class MysqlColumn
        include Google::Apis::Core::Hashable
      
        # Column collation.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # Column name.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        # The MySQL data type. Full data types list can be found here: https://dev.mysql.
        # com/doc/refman/8.0/en/data-types.html
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collation = args[:collation] if args.key?(:collation)
          @column_name = args[:column_name] if args.key?(:column_name)
          @data_type = args[:data_type] if args.key?(:data_type)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
        end
      end
      
      # MySQL database.
      class MysqlDatabase
        include Google::Apis::Core::Hashable
      
        # Database name.
        # Corresponds to the JSON property `databaseName`
        # @return [String]
        attr_accessor :database_name
      
        # Tables in the database.
        # Corresponds to the JSON property `mysqlTables`
        # @return [Array<Google::Apis::DatastreamV1alpha1::MysqlTable>]
        attr_accessor :mysql_tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_name = args[:database_name] if args.key?(:database_name)
          @mysql_tables = args[:mysql_tables] if args.key?(:mysql_tables)
        end
      end
      
      # Mysql data source object identifier.
      class MysqlObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # MySQL database profile.
      class MysqlProfile
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the MySQL connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Required. Input only. Password for the MySQL connection.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the MySQL connection, default value is 3306.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # MySQL SSL configuration information.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlSslConfig]
        attr_accessor :ssl_config
      
        # Required. Username for the MySQL connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # MySQL database structure
      class MysqlRdbms
        include Google::Apis::Core::Hashable
      
        # Mysql databases on the server
        # Corresponds to the JSON property `mysqlDatabases`
        # @return [Array<Google::Apis::DatastreamV1alpha1::MysqlDatabase>]
        attr_accessor :mysql_databases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_databases = args[:mysql_databases] if args.key?(:mysql_databases)
        end
      end
      
      # MySQL source configuration
      class MysqlSourceConfig
        include Google::Apis::Core::Hashable
      
        # MySQL database structure
        # Corresponds to the JSON property `allowlist`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlRdbms]
        attr_accessor :allowlist
      
        # MySQL database structure
        # Corresponds to the JSON property `rejectlist`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlRdbms]
        attr_accessor :rejectlist
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist = args[:allowlist] if args.key?(:allowlist)
          @rejectlist = args[:rejectlist] if args.key?(:rejectlist)
        end
      end
      
      # MySQL SSL configuration information.
      class MysqlSslConfig
        include Google::Apis::Core::Hashable
      
        # Input only. PEM-encoded certificate of the CA that signed the source database
        # server's certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Output only. Indicates whether the ca_certificate field is set.
        # Corresponds to the JSON property `caCertificateSet`
        # @return [Boolean]
        attr_accessor :ca_certificate_set
        alias_method :ca_certificate_set?, :ca_certificate_set
      
        # Input only. PEM-encoded certificate that will be used by the replica to
        # authenticate against the source database server. If this field is used then
        # the 'client_key' and the 'ca_certificate' fields are mandatory.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Output only. Indicates whether the client_certificate field is set.
        # Corresponds to the JSON property `clientCertificateSet`
        # @return [Boolean]
        attr_accessor :client_certificate_set
        alias_method :client_certificate_set?, :client_certificate_set
      
        # Input only. PEM-encoded private key associated with the Client Certificate. If
        # this field is used then the 'client_certificate' and the 'ca_certificate'
        # fields are mandatory.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Output only. Indicates whether the client_key field is set.
        # Corresponds to the JSON property `clientKeySet`
        # @return [Boolean]
        attr_accessor :client_key_set
        alias_method :client_key_set?, :client_key_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @ca_certificate_set = args[:ca_certificate_set] if args.key?(:ca_certificate_set)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_certificate_set = args[:client_certificate_set] if args.key?(:client_certificate_set)
          @client_key = args[:client_key] if args.key?(:client_key)
          @client_key_set = args[:client_key_set] if args.key?(:client_key_set)
        end
      end
      
      # MySQL table.
      class MysqlTable
        include Google::Apis::Core::Hashable
      
        # MySQL columns in the database. When unspecified as part of include/exclude
        # lists, includes/excludes everything.
        # Corresponds to the JSON property `mysqlColumns`
        # @return [Array<Google::Apis::DatastreamV1alpha1::MysqlColumn>]
        attr_accessor :mysql_columns
      
        # Table name.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_columns = args[:mysql_columns] if args.key?(:mysql_columns)
          @table_name = args[:table_name] if args.key?(:table_name)
        end
      end
      
      # No connectivity settings.
      class NoConnectivitySettings
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::DatastreamV1alpha1::Status]
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
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
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
      
        # Contains the current validation results.
        # Corresponds to the JSON property `validationResult`
        # @return [Google::Apis::DatastreamV1alpha1::ValidationResult]
        attr_accessor :validation_result
      
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
          @validation_result = args[:validation_result] if args.key?(:validation_result)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Oracle Column.
      class OracleColumn
        include Google::Apis::Core::Hashable
      
        # Column name.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        # The Oracle data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column encoding.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        # Column scale.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_name = args[:column_name] if args.key?(:column_name)
          @data_type = args[:data_type] if args.key?(:data_type)
          @encoding = args[:encoding] if args.key?(:encoding)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # Oracle data source object identifier.
      class OracleObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Oracle database profile.
      class OracleProfile
        include Google::Apis::Core::Hashable
      
        # Connection string attributes
        # Corresponds to the JSON property `connectionAttributes`
        # @return [Hash<String,String>]
        attr_accessor :connection_attributes
      
        # Required. Database for the Oracle connection.
        # Corresponds to the JSON property `databaseService`
        # @return [String]
        attr_accessor :database_service
      
        # Required. Hostname for the Oracle connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Required. Password for the Oracle connection.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the Oracle connection, default value is 1521.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Required. Username for the Oracle connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_attributes = args[:connection_attributes] if args.key?(:connection_attributes)
          @database_service = args[:database_service] if args.key?(:database_service)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Oracle database structure.
      class OracleRdbms
        include Google::Apis::Core::Hashable
      
        # Oracle schemas/databases in the database server.
        # Corresponds to the JSON property `oracleSchemas`
        # @return [Array<Google::Apis::DatastreamV1alpha1::OracleSchema>]
        attr_accessor :oracle_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_schemas = args[:oracle_schemas] if args.key?(:oracle_schemas)
        end
      end
      
      # Oracle schema.
      class OracleSchema
        include Google::Apis::Core::Hashable
      
        # Tables in the schema.
        # Corresponds to the JSON property `oracleTables`
        # @return [Array<Google::Apis::DatastreamV1alpha1::OracleTable>]
        attr_accessor :oracle_tables
      
        # Schema name.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_tables = args[:oracle_tables] if args.key?(:oracle_tables)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
        end
      end
      
      # Oracle data source configuration
      class OracleSourceConfig
        include Google::Apis::Core::Hashable
      
        # Oracle database structure.
        # Corresponds to the JSON property `allowlist`
        # @return [Google::Apis::DatastreamV1alpha1::OracleRdbms]
        attr_accessor :allowlist
      
        # Configuration to drop large object values.
        # Corresponds to the JSON property `dropLargeObjects`
        # @return [Google::Apis::DatastreamV1alpha1::DropLargeObjects]
        attr_accessor :drop_large_objects
      
        # Oracle database structure.
        # Corresponds to the JSON property `rejectlist`
        # @return [Google::Apis::DatastreamV1alpha1::OracleRdbms]
        attr_accessor :rejectlist
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlist = args[:allowlist] if args.key?(:allowlist)
          @drop_large_objects = args[:drop_large_objects] if args.key?(:drop_large_objects)
          @rejectlist = args[:rejectlist] if args.key?(:rejectlist)
        end
      end
      
      # Oracle table.
      class OracleTable
        include Google::Apis::Core::Hashable
      
        # Oracle columns in the schema. When unspecified as part of inclue/exclude lists,
        # includes/excludes everything.
        # Corresponds to the JSON property `oracleColumns`
        # @return [Array<Google::Apis::DatastreamV1alpha1::OracleColumn>]
        attr_accessor :oracle_columns
      
        # Table name.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_columns = args[:oracle_columns] if args.key?(:oracle_columns)
          @table_name = args[:table_name] if args.key?(:table_name)
        end
      end
      
      # The PrivateConnection resource is used to establish private connectivity
      # between Datastream and a customer's network.
      class PrivateConnection
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represent a user-facing Error.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatastreamV1alpha1::Error]
        attr_accessor :error
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the Private Connection.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The VPC Peering configuration is used to create VPC peering between Datastream
        # and the consumer's VPC.
        # Corresponds to the JSON property `vpcPeeringConfig`
        # @return [Google::Apis::DatastreamV1alpha1::VpcPeeringConfig]
        attr_accessor :vpc_peering_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpc_peering_config = args[:vpc_peering_config] if args.key?(:vpc_peering_config)
        end
      end
      
      # Private Connectivity
      class PrivateConnectivity
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `privateConnectionName`
        # @return [String]
        attr_accessor :private_connection_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_connection_name = args[:private_connection_name] if args.key?(:private_connection_name)
        end
      end
      
      # The Route resource is the child of the PrivateConnection resource. It used to
      # define a route for a PrivateConnection setup.
      class Route
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Destination address for connection
        # Corresponds to the JSON property `destinationAddress`
        # @return [String]
        attr_accessor :destination_address
      
        # Destination port for connection
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_address = args[:destination_address] if args.key?(:destination_address)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The configuration of the stream source.
      class SourceConfig
        include Google::Apis::Core::Hashable
      
        # MySQL source configuration
        # Corresponds to the JSON property `mysqlSourceConfig`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlSourceConfig]
        attr_accessor :mysql_source_config
      
        # Oracle data source configuration
        # Corresponds to the JSON property `oracleSourceConfig`
        # @return [Google::Apis::DatastreamV1alpha1::OracleSourceConfig]
        attr_accessor :oracle_source_config
      
        # Required. Source connection profile identifier.
        # Corresponds to the JSON property `sourceConnectionProfileName`
        # @return [String]
        attr_accessor :source_connection_profile_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_source_config = args[:mysql_source_config] if args.key?(:mysql_source_config)
          @oracle_source_config = args[:oracle_source_config] if args.key?(:oracle_source_config)
          @source_connection_profile_name = args[:source_connection_profile_name] if args.key?(:source_connection_profile_name)
        end
      end
      
      # Represents an identifier of an object in the data source.
      class SourceObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Mysql data source object identifier.
        # Corresponds to the JSON property `mysqlIdentifier`
        # @return [Google::Apis::DatastreamV1alpha1::MysqlObjectIdentifier]
        attr_accessor :mysql_identifier
      
        # Oracle data source object identifier.
        # Corresponds to the JSON property `oracleIdentifier`
        # @return [Google::Apis::DatastreamV1alpha1::OracleObjectIdentifier]
        attr_accessor :oracle_identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_identifier = args[:mysql_identifier] if args.key?(:mysql_identifier)
          @oracle_identifier = args[:oracle_identifier] if args.key?(:oracle_identifier)
        end
      end
      
      # Response for manually initiating a backfill job for a specific stream object.
      class StartBackfillJobResponse
        include Google::Apis::Core::Hashable
      
        # A specific stream object (e.g a specific DB table).
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::DatastreamV1alpha1::StreamObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Static IP address connectivity.
      class StaticServiceIpConnectivity
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
      
      # Response for manually stop a backfill job for a specific stream object.
      class StopBackfillJobResponse
        include Google::Apis::Core::Hashable
      
        # A specific stream object (e.g a specific DB table).
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::DatastreamV1alpha1::StreamObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # 
      class Stream
        include Google::Apis::Core::Hashable
      
        # Backfill strategy to automatically backfill the Stream's objects. Specific
        # objects can be excluded.
        # Corresponds to the JSON property `backfillAll`
        # @return [Google::Apis::DatastreamV1alpha1::BackfillAllStrategy]
        attr_accessor :backfill_all
      
        # Backfill strategy to disable automatic backfill for the Stream's objects.
        # Corresponds to the JSON property `backfillNone`
        # @return [Google::Apis::DatastreamV1alpha1::BackfillNoneStrategy]
        attr_accessor :backfill_none
      
        # Output only. The creation time of the stream.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. A reference to a KMS encryption key. If provided, it will be used
        # to encrypt the data. If left blank, data will be encrypted using an internal
        # Stream-specific encryption key provisioned through KMS.
        # Corresponds to the JSON property `customerManagedEncryptionKey`
        # @return [String]
        attr_accessor :customer_managed_encryption_key
      
        # The configuration of the stream destination.
        # Corresponds to the JSON property `destinationConfig`
        # @return [Google::Apis::DatastreamV1alpha1::DestinationConfig]
        attr_accessor :destination_config
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Errors on the Stream.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Error>]
        attr_accessor :errors
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The stream's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The configuration of the stream source.
        # Corresponds to the JSON property `sourceConfig`
        # @return [Google::Apis::DatastreamV1alpha1::SourceConfig]
        attr_accessor :source_config
      
        # The state of the stream.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last update time of the stream.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backfill_all = args[:backfill_all] if args.key?(:backfill_all)
          @backfill_none = args[:backfill_none] if args.key?(:backfill_none)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_managed_encryption_key = args[:customer_managed_encryption_key] if args.key?(:customer_managed_encryption_key)
          @destination_config = args[:destination_config] if args.key?(:destination_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @source_config = args[:source_config] if args.key?(:source_config)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A specific stream object (e.g a specific DB table).
      class StreamObject
        include Google::Apis::Core::Hashable
      
        # Represents a backfill job on a specific stream object.
        # Corresponds to the JSON property `backfillJob`
        # @return [Google::Apis::DatastreamV1alpha1::BackfillJob]
        attr_accessor :backfill_job
      
        # Output only. The creation time of the object.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Active errors on the object.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Error>]
        attr_accessor :errors
      
        # Output only. The object's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an identifier of an object in the data source.
        # Corresponds to the JSON property `sourceObject`
        # @return [Google::Apis::DatastreamV1alpha1::SourceObjectIdentifier]
        attr_accessor :source_object
      
        # Output only. The last update time of the object.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backfill_job = args[:backfill_job] if args.key?(:backfill_job)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @name = args[:name] if args.key?(:name)
          @source_object = args[:source_object] if args.key?(:source_object)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class Validation
        include Google::Apis::Core::Hashable
      
        # A custom code identifying this validation.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short description of the validation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Messages reflecting the validation results.
        # Corresponds to the JSON property `message`
        # @return [Array<Google::Apis::DatastreamV1alpha1::ValidationMessage>]
        attr_accessor :message
      
        # Validation execution status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @message = args[:message] if args.key?(:message)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represent user-facing validation result message.
      class ValidationMessage
        include Google::Apis::Core::Hashable
      
        # A custom code identifying this specific message.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Message severity level (warning or error).
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # The result of the validation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Additional metadata related to the result.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @level = args[:level] if args.key?(:level)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Contains the current validation results.
      class ValidationResult
        include Google::Apis::Core::Hashable
      
        # A list of validations (includes both executed as well as not executed
        # validations).
        # Corresponds to the JSON property `validations`
        # @return [Array<Google::Apis::DatastreamV1alpha1::Validation>]
        attr_accessor :validations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @validations = args[:validations] if args.key?(:validations)
        end
      end
      
      # The VPC Peering configuration is used to create VPC peering between Datastream
      # and the consumer's VPC.
      class VpcPeeringConfig
        include Google::Apis::Core::Hashable
      
        # Required. A free subnet for peering. (CIDR of /29)
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Required. fully qualified name of the VPC Datastream will peer to.
        # Corresponds to the JSON property `vpcName`
        # @return [String]
        attr_accessor :vpc_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnet = args[:subnet] if args.key?(:subnet)
          @vpc_name = args[:vpc_name] if args.key?(:vpc_name)
        end
      end
    end
  end
end
