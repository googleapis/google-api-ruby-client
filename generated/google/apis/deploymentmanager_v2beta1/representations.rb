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
      class DeploymentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeploymentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ManifestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ManifestsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResourcesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TypeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class DeploymentRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :id, as: 'id'
        property :manifest, as: 'manifest'
        property :name, as: 'name'
        property :target_config, as: 'targetConfig'
      end

      # @private
      class DeploymentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :deployments, as: 'deployments', class: Google::Apis::DeploymentmanagerV2beta1::Deployment, decorator: Google::Apis::DeploymentmanagerV2beta1::DeploymentRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ManifestRepresentation < Google::Apis::Core::JsonRepresentation
        property :config, as: 'config'
        property :evaluated_config, as: 'evaluatedConfig'
        property :id, as: 'id'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ManifestsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :manifests, as: 'manifests', class: Google::Apis::DeploymentmanagerV2beta1::Manifest, decorator: Google::Apis::DeploymentmanagerV2beta1::ManifestRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Error do
          collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Error::Error do
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
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
        collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning do
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2beta1::Operation::Warning::Datum do
            property :key, as: 'key'
            property :value, as: 'value'
          end
          
          
          property :message, as: 'message'
        end
      end

      # @private
      class OperationsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :operations, as: 'operations', class: Google::Apis::DeploymentmanagerV2beta1::Operation, decorator: Google::Apis::DeploymentmanagerV2beta1::OperationRepresentation
      end

      # @private
      class ResourceRepresentation < Google::Apis::Core::JsonRepresentation
        collection :errors, as: 'errors'
        
        property :id, as: 'id'
        property :intent, as: 'intent'
        property :manifest, as: 'manifest'
        property :name, as: 'name'
        property :state, as: 'state'
        property :type, as: 'type'
        property :url, as: 'url'
      end

      # @private
      class ResourcesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :resources, as: 'resources', class: Google::Apis::DeploymentmanagerV2beta1::Resource, decorator: Google::Apis::DeploymentmanagerV2beta1::ResourceRepresentation
      end

      # @private
      class TypeRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
      end

      # @private
      class TypesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :types, as: 'types', class: Google::Apis::DeploymentmanagerV2beta1::Type, decorator: Google::Apis::DeploymentmanagerV2beta1::TypeRepresentation
      end
    end
  end
end
