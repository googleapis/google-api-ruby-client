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
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Export
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileShareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
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
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExport
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
      
      class SmbExport
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
      
      class ClientList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :host_names, as: 'hostNames'
          collection :ip_addresses, as: 'ipAddresses'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Export
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_clients, as: 'allowedClients', class: Google::Apis::FileV1beta1::ClientList, decorator: Google::Apis::FileV1beta1::ClientList::Representation
      
          property :async, as: 'async'
          property :denied_clients, as: 'deniedClients', class: Google::Apis::FileV1beta1::ClientList, decorator: Google::Apis::FileV1beta1::ClientList::Representation
      
          collection :networks, as: 'networks', class: Google::Apis::FileV1beta1::NetworkConfig, decorator: Google::Apis::FileV1beta1::NetworkConfig::Representation
      
          property :nfs_export, as: 'nfsExport', class: Google::Apis::FileV1beta1::NfsExport, decorator: Google::Apis::FileV1beta1::NfsExport::Representation
      
          property :path, as: 'path'
          property :read_only, as: 'readOnly'
          property :smb_export, as: 'smbExport', class: Google::Apis::FileV1beta1::SmbExport, decorator: Google::Apis::FileV1beta1::SmbExport::Representation
      
        end
      end
      
      class FileShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :deleted, as: 'deleted'
          property :enabled, as: 'enabled'
          collection :exports, as: 'exports', class: Google::Apis::FileV1beta1::Export, decorator: Google::Apis::FileV1beta1::Export::Representation
      
          property :name, as: 'name'
          collection :protocols, as: 'protocols'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :file_shares, as: 'fileShares', class: Google::Apis::FileV1beta1::FileShareConfig, decorator: Google::Apis::FileV1beta1::FileShareConfig::Representation
      
          hash :labels, as: 'labels'
          property :logging_service, as: 'loggingService'
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::FileV1beta1::NetworkConfig, decorator: Google::Apis::FileV1beta1::NetworkConfig::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :tier, as: 'tier'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::FileV1beta1::Instance, decorator: Google::Apis::FileV1beta1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FileV1beta1::Location, decorator: Google::Apis::FileV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FileV1beta1::Operation, decorator: Google::Apis::FileV1beta1::Operation::Representation
      
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
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_addresses, as: 'ipAddresses'
          collection :modes, as: 'modes'
          property :network, as: 'network'
          property :reserved_ip_range, as: 'reservedIpRange'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NfsExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anonymous_gid, :numeric_string => true, as: 'anonymousGid'
          property :anonymous_uid, :numeric_string => true, as: 'anonymousUid'
          collection :protocols, as: 'protocols'
          property :squash, as: 'squash'
          property :unauthenticated_locks_allowed, as: 'unauthenticatedLocksAllowed'
          property :user_ports_allowed, as: 'userPortsAllowed'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FileV1beta1::Status, decorator: Google::Apis::FileV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class SmbExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :browsable, as: 'browsable'
          property :file_share, as: 'fileShare'
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
