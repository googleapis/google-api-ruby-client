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
    module DeploymentmanagerV2beta2
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeploymentUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImportFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListManifestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          end
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          end
        end
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ResourceUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TargetConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, as: 'id'
          property :insert_time, as: 'insertTime'
          property :intent, as: 'intent'
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :state, as: 'state'
          property :target, as: 'target', class: Google::Apis::DeploymentmanagerV2beta2::TargetConfiguration, decorator: Google::Apis::DeploymentmanagerV2beta2::TargetConfiguration::Representation
      
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerV2beta2::DeploymentUpdate, decorator: Google::Apis::DeploymentmanagerV2beta2::DeploymentUpdate::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeploymentUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors'
          property :manifest, as: 'manifest'
        end
      end
      
      class ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DeploymentmanagerV2beta2::Deployment, decorator: Google::Apis::DeploymentmanagerV2beta2::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ImportFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :name, as: 'name'
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          property :evaluated_config, as: 'evaluatedConfig'
          property :id, as: 'id'
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerV2beta2::ImportFile, decorator: Google::Apis::DeploymentmanagerV2beta2::ImportFile::Representation
      
          property :insert_time, as: 'insertTime'
          property :layout, as: 'layout'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ListManifestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifests, as: 'manifests', class: Google::Apis::DeploymentmanagerV2beta2::Manifest, decorator: Google::Apis::DeploymentmanagerV2beta2::Manifest::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2beta2::Operation::Error, decorator: Google::Apis::DeploymentmanagerV2beta2::Operation::Error::Representation
      
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
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2beta2::Operation::Warning, decorator: Google::Apis::DeploymentmanagerV2beta2::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerV2beta2::Operation::Error::Error, decorator: Google::Apis::DeploymentmanagerV2beta2::Operation::Error::Error::Representation
        
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
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2beta2::Operation::Warning::Datum, decorator: Google::Apis::DeploymentmanagerV2beta2::Operation::Warning::Datum::Representation
        
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
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeploymentmanagerV2beta2::Operation, decorator: Google::Apis::DeploymentmanagerV2beta2::Operation::Representation
      
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :final_properties, as: 'finalProperties'
          property :id, as: 'id'
          property :insert_time, as: 'insertTime'
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :properties, as: 'properties'
          property :type, as: 'type'
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerV2beta2::ResourceUpdate, decorator: Google::Apis::DeploymentmanagerV2beta2::ResourceUpdate::Representation
      
          property :update_time, as: 'updateTime'
          property :url, as: 'url'
        end
      end
      
      class ResourceUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors'
          property :final_properties, as: 'finalProperties'
          property :intent, as: 'intent'
          property :manifest, as: 'manifest'
          property :properties, as: 'properties'
          property :state, as: 'state'
        end
      end
      
      class ListResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::DeploymentmanagerV2beta2::Resource, decorator: Google::Apis::DeploymentmanagerV2beta2::Resource::Representation
      
        end
      end
      
      class TargetConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerV2beta2::ImportFile, decorator: Google::Apis::DeploymentmanagerV2beta2::ImportFile::Representation
      
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :insert_time, as: 'insertTime'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ListTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::DeploymentmanagerV2beta2::Type, decorator: Google::Apis::DeploymentmanagerV2beta2::Type::Representation
      
        end
      end
    end
  end
end
