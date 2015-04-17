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
    module FreebaseV1

      # 
      class ReconcileCandidate
        include Google::Apis::Core::Hashable
      
        # Percentage likelihood that this candidate is the unique matching entity. Value
        # will be between 0.0 and 1.0
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Language code that candidate and notable names are displayed in.
        # Corresponds to the JSON property `lang`
        # @return [String]
        attr_accessor :lang
      
        # Freebase MID of candidate entity.
        # Corresponds to the JSON property `mid`
        # @return [String]
        attr_accessor :mid
      
        # Freebase name of matching entity in specified language.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type or profession the candidate is notable for.
        # Corresponds to the JSON property `notable`
        # @return [Google::Apis::FreebaseV1::ReconcileCandidate::Notable]
        attr_accessor :notable
      
        def initialize(**args)
          @confidence = args[:confidence] unless args[:confidence].nil?
          @lang = args[:lang] unless args[:lang].nil?
          @mid = args[:mid] unless args[:mid].nil?
          @name = args[:name] unless args[:name].nil?
          @notable = args[:notable] unless args[:notable].nil?
        end
        # Type or profession the candidate is notable for.
        class Notable
          include Google::Apis::Core::Hashable
        
          # MID of notable category.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # Name of notable category in specified language.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
            @id = args[:id] unless args[:id].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
      end

      # 
      class ReconcileGet
        include Google::Apis::Core::Hashable
      
        # If filled, then the listed candidates are potential matches, and such should
        # be evaluated by a more discerning algorithm or human. The matches are ordered
        # by confidence.
        # Corresponds to the JSON property `candidate`
        # @return [Array<Google::Apis::FreebaseV1::ReconcileCandidate>]
        attr_accessor :candidate
      
        # Server costs for reconciling.
        # Corresponds to the JSON property `costs`
        # @return [Google::Apis::FreebaseV1::ReconcileGet::Costs]
        attr_accessor :costs
      
        # If filled, this entity is guaranteed to match at requested confidence
        # probability (default 99%).
        # Corresponds to the JSON property `match`
        # @return [Google::Apis::FreebaseV1::ReconcileCandidate]
        attr_accessor :match
      
        # If filled, then there were recoverable problems that affected the request. For
        # example, some of the properties were ignored because they either are not valid
        # Freebase predicates or are not indexed for reconciliation. The candidates
        # returned should be considered valid results, with the caveat that sections of
        # the request were ignored as specified by the warning text.
        # Corresponds to the JSON property `warning`
        # @return [Array<Google::Apis::FreebaseV1::ReconcileGet::Warning>]
        attr_accessor :warning
      
        def initialize(**args)
          @candidate = args[:candidate] unless args[:candidate].nil?
          @costs = args[:costs] unless args[:costs].nil?
          @match = args[:match] unless args[:match].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        # Server costs for reconciling.
        class Costs
          include Google::Apis::Core::Hashable
        
          # Total number of hits found.
          # Corresponds to the JSON property `hits`
          # @return [Fixnum]
          attr_accessor :hits
        
          # Total milliseconds spent.
          # Corresponds to the JSON property `ms`
          # @return [Fixnum]
          attr_accessor :ms
        
          def initialize(**args)
            @hits = args[:hits] unless args[:hits].nil?
            @ms = args[:ms] unless args[:ms].nil?
          end
        end
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # Location of warning in the request e.g. invalid predicate.
          # Corresponds to the JSON property `location`
          # @return [String]
          attr_accessor :location
        
          # Warning message to display to the user.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          # Code for identifying classes of warnings.
          # Corresponds to the JSON property `reason`
          # @return [String]
          attr_accessor :reason
        
          def initialize(**args)
            @location = args[:location] unless args[:location].nil?
            @message = args[:message] unless args[:message].nil?
            @reason = args[:reason] unless args[:reason].nil?
          end
        end
      end
    end
  end
end
