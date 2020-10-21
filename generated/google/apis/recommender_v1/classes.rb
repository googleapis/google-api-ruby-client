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
      
      # Contains metadata about how much money a recommendation can save or incur.
      class GoogleCloudRecommenderV1CostProjection
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `cost`
        # @return [Google::Apis::RecommenderV1::GoogleTypeMoney]
        attr_accessor :cost
      
        # Duration for which this cost applies.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # Contains the impact a recommendation can have for a given category.
      class GoogleCloudRecommenderV1Impact
        include Google::Apis::Core::Hashable
      
        # Category that is being targeted.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Contains metadata about how much money a recommendation can save or incur.
        # Corresponds to the JSON property `costProjection`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1CostProjection]
        attr_accessor :cost_projection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @cost_projection = args[:cost_projection] if args.key?(:cost_projection)
        end
      end
      
      # An insight along with the information used to derive the insight. The insight
      # may have associated recomendations as well.
      class GoogleCloudRecommenderV1Insight
        include Google::Apis::Core::Hashable
      
        # Recommendations derived from this insight.
        # Corresponds to the JSON property `associatedRecommendations`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightRecommendationReference>]
        attr_accessor :associated_recommendations
      
        # Category being targeted by the insight.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # A struct of custom fields to explain the insight. Example: "
        # grantedPermissionsCount": "1000"
        # Corresponds to the JSON property `content`
        # @return [Hash<String,Object>]
        attr_accessor :content
      
        # Free-form human readable summary in English. The maximum length is 500
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of the Insight. Provides optimistic locking when updating states.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Insight subtype. Insight content schema will be stable for a given subtype.
        # Corresponds to the JSON property `insightSubtype`
        # @return [String]
        attr_accessor :insight_subtype
      
        # Timestamp of the latest data used to generate the insight.
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # Name of the insight.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Observation period that led to the insight. The source data used to generate
        # the insight ends at last_refresh_time and begins at (last_refresh_time -
        # observation_period).
        # Corresponds to the JSON property `observationPeriod`
        # @return [String]
        attr_accessor :observation_period
      
        # Information related to insight state.
        # Corresponds to the JSON property `stateInfo`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1InsightStateInfo]
        attr_accessor :state_info
      
        # Fully qualified resource names that this insight is targeting.
        # Corresponds to the JSON property `targetResources`
        # @return [Array<String>]
        attr_accessor :target_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_recommendations = args[:associated_recommendations] if args.key?(:associated_recommendations)
          @category = args[:category] if args.key?(:category)
          @content = args[:content] if args.key?(:content)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @insight_subtype = args[:insight_subtype] if args.key?(:insight_subtype)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @name = args[:name] if args.key?(:name)
          @observation_period = args[:observation_period] if args.key?(:observation_period)
          @state_info = args[:state_info] if args.key?(:state_info)
          @target_resources = args[:target_resources] if args.key?(:target_resources)
        end
      end
      
      # Reference to an associated recommendation.
      class GoogleCloudRecommenderV1InsightRecommendationReference
        include Google::Apis::Core::Hashable
      
        # Recommendation resource name, e.g. projects/[PROJECT_NUMBER]/locations/[
        # LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
        end
      end
      
      # Information related to insight state.
      class GoogleCloudRecommenderV1InsightStateInfo
        include Google::Apis::Core::Hashable
      
        # Insight state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A map of metadata for the state, provided by user or automations systems.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Response to the `ListInsights` method.
      class GoogleCloudRecommenderV1ListInsightsResponse
        include Google::Apis::Core::Hashable
      
        # The set of insights for the `parent` resource.
        # Corresponds to the JSON property `insights`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Insight>]
        attr_accessor :insights
      
        # A token that can be used to request the next page of results. This field is
        # empty if there are no additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insights = args[:insights] if args.key?(:insights)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to the `ListRecommendations` method.
      class GoogleCloudRecommenderV1ListRecommendationsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be used to request the next page of results. This field is
        # empty if there are no additional results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The set of recommendations for the `parent` resource.
        # Corresponds to the JSON property `recommendations`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Recommendation>]
        attr_accessor :recommendations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @recommendations = args[:recommendations] if args.key?(:recommendations)
        end
      end
      
      # Request for the `MarkInsightAccepted` method.
      class GoogleCloudRecommenderV1MarkInsightAcceptedRequest
        include Google::Apis::Core::Hashable
      
        # Required. Fingerprint of the Insight. Provides optimistic locking.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. State properties user wish to include with this state. Full replace
        # of the current state_metadata.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Request for the `MarkRecommendationClaimed` Method.
      class GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
        include Google::Apis::Core::Hashable
      
        # Required. Fingerprint of the Recommendation. Provides optimistic locking.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # State properties to include with this state. Overwrites any existing `
        # state_metadata`. Keys must match the regex /^a-z0-9`0,62`$/. Values must match
        # the regex /^[a-zA-Z0-9_./-]`0,255`$/.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Request for the `MarkRecommendationFailed` Method.
      class GoogleCloudRecommenderV1MarkRecommendationFailedRequest
        include Google::Apis::Core::Hashable
      
        # Required. Fingerprint of the Recommendation. Provides optimistic locking.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # State properties to include with this state. Overwrites any existing `
        # state_metadata`. Keys must match the regex /^a-z0-9`0,62`$/. Values must match
        # the regex /^[a-zA-Z0-9_./-]`0,255`$/.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Request for the `MarkRecommendationSucceeded` Method.
      class GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
        include Google::Apis::Core::Hashable
      
        # Required. Fingerprint of the Recommendation. Provides optimistic locking.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # State properties to include with this state. Overwrites any existing `
        # state_metadata`. Keys must match the regex /^a-z0-9`0,62`$/. Values must match
        # the regex /^[a-zA-Z0-9_./-]`0,255`$/.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Contains an operation for a resource loosely based on the JSON-PATCH format
      # with support for: * Custom filters for describing partial array patch. *
      # Extended path values for describing nested arrays. * Custom fields for
      # describing the resource for which the operation is being described. * Allows
      # extension to custom operations not natively supported by RFC6902. See https://
      # tools.ietf.org/html/rfc6902 for details on the original RFC.
      class GoogleCloudRecommenderV1Operation
        include Google::Apis::Core::Hashable
      
        # Type of this operation. Contains one of 'and', 'remove', 'replace', 'move', '
        # copy', 'test' and custom operations. This field is case-insensitive and always
        # populated.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Path to the target field being operated on. If the operation is at the
        # resource level, then path should be "/". This field is always populated.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Set of filters to apply if `path` refers to array elements or nested array
        # elements in order to narrow down to a single unique element that is being
        # tested/modified. This is intended to be an exact match per filter. To perform
        # advanced matching, use path_value_matchers. * Example: ` "/versions/*/name" : "
        # it-123" "/versions/*/targetSize/percent": 20 ` * Example: ` "/bindings/*/role":
        # "roles/admin" "/bindings/*/condition" : null ` * Example: ` "/bindings/*/role"
        # : "roles/admin" "/bindings/*/members/*" : ["x@google.com", "y@google.com"] `
        # When both path_filters and path_value_matchers are set, an implicit AND must
        # be performed.
        # Corresponds to the JSON property `pathFilters`
        # @return [Hash<String,Object>]
        attr_accessor :path_filters
      
        # Similar to path_filters, this contains set of filters to apply if `path` field
        # referes to array elements. This is meant to support value matching beyond
        # exact match. To perform exact match, use path_filters. When both path_filters
        # and path_value_matchers are set, an implicit AND must be performed.
        # Corresponds to the JSON property `pathValueMatchers`
        # @return [Hash<String,Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher>]
        attr_accessor :path_value_matchers
      
        # Contains the fully qualified resource name. This field is always populated. ex:
        # //cloudresourcemanager.googleapis.com/projects/foo.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Type of GCP resource being modified/tested. This field is always populated.
        # Example: cloudresourcemanager.googleapis.com/Project, compute.googleapis.com/
        # Instance
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Can be set with action 'copy' or 'move' to indicate the source field within
        # resource or source_resource, ignored if provided for other operation types.
        # Corresponds to the JSON property `sourcePath`
        # @return [String]
        attr_accessor :source_path
      
        # Can be set with action 'copy' to copy resource configuration across different
        # resources of the same type. Example: A resource clone can be done via action =
        # 'copy', path = "/", from = "/", source_resource = and resource_name = . This
        # field is empty for all other values of `action`.
        # Corresponds to the JSON property `sourceResource`
        # @return [String]
        attr_accessor :source_resource
      
        # Value for the `path` field. Will be set for actions:'add'/'replace'. Maybe set
        # for action: 'test'. Either this or `value_matcher` will be set for 'test'
        # operation. An exact match must be performed.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        # Contains various matching options for values for a GCP resource field.
        # Corresponds to the JSON property `valueMatcher`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1ValueMatcher]
        attr_accessor :value_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @path = args[:path] if args.key?(:path)
          @path_filters = args[:path_filters] if args.key?(:path_filters)
          @path_value_matchers = args[:path_value_matchers] if args.key?(:path_value_matchers)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @source_path = args[:source_path] if args.key?(:source_path)
          @source_resource = args[:source_resource] if args.key?(:source_resource)
          @value = args[:value] if args.key?(:value)
          @value_matcher = args[:value_matcher] if args.key?(:value_matcher)
        end
      end
      
      # Group of operations that need to be performed atomically.
      class GoogleCloudRecommenderV1OperationGroup
        include Google::Apis::Core::Hashable
      
        # List of operations across one or more resources that belong to this group.
        # Loosely based on RFC6902 and should be performed in the order they appear.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A recommendation along with a suggested action. E.g., a rightsizing
      # recommendation for an underutilized VM, IAM role recommendations, etc
      class GoogleCloudRecommenderV1Recommendation
        include Google::Apis::Core::Hashable
      
        # Optional set of additional impact that this recommendation may have when
        # trying to optimize for the primary category. These may be positive or negative.
        # Corresponds to the JSON property `additionalImpact`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact>]
        attr_accessor :additional_impact
      
        # Insights that led to this recommendation.
        # Corresponds to the JSON property `associatedInsights`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationInsightReference>]
        attr_accessor :associated_insights
      
        # Contains what resources are changing and how they are changing.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationContent]
        attr_accessor :content
      
        # Free-form human readable summary in English. The maximum length is 500
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of the Recommendation. Provides optimistic locking when updating
        # states.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Last time this recommendation was refreshed by the system that created it in
        # the first place.
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # Name of recommendation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains the impact a recommendation can have for a given category.
        # Corresponds to the JSON property `primaryImpact`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1Impact]
        attr_accessor :primary_impact
      
        # Contains an identifier for a subtype of recommendations produced for the same
        # recommender. Subtype is a function of content and impact, meaning a new
        # subtype might be added when significant changes to `content` or `
        # primary_impact.category` are introduced. See the Recommenders section to see a
        # list of subtypes for a given Recommender. Examples: For recommender = "google.
        # iam.policy.Recommender", recommender_subtype can be one of "REMOVE_ROLE"/"
        # REPLACE_ROLE"
        # Corresponds to the JSON property `recommenderSubtype`
        # @return [String]
        attr_accessor :recommender_subtype
      
        # Information for state. Contains state and metadata.
        # Corresponds to the JSON property `stateInfo`
        # @return [Google::Apis::RecommenderV1::GoogleCloudRecommenderV1RecommendationStateInfo]
        attr_accessor :state_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_impact = args[:additional_impact] if args.key?(:additional_impact)
          @associated_insights = args[:associated_insights] if args.key?(:associated_insights)
          @content = args[:content] if args.key?(:content)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @name = args[:name] if args.key?(:name)
          @primary_impact = args[:primary_impact] if args.key?(:primary_impact)
          @recommender_subtype = args[:recommender_subtype] if args.key?(:recommender_subtype)
          @state_info = args[:state_info] if args.key?(:state_info)
        end
      end
      
      # Contains what resources are changing and how they are changing.
      class GoogleCloudRecommenderV1RecommendationContent
        include Google::Apis::Core::Hashable
      
        # Operations to one or more Google Cloud resources grouped in such a way that,
        # all operations within one group are expected to be performed atomically and in
        # an order.
        # Corresponds to the JSON property `operationGroups`
        # @return [Array<Google::Apis::RecommenderV1::GoogleCloudRecommenderV1OperationGroup>]
        attr_accessor :operation_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_groups = args[:operation_groups] if args.key?(:operation_groups)
        end
      end
      
      # Reference to an associated insight.
      class GoogleCloudRecommenderV1RecommendationInsightReference
        include Google::Apis::Core::Hashable
      
        # Insight resource name, e.g. projects/[PROJECT_NUMBER]/locations/[LOCATION]/
        # insightTypes/[INSIGHT_TYPE_ID]/insights/[INSIGHT_ID]
        # Corresponds to the JSON property `insight`
        # @return [String]
        attr_accessor :insight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insight = args[:insight] if args.key?(:insight)
        end
      end
      
      # Information for state. Contains state and metadata.
      class GoogleCloudRecommenderV1RecommendationStateInfo
        include Google::Apis::Core::Hashable
      
        # The state of the recommendation, Eg ACTIVE, SUCCEEDED, FAILED.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A map of metadata for the state, provided by user or automations systems.
        # Corresponds to the JSON property `stateMetadata`
        # @return [Hash<String,String>]
        attr_accessor :state_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_metadata = args[:state_metadata] if args.key?(:state_metadata)
        end
      end
      
      # Contains various matching options for values for a GCP resource field.
      class GoogleCloudRecommenderV1ValueMatcher
        include Google::Apis::Core::Hashable
      
        # To be used for full regex matching. The regular expression is using the Google
        # RE2 syntax (https://github.com/google/re2/wiki/Syntax), so to be used with RE2:
        # :FullMatch
        # Corresponds to the JSON property `matchesPattern`
        # @return [String]
        attr_accessor :matches_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matches_pattern = args[:matches_pattern] if args.key?(:matches_pattern)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
    end
  end
end
