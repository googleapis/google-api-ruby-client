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
    module PredictionV1_6
      
      class AnalyzeRepresentation < Google::Apis::Core::JsonRepresentation
        
        class DataDescriptionRepresentation < Google::Apis::Core::JsonRepresentation
          
          class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
            
            class CategoricalRepresentation < Google::Apis::Core::JsonRepresentation
              
              class ValueRepresentation < Google::Apis::Core::JsonRepresentation
                
              end
            end
            
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class TextRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
          end
          
          class OutputFeatureRepresentation < Google::Apis::Core::JsonRepresentation
            
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
            
            class TextRepresentation < Google::Apis::Core::JsonRepresentation
              
            end
          end
        end
        
        class ModelDescriptionRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class InputRepresentation < Google::Apis::Core::JsonRepresentation
        
        class InputRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class InsertRepresentation < Google::Apis::Core::JsonRepresentation
        
        class TrainingInstanceRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class Insert2Representation < Google::Apis::Core::JsonRepresentation
        
        class ModelInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OutputRepresentation < Google::Apis::Core::JsonRepresentation
        
        class OutputMultiRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class UpdateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AnalyzeRepresentation < Google::Apis::Core::JsonRepresentation
        class DataDescriptionRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ModelDescriptionRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :data_description, as: 'dataDescription', class: Google::Apis::PredictionV1_6::Analyze::DataDescription, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation
        
        collection :errors, as: 'errors'
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :model_description, as: 'modelDescription', class: Google::Apis::PredictionV1_6::Analyze::ModelDescription, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::ModelDescriptionRepresentation
        
        property :self_link, as: 'selfLink'
        
        
        # @private
        class DataDescriptionRepresentation < Google::Apis::Core::JsonRepresentation
          class FeatureRepresentation < Google::Apis::Core::JsonRepresentation; end
          class OutputFeatureRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          collection :features, as: 'features', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::Feature, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::FeatureRepresentation
          
          
          property :output_feature, as: 'outputFeature', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::OutputFeature, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::OutputFeatureRepresentation
          
          
          
          # @private
          class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
            class CategoricalRepresentation < Google::Apis::Core::JsonRepresentation; end
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation; end
            class TextRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :categorical, as: 'categorical', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::Feature::Categorical, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::FeatureRepresentation::CategoricalRepresentation
            
            property :index, as: 'index'
            property :numeric, as: 'numeric', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::Feature::Numeric, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::FeatureRepresentation::NumericRepresentation
            
            property :text, as: 'text', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::Feature::Text, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::FeatureRepresentation::TextRepresentation
            
            
            
            # @private
            class CategoricalRepresentation < Google::Apis::Core::JsonRepresentation
              class ValueRepresentation < Google::Apis::Core::JsonRepresentation; end
              
              property :count, as: 'count'
              collection :values, as: 'values', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::Feature::Categorical::Value, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::FeatureRepresentation::CategoricalRepresentation::ValueRepresentation
              
              
              
              
              # @private
              class ValueRepresentation < Google::Apis::Core::JsonRepresentation
                
                property :count, as: 'count'
                property :value, as: 'value'
              end
            end
            
            # @private
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :count, as: 'count'
              property :mean, as: 'mean'
              property :variance, as: 'variance'
            end
            
            # @private
            class TextRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :count, as: 'count'
            end
          end
          
          # @private
          class OutputFeatureRepresentation < Google::Apis::Core::JsonRepresentation
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation; end
            class TextRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :numeric, as: 'numeric', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::OutputFeature::Numeric, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::OutputFeatureRepresentation::NumericRepresentation
            
            collection :text, as: 'text', class: Google::Apis::PredictionV1_6::Analyze::DataDescription::OutputFeature::Text, decorator: Google::Apis::PredictionV1_6::AnalyzeRepresentation::DataDescriptionRepresentation::OutputFeatureRepresentation::TextRepresentation
            
            
            
            
            # @private
            class NumericRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :count, as: 'count'
              property :mean, as: 'mean'
              property :variance, as: 'variance'
            end
            
            # @private
            class TextRepresentation < Google::Apis::Core::JsonRepresentation
              
              property :count, as: 'count'
              property :value, as: 'value'
            end
          end
        end
        
        # @private
        class ModelDescriptionRepresentation < Google::Apis::Core::JsonRepresentation
          
          hash :confusion_matrix, as: 'confusionMatrix'
          
          hash :confusion_matrix_row_totals, as: 'confusionMatrixRowTotals'
          
          property :modelinfo, as: 'modelinfo', class: Google::Apis::PredictionV1_6::Insert2, decorator: Google::Apis::PredictionV1_6::Insert2Representation
        end
      end

      # @private
      class InputRepresentation < Google::Apis::Core::JsonRepresentation
        class InputRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :input, as: 'input', class: Google::Apis::PredictionV1_6::Input::Input, decorator: Google::Apis::PredictionV1_6::InputRepresentation::InputRepresentation
        
        
        
        # @private
        class InputRepresentation < Google::Apis::Core::JsonRepresentation
          
          collection :csv_instance, as: 'csvInstance'
        end
      end

      # @private
      class InsertRepresentation < Google::Apis::Core::JsonRepresentation
        class TrainingInstanceRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :id, as: 'id'
        property :model_type, as: 'modelType'
        property :source_model, as: 'sourceModel'
        property :storage_data_location, as: 'storageDataLocation'
        property :storage_pmml_location, as: 'storagePMMLLocation'
        property :storage_pmml_model_location, as: 'storagePMMLModelLocation'
        collection :training_instances, as: 'trainingInstances', class: Google::Apis::PredictionV1_6::Insert::TrainingInstance, decorator: Google::Apis::PredictionV1_6::InsertRepresentation::TrainingInstanceRepresentation
        
        
        collection :utility, as: 'utility'
        
        
        
        # @private
        class TrainingInstanceRepresentation < Google::Apis::Core::JsonRepresentation
          
          collection :csv_instance, as: 'csvInstance'
          
          property :output, as: 'output'
        end
      end

      # @private
      class Insert2Representation < Google::Apis::Core::JsonRepresentation
        class ModelInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :created, as: 'created', type: DateTime
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :model_info, as: 'modelInfo', class: Google::Apis::PredictionV1_6::Insert2::ModelInfo, decorator: Google::Apis::PredictionV1_6::Insert2Representation::ModelInfoRepresentation
        
        property :model_type, as: 'modelType'
        property :self_link, as: 'selfLink'
        property :storage_data_location, as: 'storageDataLocation'
        property :storage_pmml_location, as: 'storagePMMLLocation'
        property :storage_pmml_model_location, as: 'storagePMMLModelLocation'
        property :training_complete, as: 'trainingComplete', type: DateTime
        property :training_status, as: 'trainingStatus'
        
        
        # @private
        class ModelInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :class_weighted_accuracy, as: 'classWeightedAccuracy'
          property :classification_accuracy, as: 'classificationAccuracy'
          property :mean_squared_error, as: 'meanSquaredError'
          property :model_type, as: 'modelType'
          property :number_instances, as: 'numberInstances'
          property :number_labels, as: 'numberLabels'
        end
      end

      # @private
      class ListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::PredictionV1_6::Insert2, decorator: Google::Apis::PredictionV1_6::Insert2Representation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class OutputRepresentation < Google::Apis::Core::JsonRepresentation
        class OutputMultiRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :output_label, as: 'outputLabel'
        collection :output_multi, as: 'outputMulti', class: Google::Apis::PredictionV1_6::Output::OutputMulti, decorator: Google::Apis::PredictionV1_6::OutputRepresentation::OutputMultiRepresentation
        
        
        property :output_value, as: 'outputValue'
        property :self_link, as: 'selfLink'
        
        
        # @private
        class OutputMultiRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :label, as: 'label'
          property :score, as: 'score'
        end
      end

      # @private
      class UpdateRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :csv_instance, as: 'csvInstance'
        
        property :output, as: 'output'
      end
    end
  end
end
