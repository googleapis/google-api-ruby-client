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
    module RecommenderV1
      
      class GoogleCloudRecommenderV1CostProjection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1Impact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1Insight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1InsightRecommendationReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1InsightStateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1ListInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1ListRecommendationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1MarkInsightAcceptedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationFailedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1OperationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1Recommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1RecommendationContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1RecommendationInsightReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1RecommendationStateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1ValueMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecommenderV1CostProjection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost', class: Google::Apis::RecommenderV1::GoogleTypeMoney, decorator: Google::Apis::RecommenderV1::GoogleTypeMoney::Representation
      
          property :duration, as: 'duration'
        end
      end
      
      class GoogleCloudRecommenderV1Impact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :cost_projection, as: 'costProjection', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1CostProjection, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1CostProjection::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1Insight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_recommendations, as: 'associatedRecommendations', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightRecommendationReference, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightRecommendationReference::Representation
      
          property :category, as: 'category'
          hash :content, as: 'content'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :insight_subtype, as: 'insightSubtype'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :name, as: 'name'
          property :observation_period, as: 'observationPeriod'
          property :state_info, as: 'stateInfo', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightStateInfo, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightStateInfo::Representation
      
          collection :target_resources, as: 'targetResources'
        end
      end
      
      class GoogleCloudRecommenderV1InsightRecommendationReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recommendation, as: 'recommendation'
        end
      end
      
      class GoogleCloudRecommenderV1InsightStateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1ListInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insights, as: 'insights', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Insight, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Insight::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecommenderV1ListRecommendationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :recommendations, as: 'recommendations', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Recommendation, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Recommendation::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1MarkInsightAcceptedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationFailedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :path, as: 'path'
          hash :path_filters, as: 'pathFilters'
          hash :path_value_matchers, as: 'pathValueMatchers', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher::Representation
      
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :source_path, as: 'sourcePath'
          property :source_resource, as: 'sourceResource'
          property :value, as: 'value'
          property :value_matcher, as: 'valueMatcher', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1OperationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Operation, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Operation::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1Recommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_impact, as: 'additionalImpact', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact::Representation
      
          collection :associated_insights, as: 'associatedInsights', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationInsightReference, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationInsightReference::Representation
      
          property :content, as: 'content', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationContent, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationContent::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :last_refresh_time, as: 'lastRefreshTime'
          property :name, as: 'name'
          property :primary_impact, as: 'primaryImpact', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact::Representation
      
          property :recommender_subtype, as: 'recommenderSubtype'
          property :state_info, as: 'stateInfo', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationStateInfo, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationStateInfo::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1RecommendationContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operation_groups, as: 'operationGroups', class: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1OperationGroup, decorator: Google::Apis::RecommenderV1::GoogleCloudRecommenderV1OperationGroup::Representation
      
        end
      end
      
      class GoogleCloudRecommenderV1RecommendationInsightReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insight, as: 'insight'
        end
      end
      
      class GoogleCloudRecommenderV1RecommendationStateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          hash :state_metadata, as: 'stateMetadata'
        end
      end
      
      class GoogleCloudRecommenderV1ValueMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :matches_pattern, as: 'matchesPattern'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
    end
  end
end
