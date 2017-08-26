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
      
      # 
      class Input
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::PredictionV1_2::Input::Input]
        attr_accessor :input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input = args[:input] if args.key?(:input)
        end
        
        # 
        class Input
          include Google::Apis::Core::Hashable
        
          # 
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
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `outputLabel`
        # @return [String]
        attr_accessor :output_label
      
        # 
        # Corresponds to the JSON property `outputMulti`
        # @return [Array<Google::Apis::PredictionV1_2::Output::OutputMulti>]
        attr_accessor :output_multi
      
        # 
        # Corresponds to the JSON property `outputValue`
        # @return [Float]
        attr_accessor :output_value
      
        # 
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
        
          # 
          # Corresponds to the JSON property `label`
          # @return [String]
          attr_accessor :label
        
          # 
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
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `modelInfo`
        # @return [Google::Apis::PredictionV1_2::Training::ModelInfo]
        attr_accessor :model_info
      
        # 
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # 
        # Corresponds to the JSON property `trainingStatus`
        # @return [String]
        attr_accessor :training_status
      
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
        end
        
        # 
        class ModelInfo
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `classificationAccuracy`
          # @return [Float]
          attr_accessor :classification_accuracy
        
          # 
          # Corresponds to the JSON property `meanSquaredError`
          # @return [Float]
          attr_accessor :mean_squared_error
        
          # 
          # Corresponds to the JSON property `modelType`
          # @return [String]
          attr_accessor :model_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @classification_accuracy = args[:classification_accuracy] if args.key?(:classification_accuracy)
            @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
            @model_type = args[:model_type] if args.key?(:model_type)
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
