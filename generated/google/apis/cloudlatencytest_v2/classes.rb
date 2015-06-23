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
    module CloudlatencytestV2

      # 
      class AggregatedStats
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudlatencytestV2::Stats>]
        attr_accessor :stats
      
        def initialize(**args)
          @stats = args[:stats] unless args[:stats].nil?
        end
      end

      # 
      class AggregatedStatsReply
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `testValue`
        # @return [String]
        attr_accessor :test_value
      
        def initialize(**args)
          @test_value = args[:test_value] unless args[:test_value].nil?
        end
      end

      # 
      class DoubleValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
          @label = args[:label] unless args[:label].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end

      # 
      class IntValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
          @label = args[:label] unless args[:label].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end

      # 
      class Stats
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doubleValues`
        # @return [Array<Google::Apis::CloudlatencytestV2::DoubleValue>]
        attr_accessor :double_values
      
        # 
        # Corresponds to the JSON property `intValues`
        # @return [Array<Google::Apis::CloudlatencytestV2::IntValue>]
        attr_accessor :int_values
      
        # 
        # Corresponds to the JSON property `stringValues`
        # @return [Array<Google::Apis::CloudlatencytestV2::StringValue>]
        attr_accessor :string_values
      
        # 
        # Corresponds to the JSON property `time`
        # @return [Float]
        attr_accessor :time
      
        def initialize(**args)
          @double_values = args[:double_values] unless args[:double_values].nil?
          @int_values = args[:int_values] unless args[:int_values].nil?
          @string_values = args[:string_values] unless args[:string_values].nil?
          @time = args[:time] unless args[:time].nil?
        end
      end

      # 
      class StatsReply
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `testValue`
        # @return [String]
        attr_accessor :test_value
      
        def initialize(**args)
          @test_value = args[:test_value] unless args[:test_value].nil?
        end
      end

      # 
      class StringValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
          @label = args[:label] unless args[:label].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
    end
  end
end
