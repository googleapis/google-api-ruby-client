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
    module PredictionV1_3
      
      # 
      class Input
        include Google::Apis::Core::Hashable
      
        # Input to the model for a prediction
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::PredictionV1_3::Input::Input]
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
      
        # The most likely class [Categorical models only].
        # Corresponds to the JSON property `outputLabel`
        # @return [String]
        attr_accessor :output_label
      
        # A list of classes with their estimated probabilities [Categorical models only].
        # Corresponds to the JSON property `outputMulti`
        # @return [Array<Google::Apis::PredictionV1_3::Output::OutputMulti>]
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
        
          # The probability of the class.
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
        # @return [Google::Apis::PredictionV1_3::Training::ModelInfo]
        attr_accessor :model_info
      
        # A URL to re-request this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The current status of the training job. This can be one of following: RUNNING;
        # DONE; ERROR; ERROR: TRAINING JOB NOT FOUND
        # Corresponds to the JSON property `trainingStatus`
        # @return [String]
        attr_accessor :training_status
      
        # A class weighting function, which allows the importance weights for classes to
        # be specified [Categorical models only].
        # Corresponds to the JSON property `utility`
        # @return [Array<Hash<String,Float>>]
        attr_accessor :utility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @model_info = args[:model_info] if args.key?(:model_info)
          @self_link = args[:self_link] if args.key?(:self_link)
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
        
          # An estimated mean squared error. The can be used to measure the quality of the
          # predicted model [Regression models only].
          # Corresponds to the JSON property `meanSquaredError`
          # @return [Float]
          attr_accessor :mean_squared_error
        
          # Type of predictive model (CLASSIFICATION or REGRESSION)
          # Corresponds to the JSON property `modelType`
          # @return [String]
          attr_accessor :model_type
        
          # Number of classes in the trained model [Categorical models only].
          # Corresponds to the JSON property `numberClasses`
          # @return [Fixnum]
          attr_accessor :number_classes
        
          # Number of valid data instances used in the trained model.
          # Corresponds to the JSON property `numberInstances`
          # @return [Fixnum]
          attr_accessor :number_instances
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @class_weighted_accuracy = args[:class_weighted_accuracy] if args.key?(:class_weighted_accuracy)
            @classification_accuracy = args[:classification_accuracy] if args.key?(:classification_accuracy)
            @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
            @confusion_matrix_row_totals = args[:confusion_matrix_row_totals] if args.key?(:confusion_matrix_row_totals)
            @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
            @model_type = args[:model_type] if args.key?(:model_type)
            @number_classes = args[:number_classes] if args.key?(:number_classes)
            @number_instances = args[:number_instances] if args.key?(:number_instances)
          end
        end
      end
      
      # 
      class Update
        include Google::Apis::Core::Hashable
      
        # The true class label of this instance
        # Corresponds to the JSON property `classLabel`
        # @return [String]
        attr_accessor :class_label
      
        # The input features for this instance
        # Corresponds to the JSON property `csvInstance`
        # @return [Array<Object>]
        attr_accessor :csv_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_label = args[:class_label] if args.key?(:class_label)
          @csv_instance = args[:csv_instance] if args.key?(:csv_instance)
        end
      end
    end
  end
end
