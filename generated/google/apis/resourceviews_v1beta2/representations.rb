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
    module ResourceviewsV1beta2
      
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListResourceResponseItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ResourceViewRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ServiceEndpointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsAddResourcesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsGetServiceResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsListResourcesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsRemoveResourcesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneViewsSetServiceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
        property :key, as: 'key'
        property :value, as: 'value'
      end

      # @private
      class ListResourceResponseItemRepresentation < Google::Apis::Core::JsonRepresentation
        hash :endpoints, as: 'endpoints', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :resource, as: 'resource'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :client_operation_id, as: 'clientOperationId'
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::ResourceviewsV1beta2::Operation::Error, decorator: Google::Apis::ResourceviewsV1beta2::OperationRepresentation::ErrorRepresentation
        
        property :http_error_message, as: 'httpErrorMessage'
        property :http_error_status_code, as: 'httpErrorStatusCode'
        property :id, as: 'id'
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
        property :target_id, as: 'targetId'
        property :target_link, as: 'targetLink'
        property :user, as: 'user'
        collection :warnings, as: 'warnings', class: Google::Apis::ResourceviewsV1beta2::Operation::Warning, decorator: Google::Apis::ResourceviewsV1beta2::OperationRepresentation::WarningRepresentation
        
        
        property :zone, as: 'zone'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :errors, as: 'errors', class: Google::Apis::ResourceviewsV1beta2::Operation::Error::Error, decorator: Google::Apis::ResourceviewsV1beta2::OperationRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
          # @private
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ResourceviewsV1beta2::Operation::Warning::Datum, decorator: Google::Apis::ResourceviewsV1beta2::OperationRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ResourceviewsV1beta2::Operation, decorator: Google::Apis::ResourceviewsV1beta2::OperationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ResourceViewRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        collection :endpoints, as: 'endpoints', class: Google::Apis::ResourceviewsV1beta2::ServiceEndpoint, decorator: Google::Apis::ResourceviewsV1beta2::ServiceEndpointRepresentation
        
        
        property :fingerprint, as: 'fingerprint'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :labels, as: 'labels', class: Google::Apis::ResourceviewsV1beta2::Label, decorator: Google::Apis::ResourceviewsV1beta2::LabelRepresentation
        
        
        property :name, as: 'name'
        property :network, as: 'network'
        collection :resources, as: 'resources'
        
        property :self_link, as: 'selfLink'
        property :size, as: 'size'
      end

      # @private
      class ServiceEndpointRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :port, as: 'port'
      end

      # @private
      class ZoneViewsAddResourcesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :resources, as: 'resources'
      end

      # @private
      class ZoneViewsGetServiceResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :endpoints, as: 'endpoints', class: Google::Apis::ResourceviewsV1beta2::ServiceEndpoint, decorator: Google::Apis::ResourceviewsV1beta2::ServiceEndpointRepresentation
        
        
        property :fingerprint, as: 'fingerprint'
      end

      # @private
      class ZoneViewsListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::ResourceviewsV1beta2::ResourceView, decorator: Google::Apis::ResourceviewsV1beta2::ResourceViewRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ZoneViewsListResourcesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::ResourceviewsV1beta2::ListResourceResponseItem, decorator: Google::Apis::ResourceviewsV1beta2::ListResourceResponseItemRepresentation
        
        
        property :network, as: 'network'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ZoneViewsRemoveResourcesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :resources, as: 'resources'
      end

      # @private
      class ZoneViewsSetServiceRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :endpoints, as: 'endpoints', class: Google::Apis::ResourceviewsV1beta2::ServiceEndpoint, decorator: Google::Apis::ResourceviewsV1beta2::ServiceEndpointRepresentation
        
        
        property :fingerprint, as: 'fingerprint'
        property :resource_name, as: 'resourceName'
      end
    end
  end
end
