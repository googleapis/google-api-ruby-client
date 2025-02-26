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
    module ParallelstoreV1
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationGcsBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationParallelstore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportDataRequest
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceGcsBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceParallelstore
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
      
      class DestinationGcsBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class DestinationParallelstore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class ExportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_gcs_bucket, as: 'destinationGcsBucket', class: Google::Apis::ParallelstoreV1::DestinationGcsBucket, decorator: Google::Apis::ParallelstoreV1::DestinationGcsBucket::Representation
      
          property :request_id, as: 'requestId'
          property :service_account, as: 'serviceAccount'
          property :source_parallelstore, as: 'sourceParallelstore', class: Google::Apis::ParallelstoreV1::SourceParallelstore, decorator: Google::Apis::ParallelstoreV1::SourceParallelstore::Representation
      
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_parallelstore, as: 'destinationParallelstore', class: Google::Apis::ParallelstoreV1::DestinationParallelstore, decorator: Google::Apis::ParallelstoreV1::DestinationParallelstore::Representation
      
          property :request_id, as: 'requestId'
          property :service_account, as: 'serviceAccount'
          property :source_gcs_bucket, as: 'sourceGcsBucket', class: Google::Apis::ParallelstoreV1::SourceGcsBucket, decorator: Google::Apis::ParallelstoreV1::SourceGcsBucket::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_points, as: 'accessPoints'
          property :capacity_gib, :numeric_string => true, as: 'capacityGib'
          property :create_time, as: 'createTime'
          property :daos_version, as: 'daosVersion'
          property :deployment_type, as: 'deploymentType'
          property :description, as: 'description'
          property :directory_stripe_level, as: 'directoryStripeLevel'
          property :effective_reserved_ip_range, as: 'effectiveReservedIpRange'
          property :file_stripe_level, as: 'fileStripeLevel'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :reserved_ip_range, as: 'reservedIpRange'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ParallelstoreV1::Instance, decorator: Google::Apis::ParallelstoreV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ParallelstoreV1::Location, decorator: Google::Apis::ParallelstoreV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ParallelstoreV1::Operation, decorator: Google::Apis::ParallelstoreV1::Operation::Representation
      
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
          property :error, as: 'error', class: Google::Apis::ParallelstoreV1::Status, decorator: Google::Apis::ParallelstoreV1::Status::Representation
      
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
      
      class SourceGcsBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class SourceParallelstore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
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
