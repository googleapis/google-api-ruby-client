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
    module FirebasemlV1beta2
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TfLiteModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::FirebasemlV1beta2::Model, decorator: Google::Apis::FirebasemlV1beta2::Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_operations, as: 'activeOperations', class: Google::Apis::FirebasemlV1beta2::Operation, decorator: Google::Apis::FirebasemlV1beta2::Operation::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :model_hash, as: 'modelHash'
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::FirebasemlV1beta2::ModelState, decorator: Google::Apis::FirebasemlV1beta2::ModelState::Representation
      
          collection :tags, as: 'tags'
          property :tflite_model, as: 'tfliteModel', class: Google::Apis::FirebasemlV1beta2::TfLiteModel, decorator: Google::Apis::FirebasemlV1beta2::TfLiteModel::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_operation_status, as: 'basicOperationStatus'
          property :name, as: 'name'
        end
      end
      
      class ModelState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :published, as: 'published'
          property :validation_error, as: 'validationError', class: Google::Apis::FirebasemlV1beta2::Status, decorator: Google::Apis::FirebasemlV1beta2::Status::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirebasemlV1beta2::Status, decorator: Google::Apis::FirebasemlV1beta2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class TfLiteModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automl_model, as: 'automlModel'
          property :gcs_tflite_uri, as: 'gcsTfliteUri'
          property :size_bytes, as: 'sizeBytes'
        end
      end
    end
  end
end
