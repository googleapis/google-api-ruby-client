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
    module PredictionV1_2
      
      class Input
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Input
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Output
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class OutputMulti
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Training
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class ModelInfo
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Update
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Input
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::PredictionV1_2::Input::Input, decorator: Google::Apis::PredictionV1_2::Input::Input::Representation
      
        end
        
        class Input
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :csv_instance, as: 'csvInstance'
          end
        end
      end
      
      class Output
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :output_label, as: 'outputLabel'
          collection :output_multi, as: 'outputMulti', class: Google::Apis::PredictionV1_2::Output::OutputMulti, decorator: Google::Apis::PredictionV1_2::Output::OutputMulti::Representation
      
          property :output_value, as: 'outputValue'
          property :self_link, as: 'selfLink'
        end
        
        class OutputMulti
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :label, as: 'label'
            property :score, as: 'score'
          end
        end
      end
      
      class Training
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :model_info, as: 'modelInfo', class: Google::Apis::PredictionV1_2::Training::ModelInfo, decorator: Google::Apis::PredictionV1_2::Training::ModelInfo::Representation
      
          property :self_link, as: 'selfLink'
          property :training_status, as: 'trainingStatus'
        end
        
        class ModelInfo
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :classification_accuracy, as: 'classificationAccuracy'
            property :mean_squared_error, as: 'meanSquaredError'
            property :model_type, as: 'modelType'
          end
        end
      end
      
      class Update
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_label, as: 'classLabel'
          collection :csv_instance, as: 'csvInstance'
        end
      end
    end
  end
end
