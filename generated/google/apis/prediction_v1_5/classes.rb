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
      
      # 
      class Analyze
        include Google::Apis::Core::Hashable
      
        # Description of the data the model was trained on.
        # Corresponds to the JSON property `dataDescription`
        # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription]
        attr_accessor :data_description
      
        # List of errors with the data.
        # Corresponds to the JSON property `errors`
        # @return [Array<Hash<String,String>>]
        attr_accessor :errors
      
        # The unique name for the predictive model.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # What kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Description of the model.
        # Corresponds to the JSON property `modelDescription`
        # @return [Google::Apis::PredictionV1_5::Analyze::ModelDescription]
        attr_accessor :model_description
      
        # A URL to re-request this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_description = args[:data_description] if args.key?(:data_description)
          @errors = args[:errors] if args.key?(:errors)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @model_description = args[:model_description] if args.key?(:model_description)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
        
        # Description of the data the model was trained on.
        class DataDescription
          include Google::Apis::Core::Hashable
        
          # Description of the input features in the data set.
          # Corresponds to the JSON property `features`
          # @return [Array<Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature>]
          attr_accessor :features
        
          # Description of the output value or label.
          # Corresponds to the JSON property `outputFeature`
          # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature]
          attr_accessor :output_feature
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @features = args[:features] if args.key?(:features)
            @output_feature = args[:output_feature] if args.key?(:output_feature)
          end
          
          # 
          class Feature
            include Google::Apis::Core::Hashable
          
            # Description of the categorical values of this feature.
            # Corresponds to the JSON property `categorical`
            # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical]
            attr_accessor :categorical
          
            # The feature index.
            # Corresponds to the JSON property `index`
            # @return [Fixnum]
            attr_accessor :index
          
            # Description of the numeric values of this feature.
            # Corresponds to the JSON property `numeric`
            # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Numeric]
            attr_accessor :numeric
          
            # Description of multiple-word text values of this feature.
            # Corresponds to the JSON property `text`
            # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Text]
            attr_accessor :text
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @categorical = args[:categorical] if args.key?(:categorical)
              @index = args[:index] if args.key?(:index)
              @numeric = args[:numeric] if args.key?(:numeric)
              @text = args[:text] if args.key?(:text)
            end
            
            # Description of the categorical values of this feature.
            class Categorical
              include Google::Apis::Core::Hashable
            
              # Number of categorical values for this feature in the data.
              # Corresponds to the JSON property `count`
              # @return [Fixnum]
              attr_accessor :count
            
              # List of all the categories for this feature in the data set.
              # Corresponds to the JSON property `values`
              # @return [Array<Google::Apis::PredictionV1_5::Analyze::DataDescription::Feature::Categorical::Value>]
              attr_accessor :values
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @count = args[:count] if args.key?(:count)
                @values = args[:values] if args.key?(:values)
              end
              
              # 
              class Value
                include Google::Apis::Core::Hashable
              
                # Number of times this feature had this value.
                # Corresponds to the JSON property `count`
                # @return [Fixnum]
                attr_accessor :count
              
                # The category name.
                # Corresponds to the JSON property `value`
                # @return [String]
                attr_accessor :value
              
                def initialize(**args)
                   update!(**args)
                end
              
                # Update properties of this object
                def update!(**args)
                  @count = args[:count] if args.key?(:count)
                  @value = args[:value] if args.key?(:value)
                end
              end
            end
            
            # Description of the numeric values of this feature.
            class Numeric
              include Google::Apis::Core::Hashable
            
              # Number of numeric values for this feature in the data set.
              # Corresponds to the JSON property `count`
              # @return [Fixnum]
              attr_accessor :count
            
              # Mean of the numeric values of this feature in the data set.
              # Corresponds to the JSON property `mean`
              # @return [Float]
              attr_accessor :mean
            
              # Variance of the numeric values of this feature in the data set.
              # Corresponds to the JSON property `variance`
              # @return [Float]
              attr_accessor :variance
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @count = args[:count] if args.key?(:count)
                @mean = args[:mean] if args.key?(:mean)
                @variance = args[:variance] if args.key?(:variance)
              end
            end
            
            # Description of multiple-word text values of this feature.
            class Text
              include Google::Apis::Core::Hashable
            
              # Number of multiple-word text values for this feature.
              # Corresponds to the JSON property `count`
              # @return [Fixnum]
              attr_accessor :count
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @count = args[:count] if args.key?(:count)
              end
            end
          end
          
          # Description of the output value or label.
          class OutputFeature
            include Google::Apis::Core::Hashable
          
            # Description of the output values in the data set.
            # Corresponds to the JSON property `numeric`
            # @return [Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Numeric]
            attr_accessor :numeric
          
            # Description of the output labels in the data set.
            # Corresponds to the JSON property `text`
            # @return [Array<Google::Apis::PredictionV1_5::Analyze::DataDescription::OutputFeature::Text>]
            attr_accessor :text
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @numeric = args[:numeric] if args.key?(:numeric)
              @text = args[:text] if args.key?(:text)
            end
            
            # Description of the output values in the data set.
            class Numeric
              include Google::Apis::Core::Hashable
            
              # Number of numeric output values in the data set.
              # Corresponds to the JSON property `count`
              # @return [Fixnum]
              attr_accessor :count
            
              # Mean of the output values in the data set.
              # Corresponds to the JSON property `mean`
              # @return [Float]
              attr_accessor :mean
            
              # Variance of the output values in the data set.
              # Corresponds to the JSON property `variance`
              # @return [Float]
              attr_accessor :variance
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @count = args[:count] if args.key?(:count)
                @mean = args[:mean] if args.key?(:mean)
                @variance = args[:variance] if args.key?(:variance)
              end
            end
            
            # 
            class Text
              include Google::Apis::Core::Hashable
            
              # Number of times the output label occurred in the data set.
              # Corresponds to the JSON property `count`
              # @return [Fixnum]
              attr_accessor :count
            
              # The output label.
              # Corresponds to the JSON property `value`
              # @return [String]
              attr_accessor :value
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @count = args[:count] if args.key?(:count)
                @value = args[:value] if args.key?(:value)
              end
            end
          end
        end
        
        # Description of the model.
        class ModelDescription
          include Google::Apis::Core::Hashable
        
          # An output confusion matrix. This shows an estimate for how this model will do
          # in predictions. This is first indexed by the true class label. For each true
          # class label, this provides a pair `predicted_label, count`, where count is the
          # estimated number of times the model will predict the predicted label given the
          # true label. Will not output if more then 100 classes [Categorical models only].
          # Corresponds to the JSON property `confusionMatrix`
          # @return [Hash<String,Hash<String,Float>>]
          attr_accessor :confusion_matrix
        
          # A list of the confusion matrix row totals
          # Corresponds to the JSON property `confusionMatrixRowTotals`
          # @return [Hash<String,Float>]
          attr_accessor :confusion_matrix_row_totals
        
          # Basic information about the model.
          # Corresponds to the JSON property `modelinfo`
          # @return [Google::Apis::PredictionV1_5::Training]
          attr_accessor :modelinfo
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
            @confusion_matrix_row_totals = args[:confusion_matrix_row_totals] if args.key?(:confusion_matrix_row_totals)
            @modelinfo = args[:modelinfo] if args.key?(:modelinfo)
          end
        end
      end
      
      # 
      class Input
        include Google::Apis::Core::Hashable
      
        # Input to the model for a prediction
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::PredictionV1_5::Input::Input]
        attr_accessor :input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input = args[:input] if args.key?(:input)
        end
        
        # Input to the model for a prediction
        class Input
          include Google::Apis::Core::Hashable
        
          # A list of input features, these can be strings or doubles.
          # Corresponds to the JSON property `csvInstance`
          # @return [Array<Object>]
          attr_accessor :csv_instance
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @csv_instance = args[:csv_instance] if args.key?(:csv_instance)
          end
        end
      end
      
      # 
      class List
        include Google::Apis::Core::Hashable
      
        # List of models.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::PredictionV1_5::Training>]
        attr_accessor :items
      
        # What kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Pagination token to fetch the next page, if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A URL to re-request this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class Output
        include Google::Apis::Core::Hashable
      
        # The unique name for the predictive model.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # What kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The most likely class label [Categorical models only].
        # Corresponds to the JSON property `outputLabel`
        # @return [String]
        attr_accessor :output_label
      
        # A list of class labels with their estimated probabilities [Categorical models
        # only].
        # Corresponds to the JSON property `outputMulti`
        # @return [Array<Google::Apis::PredictionV1_5::Output::OutputMulti>]
        attr_accessor :output_multi
      
        # The estimated regression value [Regression models only].
        # Corresponds to the JSON property `outputValue`
        # @return [Float]
        attr_accessor :output_value
      
        # A URL to re-request this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @output_label = args[:output_label] if args.key?(:output_label)
          @output_multi = args[:output_multi] if args.key?(:output_multi)
          @output_value = args[:output_value] if args.key?(:output_value)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
        
        # 
        class OutputMulti
          include Google::Apis::Core::Hashable
        
          # The class label.
          # Corresponds to the JSON property `label`
          # @return [String]
          attr_accessor :label
        
          # The probability of the class label.
          # Corresponds to the JSON property `score`
          # @return [Float]
          attr_accessor :score
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @label = args[:label] if args.key?(:label)
            @score = args[:score] if args.key?(:score)
          end
        end
      end
      
      # 
      class Training
        include Google::Apis::Core::Hashable
      
        # Insert time of the model (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # The unique name for the predictive model.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # What kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Model metadata.
        # Corresponds to the JSON property `modelInfo`
        # @return [Google::Apis::PredictionV1_5::Training::ModelInfo]
        attr_accessor :model_info
      
        # Type of predictive model (classification or regression)
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        # A URL to re-request this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Google storage location of the training data file.
        # Corresponds to the JSON property `storageDataLocation`
        # @return [String]
        attr_accessor :storage_data_location
      
        # Google storage location of the preprocessing pmml file.
        # Corresponds to the JSON property `storagePMMLLocation`
        # @return [String]
        attr_accessor :storage_pmml_location
      
        # Google storage location of the pmml model file.
        # Corresponds to the JSON property `storagePMMLModelLocation`
        # @return [String]
        attr_accessor :storage_pmml_model_location
      
        # Training completion time (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `trainingComplete`
        # @return [DateTime]
        attr_accessor :training_complete
      
        # Instances to train model on.
        # Corresponds to the JSON property `trainingInstances`
        # @return [Array<Google::Apis::PredictionV1_5::Training::TrainingInstance>]
        attr_accessor :training_instances
      
        # The current status of the training job. This can be one of following: RUNNING;
        # DONE; ERROR; ERROR: TRAINING JOB NOT FOUND
        # Corresponds to the JSON property `trainingStatus`
        # @return [String]
        attr_accessor :training_status
      
        # A class weighting function, which allows the importance weights for class
        # labels to be specified [Categorical models only].
        # Corresponds to the JSON property `utility`
        # @return [Array<Hash<String,Float>>]
        attr_accessor :utility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] if args.key?(:created)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @model_info = args[:model_info] if args.key?(:model_info)
          @model_type = args[:model_type] if args.key?(:model_type)
          @self_link = args[:self_link] if args.key?(:self_link)
          @storage_data_location = args[:storage_data_location] if args.key?(:storage_data_location)
          @storage_pmml_location = args[:storage_pmml_location] if args.key?(:storage_pmml_location)
          @storage_pmml_model_location = args[:storage_pmml_model_location] if args.key?(:storage_pmml_model_location)
          @training_complete = args[:training_complete] if args.key?(:training_complete)
          @training_instances = args[:training_instances] if args.key?(:training_instances)
          @training_status = args[:training_status] if args.key?(:training_status)
          @utility = args[:utility] if args.key?(:utility)
        end
        
        # Model metadata.
        class ModelInfo
          include Google::Apis::Core::Hashable
        
          # Estimated accuracy of model taking utility weights into account [Categorical
          # models only].
          # Corresponds to the JSON property `classWeightedAccuracy`
          # @return [Float]
          attr_accessor :class_weighted_accuracy
        
          # A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an estimate,
          # based on the amount and quality of the training data, of the estimated
          # prediction accuracy. You can use this is a guide to decide whether the results
          # are accurate enough for your needs. This estimate will be more reliable if
          # your real input data is similar to your training data [Categorical models only]
          # .
          # Corresponds to the JSON property `classificationAccuracy`
          # @return [Float]
          attr_accessor :classification_accuracy
        
          # An estimated mean squared error. The can be used to measure the quality of the
          # predicted model [Regression models only].
          # Corresponds to the JSON property `meanSquaredError`
          # @return [Float]
          attr_accessor :mean_squared_error
        
          # Type of predictive model (CLASSIFICATION or REGRESSION)
          # Corresponds to the JSON property `modelType`
          # @return [String]
          attr_accessor :model_type
        
          # Number of valid data instances used in the trained model.
          # Corresponds to the JSON property `numberInstances`
          # @return [Fixnum]
          attr_accessor :number_instances
        
          # Number of class labels in the trained model [Categorical models only].
          # Corresponds to the JSON property `numberLabels`
          # @return [Fixnum]
          attr_accessor :number_labels
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @class_weighted_accuracy = args[:class_weighted_accuracy] if args.key?(:class_weighted_accuracy)
            @classification_accuracy = args[:classification_accuracy] if args.key?(:classification_accuracy)
            @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
            @model_type = args[:model_type] if args.key?(:model_type)
            @number_instances = args[:number_instances] if args.key?(:number_instances)
            @number_labels = args[:number_labels] if args.key?(:number_labels)
          end
        end
        
        # 
        class TrainingInstance
          include Google::Apis::Core::Hashable
        
          # The input features for this instance
          # Corresponds to the JSON property `csvInstance`
          # @return [Array<Object>]
          attr_accessor :csv_instance
        
          # The generic output value - could be regression or class label
          # Corresponds to the JSON property `output`
          # @return [String]
          attr_accessor :output
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @csv_instance = args[:csv_instance] if args.key?(:csv_instance)
            @output = args[:output] if args.key?(:output)
          end
        end
      end
      
      # 
      class Update
        include Google::Apis::Core::Hashable
      
        # The input features for this instance
        # Corresponds to the JSON property `csvInstance`
        # @return [Array<Object>]
        attr_accessor :csv_instance
      
        # The class label of this instance
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The generic output value - could be regression value or class label
        # Corresponds to the JSON property `output`
        # @return [String]
        attr_accessor :output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_instance = args[:csv_instance] if args.key?(:csv_instance)
          @label = args[:label] if args.key?(:label)
          @output = args[:output] if args.key?(:output)
        end
      end
    end
  end
end
