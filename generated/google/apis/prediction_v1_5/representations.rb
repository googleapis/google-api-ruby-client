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
    module PredictionV1_5
      
      class Analyze
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class DataDescription
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Feature
            class Representation < Google::Apis::Core::JsonRepresentation; end
            
            class Categorical
              class Representation < Google::Apis::Core::JsonRepresentation; end
              
              class Value
                class Representation < Google::Apis::Core::JsonRepresentation; end
              
                include Google::Apis::Core::JsonObjectSupport
              end
            
              include Google::Apis::Core::JsonObjectSupport
            end
            
            class Numeric
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
            
            class Text
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
          
            include Google::Apis::Core::JsonObjectSupport
          end
          
          class OutputFeature
            class Representation < Google::Apis::Core::JsonRepresentation; end
            
            class Numeric
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
            
            class Text
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class ModelDescription
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Input
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Input
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class List
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
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
        
        class TrainingInstance
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Update
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Analyze
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_description, as: 'dataDescription', class: Google::Apis::PredictionV1_5::Analyze::DataDescription, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Representation
      
          collection :errors, as: 'errors'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :model_description, as: 'modelDescription', class: Google::Apis::PredictionV1_5::Analyze::ModelDescription, decorator: Google::Apis::PredictionV1_5::Analyze::ModelDescription::Representation
      
          property :self_link, as: 'selfLink'
        end
        
        class DataDescription
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :features, as: 'features', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Representation
        
            property :output_feature, as: 'outputFeature', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Representation
        
          end
          
          class Feature
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :categorical, as: 'categorical', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical::Representation
          
              property :index, :numeric_string => true, as: 'index'
              property :numeric, as: 'numeric', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Numeric, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Numeric::Representation
          
              property :text, as: 'text', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Text, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Text::Representation
          
            end
            
            class Categorical
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :count, :numeric_string => true, as: 'count'
                collection :values, as: 'values', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical::Value, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical::Value::Representation
            
              end
              
              class Value
                # @private
                class Representation < Google::Apis::Core::JsonRepresentation
                  property :count, :numeric_string => true, as: 'count'
                  property :value, as: 'value'
                end
              end
            end
            
            class Numeric
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :count, :numeric_string => true, as: 'count'
                property :mean, as: 'mean'
                property :variance, as: 'variance'
              end
            end
            
            class Text
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :count, :numeric_string => true, as: 'count'
              end
            end
          end
          
          class OutputFeature
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :numeric, as: 'numeric', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Numeric, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Numeric::Representation
          
              collection :text, as: 'text', class: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Text, decorator: Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Text::Representation
          
            end
            
            class Numeric
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :count, :numeric_string => true, as: 'count'
                property :mean, as: 'mean'
                property :variance, as: 'variance'
              end
            end
            
            class Text
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :count, :numeric_string => true, as: 'count'
                property :value, as: 'value'
              end
            end
          end
        end
        
        class ModelDescription
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            hash :confusion_matrix, as: 'confusionMatrix'
            hash :confusion_matrix_row_totals, as: 'confusionMatrixRowTotals'
            property :modelinfo, as: 'modelinfo', class: Google::Apis::PredictionV1_5::Training, decorator: Google::Apis::PredictionV1_5::Training::Representation
        
          end
        end
      end
      
      class Input
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input', class: Google::Apis::PredictionV1_5::Input::Input, decorator: Google::Apis::PredictionV1_5::Input::Input::Representation
      
        end
        
        class Input
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :csv_instance, as: 'csvInstance'
          end
        end
      end
      
      class List
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::PredictionV1_5::Training, decorator: Google::Apis::PredictionV1_5::Training::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Output
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :output_label, as: 'outputLabel'
          collection :output_multi, as: 'outputMulti', class: Google::Apis::PredictionV1_5::Output::OutputMulti, decorator: Google::Apis::PredictionV1_5::Output::OutputMulti::Representation
      
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
          property :created, as: 'created', type: DateTime
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :model_info, as: 'modelInfo', class: Google::Apis::PredictionV1_5::Training::ModelInfo, decorator: Google::Apis::PredictionV1_5::Training::ModelInfo::Representation
      
          property :model_type, as: 'modelType'
          property :self_link, as: 'selfLink'
          property :storage_data_location, as: 'storageDataLocation'
          property :storage_pmml_location, as: 'storagePMMLLocation'
          property :storage_pmml_model_location, as: 'storagePMMLModelLocation'
          property :training_complete, as: 'trainingComplete', type: DateTime
      
          collection :training_instances, as: 'trainingInstances', class: Google::Apis::PredictionV1_5::Training::TrainingInstance, decorator: Google::Apis::PredictionV1_5::Training::TrainingInstance::Representation
      
          property :training_status, as: 'trainingStatus'
          collection :utility, as: 'utility'
        end
        
        class ModelInfo
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :class_weighted_accuracy, as: 'classWeightedAccuracy'
            property :classification_accuracy, as: 'classificationAccuracy'
            property :mean_squared_error, as: 'meanSquaredError'
            property :model_type, as: 'modelType'
            property :number_instances, :numeric_string => true, as: 'numberInstances'
            property :number_labels, :numeric_string => true, as: 'numberLabels'
          end
        end
        
        class TrainingInstance
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :csv_instance, as: 'csvInstance'
            property :output, as: 'output'
          end
        end
      end
      
      class Update
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :csv_instance, as: 'csvInstance'
          property :label, as: 'label'
          property :output, as: 'output'
        end
      end
    end
  end
end
