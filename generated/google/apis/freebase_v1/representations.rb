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
      class ReconcileCandidateRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReconcileGetRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ReconcileCandidateRepresentation < Google::Apis::Core::JsonRepresentation
        property :confidence, as: 'confidence'
        property :lang, as: 'lang'
        property :mid, as: 'mid'
        property :name, as: 'name'
        property :notable, as: 'notable', class: Google::Apis::FreebaseV1::ReconcileCandidate::Notable do
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end

      # @private
      class ReconcileGetRepresentation < Google::Apis::Core::JsonRepresentation
        collection :candidate, as: 'candidate', class: Google::Apis::FreebaseV1::ReconcileCandidate, decorator: Google::Apis::FreebaseV1::ReconcileCandidateRepresentation
        
        
        property :costs, as: 'costs', class: Google::Apis::FreebaseV1::ReconcileGet::Costs do
          property :hits, as: 'hits'
          property :ms, as: 'ms'
        end
        
        property :match, as: 'match', class: Google::Apis::FreebaseV1::ReconcileCandidate, decorator: Google::Apis::FreebaseV1::ReconcileCandidateRepresentation
        
        collection :warning, as: 'warning', class: Google::Apis::FreebaseV1::ReconcileGet::Warning do
          property :location, as: 'location'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
    end
  end
end
