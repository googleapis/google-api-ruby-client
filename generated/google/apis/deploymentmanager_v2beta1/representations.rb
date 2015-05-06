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
    module DeploymentmanagerV2beta1
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDeploymentsResponse
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
      
      class ListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :target_config, as: 'targetConfig'
        end
      end
      
      # @private
      class ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DeploymentmanagerV2beta1::Deployment, decorator: Google::Apis::DeploymentmanagerV2beta1::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          property :evaluated_config, as: 'evaluatedConfig'
          property :id, as: 'id'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      # @private
      class ListManifestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifests, as: 'manifests', class: Google::Apis::DeploymentmanagerV2beta1::Manifest, decorator: Google::Apis::DeploymentmanagerV2beta1::Manifest::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Error, decorator: Google::Apis::DeploymentmanagerV2beta1::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, as: 'id'
          property :insert_time, as: 'insertTime'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning, decorator: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning::Representation
      
        end
        
        # @private
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Error::Error, decorator: Google::Apis::DeploymentmanagerV2beta1::Operation::Error::Error::Representation
        
          end
          
          # @private
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
        
        # @private
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning::Datum, decorator: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          # @private
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      # @private
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeploymentmanagerV2beta1::Operation, decorator: Google::Apis::DeploymentmanagerV2beta1::Operation::Representation
      
        end
      end
      
      # @private
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors'
          property :id, as: 'id'
          property :intent, as: 'intent'
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      # @private
      class ListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::DeploymentmanagerV2beta1::Resource, decorator: Google::Apis::DeploymentmanagerV2beta1::Resource::Representation
      
        end
      end
      
      # @private
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      # @private
      class ListTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :types, as: 'types', class: Google::Apis::DeploymentmanagerV2beta1::Type, decorator: Google::Apis::DeploymentmanagerV2beta1::Type::Representation
      
        end
      end
    end
  end
end
