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
    module GamesV1
      
      # An achievement definition object.
      class AchievementDefinition
        include Google::Apis::Core::Hashable
      
        # The type of the achievement.
        # Corresponds to the JSON property `achievementType`
        # @return [String]
        attr_accessor :achievement_type
      
        # The description of the achievement.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Experience points which will be earned when unlocking this achievement.
        # Corresponds to the JSON property `experiencePoints`
        # @return [Fixnum]
        attr_accessor :experience_points
      
        # The total steps for an incremental achievement as a string.
        # Corresponds to the JSON property `formattedTotalSteps`
        # @return [String]
        attr_accessor :formatted_total_steps
      
        # The ID of the achievement.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The initial state of the achievement.
        # Corresponds to the JSON property `initialState`
        # @return [String]
        attr_accessor :initial_state
      
        # Indicates whether the revealed icon image being returned is a default image,
        # or is provided by the game.
        # Corresponds to the JSON property `isRevealedIconUrlDefault`
        # @return [Boolean]
        attr_accessor :is_revealed_icon_url_default
        alias_method :is_revealed_icon_url_default?, :is_revealed_icon_url_default
      
        # Indicates whether the unlocked icon image being returned is a default image,
        # or is game-provided.
        # Corresponds to the JSON property `isUnlockedIconUrlDefault`
        # @return [Boolean]
        attr_accessor :is_unlocked_icon_url_default
        alias_method :is_unlocked_icon_url_default?, :is_unlocked_icon_url_default
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementDefinition`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the achievement.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The image URL for the revealed achievement icon.
        # Corresponds to the JSON property `revealedIconUrl`
        # @return [String]
        attr_accessor :revealed_icon_url
      
        # The total steps for an incremental achievement.
        # Corresponds to the JSON property `totalSteps`
        # @return [Fixnum]
        attr_accessor :total_steps
      
        # The image URL for the unlocked achievement icon.
        # Corresponds to the JSON property `unlockedIconUrl`
        # @return [String]
        attr_accessor :unlocked_icon_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_type = args[:achievement_type] if args.key?(:achievement_type)
          @description = args[:description] if args.key?(:description)
          @experience_points = args[:experience_points] if args.key?(:experience_points)
          @formatted_total_steps = args[:formatted_total_steps] if args.key?(:formatted_total_steps)
          @id = args[:id] if args.key?(:id)
          @initial_state = args[:initial_state] if args.key?(:initial_state)
          @is_revealed_icon_url_default = args[:is_revealed_icon_url_default] if args.key?(:is_revealed_icon_url_default)
          @is_unlocked_icon_url_default = args[:is_unlocked_icon_url_default] if args.key?(:is_unlocked_icon_url_default)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @revealed_icon_url = args[:revealed_icon_url] if args.key?(:revealed_icon_url)
          @total_steps = args[:total_steps] if args.key?(:total_steps)
          @unlocked_icon_url = args[:unlocked_icon_url] if args.key?(:unlocked_icon_url)
        end
      end
      
      # A list of achievement definition objects.
      class ListAchievementDefinitionsResponse
        include Google::Apis::Core::Hashable
      
        # The achievement definitions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::AchievementDefinition>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementDefinitionsListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An achievement increment response
      class AchievementIncrementResponse
        include Google::Apis::Core::Hashable
      
        # The current steps recorded for this incremental achievement.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementIncrementResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the current steps for the achievement has reached the number of steps
        # required to unlock.
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_steps = args[:current_steps] if args.key?(:current_steps)
          @kind = args[:kind] if args.key?(:kind)
          @newly_unlocked = args[:newly_unlocked] if args.key?(:newly_unlocked)
        end
      end
      
      # An achievement reveal response
      class AchievementRevealResponse
        include Google::Apis::Core::Hashable
      
        # The current state of the achievement for which a reveal was attempted. This
        # might be `UNLOCKED` if the achievement was already unlocked.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementRevealResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state = args[:current_state] if args.key?(:current_state)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # An achievement set steps at least response.
      class AchievementSetStepsAtLeastResponse
        include Google::Apis::Core::Hashable
      
        # The current steps recorded for this incremental achievement.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementSetStepsAtLeastResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the current steps for the achievement has reached the number of steps
        # required to unlock.
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_steps = args[:current_steps] if args.key?(:current_steps)
          @kind = args[:kind] if args.key?(:kind)
          @newly_unlocked = args[:newly_unlocked] if args.key?(:newly_unlocked)
        end
      end
      
      # An achievement unlock response
      class AchievementUnlockResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementUnlockResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether this achievement was newly unlocked (that is, whether the unlock
        # request for the achievement was the first for the player).
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @newly_unlocked = args[:newly_unlocked] if args.key?(:newly_unlocked)
        end
      end
      
      # A list of achievement update requests.
      class AchievementUpdateMultipleRequest
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementUpdateMultipleRequest`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The individual achievement update requests.
        # Corresponds to the JSON property `updates`
        # @return [Array<Google::Apis::GamesV1::UpdateAchievementRequest>]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @updates = args[:updates] if args.key?(:updates)
        end
      end
      
      # Response message for UpdateMultipleAchievements rpc.
      class AchievementUpdateMultipleResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementUpdateMultipleResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The updated state of the achievements.
        # Corresponds to the JSON property `updatedAchievements`
        # @return [Array<Google::Apis::GamesV1::UpdateAchievementResponse>]
        attr_accessor :updated_achievements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @updated_achievements = args[:updated_achievements] if args.key?(:updated_achievements)
        end
      end
      
      # A request to update an achievement.
      class UpdateAchievementRequest
        include Google::Apis::Core::Hashable
      
        # The achievement this update is being applied to.
        # Corresponds to the JSON property `achievementId`
        # @return [String]
        attr_accessor :achievement_id
      
        # The payload to request to increment an achievement.
        # Corresponds to the JSON property `incrementPayload`
        # @return [Google::Apis::GamesV1::GamesAchievementIncrement]
        attr_accessor :increment_payload
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementUpdateRequest`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The payload to request to increment an achievement.
        # Corresponds to the JSON property `setStepsAtLeastPayload`
        # @return [Google::Apis::GamesV1::GamesAchievementSetStepsAtLeast]
        attr_accessor :set_steps_at_least_payload
      
        # The type of update being applied.
        # Corresponds to the JSON property `updateType`
        # @return [String]
        attr_accessor :update_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_id = args[:achievement_id] if args.key?(:achievement_id)
          @increment_payload = args[:increment_payload] if args.key?(:increment_payload)
          @kind = args[:kind] if args.key?(:kind)
          @set_steps_at_least_payload = args[:set_steps_at_least_payload] if args.key?(:set_steps_at_least_payload)
          @update_type = args[:update_type] if args.key?(:update_type)
        end
      end
      
      # An updated achievement.
      class UpdateAchievementResponse
        include Google::Apis::Core::Hashable
      
        # The achievement this update is was applied to.
        # Corresponds to the JSON property `achievementId`
        # @return [String]
        attr_accessor :achievement_id
      
        # The current state of the achievement.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # The current steps recorded for this achievement if it is incremental.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#achievementUpdateResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether this achievement was newly unlocked (that is, whether the unlock
        # request for the achievement was the first for the player).
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        # Whether the requested updates actually affected the achievement.
        # Corresponds to the JSON property `updateOccurred`
        # @return [Boolean]
        attr_accessor :update_occurred
        alias_method :update_occurred?, :update_occurred
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_id = args[:achievement_id] if args.key?(:achievement_id)
          @current_state = args[:current_state] if args.key?(:current_state)
          @current_steps = args[:current_steps] if args.key?(:current_steps)
          @kind = args[:kind] if args.key?(:kind)
          @newly_unlocked = args[:newly_unlocked] if args.key?(:newly_unlocked)
          @update_occurred = args[:update_occurred] if args.key?(:update_occurred)
        end
      end
      
      # The Application resource.
      class Application
        include Google::Apis::Core::Hashable
      
        # The number of achievements visible to the currently authenticated player.
        # Corresponds to the JSON property `achievement_count`
        # @return [Fixnum]
        attr_accessor :achievement_count
      
        # The assets of the application.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::GamesV1::ImageAsset>]
        attr_accessor :assets
      
        # The author of the application.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # An application category object.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::GamesV1::ApplicationCategory]
        attr_accessor :category
      
        # The description of the application.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A list of features that have been enabled for the application.
        # Corresponds to the JSON property `enabledFeatures`
        # @return [Array<String>]
        attr_accessor :enabled_features
      
        # The ID of the application.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The instances of the application.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::GamesV1::Instance>]
        attr_accessor :instances
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#application`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last updated timestamp of the application.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [Fixnum]
        attr_accessor :last_updated_timestamp
      
        # The number of leaderboards visible to the currently authenticated player.
        # Corresponds to the JSON property `leaderboard_count`
        # @return [Fixnum]
        attr_accessor :leaderboard_count
      
        # The name of the application.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A hint to the client UI for what color to use as an app-themed color. The
        # color is given as an RGB triplet (e.g. "E0E0E0").
        # Corresponds to the JSON property `themeColor`
        # @return [String]
        attr_accessor :theme_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_count = args[:achievement_count] if args.key?(:achievement_count)
          @assets = args[:assets] if args.key?(:assets)
          @author = args[:author] if args.key?(:author)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @enabled_features = args[:enabled_features] if args.key?(:enabled_features)
          @id = args[:id] if args.key?(:id)
          @instances = args[:instances] if args.key?(:instances)
          @kind = args[:kind] if args.key?(:kind)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
          @leaderboard_count = args[:leaderboard_count] if args.key?(:leaderboard_count)
          @name = args[:name] if args.key?(:name)
          @theme_color = args[:theme_color] if args.key?(:theme_color)
        end
      end
      
      # An application category object.
      class ApplicationCategory
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#applicationCategory`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The primary category.
        # Corresponds to the JSON property `primary`
        # @return [String]
        attr_accessor :primary
      
        # The secondary category.
        # Corresponds to the JSON property `secondary`
        # @return [String]
        attr_accessor :secondary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @primary = args[:primary] if args.key?(:primary)
          @secondary = args[:secondary] if args.key?(:secondary)
        end
      end
      
      # A third party application verification response resource.
      class ApplicationVerifyResponse
        include Google::Apis::Core::Hashable
      
        # An alternate ID that was once used for the player that was issued the auth
        # token used in this request. (This field is not normally populated.)
        # Corresponds to the JSON property `alternate_player_id`
        # @return [String]
        attr_accessor :alternate_player_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#applicationVerifyResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the player that was issued the auth token used in this request.
        # Corresponds to the JSON property `player_id`
        # @return [String]
        attr_accessor :player_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_player_id = args[:alternate_player_id] if args.key?(:alternate_player_id)
          @kind = args[:kind] if args.key?(:kind)
          @player_id = args[:player_id] if args.key?(:player_id)
        end
      end
      
      # Data related to individual game categories.
      class Category
        include Google::Apis::Core::Hashable
      
        # The category name.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Experience points earned in this category.
        # Corresponds to the JSON property `experiencePoints`
        # @return [Fixnum]
        attr_accessor :experience_points
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#category`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @experience_points = args[:experience_points] if args.key?(:experience_points)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A third party list metagame categories response.
      class ListCategoryResponse
        include Google::Apis::Core::Hashable
      
        # The list of categories with usage data.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Category>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#categoryListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A batch update failure resource.
      class EventBatchRecordFailure
        include Google::Apis::Core::Hashable
      
        # The cause for the update failure.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventBatchRecordFailure`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An event period time range.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::GamesV1::EventPeriodRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_cause = args[:failure_cause] if args.key?(:failure_cause)
          @kind = args[:kind] if args.key?(:kind)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # An event child relationship resource.
      class EventChild
        include Google::Apis::Core::Hashable
      
        # The ID of the child event.
        # Corresponds to the JSON property `childId`
        # @return [String]
        attr_accessor :child_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventChild`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_id = args[:child_id] if args.key?(:child_id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # An event definition resource.
      class EventDefinition
        include Google::Apis::Core::Hashable
      
        # A list of events that are a child of this event.
        # Corresponds to the JSON property `childEvents`
        # @return [Array<Google::Apis::GamesV1::EventChild>]
        attr_accessor :child_events
      
        # Description of what this event represents.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name to display for the event.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The ID of the event.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The base URL for the image that represents the event.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Indicates whether the icon image being returned is a default image, or is game-
        # provided.
        # Corresponds to the JSON property `isDefaultImageUrl`
        # @return [Boolean]
        attr_accessor :is_default_image_url
        alias_method :is_default_image_url?, :is_default_image_url
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventDefinition`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The visibility of event being tracked in this definition.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_events = args[:child_events] if args.key?(:child_events)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @image_url = args[:image_url] if args.key?(:image_url)
          @is_default_image_url = args[:is_default_image_url] if args.key?(:is_default_image_url)
          @kind = args[:kind] if args.key?(:kind)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # A ListDefinitions response.
      class ListEventDefinitionResponse
        include Google::Apis::Core::Hashable
      
        # The event definitions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::EventDefinition>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventDefinitionListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An event period time range.
      class EventPeriodRange
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventPeriodRange`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time when this update period ends, in millis, since 1970 UTC (Unix Epoch).
        # Corresponds to the JSON property `periodEndMillis`
        # @return [Fixnum]
        attr_accessor :period_end_millis
      
        # The time when this update period begins, in millis, since 1970 UTC (Unix Epoch)
        # .
        # Corresponds to the JSON property `periodStartMillis`
        # @return [Fixnum]
        attr_accessor :period_start_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @period_end_millis = args[:period_end_millis] if args.key?(:period_end_millis)
          @period_start_millis = args[:period_start_millis] if args.key?(:period_start_millis)
        end
      end
      
      # An event period update resource.
      class EventPeriodUpdate
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventPeriodUpdate`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An event period time range.
        # Corresponds to the JSON property `timePeriod`
        # @return [Google::Apis::GamesV1::EventPeriodRange]
        attr_accessor :time_period
      
        # The updates being made for this time period.
        # Corresponds to the JSON property `updates`
        # @return [Array<Google::Apis::GamesV1::UpdateEventRequest>]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @time_period = args[:time_period] if args.key?(:time_period)
          @updates = args[:updates] if args.key?(:updates)
        end
      end
      
      # An event update failure resource.
      class EventRecordFailure
        include Google::Apis::Core::Hashable
      
        # The ID of the event that was not updated.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # The cause for the update failure.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventRecordFailure`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @failure_cause = args[:failure_cause] if args.key?(:failure_cause)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # An event period update resource.
      class EventRecordRequest
        include Google::Apis::Core::Hashable
      
        # The current time when this update was sent, in milliseconds, since 1970 UTC (
        # Unix Epoch).
        # Corresponds to the JSON property `currentTimeMillis`
        # @return [Fixnum]
        attr_accessor :current_time_millis
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventRecordRequest`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The request ID used to identify this attempt to record events.
        # Corresponds to the JSON property `requestId`
        # @return [Fixnum]
        attr_accessor :request_id
      
        # A list of the time period updates being made in this request.
        # Corresponds to the JSON property `timePeriods`
        # @return [Array<Google::Apis::GamesV1::EventPeriodUpdate>]
        attr_accessor :time_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_time_millis = args[:current_time_millis] if args.key?(:current_time_millis)
          @kind = args[:kind] if args.key?(:kind)
          @request_id = args[:request_id] if args.key?(:request_id)
          @time_periods = args[:time_periods] if args.key?(:time_periods)
        end
      end
      
      # An event period update resource.
      class UpdateEventRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the event being modified in this update.
        # Corresponds to the JSON property `definitionId`
        # @return [String]
        attr_accessor :definition_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventUpdateRequest`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of times this event occurred in this time period.
        # Corresponds to the JSON property `updateCount`
        # @return [Fixnum]
        attr_accessor :update_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition_id = args[:definition_id] if args.key?(:definition_id)
          @kind = args[:kind] if args.key?(:kind)
          @update_count = args[:update_count] if args.key?(:update_count)
        end
      end
      
      # An event period update resource.
      class UpdateEventResponse
        include Google::Apis::Core::Hashable
      
        # Any batch-wide failures which occurred applying updates.
        # Corresponds to the JSON property `batchFailures`
        # @return [Array<Google::Apis::GamesV1::EventBatchRecordFailure>]
        attr_accessor :batch_failures
      
        # Any failures updating a particular event.
        # Corresponds to the JSON property `eventFailures`
        # @return [Array<Google::Apis::GamesV1::EventRecordFailure>]
        attr_accessor :event_failures
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#eventUpdateResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current status of any updated events
        # Corresponds to the JSON property `playerEvents`
        # @return [Array<Google::Apis::GamesV1::PlayerEvent>]
        attr_accessor :player_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_failures = args[:batch_failures] if args.key?(:batch_failures)
          @event_failures = args[:event_failures] if args.key?(:event_failures)
          @kind = args[:kind] if args.key?(:kind)
          @player_events = args[:player_events] if args.key?(:player_events)
        end
      end
      
      # The payload to request to increment an achievement.
      class GamesAchievementIncrement
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#GamesAchievementIncrement`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The requestId associated with an increment to an achievement.
        # Corresponds to the JSON property `requestId`
        # @return [Fixnum]
        attr_accessor :request_id
      
        # The number of steps to be incremented.
        # Corresponds to the JSON property `steps`
        # @return [Fixnum]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @request_id = args[:request_id] if args.key?(:request_id)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # The payload to request to increment an achievement.
      class GamesAchievementSetStepsAtLeast
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#GamesAchievementSetStepsAtLeast`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The minimum number of steps for the achievement to be set to.
        # Corresponds to the JSON property `steps`
        # @return [Fixnum]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # An image asset object.
      class ImageAsset
        include Google::Apis::Core::Hashable
      
        # The height of the asset.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#imageAsset`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the asset.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL of the asset.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The width of the asset.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @url = args[:url] if args.key?(:url)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # The Instance resource.
      class Instance
        include Google::Apis::Core::Hashable
      
        # URI which shows where a user can acquire this instance.
        # Corresponds to the JSON property `acquisitionUri`
        # @return [String]
        attr_accessor :acquisition_uri
      
        # The Android instance details resource.
        # Corresponds to the JSON property `androidInstance`
        # @return [Google::Apis::GamesV1::InstanceAndroidDetails]
        attr_accessor :android_instance
      
        # The iOS details resource.
        # Corresponds to the JSON property `iosInstance`
        # @return [Google::Apis::GamesV1::InstanceIosDetails]
        attr_accessor :ios_instance
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#instance`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Localized display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The platform type.
        # Corresponds to the JSON property `platformType`
        # @return [String]
        attr_accessor :platform_type
      
        # Flag to show if this game instance supports realtime play.
        # Corresponds to the JSON property `realtimePlay`
        # @return [Boolean]
        attr_accessor :realtime_play
        alias_method :realtime_play?, :realtime_play
      
        # Flag to show if this game instance supports turn based play.
        # Corresponds to the JSON property `turnBasedPlay`
        # @return [Boolean]
        attr_accessor :turn_based_play
        alias_method :turn_based_play?, :turn_based_play
      
        # The Web details resource.
        # Corresponds to the JSON property `webInstance`
        # @return [Google::Apis::GamesV1::InstanceWebDetails]
        attr_accessor :web_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquisition_uri = args[:acquisition_uri] if args.key?(:acquisition_uri)
          @android_instance = args[:android_instance] if args.key?(:android_instance)
          @ios_instance = args[:ios_instance] if args.key?(:ios_instance)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @platform_type = args[:platform_type] if args.key?(:platform_type)
          @realtime_play = args[:realtime_play] if args.key?(:realtime_play)
          @turn_based_play = args[:turn_based_play] if args.key?(:turn_based_play)
          @web_instance = args[:web_instance] if args.key?(:web_instance)
        end
      end
      
      # The Android instance details resource.
      class InstanceAndroidDetails
        include Google::Apis::Core::Hashable
      
        # Flag indicating whether the anti-piracy check is enabled.
        # Corresponds to the JSON property `enablePiracyCheck`
        # @return [Boolean]
        attr_accessor :enable_piracy_check
        alias_method :enable_piracy_check?, :enable_piracy_check
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#instanceAndroidDetails`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Android package name which maps to Google Play URL.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Indicates that this instance is the default for new installations.
        # Corresponds to the JSON property `preferred`
        # @return [Boolean]
        attr_accessor :preferred
        alias_method :preferred?, :preferred
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_piracy_check = args[:enable_piracy_check] if args.key?(:enable_piracy_check)
          @kind = args[:kind] if args.key?(:kind)
          @package_name = args[:package_name] if args.key?(:package_name)
          @preferred = args[:preferred] if args.key?(:preferred)
        end
      end
      
      # The iOS details resource.
      class InstanceIosDetails
        include Google::Apis::Core::Hashable
      
        # Bundle identifier.
        # Corresponds to the JSON property `bundleIdentifier`
        # @return [String]
        attr_accessor :bundle_identifier
      
        # iTunes App ID.
        # Corresponds to the JSON property `itunesAppId`
        # @return [String]
        attr_accessor :itunes_app_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#instanceIosDetails`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Indicates that this instance is the default for new installations on iPad
        # devices.
        # Corresponds to the JSON property `preferredForIpad`
        # @return [Boolean]
        attr_accessor :preferred_for_ipad
        alias_method :preferred_for_ipad?, :preferred_for_ipad
      
        # Indicates that this instance is the default for new installations on iPhone
        # devices.
        # Corresponds to the JSON property `preferredForIphone`
        # @return [Boolean]
        attr_accessor :preferred_for_iphone
        alias_method :preferred_for_iphone?, :preferred_for_iphone
      
        # Flag to indicate if this instance supports iPad.
        # Corresponds to the JSON property `supportIpad`
        # @return [Boolean]
        attr_accessor :support_ipad
        alias_method :support_ipad?, :support_ipad
      
        # Flag to indicate if this instance supports iPhone.
        # Corresponds to the JSON property `supportIphone`
        # @return [Boolean]
        attr_accessor :support_iphone
        alias_method :support_iphone?, :support_iphone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_identifier = args[:bundle_identifier] if args.key?(:bundle_identifier)
          @itunes_app_id = args[:itunes_app_id] if args.key?(:itunes_app_id)
          @kind = args[:kind] if args.key?(:kind)
          @preferred_for_ipad = args[:preferred_for_ipad] if args.key?(:preferred_for_ipad)
          @preferred_for_iphone = args[:preferred_for_iphone] if args.key?(:preferred_for_iphone)
          @support_ipad = args[:support_ipad] if args.key?(:support_ipad)
          @support_iphone = args[:support_iphone] if args.key?(:support_iphone)
        end
      end
      
      # The Web details resource.
      class InstanceWebDetails
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#instanceWebDetails`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Launch URL for the game.
        # Corresponds to the JSON property `launchUrl`
        # @return [String]
        attr_accessor :launch_url
      
        # Indicates that this instance is the default for new installations.
        # Corresponds to the JSON property `preferred`
        # @return [Boolean]
        attr_accessor :preferred
        alias_method :preferred?, :preferred
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @launch_url = args[:launch_url] if args.key?(:launch_url)
          @preferred = args[:preferred] if args.key?(:preferred)
        end
      end
      
      # The Leaderboard resource.
      class Leaderboard
        include Google::Apis::Core::Hashable
      
        # The icon for the leaderboard.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The leaderboard ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether the icon image being returned is a default image, or is game-
        # provided.
        # Corresponds to the JSON property `isIconUrlDefault`
        # @return [Boolean]
        attr_accessor :is_icon_url_default
        alias_method :is_icon_url_default?, :is_icon_url_default
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#leaderboard`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the leaderboard.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # How scores are ordered.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @id = args[:id] if args.key?(:id)
          @is_icon_url_default = args[:is_icon_url_default] if args.key?(:is_icon_url_default)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # The Leaderboard Entry resource.
      class LeaderboardEntry
        include Google::Apis::Core::Hashable
      
        # The localized string for the numerical value of this score.
        # Corresponds to the JSON property `formattedScore`
        # @return [String]
        attr_accessor :formatted_score
      
        # The localized string for the rank of this score for this leaderboard.
        # Corresponds to the JSON property `formattedScoreRank`
        # @return [String]
        attr_accessor :formatted_score_rank
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#leaderboardEntry`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        # The rank of this score for this leaderboard.
        # Corresponds to the JSON property `scoreRank`
        # @return [Fixnum]
        attr_accessor :score_rank
      
        # Additional information about the score. Values must contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The numerical value of this score.
        # Corresponds to the JSON property `scoreValue`
        # @return [Fixnum]
        attr_accessor :score_value
      
        # The time span of this high score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        # The timestamp at which this score was recorded, in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `writeTimestampMillis`
        # @return [Fixnum]
        attr_accessor :write_timestamp_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_score = args[:formatted_score] if args.key?(:formatted_score)
          @formatted_score_rank = args[:formatted_score_rank] if args.key?(:formatted_score_rank)
          @kind = args[:kind] if args.key?(:kind)
          @player = args[:player] if args.key?(:player)
          @score_rank = args[:score_rank] if args.key?(:score_rank)
          @score_tag = args[:score_tag] if args.key?(:score_tag)
          @score_value = args[:score_value] if args.key?(:score_value)
          @time_span = args[:time_span] if args.key?(:time_span)
          @write_timestamp_millis = args[:write_timestamp_millis] if args.key?(:write_timestamp_millis)
        end
      end
      
      # A list of leaderboard objects.
      class ListLeaderboardResponse
        include Google::Apis::Core::Hashable
      
        # The leaderboards.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Leaderboard>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#leaderboardListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A score rank in a leaderboard.
      class LeaderboardScoreRank
        include Google::Apis::Core::Hashable
      
        # The number of scores in the leaderboard as a string.
        # Corresponds to the JSON property `formattedNumScores`
        # @return [String]
        attr_accessor :formatted_num_scores
      
        # The rank in the leaderboard as a string.
        # Corresponds to the JSON property `formattedRank`
        # @return [String]
        attr_accessor :formatted_rank
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#leaderboardScoreRank`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of scores in the leaderboard.
        # Corresponds to the JSON property `numScores`
        # @return [Fixnum]
        attr_accessor :num_scores
      
        # The rank in the leaderboard.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_num_scores = args[:formatted_num_scores] if args.key?(:formatted_num_scores)
          @formatted_rank = args[:formatted_rank] if args.key?(:formatted_rank)
          @kind = args[:kind] if args.key?(:kind)
          @num_scores = args[:num_scores] if args.key?(:num_scores)
          @rank = args[:rank] if args.key?(:rank)
        end
      end
      
      # A ListScores response.
      class LeaderboardScores
        include Google::Apis::Core::Hashable
      
        # The scores in the leaderboard.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::LeaderboardEntry>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#leaderboardScores`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of scores in the leaderboard.
        # Corresponds to the JSON property `numScores`
        # @return [Fixnum]
        attr_accessor :num_scores
      
        # The Leaderboard Entry resource.
        # Corresponds to the JSON property `playerScore`
        # @return [Google::Apis::GamesV1::LeaderboardEntry]
        attr_accessor :player_score
      
        # The pagination token for the previous page of results.
        # Corresponds to the JSON property `prevPageToken`
        # @return [String]
        attr_accessor :prev_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @num_scores = args[:num_scores] if args.key?(:num_scores)
          @player_score = args[:player_score] if args.key?(:player_score)
          @prev_page_token = args[:prev_page_token] if args.key?(:prev_page_token)
        end
      end
      
      # The metagame config resource
      class MetagameConfig
        include Google::Apis::Core::Hashable
      
        # Current version of the metagame configuration data. When this data is updated,
        # the version number will be increased by one.
        # Corresponds to the JSON property `currentVersion`
        # @return [Fixnum]
        attr_accessor :current_version
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#metagameConfig`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of player levels.
        # Corresponds to the JSON property `playerLevels`
        # @return [Array<Google::Apis::GamesV1::PlayerLevel>]
        attr_accessor :player_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_version = args[:current_version] if args.key?(:current_version)
          @kind = args[:kind] if args.key?(:kind)
          @player_levels = args[:player_levels] if args.key?(:player_levels)
        end
      end
      
      # A Player resource.
      class Player
        include Google::Apis::Core::Hashable
      
        # The base URL for the image that represents the player.
        # Corresponds to the JSON property `avatarImageUrl`
        # @return [String]
        attr_accessor :avatar_image_url
      
        # The url to the landscape mode player banner image.
        # Corresponds to the JSON property `bannerUrlLandscape`
        # @return [String]
        attr_accessor :banner_url_landscape
      
        # The url to the portrait mode player banner image.
        # Corresponds to the JSON property `bannerUrlPortrait`
        # @return [String]
        attr_accessor :banner_url_portrait
      
        # The name to display for the player.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # 1P/3P metadata about the player's experience.
        # Corresponds to the JSON property `experienceInfo`
        # @return [Google::Apis::GamesV1::PlayerExperienceInfo]
        attr_accessor :experience_info
      
        # The friend status of the given player, relative to the requester. This is
        # unset if the player is not sharing their friends list with the game.
        # Corresponds to the JSON property `friendStatus`
        # @return [String]
        attr_accessor :friend_status
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#player`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A representation of the individual components of the name.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::GamesV1::Player::Name]
        attr_accessor :name
      
        # The player ID that was used for this player the first time they signed into
        # the game in question. This is only populated for calls to player.get for the
        # requesting player, only if the player ID has subsequently changed, and only to
        # clients that support remapping player IDs.
        # Corresponds to the JSON property `originalPlayerId`
        # @return [String]
        attr_accessor :original_player_id
      
        # The ID of the player.
        # Corresponds to the JSON property `playerId`
        # @return [String]
        attr_accessor :player_id
      
        # Profile settings
        # Corresponds to the JSON property `profileSettings`
        # @return [Google::Apis::GamesV1::ProfileSettings]
        attr_accessor :profile_settings
      
        # The player's title rewarded for their game activities.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_image_url = args[:avatar_image_url] if args.key?(:avatar_image_url)
          @banner_url_landscape = args[:banner_url_landscape] if args.key?(:banner_url_landscape)
          @banner_url_portrait = args[:banner_url_portrait] if args.key?(:banner_url_portrait)
          @display_name = args[:display_name] if args.key?(:display_name)
          @experience_info = args[:experience_info] if args.key?(:experience_info)
          @friend_status = args[:friend_status] if args.key?(:friend_status)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @original_player_id = args[:original_player_id] if args.key?(:original_player_id)
          @player_id = args[:player_id] if args.key?(:player_id)
          @profile_settings = args[:profile_settings] if args.key?(:profile_settings)
          @title = args[:title] if args.key?(:title)
        end
        
        # A representation of the individual components of the name.
        class Name
          include Google::Apis::Core::Hashable
        
          # The family name of this player. In some places, this is known as the last name.
          # Corresponds to the JSON property `familyName`
          # @return [String]
          attr_accessor :family_name
        
          # The given name of this player. In some places, this is known as the first name.
          # Corresponds to the JSON property `givenName`
          # @return [String]
          attr_accessor :given_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @family_name = args[:family_name] if args.key?(:family_name)
            @given_name = args[:given_name] if args.key?(:given_name)
          end
        end
      end
      
      # An achievement object.
      class PlayerAchievement
        include Google::Apis::Core::Hashable
      
        # The state of the achievement.
        # Corresponds to the JSON property `achievementState`
        # @return [String]
        attr_accessor :achievement_state
      
        # The current steps for an incremental achievement.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Experience points earned for the achievement. This field is absent for
        # achievements that have not yet been unlocked and 0 for achievements that have
        # been unlocked by testers but that are unpublished.
        # Corresponds to the JSON property `experiencePoints`
        # @return [Fixnum]
        attr_accessor :experience_points
      
        # The current steps for an incremental achievement as a string.
        # Corresponds to the JSON property `formattedCurrentStepsString`
        # @return [String]
        attr_accessor :formatted_current_steps_string
      
        # The ID of the achievement.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerAchievement`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp of the last modification to this achievement's state.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [Fixnum]
        attr_accessor :last_updated_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_state = args[:achievement_state] if args.key?(:achievement_state)
          @current_steps = args[:current_steps] if args.key?(:current_steps)
          @experience_points = args[:experience_points] if args.key?(:experience_points)
          @formatted_current_steps_string = args[:formatted_current_steps_string] if args.key?(:formatted_current_steps_string)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
        end
      end
      
      # A list of achievement objects.
      class ListPlayerAchievementResponse
        include Google::Apis::Core::Hashable
      
        # The achievements.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerAchievement>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerAchievementListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An event status resource.
      class PlayerEvent
        include Google::Apis::Core::Hashable
      
        # The ID of the event definition.
        # Corresponds to the JSON property `definitionId`
        # @return [String]
        attr_accessor :definition_id
      
        # The current number of times this event has occurred, as a string. The
        # formatting of this string depends on the configuration of your event in the
        # Play Games Developer Console.
        # Corresponds to the JSON property `formattedNumEvents`
        # @return [String]
        attr_accessor :formatted_num_events
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerEvent`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current number of times this event has occurred.
        # Corresponds to the JSON property `numEvents`
        # @return [Fixnum]
        attr_accessor :num_events
      
        # The ID of the player.
        # Corresponds to the JSON property `playerId`
        # @return [String]
        attr_accessor :player_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition_id = args[:definition_id] if args.key?(:definition_id)
          @formatted_num_events = args[:formatted_num_events] if args.key?(:formatted_num_events)
          @kind = args[:kind] if args.key?(:kind)
          @num_events = args[:num_events] if args.key?(:num_events)
          @player_id = args[:player_id] if args.key?(:player_id)
        end
      end
      
      # A ListByPlayer response.
      class ListPlayerEventResponse
        include Google::Apis::Core::Hashable
      
        # The player events.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerEvent>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerEventListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 1P/3P metadata about the player's experience.
      class PlayerExperienceInfo
        include Google::Apis::Core::Hashable
      
        # The current number of experience points for the player.
        # Corresponds to the JSON property `currentExperiencePoints`
        # @return [Fixnum]
        attr_accessor :current_experience_points
      
        # 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `currentLevel`
        # @return [Google::Apis::GamesV1::PlayerLevel]
        attr_accessor :current_level
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerExperienceInfo`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp when the player was leveled up, in millis since Unix epoch UTC.
        # Corresponds to the JSON property `lastLevelUpTimestampMillis`
        # @return [Fixnum]
        attr_accessor :last_level_up_timestamp_millis
      
        # 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `nextLevel`
        # @return [Google::Apis::GamesV1::PlayerLevel]
        attr_accessor :next_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_experience_points = args[:current_experience_points] if args.key?(:current_experience_points)
          @current_level = args[:current_level] if args.key?(:current_level)
          @kind = args[:kind] if args.key?(:kind)
          @last_level_up_timestamp_millis = args[:last_level_up_timestamp_millis] if args.key?(:last_level_up_timestamp_millis)
          @next_level = args[:next_level] if args.key?(:next_level)
        end
      end
      
      # A player leaderboard score object.
      class PlayerLeaderboardScore
        include Google::Apis::Core::Hashable
      
        # A score rank in a leaderboard.
        # Corresponds to the JSON property `friendsRank`
        # @return [Google::Apis::GamesV1::LeaderboardScoreRank]
        attr_accessor :friends_rank
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerLeaderboardScore`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the leaderboard this score is in.
        # Corresponds to the JSON property `leaderboard_id`
        # @return [String]
        attr_accessor :leaderboard_id
      
        # A score rank in a leaderboard.
        # Corresponds to the JSON property `publicRank`
        # @return [Google::Apis::GamesV1::LeaderboardScoreRank]
        attr_accessor :public_rank
      
        # The formatted value of this score.
        # Corresponds to the JSON property `scoreString`
        # @return [String]
        attr_accessor :score_string
      
        # Additional information about the score. Values must contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The numerical value of this score.
        # Corresponds to the JSON property `scoreValue`
        # @return [Fixnum]
        attr_accessor :score_value
      
        # A score rank in a leaderboard.
        # Corresponds to the JSON property `socialRank`
        # @return [Google::Apis::GamesV1::LeaderboardScoreRank]
        attr_accessor :social_rank
      
        # The time span of this score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        # The timestamp at which this score was recorded, in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `writeTimestamp`
        # @return [Fixnum]
        attr_accessor :write_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @friends_rank = args[:friends_rank] if args.key?(:friends_rank)
          @kind = args[:kind] if args.key?(:kind)
          @leaderboard_id = args[:leaderboard_id] if args.key?(:leaderboard_id)
          @public_rank = args[:public_rank] if args.key?(:public_rank)
          @score_string = args[:score_string] if args.key?(:score_string)
          @score_tag = args[:score_tag] if args.key?(:score_tag)
          @score_value = args[:score_value] if args.key?(:score_value)
          @social_rank = args[:social_rank] if args.key?(:social_rank)
          @time_span = args[:time_span] if args.key?(:time_span)
          @write_timestamp = args[:write_timestamp] if args.key?(:write_timestamp)
        end
      end
      
      # A list of player leaderboard scores.
      class ListPlayerLeaderboardScoreResponse
        include Google::Apis::Core::Hashable
      
        # The leaderboard scores.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerLeaderboardScore>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerLeaderboardScoreListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @player = args[:player] if args.key?(:player)
        end
      end
      
      # 1P/3P metadata about a user's level.
      class PlayerLevel
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerLevel`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The level for the user.
        # Corresponds to the JSON property `level`
        # @return [Fixnum]
        attr_accessor :level
      
        # The maximum experience points for this level.
        # Corresponds to the JSON property `maxExperiencePoints`
        # @return [Fixnum]
        attr_accessor :max_experience_points
      
        # The minimum experience points for this level.
        # Corresponds to the JSON property `minExperiencePoints`
        # @return [Fixnum]
        attr_accessor :min_experience_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @level = args[:level] if args.key?(:level)
          @max_experience_points = args[:max_experience_points] if args.key?(:max_experience_points)
          @min_experience_points = args[:min_experience_points] if args.key?(:min_experience_points)
        end
      end
      
      # A third party player list response.
      class ListPlayerResponse
        include Google::Apis::Core::Hashable
      
        # The players.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Player>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A player score.
      class PlayerScore
        include Google::Apis::Core::Hashable
      
        # The formatted score for this player score.
        # Corresponds to the JSON property `formattedScore`
        # @return [String]
        attr_accessor :formatted_score
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerScore`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The numerical value for this player score.
        # Corresponds to the JSON property `score`
        # @return [Fixnum]
        attr_accessor :score
      
        # Additional information about this score. Values will contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The time span for this player score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_score = args[:formatted_score] if args.key?(:formatted_score)
          @kind = args[:kind] if args.key?(:kind)
          @score = args[:score] if args.key?(:score)
          @score_tag = args[:score_tag] if args.key?(:score_tag)
          @time_span = args[:time_span] if args.key?(:time_span)
        end
      end
      
      # A list of score submission statuses.
      class ListPlayerScoreResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerScoreListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The score submissions statuses.
        # Corresponds to the JSON property `submittedScores`
        # @return [Array<Google::Apis::GamesV1::PlayerScoreResponse>]
        attr_accessor :submitted_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @submitted_scores = args[:submitted_scores] if args.key?(:submitted_scores)
        end
      end
      
      # A list of leaderboard entry resources.
      class PlayerScoreResponse
        include Google::Apis::Core::Hashable
      
        # The time spans where the submitted score is better than the existing score for
        # that time span.
        # Corresponds to the JSON property `beatenScoreTimeSpans`
        # @return [Array<String>]
        attr_accessor :beaten_score_time_spans
      
        # The formatted value of the submitted score.
        # Corresponds to the JSON property `formattedScore`
        # @return [String]
        attr_accessor :formatted_score
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerScoreResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The leaderboard ID that this score was submitted to.
        # Corresponds to the JSON property `leaderboardId`
        # @return [String]
        attr_accessor :leaderboard_id
      
        # Additional information about this score. Values will contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The scores in time spans that have not been beaten. As an example, the
        # submitted score may be better than the player's `DAILY` score, but not better
        # than the player's scores for the `WEEKLY` or `ALL_TIME` time spans.
        # Corresponds to the JSON property `unbeatenScores`
        # @return [Array<Google::Apis::GamesV1::PlayerScore>]
        attr_accessor :unbeaten_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beaten_score_time_spans = args[:beaten_score_time_spans] if args.key?(:beaten_score_time_spans)
          @formatted_score = args[:formatted_score] if args.key?(:formatted_score)
          @kind = args[:kind] if args.key?(:kind)
          @leaderboard_id = args[:leaderboard_id] if args.key?(:leaderboard_id)
          @score_tag = args[:score_tag] if args.key?(:score_tag)
          @unbeaten_scores = args[:unbeaten_scores] if args.key?(:unbeaten_scores)
        end
      end
      
      # A list of score submission requests.
      class PlayerScoreSubmissionList
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#playerScoreSubmissionList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The score submissions.
        # Corresponds to the JSON property `scores`
        # @return [Array<Google::Apis::GamesV1::ScoreSubmission>]
        attr_accessor :scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @scores = args[:scores] if args.key?(:scores)
        end
      end
      
      # Profile settings
      class ProfileSettings
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `friendsListVisibility`
        # @return [String]
        attr_accessor :friends_list_visibility
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#profileSettings`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the player's profile is visible to the currently signed in player.
        # Corresponds to the JSON property `profileVisible`
        # @return [Boolean]
        attr_accessor :profile_visible
        alias_method :profile_visible?, :profile_visible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @friends_list_visibility = args[:friends_list_visibility] if args.key?(:friends_list_visibility)
          @kind = args[:kind] if args.key?(:kind)
          @profile_visible = args[:profile_visible] if args.key?(:profile_visible)
        end
      end
      
      # Request for ResolveSnapshotHead RPC.
      class ResolveSnapshotHeadRequest
        include Google::Apis::Core::Hashable
      
        # Required. The automatic resolution policy. All conflicts are resolved in
        # chronological order, starting from the/ least recent. If the comparison metric
        # is equal for the tentative head and the conflict, the head wins.
        # Corresponds to the JSON property `resolutionPolicy`
        # @return [String]
        attr_accessor :resolution_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resolution_policy = args[:resolution_policy] if args.key?(:resolution_policy)
        end
      end
      
      # Response for ResolveSnapshotHead RPC.
      class ResolveSnapshotHeadResponse
        include Google::Apis::Core::Hashable
      
        # A snapshot represents a saved game state referred to using the developer-
        # provided snapshot_id (think of it as a file's path). The set of attributes and
        # binary data for a specific state is called a revision. Each revision is itself
        # immutable, and referred to by a snapshot_revision_id. At any time, a snapshot
        # has a "head" revision, and updates are made against that revision. If a
        # snapshot update is received that isn't against the current head revision, then
        # instead of changing the head revision it will result in a conflicting revision
        # that must be specifically resolved.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::GamesV1::SnapshotExtended]
        attr_accessor :snapshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
        end
      end
      
      # A third party checking a revision response.
      class CheckRevisionResponse
        include Google::Apis::Core::Hashable
      
        # The version of the API this client revision should use when calling API
        # methods.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#revisionCheckResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The result of the revision check.
        # Corresponds to the JSON property `revisionStatus`
        # @return [String]
        attr_accessor :revision_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @kind = args[:kind] if args.key?(:kind)
          @revision_status = args[:revision_status] if args.key?(:revision_status)
        end
      end
      
      # A request to submit a score to leaderboards.
      class ScoreSubmission
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#scoreSubmission`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The leaderboard this score is being submitted to.
        # Corresponds to the JSON property `leaderboardId`
        # @return [String]
        attr_accessor :leaderboard_id
      
        # The new score being submitted.
        # Corresponds to the JSON property `score`
        # @return [Fixnum]
        attr_accessor :score
      
        # Additional information about this score. Values will contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # Signature Values will contain URI-safe characters as defined by section 2.3 of
        # RFC 3986.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @leaderboard_id = args[:leaderboard_id] if args.key?(:leaderboard_id)
          @score = args[:score] if args.key?(:score)
          @score_tag = args[:score_tag] if args.key?(:score_tag)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # An snapshot object.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # An image of a snapshot.
        # Corresponds to the JSON property `coverImage`
        # @return [Google::Apis::GamesV1::SnapshotImage]
        attr_accessor :cover_image
      
        # The description of this snapshot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ID of the file underlying this snapshot in the Drive API. Only present if
        # the snapshot is a view on a Drive file and the file is owned by the caller.
        # Corresponds to the JSON property `driveId`
        # @return [String]
        attr_accessor :drive_id
      
        # The duration associated with this snapshot, in millis.
        # Corresponds to the JSON property `durationMillis`
        # @return [Fixnum]
        attr_accessor :duration_millis
      
        # The ID of the snapshot.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#snapshot`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp (in millis since Unix epoch) of the last modification to this
        # snapshot.
        # Corresponds to the JSON property `lastModifiedMillis`
        # @return [Fixnum]
        attr_accessor :last_modified_millis
      
        # The progress value (64-bit integer set by developer) associated with this
        # snapshot.
        # Corresponds to the JSON property `progressValue`
        # @return [Fixnum]
        attr_accessor :progress_value
      
        # The title of this snapshot.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The type of this snapshot.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The unique name provided when the snapshot was created.
        # Corresponds to the JSON property `uniqueName`
        # @return [String]
        attr_accessor :unique_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cover_image = args[:cover_image] if args.key?(:cover_image)
          @description = args[:description] if args.key?(:description)
          @drive_id = args[:drive_id] if args.key?(:drive_id)
          @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @last_modified_millis = args[:last_modified_millis] if args.key?(:last_modified_millis)
          @progress_value = args[:progress_value] if args.key?(:progress_value)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
          @unique_name = args[:unique_name] if args.key?(:unique_name)
        end
      end
      
      # Identifies a snapshot cover image resource. The image is provided by the game.
      class SnapshotCoverImageResource
        include Google::Apis::Core::Hashable
      
        # Output only. Hash-like weak identifier of the uploaded image bytes, consistent
        # per player per application. Within the context of a single player/application,
        # it's guaranteed that two identical blobs coming from two different uploads
        # will have the same content hash. It's extremely likely, though not guaranteed,
        # that if two content hashes are equal, the images are identical.
        # Corresponds to the JSON property `contentHash`
        # @return [String]
        attr_accessor :content_hash
      
        # Output only. A URL the client can use to download the image. May vary across
        # requests, and only guaranteed to be valid for a short time after it is
        # returned.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # Output only. The height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Output only. The MIME type of the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The ID of the image resource. It's guaranteed that if two IDs are equal then
        # the contents are equal as well. It's not guaranteed that two identical blobs
        # coming from separate uploads have the same ID. The resource ID can only be
        # used within the application, user and resource type it was originally returned
        # for. For example, it's not possible to use SnapshotDataResource's resource ID
        # as the resource_id of a SnapshotCoverImageResource, even if the blob is a
        # valid image file.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Output only. The width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_hash = args[:content_hash] if args.key?(:content_hash)
          @download_url = args[:download_url] if args.key?(:download_url)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Identifies a snapshot data resource. The data is provided by the game.
      class SnapshotDataResource
        include Google::Apis::Core::Hashable
      
        # Output only. Hash-like weak identifier of the uploaded blob, consistent per
        # player per application. Within the context of a single player/application, it'
        # s guaranteed that two identical blobs coming from two different uploads will
        # have the same content hash. It's extremely likely, though not guaranteed, that
        # if two content hashes are equal, the blobs are identical.
        # Corresponds to the JSON property `contentHash`
        # @return [String]
        attr_accessor :content_hash
      
        # Output only. A URL that the client can use to download the blob. May vary
        # across requests, and only guaranteed to be valid for a short time after it is
        # returned.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # The ID of the blob resource. It's guaranteed that if two IDs are equal then
        # the contents are equal as well. It's not guaranteed that two identical blobs
        # coming from separate uploads have the same resource ID. The resource ID can
        # only be used within the application, user and resource type it was originally
        # returned for. For example, it's not possible to use SnapshotDataResource's
        # resource ID as the resource_id of a SnapshotCoverImageResource, even if the
        # blob is a valid image file.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Size of the saved game blob in bytes.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_hash = args[:content_hash] if args.key?(:content_hash)
          @download_url = args[:download_url] if args.key?(:download_url)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # A snapshot represents a saved game state referred to using the developer-
      # provided snapshot_id (think of it as a file's path). The set of attributes and
      # binary data for a specific state is called a revision. Each revision is itself
      # immutable, and referred to by a snapshot_revision_id. At any time, a snapshot
      # has a "head" revision, and updates are made against that revision. If a
      # snapshot update is received that isn't against the current head revision, then
      # instead of changing the head revision it will result in a conflicting revision
      # that must be specifically resolved.
      class SnapshotExtended
        include Google::Apis::Core::Hashable
      
        # A list of conflicting revisions. Only set if explicitly requested (e.g. using
        # a field mask or a request flag), or if the RPC guarantees that this field is
        # set. The conflicting revisions are sorted chronologically by their server
        # creation time (oldest first). If there are too many conflicting revisions to
        # return all of them in a single request this will only contain the first batch.
        # In such case, the presented conflicting revisions must be resolved first in
        # order to fetch the next batch.
        # Corresponds to the JSON property `conflictingRevisions`
        # @return [Array<Google::Apis::GamesV1::SnapshotRevision>]
        attr_accessor :conflicting_revisions
      
        # An indicator whether the snapshot has any conflicting revisions or not. Always
        # set.
        # Corresponds to the JSON property `hasConflictingRevisions`
        # @return [Boolean]
        attr_accessor :has_conflicting_revisions
        alias_method :has_conflicting_revisions?, :has_conflicting_revisions
      
        # A Snapshot revision resource. Snapshot revisions are immutable.
        # Corresponds to the JSON property `headRevision`
        # @return [Google::Apis::GamesV1::SnapshotRevision]
        attr_accessor :head_revision
      
        # An identifier of the snapshot,developer-specified.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_revisions = args[:conflicting_revisions] if args.key?(:conflicting_revisions)
          @has_conflicting_revisions = args[:has_conflicting_revisions] if args.key?(:has_conflicting_revisions)
          @head_revision = args[:head_revision] if args.key?(:head_revision)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An image of a snapshot.
      class SnapshotImage
        include Google::Apis::Core::Hashable
      
        # The height of the image.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#snapshotImage`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The MIME type of the image.
        # Corresponds to the JSON property `mime_type`
        # @return [String]
        attr_accessor :mime_type
      
        # The URL of the image. This URL may be invalidated at any time and should not
        # be cached.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The width of the image.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @kind = args[:kind] if args.key?(:kind)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @url = args[:url] if args.key?(:url)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A third party list snapshots response.
      class ListSnapshotResponse
        include Google::Apis::Core::Hashable
      
        # The snapshots.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Snapshot>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#snapshotListResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token corresponding to the next page of results. If there are no more results,
        # the token is omitted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Metadata about a snapshot revision. Snapshot metadata is immutable - a
      # metadata change corresponds to a new snapshot revision.
      class SnapshotMetadata
        include Google::Apis::Core::Hashable
      
        # The description of this snapshot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The device that created the current revision.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # The duration associated with this snapshot. Values with sub-millisecond
        # precision can be rounded or trimmed to the closest millisecond.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The timestamp of the last modification to this snapshot. Values with sub-
        # millisecond precision can be rounded or trimmed to the closest millisecond.
        # Corresponds to the JSON property `lastModifyTime`
        # @return [String]
        attr_accessor :last_modify_time
      
        # The progress value (64-bit integer set by developer) associated with this
        # snapshot.
        # Corresponds to the JSON property `progressValue`
        # @return [Fixnum]
        attr_accessor :progress_value
      
        # The title of this snapshot.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @device_name = args[:device_name] if args.key?(:device_name)
          @duration = args[:duration] if args.key?(:duration)
          @last_modify_time = args[:last_modify_time] if args.key?(:last_modify_time)
          @progress_value = args[:progress_value] if args.key?(:progress_value)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A Snapshot revision resource. Snapshot revisions are immutable.
      class SnapshotRevision
        include Google::Apis::Core::Hashable
      
        # Identifies a snapshot data resource. The data is provided by the game.
        # Corresponds to the JSON property `blob`
        # @return [Google::Apis::GamesV1::SnapshotDataResource]
        attr_accessor :blob
      
        # Identifies a snapshot cover image resource. The image is provided by the game.
        # Corresponds to the JSON property `coverImage`
        # @return [Google::Apis::GamesV1::SnapshotCoverImageResource]
        attr_accessor :cover_image
      
        # Output only. A server generated identifier of the snapshot revision.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Metadata about a snapshot revision. Snapshot metadata is immutable - a
        # metadata change corresponds to a new snapshot revision.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::GamesV1::SnapshotMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob = args[:blob] if args.key?(:blob)
          @cover_image = args[:cover_image] if args.key?(:cover_image)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # A third party stats resource.
      class StatsResponse
        include Google::Apis::Core::Hashable
      
        # Average session length in minutes of the player. E.g., 1, 30, 60, ... . Not
        # populated if there is not enough information.
        # Corresponds to the JSON property `avg_session_length_minutes`
        # @return [Float]
        attr_accessor :avg_session_length_minutes
      
        # The probability of the player not returning to play the game in the next day.
        # E.g., 0, 0.1, 0.5, ..., 1.0. Not populated if there is not enough information.
        # Corresponds to the JSON property `churn_probability`
        # @return [Float]
        attr_accessor :churn_probability
      
        # Number of days since the player last played this game. E.g., 0, 1, 5, 10, ... .
        # Not populated if there is not enough information.
        # Corresponds to the JSON property `days_since_last_played`
        # @return [Fixnum]
        attr_accessor :days_since_last_played
      
        # The probability of the player going to spend beyond a threshold amount of
        # money. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough
        # information.
        # Corresponds to the JSON property `high_spender_probability`
        # @return [Float]
        attr_accessor :high_spender_probability
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string `games#statsResponse`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Number of in-app purchases made by the player in this game. E.g., 0, 1, 5, 10,
        # ... . Not populated if there is not enough information.
        # Corresponds to the JSON property `num_purchases`
        # @return [Fixnum]
        attr_accessor :num_purchases
      
        # The approximate number of sessions of the player within the last 28 days,
        # where a session begins when the player is connected to Play Games Services and
        # ends when they are disconnected. E.g., 0, 1, 5, 10, ... . Not populated if
        # there is not enough information.
        # Corresponds to the JSON property `num_sessions`
        # @return [Fixnum]
        attr_accessor :num_sessions
      
        # The approximation of the sessions percentile of the player within the last 30
        # days, where a session begins when the player is connected to Play Games
        # Services and ends when they are disconnected. E.g., 0, 0.25, 0.5, 0.75. Not
        # populated if there is not enough information.
        # Corresponds to the JSON property `num_sessions_percentile`
        # @return [Float]
        attr_accessor :num_sessions_percentile
      
        # The approximate spend percentile of the player in this game. E.g., 0, 0.25, 0.
        # 5, 0.75. Not populated if there is not enough information.
        # Corresponds to the JSON property `spend_percentile`
        # @return [Float]
        attr_accessor :spend_percentile
      
        # The probability of the player going to spend the game in the next seven days.
        # E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough information.
        # Corresponds to the JSON property `spend_probability`
        # @return [Float]
        attr_accessor :spend_probability
      
        # The predicted amount of money that the player going to spend in the next 28
        # days. E.g., 1, 30, 60, ... . Not populated if there is not enough information.
        # Corresponds to the JSON property `total_spend_next_28_days`
        # @return [Float]
        attr_accessor :total_spend_next_28_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_session_length_minutes = args[:avg_session_length_minutes] if args.key?(:avg_session_length_minutes)
          @churn_probability = args[:churn_probability] if args.key?(:churn_probability)
          @days_since_last_played = args[:days_since_last_played] if args.key?(:days_since_last_played)
          @high_spender_probability = args[:high_spender_probability] if args.key?(:high_spender_probability)
          @kind = args[:kind] if args.key?(:kind)
          @num_purchases = args[:num_purchases] if args.key?(:num_purchases)
          @num_sessions = args[:num_sessions] if args.key?(:num_sessions)
          @num_sessions_percentile = args[:num_sessions_percentile] if args.key?(:num_sessions_percentile)
          @spend_percentile = args[:spend_percentile] if args.key?(:spend_percentile)
          @spend_probability = args[:spend_probability] if args.key?(:spend_probability)
          @total_spend_next_28_days = args[:total_spend_next_28_days] if args.key?(:total_spend_next_28_days)
        end
      end
    end
  end
end
