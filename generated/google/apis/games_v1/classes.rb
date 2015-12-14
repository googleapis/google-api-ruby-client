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
      
      # This is a JSON template for an achievement definition object.
      class AchievementDefinition
        include Google::Apis::Core::Hashable
      
        # The type of the achievement.
        # Possible values are:
        # - "STANDARD" - Achievement is either locked or unlocked.
        # - "INCREMENTAL" - Achievement is incremental.
        # Corresponds to the JSON property `achievementType`
        # @return [String]
        attr_accessor :achievement_type
      
        # The description of the achievement.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Experience points which will be earned when unlocking this achievement.
        # Corresponds to the JSON property `experiencePoints`
        # @return [String]
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
        # Possible values are:
        # - "HIDDEN" - Achievement is hidden.
        # - "REVEALED" - Achievement is revealed.
        # - "UNLOCKED" - Achievement is unlocked.
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
        # string games#achievementDefinition.
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
          @achievement_type = args[:achievement_type] unless args[:achievement_type].nil?
          @description = args[:description] unless args[:description].nil?
          @experience_points = args[:experience_points] unless args[:experience_points].nil?
          @formatted_total_steps = args[:formatted_total_steps] unless args[:formatted_total_steps].nil?
          @id = args[:id] unless args[:id].nil?
          @initial_state = args[:initial_state] unless args[:initial_state].nil?
          @is_revealed_icon_url_default = args[:is_revealed_icon_url_default] unless args[:is_revealed_icon_url_default].nil?
          @is_unlocked_icon_url_default = args[:is_unlocked_icon_url_default] unless args[:is_unlocked_icon_url_default].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @revealed_icon_url = args[:revealed_icon_url] unless args[:revealed_icon_url].nil?
          @total_steps = args[:total_steps] unless args[:total_steps].nil?
          @unlocked_icon_url = args[:unlocked_icon_url] unless args[:unlocked_icon_url].nil?
        end
      end
      
      # This is a JSON template for a list of achievement definition objects.
      class ListAchievementDefinitionsResponse
        include Google::Apis::Core::Hashable
      
        # The achievement definitions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::AchievementDefinition>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementDefinitionsListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for an achievement increment response
      class AchievementIncrementResponse
        include Google::Apis::Core::Hashable
      
        # The current steps recorded for this incremental achievement.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementIncrementResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the the current steps for the achievement has reached the number of
        # steps required to unlock.
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_steps = args[:current_steps] unless args[:current_steps].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @newly_unlocked = args[:newly_unlocked] unless args[:newly_unlocked].nil?
        end
      end
      
      # This is a JSON template for an achievement reveal response
      class AchievementRevealResponse
        include Google::Apis::Core::Hashable
      
        # The current state of the achievement for which a reveal was attempted. This
        # might be UNLOCKED if the achievement was already unlocked.
        # Possible values are:
        # - "REVEALED" - Achievement is revealed.
        # - "UNLOCKED" - Achievement is unlocked.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementRevealResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state = args[:current_state] unless args[:current_state].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for an achievement set steps at least response.
      class AchievementSetStepsAtLeastResponse
        include Google::Apis::Core::Hashable
      
        # The current steps recorded for this incremental achievement.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementSetStepsAtLeastResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Whether the the current steps for the achievement has reached the number of
        # steps required to unlock.
        # Corresponds to the JSON property `newlyUnlocked`
        # @return [Boolean]
        attr_accessor :newly_unlocked
        alias_method :newly_unlocked?, :newly_unlocked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_steps = args[:current_steps] unless args[:current_steps].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @newly_unlocked = args[:newly_unlocked] unless args[:newly_unlocked].nil?
        end
      end
      
      # This is a JSON template for an achievement unlock response
      class AchievementUnlockResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementUnlockResponse.
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
          @kind = args[:kind] unless args[:kind].nil?
          @newly_unlocked = args[:newly_unlocked] unless args[:newly_unlocked].nil?
        end
      end
      
      # This is a JSON template for a list of achievement update requests.
      class AchievementUpdateMultipleRequest
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementUpdateMultipleRequest.
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
          @kind = args[:kind] unless args[:kind].nil?
          @updates = args[:updates] unless args[:updates].nil?
        end
      end
      
      # This is a JSON template for an achievement unlock response.
      class AchievementUpdateMultipleResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementUpdateListResponse.
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
          @kind = args[:kind] unless args[:kind].nil?
          @updated_achievements = args[:updated_achievements] unless args[:updated_achievements].nil?
        end
      end
      
      # This is a JSON template for a request to update an achievement.
      class UpdateAchievementRequest
        include Google::Apis::Core::Hashable
      
        # The achievement this update is being applied to.
        # Corresponds to the JSON property `achievementId`
        # @return [String]
        attr_accessor :achievement_id
      
        # This is a JSON template for the payload to request to increment an achievement.
        # Corresponds to the JSON property `incrementPayload`
        # @return [Google::Apis::GamesV1::GamesAchievementIncrement]
        attr_accessor :increment_payload
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementUpdateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for the payload to request to increment an achievement.
        # Corresponds to the JSON property `setStepsAtLeastPayload`
        # @return [Google::Apis::GamesV1::GamesAchievementSetStepsAtLeast]
        attr_accessor :set_steps_at_least_payload
      
        # The type of update being applied.
        # Possible values are:
        # - "REVEAL" - Achievement is revealed.
        # - "UNLOCK" - Achievement is unlocked.
        # - "INCREMENT" - Achievement is incremented.
        # - "SET_STEPS_AT_LEAST" - Achievement progress is set to at least the passed
        # value.
        # Corresponds to the JSON property `updateType`
        # @return [String]
        attr_accessor :update_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_id = args[:achievement_id] unless args[:achievement_id].nil?
          @increment_payload = args[:increment_payload] unless args[:increment_payload].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @set_steps_at_least_payload = args[:set_steps_at_least_payload] unless args[:set_steps_at_least_payload].nil?
          @update_type = args[:update_type] unless args[:update_type].nil?
        end
      end
      
      # This is a JSON template for an achievement update response.
      class UpdateAchievementResponse
        include Google::Apis::Core::Hashable
      
        # The achievement this update is was applied to.
        # Corresponds to the JSON property `achievementId`
        # @return [String]
        attr_accessor :achievement_id
      
        # The current state of the achievement.
        # Possible values are:
        # - "HIDDEN" - Achievement is hidden.
        # - "REVEALED" - Achievement is revealed.
        # - "UNLOCKED" - Achievement is unlocked.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # The current steps recorded for this achievement if it is incremental.
        # Corresponds to the JSON property `currentSteps`
        # @return [Fixnum]
        attr_accessor :current_steps
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#achievementUpdateResponse.
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
          @achievement_id = args[:achievement_id] unless args[:achievement_id].nil?
          @current_state = args[:current_state] unless args[:current_state].nil?
          @current_steps = args[:current_steps] unless args[:current_steps].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @newly_unlocked = args[:newly_unlocked] unless args[:newly_unlocked].nil?
          @update_occurred = args[:update_occurred] unless args[:update_occurred].nil?
        end
      end
      
      # This is a JSON template for aggregate stats.
      class AggregateStats
        include Google::Apis::Core::Hashable
      
        # The number of messages sent between a pair of peers.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#aggregateStats.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum amount.
        # Corresponds to the JSON property `max`
        # @return [String]
        attr_accessor :max
      
        # The minimum amount.
        # Corresponds to the JSON property `min`
        # @return [String]
        attr_accessor :min
      
        # The total number of bytes sent for messages between a pair of peers.
        # Corresponds to the JSON property `sum`
        # @return [String]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] unless args[:count].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max = args[:max] unless args[:max].nil?
          @min = args[:min] unless args[:min].nil?
          @sum = args[:sum] unless args[:sum].nil?
        end
      end
      
      # This is a JSON template for an anonymous player
      class AnonymousPlayer
        include Google::Apis::Core::Hashable
      
        # The base URL for the image to display for the anonymous player.
        # Corresponds to the JSON property `avatarImageUrl`
        # @return [String]
        attr_accessor :avatar_image_url
      
        # The name to display for the anonymous player.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#anonymousPlayer.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_image_url = args[:avatar_image_url] unless args[:avatar_image_url].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for the Application resource.
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
      
        # This is a JSON template for an application category object.
        # Corresponds to the JSON property `category`
        # @return [Google::Apis::GamesV1::ApplicationCategory]
        attr_accessor :category
      
        # The description of the application.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A list of features that have been enabled for the application.
        # Possible values are:
        # - "SNAPSHOTS" - Snapshots has been enabled
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
        # string games#application.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last updated timestamp of the application.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
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
          @achievement_count = args[:achievement_count] unless args[:achievement_count].nil?
          @assets = args[:assets] unless args[:assets].nil?
          @author = args[:author] unless args[:author].nil?
          @category = args[:category] unless args[:category].nil?
          @description = args[:description] unless args[:description].nil?
          @enabled_features = args[:enabled_features] unless args[:enabled_features].nil?
          @id = args[:id] unless args[:id].nil?
          @instances = args[:instances] unless args[:instances].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_updated_timestamp = args[:last_updated_timestamp] unless args[:last_updated_timestamp].nil?
          @leaderboard_count = args[:leaderboard_count] unless args[:leaderboard_count].nil?
          @name = args[:name] unless args[:name].nil?
          @theme_color = args[:theme_color] unless args[:theme_color].nil?
        end
      end
      
      # This is a JSON template for an application category object.
      class ApplicationCategory
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#applicationCategory.
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
          @kind = args[:kind] unless args[:kind].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @secondary = args[:secondary] unless args[:secondary].nil?
        end
      end
      
      # This is a JSON template for a third party application verification response
      # resource.
      class ApplicationVerifyResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#applicationVerifyResponse.
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
          @kind = args[:kind] unless args[:kind].nil?
          @player_id = args[:player_id] unless args[:player_id].nil?
        end
      end
      
      # This is a JSON template for data related to individual game categories.
      class Category
        include Google::Apis::Core::Hashable
      
        # The category name.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Experience points earned in this category.
        # Corresponds to the JSON property `experiencePoints`
        # @return [String]
        attr_accessor :experience_points
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#category.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] unless args[:category].nil?
          @experience_points = args[:experience_points] unless args[:experience_points].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for a list of category data objects.
      class ListCategoryResponse
        include Google::Apis::Core::Hashable
      
        # The list of categories with usage data.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Category>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#categoryListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for a batch update failure resource.
      class EventBatchRecordFailure
        include Google::Apis::Core::Hashable
      
        # The cause for the update failure.
        # Possible values are:
        # - "TOO_LARGE": A batch request was issued with more events than are allowed in
        # a single batch.
        # - "TIME_PERIOD_EXPIRED": A batch was sent with data too far in the past to
        # record.
        # - "TIME_PERIOD_SHORT": A batch was sent with a time range that was too short.
        # - "TIME_PERIOD_LONG": A batch was sent with a time range that was too long.
        # - "ALREADY_UPDATED": An attempt was made to record a batch of data which was
        # already seen.
        # - "RECORD_RATE_HIGH": An attempt was made to record data faster than the
        # server will apply updates.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventBatchRecordFailure.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for an event period time range.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::GamesV1::EventPeriodRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_cause = args[:failure_cause] unless args[:failure_cause].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @range = args[:range] unless args[:range].nil?
        end
      end
      
      # This is a JSON template for an event child relationship resource.
      class EventChild
        include Google::Apis::Core::Hashable
      
        # The ID of the child event.
        # Corresponds to the JSON property `childId`
        # @return [String]
        attr_accessor :child_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventChild.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_id = args[:child_id] unless args[:child_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for an event definition resource.
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
        # string games#eventDefinition.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The visibility of event being tracked in this definition.
        # Possible values are:
        # - "REVEALED": This event should be visible to all users.
        # - "HIDDEN": This event should only be shown to users that have recorded this
        # event at least once.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_events = args[:child_events] unless args[:child_events].nil?
          @description = args[:description] unless args[:description].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @id = args[:id] unless args[:id].nil?
          @image_url = args[:image_url] unless args[:image_url].nil?
          @is_default_image_url = args[:is_default_image_url] unless args[:is_default_image_url].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # This is a JSON template for a ListDefinitions response.
      class ListEventDefinitionResponse
        include Google::Apis::Core::Hashable
      
        # The event definitions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::EventDefinition>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventDefinitionListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for an event period time range.
      class EventPeriodRange
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventPeriodRange.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time when this update period ends, in millis, since 1970 UTC (Unix Epoch).
        # Corresponds to the JSON property `periodEndMillis`
        # @return [String]
        attr_accessor :period_end_millis
      
        # The time when this update period begins, in millis, since 1970 UTC (Unix Epoch)
        # .
        # Corresponds to the JSON property `periodStartMillis`
        # @return [String]
        attr_accessor :period_start_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @period_end_millis = args[:period_end_millis] unless args[:period_end_millis].nil?
          @period_start_millis = args[:period_start_millis] unless args[:period_start_millis].nil?
        end
      end
      
      # This is a JSON template for an event period update resource.
      class EventPeriodUpdate
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventPeriodUpdate.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for an event period time range.
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
          @kind = args[:kind] unless args[:kind].nil?
          @time_period = args[:time_period] unless args[:time_period].nil?
          @updates = args[:updates] unless args[:updates].nil?
        end
      end
      
      # This is a JSON template for an event update failure resource.
      class EventRecordFailure
        include Google::Apis::Core::Hashable
      
        # The ID of the event that was not updated.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # The cause for the update failure.
        # Possible values are:
        # - "NOT_FOUND" - An attempt was made to set an event that was not defined.
        # - "INVALID_UPDATE_VALUE" - An attempt was made to increment an event by a non-
        # positive value.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventRecordFailure.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] unless args[:event_id].nil?
          @failure_cause = args[:failure_cause] unless args[:failure_cause].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for an event period update resource.
      class EventRecordRequest
        include Google::Apis::Core::Hashable
      
        # The current time when this update was sent, in milliseconds, since 1970 UTC (
        # Unix Epoch).
        # Corresponds to the JSON property `currentTimeMillis`
        # @return [String]
        attr_accessor :current_time_millis
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventRecordRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The request ID used to identify this attempt to record events.
        # Corresponds to the JSON property `requestId`
        # @return [String]
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
          @current_time_millis = args[:current_time_millis] unless args[:current_time_millis].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @time_periods = args[:time_periods] unless args[:time_periods].nil?
        end
      end
      
      # This is a JSON template for an event period update resource.
      class UpdateEventRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the event being modified in this update.
        # Corresponds to the JSON property `definitionId`
        # @return [String]
        attr_accessor :definition_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#eventUpdateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of times this event occurred in this time period.
        # Corresponds to the JSON property `updateCount`
        # @return [String]
        attr_accessor :update_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition_id = args[:definition_id] unless args[:definition_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @update_count = args[:update_count] unless args[:update_count].nil?
        end
      end
      
      # This is a JSON template for an event period update resource.
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
        # string games#eventUpdateResponse.
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
          @batch_failures = args[:batch_failures] unless args[:batch_failures].nil?
          @event_failures = args[:event_failures] unless args[:event_failures].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @player_events = args[:player_events] unless args[:player_events].nil?
        end
      end
      
      # This is a JSON template for the payload to request to increment an achievement.
      class GamesAchievementIncrement
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#GamesAchievementIncrement.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The requestId associated with an increment to an achievement.
        # Corresponds to the JSON property `requestId`
        # @return [String]
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
          @kind = args[:kind] unless args[:kind].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @steps = args[:steps] unless args[:steps].nil?
        end
      end
      
      # This is a JSON template for the payload to request to increment an achievement.
      class GamesAchievementSetStepsAtLeast
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#GamesAchievementSetStepsAtLeast.
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
          @kind = args[:kind] unless args[:kind].nil?
          @steps = args[:steps] unless args[:steps].nil?
        end
      end
      
      # This is a JSON template for an image asset object.
      class ImageAsset
        include Google::Apis::Core::Hashable
      
        # The height of the asset.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#imageAsset.
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
          @height = args[:height] unless args[:height].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @url = args[:url] unless args[:url].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # This is a JSON template for the Instance resource.
      class Instance
        include Google::Apis::Core::Hashable
      
        # URI which shows where a user can acquire this instance.
        # Corresponds to the JSON property `acquisitionUri`
        # @return [String]
        attr_accessor :acquisition_uri
      
        # This is a JSON template for the Android instance details resource.
        # Corresponds to the JSON property `androidInstance`
        # @return [Google::Apis::GamesV1::InstanceAndroidDetails]
        attr_accessor :android_instance
      
        # This is a JSON template for the iOS details resource.
        # Corresponds to the JSON property `iosInstance`
        # @return [Google::Apis::GamesV1::InstanceIosDetails]
        attr_accessor :ios_instance
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#instance.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Localized display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The platform type.
        # Possible values are:
        # - "ANDROID" - Instance is for Android.
        # - "IOS" - Instance is for iOS
        # - "WEB_APP" - Instance is for Web App.
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
      
        # This is a JSON template for the Web details resource.
        # Corresponds to the JSON property `webInstance`
        # @return [Google::Apis::GamesV1::InstanceWebDetails]
        attr_accessor :web_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquisition_uri = args[:acquisition_uri] unless args[:acquisition_uri].nil?
          @android_instance = args[:android_instance] unless args[:android_instance].nil?
          @ios_instance = args[:ios_instance] unless args[:ios_instance].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @platform_type = args[:platform_type] unless args[:platform_type].nil?
          @realtime_play = args[:realtime_play] unless args[:realtime_play].nil?
          @turn_based_play = args[:turn_based_play] unless args[:turn_based_play].nil?
          @web_instance = args[:web_instance] unless args[:web_instance].nil?
        end
      end
      
      # This is a JSON template for the Android instance details resource.
      class InstanceAndroidDetails
        include Google::Apis::Core::Hashable
      
        # Flag indicating whether the anti-piracy check is enabled.
        # Corresponds to the JSON property `enablePiracyCheck`
        # @return [Boolean]
        attr_accessor :enable_piracy_check
        alias_method :enable_piracy_check?, :enable_piracy_check
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#instanceAndroidDetails.
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
          @enable_piracy_check = args[:enable_piracy_check] unless args[:enable_piracy_check].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @package_name = args[:package_name] unless args[:package_name].nil?
          @preferred = args[:preferred] unless args[:preferred].nil?
        end
      end
      
      # This is a JSON template for the iOS details resource.
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
        # string games#instanceIosDetails.
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
          @bundle_identifier = args[:bundle_identifier] unless args[:bundle_identifier].nil?
          @itunes_app_id = args[:itunes_app_id] unless args[:itunes_app_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @preferred_for_ipad = args[:preferred_for_ipad] unless args[:preferred_for_ipad].nil?
          @preferred_for_iphone = args[:preferred_for_iphone] unless args[:preferred_for_iphone].nil?
          @support_ipad = args[:support_ipad] unless args[:support_ipad].nil?
          @support_iphone = args[:support_iphone] unless args[:support_iphone].nil?
        end
      end
      
      # This is a JSON template for the Web details resource.
      class InstanceWebDetails
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#instanceWebDetails.
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
          @kind = args[:kind] unless args[:kind].nil?
          @launch_url = args[:launch_url] unless args[:launch_url].nil?
          @preferred = args[:preferred] unless args[:preferred].nil?
        end
      end
      
      # This is a JSON template for the Leaderboard resource.
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
        # string games#leaderboard.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the leaderboard.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # How scores are ordered.
        # Possible values are:
        # - "LARGER_IS_BETTER" - Larger values are better; scores are sorted in
        # descending order.
        # - "SMALLER_IS_BETTER" - Smaller values are better; scores are sorted in
        # ascending order.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon_url = args[:icon_url] unless args[:icon_url].nil?
          @id = args[:id] unless args[:id].nil?
          @is_icon_url_default = args[:is_icon_url_default] unless args[:is_icon_url_default].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @order = args[:order] unless args[:order].nil?
        end
      end
      
      # This is a JSON template for the Leaderboard Entry resource.
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
        # string games#leaderboardEntry.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for a Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        # The rank of this score for this leaderboard.
        # Corresponds to the JSON property `scoreRank`
        # @return [String]
        attr_accessor :score_rank
      
        # Additional information about the score. Values must contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The numerical value of this score.
        # Corresponds to the JSON property `scoreValue`
        # @return [String]
        attr_accessor :score_value
      
        # The time span of this high score.
        # Possible values are:
        # - "ALL_TIME" - The score is an all-time high score.
        # - "WEEKLY" - The score is a weekly high score.
        # - "DAILY" - The score is a daily high score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        # The timestamp at which this score was recorded, in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `writeTimestampMillis`
        # @return [String]
        attr_accessor :write_timestamp_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_score = args[:formatted_score] unless args[:formatted_score].nil?
          @formatted_score_rank = args[:formatted_score_rank] unless args[:formatted_score_rank].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @player = args[:player] unless args[:player].nil?
          @score_rank = args[:score_rank] unless args[:score_rank].nil?
          @score_tag = args[:score_tag] unless args[:score_tag].nil?
          @score_value = args[:score_value] unless args[:score_value].nil?
          @time_span = args[:time_span] unless args[:time_span].nil?
          @write_timestamp_millis = args[:write_timestamp_millis] unless args[:write_timestamp_millis].nil?
        end
      end
      
      # This is a JSON template for a list of leaderboard objects.
      class ListLeaderboardResponse
        include Google::Apis::Core::Hashable
      
        # The leaderboards.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Leaderboard>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#leaderboardListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for a score rank in a leaderboard.
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
        # string games#leaderboardScoreRank.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of scores in the leaderboard.
        # Corresponds to the JSON property `numScores`
        # @return [String]
        attr_accessor :num_scores
      
        # The rank in the leaderboard.
        # Corresponds to the JSON property `rank`
        # @return [String]
        attr_accessor :rank
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_num_scores = args[:formatted_num_scores] unless args[:formatted_num_scores].nil?
          @formatted_rank = args[:formatted_rank] unless args[:formatted_rank].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @num_scores = args[:num_scores] unless args[:num_scores].nil?
          @rank = args[:rank] unless args[:rank].nil?
        end
      end
      
      # This is a JSON template for a ListScores response.
      class LeaderboardScores
        include Google::Apis::Core::Hashable
      
        # The scores in the leaderboard.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::LeaderboardEntry>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#leaderboardScores.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of scores in the leaderboard.
        # Corresponds to the JSON property `numScores`
        # @return [String]
        attr_accessor :num_scores
      
        # This is a JSON template for the Leaderboard Entry resource.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @num_scores = args[:num_scores] unless args[:num_scores].nil?
          @player_score = args[:player_score] unless args[:player_score].nil?
          @prev_page_token = args[:prev_page_token] unless args[:prev_page_token].nil?
        end
      end
      
      # This is a JSON template for the metagame config resource
      class MetagameConfig
        include Google::Apis::Core::Hashable
      
        # Current version of the metagame configuration data. When this data is updated,
        # the version number will be increased by one.
        # Corresponds to the JSON property `currentVersion`
        # @return [Fixnum]
        attr_accessor :current_version
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#metagameConfig.
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
          @current_version = args[:current_version] unless args[:current_version].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @player_levels = args[:player_levels] unless args[:player_levels].nil?
        end
      end
      
      # This is a JSON template for network diagnostics reported for a client.
      class NetworkDiagnostics
        include Google::Apis::Core::Hashable
      
        # The Android network subtype.
        # Corresponds to the JSON property `androidNetworkSubtype`
        # @return [Fixnum]
        attr_accessor :android_network_subtype
      
        # The Android network type.
        # Corresponds to the JSON property `androidNetworkType`
        # @return [Fixnum]
        attr_accessor :android_network_type
      
        # iOS network type as defined in Reachability.h.
        # Corresponds to the JSON property `iosNetworkType`
        # @return [Fixnum]
        attr_accessor :ios_network_type
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#networkDiagnostics.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The MCC+MNC code for the client's network connection. On Android: http://
        # developer.android.com/reference/android/telephony/TelephonyManager.html#
        # getNetworkOperator() On iOS, see: https://developer.apple.com/library/ios/
        # documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html
        # Corresponds to the JSON property `networkOperatorCode`
        # @return [String]
        attr_accessor :network_operator_code
      
        # The name of the carrier of the client's network connection. On Android: http://
        # developer.android.com/reference/android/telephony/TelephonyManager.html#
        # getNetworkOperatorName() On iOS: https://developer.apple.com/library/ios/
        # documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html#/
        # /apple_ref/occ/instp/CTCarrier/carrierName
        # Corresponds to the JSON property `networkOperatorName`
        # @return [String]
        attr_accessor :network_operator_name
      
        # The amount of time in milliseconds it took for the client to establish a
        # connection with the XMPP server.
        # Corresponds to the JSON property `registrationLatencyMillis`
        # @return [Fixnum]
        attr_accessor :registration_latency_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_network_subtype = args[:android_network_subtype] unless args[:android_network_subtype].nil?
          @android_network_type = args[:android_network_type] unless args[:android_network_type].nil?
          @ios_network_type = args[:ios_network_type] unless args[:ios_network_type].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @network_operator_code = args[:network_operator_code] unless args[:network_operator_code].nil?
          @network_operator_name = args[:network_operator_name] unless args[:network_operator_name].nil?
          @registration_latency_millis = args[:registration_latency_millis] unless args[:registration_latency_millis].nil?
        end
      end
      
      # This is a JSON template for a result for a match participant.
      class ParticipantResult
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#participantResult.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the participant.
        # Corresponds to the JSON property `participantId`
        # @return [String]
        attr_accessor :participant_id
      
        # The placement or ranking of the participant in the match results; a number
        # from one to the number of participants in the match. Multiple participants may
        # have the same placing value in case of a type.
        # Corresponds to the JSON property `placing`
        # @return [Fixnum]
        attr_accessor :placing
      
        # The result of the participant for this match.
        # Possible values are:
        # - "MATCH_RESULT_WIN" - The participant won the match.
        # - "MATCH_RESULT_LOSS" - The participant lost the match.
        # - "MATCH_RESULT_TIE" - The participant tied the match.
        # - "MATCH_RESULT_NONE" - There was no winner for the match (nobody wins or
        # loses this kind of game.)
        # - "MATCH_RESULT_DISCONNECT" - The participant disconnected / left during the
        # match.
        # - "MATCH_RESULT_DISAGREED" - Different clients reported different results for
        # this participant.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @participant_id = args[:participant_id] unless args[:participant_id].nil?
          @placing = args[:placing] unless args[:placing].nil?
          @result = args[:result] unless args[:result].nil?
        end
      end
      
      # This is a JSON template for peer channel diagnostics.
      class PeerChannelDiagnostics
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for aggregate stats.
        # Corresponds to the JSON property `bytesReceived`
        # @return [Google::Apis::GamesV1::AggregateStats]
        attr_accessor :bytes_received
      
        # This is a JSON template for aggregate stats.
        # Corresponds to the JSON property `bytesSent`
        # @return [Google::Apis::GamesV1::AggregateStats]
        attr_accessor :bytes_sent
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#peerChannelDiagnostics.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Number of messages lost.
        # Corresponds to the JSON property `numMessagesLost`
        # @return [Fixnum]
        attr_accessor :num_messages_lost
      
        # Number of messages received.
        # Corresponds to the JSON property `numMessagesReceived`
        # @return [Fixnum]
        attr_accessor :num_messages_received
      
        # Number of messages sent.
        # Corresponds to the JSON property `numMessagesSent`
        # @return [Fixnum]
        attr_accessor :num_messages_sent
      
        # Number of send failures.
        # Corresponds to the JSON property `numSendFailures`
        # @return [Fixnum]
        attr_accessor :num_send_failures
      
        # This is a JSON template for aggregate stats.
        # Corresponds to the JSON property `roundtripLatencyMillis`
        # @return [Google::Apis::GamesV1::AggregateStats]
        attr_accessor :roundtrip_latency_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_received = args[:bytes_received] unless args[:bytes_received].nil?
          @bytes_sent = args[:bytes_sent] unless args[:bytes_sent].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @num_messages_lost = args[:num_messages_lost] unless args[:num_messages_lost].nil?
          @num_messages_received = args[:num_messages_received] unless args[:num_messages_received].nil?
          @num_messages_sent = args[:num_messages_sent] unless args[:num_messages_sent].nil?
          @num_send_failures = args[:num_send_failures] unless args[:num_send_failures].nil?
          @roundtrip_latency_millis = args[:roundtrip_latency_millis] unless args[:roundtrip_latency_millis].nil?
        end
      end
      
      # This is a JSON template for peer session diagnostics.
      class PeerSessionDiagnostics
        include Google::Apis::Core::Hashable
      
        # Connected time in milliseconds.
        # Corresponds to the JSON property `connectedTimestampMillis`
        # @return [String]
        attr_accessor :connected_timestamp_millis
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#peerSessionDiagnostics.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The participant ID of the peer.
        # Corresponds to the JSON property `participantId`
        # @return [String]
        attr_accessor :participant_id
      
        # This is a JSON template for peer channel diagnostics.
        # Corresponds to the JSON property `reliableChannel`
        # @return [Google::Apis::GamesV1::PeerChannelDiagnostics]
        attr_accessor :reliable_channel
      
        # This is a JSON template for peer channel diagnostics.
        # Corresponds to the JSON property `unreliableChannel`
        # @return [Google::Apis::GamesV1::PeerChannelDiagnostics]
        attr_accessor :unreliable_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_timestamp_millis = args[:connected_timestamp_millis] unless args[:connected_timestamp_millis].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @participant_id = args[:participant_id] unless args[:participant_id].nil?
          @reliable_channel = args[:reliable_channel] unless args[:reliable_channel].nil?
          @unreliable_channel = args[:unreliable_channel] unless args[:unreliable_channel].nil?
        end
      end
      
      # This is a JSON template for metadata about a player playing a game with the
      # currently authenticated user.
      class Played
        include Google::Apis::Core::Hashable
      
        # True if the player was auto-matched with the currently authenticated user.
        # Corresponds to the JSON property `autoMatched`
        # @return [Boolean]
        attr_accessor :auto_matched
        alias_method :auto_matched?, :auto_matched
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#played.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The last time the player played the game in milliseconds since the epoch in
        # UTC.
        # Corresponds to the JSON property `timeMillis`
        # @return [String]
        attr_accessor :time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matched = args[:auto_matched] unless args[:auto_matched].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @time_millis = args[:time_millis] unless args[:time_millis].nil?
        end
      end
      
      # This is a JSON template for a Player resource.
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
      
        # This is a JSON template for 1P/3P metadata about the player's experience.
        # Corresponds to the JSON property `experienceInfo`
        # @return [Google::Apis::GamesV1::PlayerExperienceInfo]
        attr_accessor :experience_info
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#player.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for metadata about a player playing a game with the
        # currently authenticated user.
        # Corresponds to the JSON property `lastPlayedWith`
        # @return [Google::Apis::GamesV1::Played]
        attr_accessor :last_played_with
      
        # An object representation of the individual components of the player's name.
        # For some players, these fields may not be present.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::GamesV1::Player::Name]
        attr_accessor :name
      
        # The ID of the player.
        # Corresponds to the JSON property `playerId`
        # @return [String]
        attr_accessor :player_id
      
        # The player's title rewarded for their game activities.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_image_url = args[:avatar_image_url] unless args[:avatar_image_url].nil?
          @banner_url_landscape = args[:banner_url_landscape] unless args[:banner_url_landscape].nil?
          @banner_url_portrait = args[:banner_url_portrait] unless args[:banner_url_portrait].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @experience_info = args[:experience_info] unless args[:experience_info].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_played_with = args[:last_played_with] unless args[:last_played_with].nil?
          @name = args[:name] unless args[:name].nil?
          @player_id = args[:player_id] unless args[:player_id].nil?
          @title = args[:title] unless args[:title].nil?
        end
        
        # An object representation of the individual components of the player's name.
        # For some players, these fields may not be present.
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
            @family_name = args[:family_name] unless args[:family_name].nil?
            @given_name = args[:given_name] unless args[:given_name].nil?
          end
        end
      end
      
      # This is a JSON template for an achievement object.
      class PlayerAchievement
        include Google::Apis::Core::Hashable
      
        # The state of the achievement.
        # Possible values are:
        # - "HIDDEN" - Achievement is hidden.
        # - "REVEALED" - Achievement is revealed.
        # - "UNLOCKED" - Achievement is unlocked.
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
        # @return [String]
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
        # string games#playerAchievement.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp of the last modification to this achievement's state.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_state = args[:achievement_state] unless args[:achievement_state].nil?
          @current_steps = args[:current_steps] unless args[:current_steps].nil?
          @experience_points = args[:experience_points] unless args[:experience_points].nil?
          @formatted_current_steps_string = args[:formatted_current_steps_string] unless args[:formatted_current_steps_string].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_updated_timestamp = args[:last_updated_timestamp] unless args[:last_updated_timestamp].nil?
        end
      end
      
      # This is a JSON template for a list of achievement objects.
      class ListPlayerAchievementResponse
        include Google::Apis::Core::Hashable
      
        # The achievements.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerAchievement>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerAchievementListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for an event status resource.
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
        # string games#playerEvent.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current number of times this event has occurred.
        # Corresponds to the JSON property `numEvents`
        # @return [String]
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
          @definition_id = args[:definition_id] unless args[:definition_id].nil?
          @formatted_num_events = args[:formatted_num_events] unless args[:formatted_num_events].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @num_events = args[:num_events] unless args[:num_events].nil?
          @player_id = args[:player_id] unless args[:player_id].nil?
        end
      end
      
      # This is a JSON template for a ListByPlayer response.
      class ListPlayerEventResponse
        include Google::Apis::Core::Hashable
      
        # The player events.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerEvent>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerEventListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for 1P/3P metadata about the player's experience.
      class PlayerExperienceInfo
        include Google::Apis::Core::Hashable
      
        # The current number of experience points for the player.
        # Corresponds to the JSON property `currentExperiencePoints`
        # @return [String]
        attr_accessor :current_experience_points
      
        # This is a JSON template for 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `currentLevel`
        # @return [Google::Apis::GamesV1::PlayerLevel]
        attr_accessor :current_level
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerExperienceInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp when the player was leveled up, in millis since Unix epoch UTC.
        # Corresponds to the JSON property `lastLevelUpTimestampMillis`
        # @return [String]
        attr_accessor :last_level_up_timestamp_millis
      
        # This is a JSON template for 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `nextLevel`
        # @return [Google::Apis::GamesV1::PlayerLevel]
        attr_accessor :next_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_experience_points = args[:current_experience_points] unless args[:current_experience_points].nil?
          @current_level = args[:current_level] unless args[:current_level].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_level_up_timestamp_millis = args[:last_level_up_timestamp_millis] unless args[:last_level_up_timestamp_millis].nil?
          @next_level = args[:next_level] unless args[:next_level].nil?
        end
      end
      
      # This is a JSON template for a player leaderboard score object.
      class PlayerLeaderboardScore
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerLeaderboardScore.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the leaderboard this score is in.
        # Corresponds to the JSON property `leaderboard_id`
        # @return [String]
        attr_accessor :leaderboard_id
      
        # This is a JSON template for a score rank in a leaderboard.
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
        # @return [String]
        attr_accessor :score_value
      
        # This is a JSON template for a score rank in a leaderboard.
        # Corresponds to the JSON property `socialRank`
        # @return [Google::Apis::GamesV1::LeaderboardScoreRank]
        attr_accessor :social_rank
      
        # The time span of this score.
        # Possible values are:
        # - "ALL_TIME" - The score is an all-time score.
        # - "WEEKLY" - The score is a weekly score.
        # - "DAILY" - The score is a daily score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        # The timestamp at which this score was recorded, in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `writeTimestamp`
        # @return [String]
        attr_accessor :write_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @leaderboard_id = args[:leaderboard_id] unless args[:leaderboard_id].nil?
          @public_rank = args[:public_rank] unless args[:public_rank].nil?
          @score_string = args[:score_string] unless args[:score_string].nil?
          @score_tag = args[:score_tag] unless args[:score_tag].nil?
          @score_value = args[:score_value] unless args[:score_value].nil?
          @social_rank = args[:social_rank] unless args[:social_rank].nil?
          @time_span = args[:time_span] unless args[:time_span].nil?
          @write_timestamp = args[:write_timestamp] unless args[:write_timestamp].nil?
        end
      end
      
      # This is a JSON template for a list of player leaderboard scores.
      class ListPlayerLeaderboardScoreResponse
        include Google::Apis::Core::Hashable
      
        # The leaderboard scores.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::PlayerLeaderboardScore>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerLeaderboardScoreListResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # This is a JSON template for a Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @player = args[:player] unless args[:player].nil?
        end
      end
      
      # This is a JSON template for 1P/3P metadata about a user's level.
      class PlayerLevel
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerLevel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The level for the user.
        # Corresponds to the JSON property `level`
        # @return [Fixnum]
        attr_accessor :level
      
        # The maximum experience points for this level.
        # Corresponds to the JSON property `maxExperiencePoints`
        # @return [String]
        attr_accessor :max_experience_points
      
        # The minimum experience points for this level.
        # Corresponds to the JSON property `minExperiencePoints`
        # @return [String]
        attr_accessor :min_experience_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @level = args[:level] unless args[:level].nil?
          @max_experience_points = args[:max_experience_points] unless args[:max_experience_points].nil?
          @min_experience_points = args[:min_experience_points] unless args[:min_experience_points].nil?
        end
      end
      
      # This is a JSON template for a third party player list response.
      class ListPlayerResponse
        include Google::Apis::Core::Hashable
      
        # The players.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Player>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for a player score.
      class PlayerScore
        include Google::Apis::Core::Hashable
      
        # The formatted score for this player score.
        # Corresponds to the JSON property `formattedScore`
        # @return [String]
        attr_accessor :formatted_score
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerScore.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The numerical value for this player score.
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        # Additional information about this score. Values will contain no more than 64
        # URI-safe characters as defined by section 2.3 of RFC 3986.
        # Corresponds to the JSON property `scoreTag`
        # @return [String]
        attr_accessor :score_tag
      
        # The time span for this player score.
        # Possible values are:
        # - "ALL_TIME" - The score is an all-time score.
        # - "WEEKLY" - The score is a weekly score.
        # - "DAILY" - The score is a daily score.
        # Corresponds to the JSON property `timeSpan`
        # @return [String]
        attr_accessor :time_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_score = args[:formatted_score] unless args[:formatted_score].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @score = args[:score] unless args[:score].nil?
          @score_tag = args[:score_tag] unless args[:score_tag].nil?
          @time_span = args[:time_span] unless args[:time_span].nil?
        end
      end
      
      # This is a JSON template for a list of score submission statuses.
      class ListPlayerScoreResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerScoreListResponse.
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
          @kind = args[:kind] unless args[:kind].nil?
          @submitted_scores = args[:submitted_scores] unless args[:submitted_scores].nil?
        end
      end
      
      # This is a JSON template for a list of leaderboard entry resources.
      class PlayerScoreResponse
        include Google::Apis::Core::Hashable
      
        # The time spans where the submitted score is better than the existing score for
        # that time span.
        # Possible values are:
        # - "ALL_TIME" - The score is an all-time score.
        # - "WEEKLY" - The score is a weekly score.
        # - "DAILY" - The score is a daily score.
        # Corresponds to the JSON property `beatenScoreTimeSpans`
        # @return [Array<String>]
        attr_accessor :beaten_score_time_spans
      
        # The formatted value of the submitted score.
        # Corresponds to the JSON property `formattedScore`
        # @return [String]
        attr_accessor :formatted_score
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerScoreResponse.
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
        # submitted score may be better than the player's DAILY score, but not better
        # than the player's scores for the WEEKLY or ALL_TIME time spans.
        # Corresponds to the JSON property `unbeatenScores`
        # @return [Array<Google::Apis::GamesV1::PlayerScore>]
        attr_accessor :unbeaten_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beaten_score_time_spans = args[:beaten_score_time_spans] unless args[:beaten_score_time_spans].nil?
          @formatted_score = args[:formatted_score] unless args[:formatted_score].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @leaderboard_id = args[:leaderboard_id] unless args[:leaderboard_id].nil?
          @score_tag = args[:score_tag] unless args[:score_tag].nil?
          @unbeaten_scores = args[:unbeaten_scores] unless args[:unbeaten_scores].nil?
        end
      end
      
      # This is a JSON template for a list of score submission requests
      class PlayerScoreSubmissionList
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#playerScoreSubmissionList.
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
          @kind = args[:kind] unless args[:kind].nil?
          @scores = args[:scores] unless args[:scores].nil?
        end
      end
      
      # This is a JSON template for a push token resource.
      class PushToken
        include Google::Apis::Core::Hashable
      
        # The revision of the client SDK used by your application, in the same format
        # that's used by revisions.check. Used to send backward compatible messages.
        # Format: [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
        # 
        # - IOS - Push token is for iOS
        # Corresponds to the JSON property `clientRevision`
        # @return [String]
        attr_accessor :client_revision
      
        # This is a JSON template for a push token ID resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::GamesV1::PushTokenId]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#pushToken.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The preferred language for notifications that are sent using this token.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_revision = args[:client_revision] unless args[:client_revision].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @language = args[:language] unless args[:language].nil?
        end
      end
      
      # This is a JSON template for a push token ID resource.
      class PushTokenId
        include Google::Apis::Core::Hashable
      
        # A push token ID for iOS devices.
        # Corresponds to the JSON property `ios`
        # @return [Google::Apis::GamesV1::PushTokenId::Ios]
        attr_accessor :ios
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#pushTokenId.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ios = args[:ios] unless args[:ios].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # A push token ID for iOS devices.
        class Ios
          include Google::Apis::Core::Hashable
        
          # Device token supplied by an iOS system call to register for remote
          # notifications. Encode this field as web-safe base64.
          # Corresponds to the JSON property `apns_device_token`
          # @return [String]
          attr_accessor :apns_device_token
        
          # Indicates whether this token should be used for the production or sandbox APNS
          # server.
          # Corresponds to the JSON property `apns_environment`
          # @return [String]
          attr_accessor :apns_environment
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @apns_device_token = args[:apns_device_token] unless args[:apns_device_token].nil?
            @apns_environment = args[:apns_environment] unless args[:apns_environment].nil?
          end
        end
      end
      
      # This is a JSON template for a Quest resource.
      class Quest
        include Google::Apis::Core::Hashable
      
        # The timestamp at which the user accepted the quest in milliseconds since the
        # epoch in UTC. Only present if the player has accepted the quest.
        # Corresponds to the JSON property `acceptedTimestampMillis`
        # @return [String]
        attr_accessor :accepted_timestamp_millis
      
        # The ID of the application this quest is part of.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # The banner image URL for the quest.
        # Corresponds to the JSON property `bannerUrl`
        # @return [String]
        attr_accessor :banner_url
      
        # The description of the quest.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The timestamp at which the quest ceases to be active in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `endTimestampMillis`
        # @return [String]
        attr_accessor :end_timestamp_millis
      
        # The icon image URL for the quest.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The ID of the quest.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether the banner image being returned is a default image, or is
        # game-provided.
        # Corresponds to the JSON property `isDefaultBannerUrl`
        # @return [Boolean]
        attr_accessor :is_default_banner_url
        alias_method :is_default_banner_url?, :is_default_banner_url
      
        # Indicates whether the icon image being returned is a default image, or is game-
        # provided.
        # Corresponds to the JSON property `isDefaultIconUrl`
        # @return [Boolean]
        attr_accessor :is_default_icon_url
        alias_method :is_default_icon_url?, :is_default_icon_url
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#quest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp at which the quest was last updated by the user in milliseconds
        # since the epoch in UTC. Only present if the player has accepted the quest.
        # Corresponds to the JSON property `lastUpdatedTimestampMillis`
        # @return [String]
        attr_accessor :last_updated_timestamp_millis
      
        # The quest milestones.
        # Corresponds to the JSON property `milestones`
        # @return [Array<Google::Apis::GamesV1::QuestMilestone>]
        attr_accessor :milestones
      
        # The name of the quest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The timestamp at which the user should be notified that the quest will end
        # soon in milliseconds since the epoch in UTC.
        # Corresponds to the JSON property `notifyTimestampMillis`
        # @return [String]
        attr_accessor :notify_timestamp_millis
      
        # The timestamp at which the quest becomes active in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `startTimestampMillis`
        # @return [String]
        attr_accessor :start_timestamp_millis
      
        # The state of the quest.
        # Possible values are:
        # - "UPCOMING": The quest is upcoming. The user can see the quest, but cannot
        # accept it until it is open.
        # - "OPEN": The quest is currently open and may be accepted at this time.
        # - "ACCEPTED": The user is currently participating in this quest.
        # - "COMPLETED": The user has completed the quest.
        # - "FAILED": The quest was attempted but was not completed before the deadline
        # expired.
        # - "EXPIRED": The quest has expired and was not accepted.
        # - "DELETED": The quest should be deleted from the local database.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_timestamp_millis = args[:accepted_timestamp_millis] unless args[:accepted_timestamp_millis].nil?
          @application_id = args[:application_id] unless args[:application_id].nil?
          @banner_url = args[:banner_url] unless args[:banner_url].nil?
          @description = args[:description] unless args[:description].nil?
          @end_timestamp_millis = args[:end_timestamp_millis] unless args[:end_timestamp_millis].nil?
          @icon_url = args[:icon_url] unless args[:icon_url].nil?
          @id = args[:id] unless args[:id].nil?
          @is_default_banner_url = args[:is_default_banner_url] unless args[:is_default_banner_url].nil?
          @is_default_icon_url = args[:is_default_icon_url] unless args[:is_default_icon_url].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_updated_timestamp_millis = args[:last_updated_timestamp_millis] unless args[:last_updated_timestamp_millis].nil?
          @milestones = args[:milestones] unless args[:milestones].nil?
          @name = args[:name] unless args[:name].nil?
          @notify_timestamp_millis = args[:notify_timestamp_millis] unless args[:notify_timestamp_millis].nil?
          @start_timestamp_millis = args[:start_timestamp_millis] unless args[:start_timestamp_millis].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # This is a JSON template for a Quest Criterion Contribution resource.
      class QuestContribution
        include Google::Apis::Core::Hashable
      
        # The formatted value of the contribution as a string. Format depends on the
        # configuration for the associated event definition in the Play Games Developer
        # Console.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#questContribution.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The value of the contribution.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_value = args[:formatted_value] unless args[:formatted_value].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # This is a JSON template for a Quest Criterion resource.
      class QuestCriterion
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for a Quest Criterion Contribution resource.
        # Corresponds to the JSON property `completionContribution`
        # @return [Google::Apis::GamesV1::QuestContribution]
        attr_accessor :completion_contribution
      
        # This is a JSON template for a Quest Criterion Contribution resource.
        # Corresponds to the JSON property `currentContribution`
        # @return [Google::Apis::GamesV1::QuestContribution]
        attr_accessor :current_contribution
      
        # The ID of the event the criterion corresponds to.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # This is a JSON template for a Quest Criterion Contribution resource.
        # Corresponds to the JSON property `initialPlayerProgress`
        # @return [Google::Apis::GamesV1::QuestContribution]
        attr_accessor :initial_player_progress
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#questCriterion.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_contribution = args[:completion_contribution] unless args[:completion_contribution].nil?
          @current_contribution = args[:current_contribution] unless args[:current_contribution].nil?
          @event_id = args[:event_id] unless args[:event_id].nil?
          @initial_player_progress = args[:initial_player_progress] unless args[:initial_player_progress].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for a list of quest objects.
      class ListQuestResponse
        include Google::Apis::Core::Hashable
      
        # The quests.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Quest>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#questListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for a Quest Milestone resource.
      class QuestMilestone
        include Google::Apis::Core::Hashable
      
        # The completion reward data of the milestone, represented as a Base64-encoded
        # string. This is a developer-specified binary blob with size between 0 and 2 KB
        # before encoding.
        # Corresponds to the JSON property `completionRewardData`
        # @return [String]
        attr_accessor :completion_reward_data
      
        # The criteria of the milestone.
        # Corresponds to the JSON property `criteria`
        # @return [Array<Google::Apis::GamesV1::QuestCriterion>]
        attr_accessor :criteria
      
        # The milestone ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#questMilestone.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current state of the milestone.
        # Possible values are:
        # - "COMPLETED_NOT_CLAIMED" - The milestone is complete, but has not yet been
        # claimed.
        # - "CLAIMED" - The milestone is complete and has been claimed.
        # - "NOT_COMPLETED" - The milestone has not yet been completed.
        # - "NOT_STARTED" - The milestone is for a quest that has not yet been accepted.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_reward_data = args[:completion_reward_data] unless args[:completion_reward_data].nil?
          @criteria = args[:criteria] unless args[:criteria].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # This is a JSON template for the result of checking a revision.
      class CheckRevisionResponse
        include Google::Apis::Core::Hashable
      
        # The version of the API this client revision should use when calling API
        # methods.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#revisionCheckResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The result of the revision check.
        # Possible values are:
        # - "OK" - The revision being used is current.
        # - "DEPRECATED" - There is currently a newer version available, but the
        # revision being used still works.
        # - "INVALID" - The revision being used is not supported in any released version.
        # Corresponds to the JSON property `revisionStatus`
        # @return [String]
        attr_accessor :revision_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] unless args[:api_version].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @revision_status = args[:revision_status] unless args[:revision_status].nil?
        end
      end
      
      # This is a JSON template for a room resource object.
      class Room
        include Google::Apis::Core::Hashable
      
        # The ID of the application being played.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # This is a JSON template for a room auto-match criteria object.
        # Corresponds to the JSON property `autoMatchingCriteria`
        # @return [Google::Apis::GamesV1::RoomAutoMatchingCriteria]
        attr_accessor :auto_matching_criteria
      
        # This is a JSON template for status of room automatching that is in progress.
        # Corresponds to the JSON property `autoMatchingStatus`
        # @return [Google::Apis::GamesV1::RoomAutoMatchStatus]
        attr_accessor :auto_matching_status
      
        # This is a JSON template for room modification metadata.
        # Corresponds to the JSON property `creationDetails`
        # @return [Google::Apis::GamesV1::RoomModification]
        attr_accessor :creation_details
      
        # This short description is generated by our servers and worded relative to the
        # player requesting the room. It is intended to be displayed when the room is
        # shown in a list (that is, an invitation to a room.)
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ID of the participant that invited the user to the room. Not set if the
        # user was not invited to the room.
        # Corresponds to the JSON property `inviterId`
        # @return [String]
        attr_accessor :inviter_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#room.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for room modification metadata.
        # Corresponds to the JSON property `lastUpdateDetails`
        # @return [Google::Apis::GamesV1::RoomModification]
        attr_accessor :last_update_details
      
        # The participants involved in the room, along with their statuses. Includes
        # participants who have left or declined invitations.
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::GamesV1::RoomParticipant>]
        attr_accessor :participants
      
        # Globally unique ID for a room.
        # Corresponds to the JSON property `roomId`
        # @return [String]
        attr_accessor :room_id
      
        # The version of the room status: an increasing counter, used by the client to
        # ignore out-of-order updates to room status.
        # Corresponds to the JSON property `roomStatusVersion`
        # @return [Fixnum]
        attr_accessor :room_status_version
      
        # The status of the room.
        # Possible values are:
        # - "ROOM_INVITING" - One or more players have been invited and not responded.
        # - "ROOM_AUTO_MATCHING" - One or more slots need to be filled by auto-matching.
        # - "ROOM_CONNECTING" - Players have joined and are connecting to each other (
        # either before or after auto-matching).
        # - "ROOM_ACTIVE" - All players have joined and connected to each other.
        # - "ROOM_DELETED" - The room should no longer be shown on the client. Returned
        # in sync calls when a player joins a room (as a tombstone), or for rooms where
        # all joined participants have left.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The variant / mode of the application being played; can be any integer value,
        # or left blank.
        # Corresponds to the JSON property `variant`
        # @return [Fixnum]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] unless args[:application_id].nil?
          @auto_matching_criteria = args[:auto_matching_criteria] unless args[:auto_matching_criteria].nil?
          @auto_matching_status = args[:auto_matching_status] unless args[:auto_matching_status].nil?
          @creation_details = args[:creation_details] unless args[:creation_details].nil?
          @description = args[:description] unless args[:description].nil?
          @inviter_id = args[:inviter_id] unless args[:inviter_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_update_details = args[:last_update_details] unless args[:last_update_details].nil?
          @participants = args[:participants] unless args[:participants].nil?
          @room_id = args[:room_id] unless args[:room_id].nil?
          @room_status_version = args[:room_status_version] unless args[:room_status_version].nil?
          @status = args[:status] unless args[:status].nil?
          @variant = args[:variant] unless args[:variant].nil?
        end
      end
      
      # This is a JSON template for status of room automatching that is in progress.
      class RoomAutoMatchStatus
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomAutoMatchStatus.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An estimate for the amount of time (in seconds) that auto-matching is expected
        # to take to complete.
        # Corresponds to the JSON property `waitEstimateSeconds`
        # @return [Fixnum]
        attr_accessor :wait_estimate_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @wait_estimate_seconds = args[:wait_estimate_seconds] unless args[:wait_estimate_seconds].nil?
        end
      end
      
      # This is a JSON template for a room auto-match criteria object.
      class RoomAutoMatchingCriteria
        include Google::Apis::Core::Hashable
      
        # A bitmask indicating when auto-matches are valid. When ANDed with other
        # exclusive bitmasks, the result must be zero. Can be used to support exclusive
        # roles within a game.
        # Corresponds to the JSON property `exclusiveBitmask`
        # @return [String]
        attr_accessor :exclusive_bitmask
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomAutoMatchingCriteria.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum number of players that should be added to the room by auto-
        # matching.
        # Corresponds to the JSON property `maxAutoMatchingPlayers`
        # @return [Fixnum]
        attr_accessor :max_auto_matching_players
      
        # The minimum number of players that should be added to the room by auto-
        # matching.
        # Corresponds to the JSON property `minAutoMatchingPlayers`
        # @return [Fixnum]
        attr_accessor :min_auto_matching_players
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusive_bitmask = args[:exclusive_bitmask] unless args[:exclusive_bitmask].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_auto_matching_players = args[:max_auto_matching_players] unless args[:max_auto_matching_players].nil?
          @min_auto_matching_players = args[:min_auto_matching_players] unless args[:min_auto_matching_players].nil?
        end
      end
      
      # This is a JSON template for the client address when setting up a room.
      class RoomClientAddress
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomClientAddress.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The XMPP address of the client on the Google Games XMPP network.
        # Corresponds to the JSON property `xmppAddress`
        # @return [String]
        attr_accessor :xmpp_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @xmpp_address = args[:xmpp_address] unless args[:xmpp_address].nil?
        end
      end
      
      # This is a JSON template for a room creation request.
      class CreateRoomRequest
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for a room auto-match criteria object.
        # Corresponds to the JSON property `autoMatchingCriteria`
        # @return [Google::Apis::GamesV1::RoomAutoMatchingCriteria]
        attr_accessor :auto_matching_criteria
      
        # The capabilities that this client supports for realtime communication.
        # Corresponds to the JSON property `capabilities`
        # @return [Array<String>]
        attr_accessor :capabilities
      
        # This is a JSON template for the client address when setting up a room.
        # Corresponds to the JSON property `clientAddress`
        # @return [Google::Apis::GamesV1::RoomClientAddress]
        attr_accessor :client_address
      
        # The player IDs to invite to the room.
        # Corresponds to the JSON property `invitedPlayerIds`
        # @return [Array<String>]
        attr_accessor :invited_player_ids
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomCreateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for network diagnostics reported for a client.
        # Corresponds to the JSON property `networkDiagnostics`
        # @return [Google::Apis::GamesV1::NetworkDiagnostics]
        attr_accessor :network_diagnostics
      
        # A randomly generated numeric ID. This number is used at the server to ensure
        # that the request is handled correctly across retries.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The variant / mode of the application to be played. This can be any integer
        # value, or left blank. You should use a small number of variants to keep the
        # auto-matching pool as large as possible.
        # Corresponds to the JSON property `variant`
        # @return [Fixnum]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matching_criteria = args[:auto_matching_criteria] unless args[:auto_matching_criteria].nil?
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @client_address = args[:client_address] unless args[:client_address].nil?
          @invited_player_ids = args[:invited_player_ids] unless args[:invited_player_ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @network_diagnostics = args[:network_diagnostics] unless args[:network_diagnostics].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @variant = args[:variant] unless args[:variant].nil?
        end
      end
      
      # This is a JSON template for a join room request.
      class JoinRoomRequest
        include Google::Apis::Core::Hashable
      
        # The capabilities that this client supports for realtime communication.
        # Corresponds to the JSON property `capabilities`
        # @return [Array<String>]
        attr_accessor :capabilities
      
        # This is a JSON template for the client address when setting up a room.
        # Corresponds to the JSON property `clientAddress`
        # @return [Google::Apis::GamesV1::RoomClientAddress]
        attr_accessor :client_address
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomJoinRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for network diagnostics reported for a client.
        # Corresponds to the JSON property `networkDiagnostics`
        # @return [Google::Apis::GamesV1::NetworkDiagnostics]
        attr_accessor :network_diagnostics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @client_address = args[:client_address] unless args[:client_address].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @network_diagnostics = args[:network_diagnostics] unless args[:network_diagnostics].nil?
        end
      end
      
      # This is a JSON template for room leave diagnostics.
      class RoomLeaveDiagnostics
        include Google::Apis::Core::Hashable
      
        # Android network subtype. http://developer.android.com/reference/android/net/
        # NetworkInfo.html#getSubtype()
        # Corresponds to the JSON property `androidNetworkSubtype`
        # @return [Fixnum]
        attr_accessor :android_network_subtype
      
        # Android network type. http://developer.android.com/reference/android/net/
        # NetworkInfo.html#getType()
        # Corresponds to the JSON property `androidNetworkType`
        # @return [Fixnum]
        attr_accessor :android_network_type
      
        # iOS network type as defined in Reachability.h.
        # Corresponds to the JSON property `iosNetworkType`
        # @return [Fixnum]
        attr_accessor :ios_network_type
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomLeaveDiagnostics.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The MCC+MNC code for the client's network connection. On Android: http://
        # developer.android.com/reference/android/telephony/TelephonyManager.html#
        # getNetworkOperator() On iOS, see: https://developer.apple.com/library/ios/
        # documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html
        # Corresponds to the JSON property `networkOperatorCode`
        # @return [String]
        attr_accessor :network_operator_code
      
        # The name of the carrier of the client's network connection. On Android: http://
        # developer.android.com/reference/android/telephony/TelephonyManager.html#
        # getNetworkOperatorName() On iOS: https://developer.apple.com/library/ios/
        # documentation/NetworkingInternet/Reference/CTCarrier/Reference/Reference.html#/
        # /apple_ref/occ/instp/CTCarrier/carrierName
        # Corresponds to the JSON property `networkOperatorName`
        # @return [String]
        attr_accessor :network_operator_name
      
        # Diagnostics about all peer sessions.
        # Corresponds to the JSON property `peerSession`
        # @return [Array<Google::Apis::GamesV1::PeerSessionDiagnostics>]
        attr_accessor :peer_session
      
        # Whether or not sockets were used.
        # Corresponds to the JSON property `socketsUsed`
        # @return [Boolean]
        attr_accessor :sockets_used
        alias_method :sockets_used?, :sockets_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_network_subtype = args[:android_network_subtype] unless args[:android_network_subtype].nil?
          @android_network_type = args[:android_network_type] unless args[:android_network_type].nil?
          @ios_network_type = args[:ios_network_type] unless args[:ios_network_type].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @network_operator_code = args[:network_operator_code] unless args[:network_operator_code].nil?
          @network_operator_name = args[:network_operator_name] unless args[:network_operator_name].nil?
          @peer_session = args[:peer_session] unless args[:peer_session].nil?
          @sockets_used = args[:sockets_used] unless args[:sockets_used].nil?
        end
      end
      
      # This is a JSON template for a leave room request.
      class LeaveRoomRequest
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomLeaveRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for room leave diagnostics.
        # Corresponds to the JSON property `leaveDiagnostics`
        # @return [Google::Apis::GamesV1::RoomLeaveDiagnostics]
        attr_accessor :leave_diagnostics
      
        # Reason for leaving the match.
        # Possible values are:
        # - "PLAYER_LEFT" - The player chose to leave the room..
        # - "GAME_LEFT" - The game chose to remove the player from the room.
        # - "REALTIME_ABANDONED" - The player switched to another application and
        # abandoned the room.
        # - "REALTIME_PEER_CONNECTION_FAILURE" - The client was unable to establish a
        # connection to other peer(s).
        # - "REALTIME_SERVER_CONNECTION_FAILURE" - The client was unable to communicate
        # with the server.
        # - "REALTIME_SERVER_ERROR" - The client received an error response when it
        # tried to communicate with the server.
        # - "REALTIME_TIMEOUT" - The client timed out while waiting for a room.
        # - "REALTIME_CLIENT_DISCONNECTING" - The client disconnects without first
        # calling Leave.
        # - "REALTIME_SIGN_OUT" - The user signed out of G+ while in the room.
        # - "REALTIME_GAME_CRASHED" - The game crashed.
        # - "REALTIME_ROOM_SERVICE_CRASHED" - RoomAndroidService crashed.
        # - "REALTIME_DIFFERENT_CLIENT_ROOM_OPERATION" - Another client is trying to
        # enter a room.
        # - "REALTIME_SAME_CLIENT_ROOM_OPERATION" - The same client is trying to enter a
        # new room.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @leave_diagnostics = args[:leave_diagnostics] unless args[:leave_diagnostics].nil?
          @reason = args[:reason] unless args[:reason].nil?
        end
      end
      
      # This is a JSON template for a list of rooms.
      class RoomList
        include Google::Apis::Core::Hashable
      
        # The rooms.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Room>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomList.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for room modification metadata.
      class RoomModification
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomModification.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp at which they modified the room, in milliseconds since the epoch
        # in UTC.
        # Corresponds to the JSON property `modifiedTimestampMillis`
        # @return [String]
        attr_accessor :modified_timestamp_millis
      
        # The ID of the participant that modified the room.
        # Corresponds to the JSON property `participantId`
        # @return [String]
        attr_accessor :participant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @modified_timestamp_millis = args[:modified_timestamp_millis] unless args[:modified_timestamp_millis].nil?
          @participant_id = args[:participant_id] unless args[:participant_id].nil?
        end
      end
      
      # This is a JSON template for an update on the status of a peer in a room.
      class RoomP2PStatus
        include Google::Apis::Core::Hashable
      
        # The amount of time in milliseconds it took to establish connections with this
        # peer.
        # Corresponds to the JSON property `connectionSetupLatencyMillis`
        # @return [Fixnum]
        attr_accessor :connection_setup_latency_millis
      
        # The error code in event of a failure.
        # Possible values are:
        # - "P2P_FAILED" - The client failed to establish a P2P connection with the peer.
        # 
        # - "PRESENCE_FAILED" - The client failed to register to receive P2P connections.
        # 
        # - "RELAY_SERVER_FAILED" - The client received an error when trying to use the
        # relay server to establish a P2P connection with the peer.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # More detailed diagnostic message returned in event of a failure.
        # Corresponds to the JSON property `error_reason`
        # @return [String]
        attr_accessor :error_reason
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomP2PStatus.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the participant.
        # Corresponds to the JSON property `participantId`
        # @return [String]
        attr_accessor :participant_id
      
        # The status of the peer in the room.
        # Possible values are:
        # - "CONNECTION_ESTABLISHED" - The client established a P2P connection with the
        # peer.
        # - "CONNECTION_FAILED" - The client failed to establish directed presence with
        # the peer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The amount of time in milliseconds it took to send packets back and forth on
        # the unreliable channel with this peer.
        # Corresponds to the JSON property `unreliableRoundtripLatencyMillis`
        # @return [Fixnum]
        attr_accessor :unreliable_roundtrip_latency_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_setup_latency_millis = args[:connection_setup_latency_millis] unless args[:connection_setup_latency_millis].nil?
          @error = args[:error] unless args[:error].nil?
          @error_reason = args[:error_reason] unless args[:error_reason].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @participant_id = args[:participant_id] unless args[:participant_id].nil?
          @status = args[:status] unless args[:status].nil?
          @unreliable_roundtrip_latency_millis = args[:unreliable_roundtrip_latency_millis] unless args[:unreliable_roundtrip_latency_millis].nil?
        end
      end
      
      # This is a JSON template for an update on the status of peers in a room.
      class RoomP2PStatuses
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomP2PStatuses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The updates for the peers.
        # Corresponds to the JSON property `updates`
        # @return [Array<Google::Apis::GamesV1::RoomP2PStatus>]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @updates = args[:updates] unless args[:updates].nil?
        end
      end
      
      # This is a JSON template for a participant in a room.
      class RoomParticipant
        include Google::Apis::Core::Hashable
      
        # True if this participant was auto-matched with the requesting player.
        # Corresponds to the JSON property `autoMatched`
        # @return [Boolean]
        attr_accessor :auto_matched
        alias_method :auto_matched?, :auto_matched
      
        # This is a JSON template for an anonymous player
        # Corresponds to the JSON property `autoMatchedPlayer`
        # @return [Google::Apis::GamesV1::AnonymousPlayer]
        attr_accessor :auto_matched_player
      
        # The capabilities which can be used when communicating with this participant.
        # Corresponds to the JSON property `capabilities`
        # @return [Array<String>]
        attr_accessor :capabilities
      
        # This is a JSON template for the client address when setting up a room.
        # Corresponds to the JSON property `clientAddress`
        # @return [Google::Apis::GamesV1::RoomClientAddress]
        attr_accessor :client_address
      
        # True if this participant is in the fully connected set of peers in the room.
        # Corresponds to the JSON property `connected`
        # @return [Boolean]
        attr_accessor :connected
        alias_method :connected?, :connected
      
        # An identifier for the participant in the scope of the room. Cannot be used to
        # identify a player across rooms or in other contexts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomParticipant.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The reason the participant left the room; populated if the participant status
        # is PARTICIPANT_LEFT.
        # Possible values are:
        # - "PLAYER_LEFT" - The player explicitly chose to leave the room.
        # - "GAME_LEFT" - The game chose to remove the player from the room.
        # - "ABANDONED" - The player switched to another application and abandoned the
        # room.
        # - "PEER_CONNECTION_FAILURE" - The client was unable to establish or maintain a
        # connection to other peer(s) in the room.
        # - "SERVER_ERROR" - The client received an error response when it tried to
        # communicate with the server.
        # - "TIMEOUT" - The client timed out while waiting for players to join and
        # connect.
        # - "PRESENCE_FAILURE" - The client's XMPP connection ended abruptly.
        # Corresponds to the JSON property `leaveReason`
        # @return [String]
        attr_accessor :leave_reason
      
        # This is a JSON template for a Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        # The status of the participant with respect to the room.
        # Possible values are:
        # - "PARTICIPANT_INVITED" - The participant has been invited to join the room,
        # but has not yet responded.
        # - "PARTICIPANT_JOINED" - The participant has joined the room (either after
        # creating it or accepting an invitation.)
        # - "PARTICIPANT_DECLINED" - The participant declined an invitation to join the
        # room.
        # - "PARTICIPANT_LEFT" - The participant joined the room and then left it.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matched = args[:auto_matched] unless args[:auto_matched].nil?
          @auto_matched_player = args[:auto_matched_player] unless args[:auto_matched_player].nil?
          @capabilities = args[:capabilities] unless args[:capabilities].nil?
          @client_address = args[:client_address] unless args[:client_address].nil?
          @connected = args[:connected] unless args[:connected].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @leave_reason = args[:leave_reason] unless args[:leave_reason].nil?
          @player = args[:player] unless args[:player].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # This is a JSON template for the status of a room that the player has joined.
      class RoomStatus
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for status of room automatching that is in progress.
        # Corresponds to the JSON property `autoMatchingStatus`
        # @return [Google::Apis::GamesV1::RoomAutoMatchStatus]
        attr_accessor :auto_matching_status
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#roomStatus.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The participants involved in the room, along with their statuses. Includes
        # participants who have left or declined invitations.
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::GamesV1::RoomParticipant>]
        attr_accessor :participants
      
        # Globally unique ID for a room.
        # Corresponds to the JSON property `roomId`
        # @return [String]
        attr_accessor :room_id
      
        # The status of the room.
        # Possible values are:
        # - "ROOM_INVITING" - One or more players have been invited and not responded.
        # - "ROOM_AUTO_MATCHING" - One or more slots need to be filled by auto-matching.
        # - "ROOM_CONNECTING" - Players have joined are connecting to each other (either
        # before or after auto-matching).
        # - "ROOM_ACTIVE" - All players have joined and connected to each other.
        # - "ROOM_DELETED" - All joined players have left.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The version of the status for the room: an increasing counter, used by the
        # client to ignore out-of-order updates to room status.
        # Corresponds to the JSON property `statusVersion`
        # @return [Fixnum]
        attr_accessor :status_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matching_status = args[:auto_matching_status] unless args[:auto_matching_status].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @participants = args[:participants] unless args[:participants].nil?
          @room_id = args[:room_id] unless args[:room_id].nil?
          @status = args[:status] unless args[:status].nil?
          @status_version = args[:status_version] unless args[:status_version].nil?
        end
      end
      
      # This is a JSON template for a request to submit a score to leaderboards.
      class ScoreSubmission
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#scoreSubmission.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The leaderboard this score is being submitted to.
        # Corresponds to the JSON property `leaderboardId`
        # @return [String]
        attr_accessor :leaderboard_id
      
        # The new score being submitted.
        # Corresponds to the JSON property `score`
        # @return [String]
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
          @kind = args[:kind] unless args[:kind].nil?
          @leaderboard_id = args[:leaderboard_id] unless args[:leaderboard_id].nil?
          @score = args[:score] unless args[:score].nil?
          @score_tag = args[:score_tag] unless args[:score_tag].nil?
          @signature = args[:signature] unless args[:signature].nil?
        end
      end
      
      # This is a JSON template for an snapshot object.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for an image of a snapshot.
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
        # @return [String]
        attr_accessor :duration_millis
      
        # The ID of the snapshot.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#snapshot.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp (in millis since Unix epoch) of the last modification to this
        # snapshot.
        # Corresponds to the JSON property `lastModifiedMillis`
        # @return [String]
        attr_accessor :last_modified_millis
      
        # The progress value (64-bit integer set by developer) associated with this
        # snapshot.
        # Corresponds to the JSON property `progressValue`
        # @return [String]
        attr_accessor :progress_value
      
        # The title of this snapshot.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The type of this snapshot.
        # Possible values are:
        # - "SAVE_GAME" - A snapshot representing a save game.
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
          @cover_image = args[:cover_image] unless args[:cover_image].nil?
          @description = args[:description] unless args[:description].nil?
          @drive_id = args[:drive_id] unless args[:drive_id].nil?
          @duration_millis = args[:duration_millis] unless args[:duration_millis].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_millis = args[:last_modified_millis] unless args[:last_modified_millis].nil?
          @progress_value = args[:progress_value] unless args[:progress_value].nil?
          @title = args[:title] unless args[:title].nil?
          @type = args[:type] unless args[:type].nil?
          @unique_name = args[:unique_name] unless args[:unique_name].nil?
        end
      end
      
      # This is a JSON template for an image of a snapshot.
      class SnapshotImage
        include Google::Apis::Core::Hashable
      
        # The height of the image.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#snapshotImage.
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
          @height = args[:height] unless args[:height].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @url = args[:url] unless args[:url].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # This is a JSON template for a list of snapshot objects.
      class ListSnapshotResponse
        include Google::Apis::Core::Hashable
      
        # The snapshots.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::Snapshot>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#snapshotListResponse.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for an turn-based auto-match criteria object.
      class TurnBasedAutoMatchingCriteria
        include Google::Apis::Core::Hashable
      
        # A bitmask indicating when auto-matches are valid. When ANDed with other
        # exclusive bitmasks, the result must be zero. Can be used to support exclusive
        # roles within a game.
        # Corresponds to the JSON property `exclusiveBitmask`
        # @return [String]
        attr_accessor :exclusive_bitmask
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedAutoMatchingCriteria.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum number of players that should be added to the match by auto-
        # matching.
        # Corresponds to the JSON property `maxAutoMatchingPlayers`
        # @return [Fixnum]
        attr_accessor :max_auto_matching_players
      
        # The minimum number of players that should be added to the match by auto-
        # matching.
        # Corresponds to the JSON property `minAutoMatchingPlayers`
        # @return [Fixnum]
        attr_accessor :min_auto_matching_players
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusive_bitmask = args[:exclusive_bitmask] unless args[:exclusive_bitmask].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_auto_matching_players = args[:max_auto_matching_players] unless args[:max_auto_matching_players].nil?
          @min_auto_matching_players = args[:min_auto_matching_players] unless args[:min_auto_matching_players].nil?
        end
      end
      
      # This is a JSON template for a turn-based match resource object.
      class TurnBasedMatch
        include Google::Apis::Core::Hashable
      
        # The ID of the application being played.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # This is a JSON template for an turn-based auto-match criteria object.
        # Corresponds to the JSON property `autoMatchingCriteria`
        # @return [Google::Apis::GamesV1::TurnBasedAutoMatchingCriteria]
        attr_accessor :auto_matching_criteria
      
        # This is a JSON template for turn-based match modification metadata.
        # Corresponds to the JSON property `creationDetails`
        # @return [Google::Apis::GamesV1::TurnBasedMatchModification]
        attr_accessor :creation_details
      
        # This is a JSON template for a turn-based match data object.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::GamesV1::TurnBasedMatchData]
        attr_accessor :data
      
        # This short description is generated by our servers based on turn state and is
        # localized and worded relative to the player requesting the match. It is
        # intended to be displayed when the match is shown in a list.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ID of the participant that invited the user to the match. Not set if the
        # user was not invited to the match.
        # Corresponds to the JSON property `inviterId`
        # @return [String]
        attr_accessor :inviter_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatch.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for turn-based match modification metadata.
        # Corresponds to the JSON property `lastUpdateDetails`
        # @return [Google::Apis::GamesV1::TurnBasedMatchModification]
        attr_accessor :last_update_details
      
        # Globally unique ID for a turn-based match.
        # Corresponds to the JSON property `matchId`
        # @return [String]
        attr_accessor :match_id
      
        # The number of the match in a chain of rematches. Will be set to 1 for the
        # first match and incremented by 1 for each rematch.
        # Corresponds to the JSON property `matchNumber`
        # @return [Fixnum]
        attr_accessor :match_number
      
        # The version of this match: an increasing counter, used to avoid out-of-date
        # updates to the match.
        # Corresponds to the JSON property `matchVersion`
        # @return [Fixnum]
        attr_accessor :match_version
      
        # The participants involved in the match, along with their statuses. Includes
        # participants who have left or declined invitations.
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::GamesV1::TurnBasedMatchParticipant>]
        attr_accessor :participants
      
        # The ID of the participant that is taking a turn.
        # Corresponds to the JSON property `pendingParticipantId`
        # @return [String]
        attr_accessor :pending_participant_id
      
        # This is a JSON template for a turn-based match data object.
        # Corresponds to the JSON property `previousMatchData`
        # @return [Google::Apis::GamesV1::TurnBasedMatchData]
        attr_accessor :previous_match_data
      
        # The ID of a rematch of this match. Only set for completed matches that have
        # been rematched.
        # Corresponds to the JSON property `rematchId`
        # @return [String]
        attr_accessor :rematch_id
      
        # The results reported for this match.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GamesV1::ParticipantResult>]
        attr_accessor :results
      
        # The status of the match.
        # Possible values are:
        # - "MATCH_AUTO_MATCHING" - One or more slots need to be filled by auto-matching;
        # the match cannot be established until they are filled.
        # - "MATCH_ACTIVE" - The match has started.
        # - "MATCH_COMPLETE" - The match has finished.
        # - "MATCH_CANCELED" - The match was canceled.
        # - "MATCH_EXPIRED" - The match expired due to inactivity.
        # - "MATCH_DELETED" - The match should no longer be shown on the client.
        # Returned only for tombstones for matches when sync is called.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The status of the current user in the match. Derived from the match type,
        # match status, the user's participant status, and the pending participant for
        # the match.
        # Possible values are:
        # - "USER_INVITED" - The user has been invited to join the match and has not
        # responded yet.
        # - "USER_AWAITING_TURN" - The user is waiting for their turn.
        # - "USER_TURN" - The user has an action to take in the match.
        # - "USER_MATCH_COMPLETED" - The match has ended (it is completed, canceled, or
        # expired.)
        # Corresponds to the JSON property `userMatchStatus`
        # @return [String]
        attr_accessor :user_match_status
      
        # The variant / mode of the application being played; can be any integer value,
        # or left blank.
        # Corresponds to the JSON property `variant`
        # @return [Fixnum]
        attr_accessor :variant
      
        # The ID of another participant in the match that can be used when describing
        # the participants the user is playing with.
        # Corresponds to the JSON property `withParticipantId`
        # @return [String]
        attr_accessor :with_participant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] unless args[:application_id].nil?
          @auto_matching_criteria = args[:auto_matching_criteria] unless args[:auto_matching_criteria].nil?
          @creation_details = args[:creation_details] unless args[:creation_details].nil?
          @data = args[:data] unless args[:data].nil?
          @description = args[:description] unless args[:description].nil?
          @inviter_id = args[:inviter_id] unless args[:inviter_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_update_details = args[:last_update_details] unless args[:last_update_details].nil?
          @match_id = args[:match_id] unless args[:match_id].nil?
          @match_number = args[:match_number] unless args[:match_number].nil?
          @match_version = args[:match_version] unless args[:match_version].nil?
          @participants = args[:participants] unless args[:participants].nil?
          @pending_participant_id = args[:pending_participant_id] unless args[:pending_participant_id].nil?
          @previous_match_data = args[:previous_match_data] unless args[:previous_match_data].nil?
          @rematch_id = args[:rematch_id] unless args[:rematch_id].nil?
          @results = args[:results] unless args[:results].nil?
          @status = args[:status] unless args[:status].nil?
          @user_match_status = args[:user_match_status] unless args[:user_match_status].nil?
          @variant = args[:variant] unless args[:variant].nil?
          @with_participant_id = args[:with_participant_id] unless args[:with_participant_id].nil?
        end
      end
      
      # This is a JSON template for a turn-based match creation request.
      class CreateTurnBasedMatchRequest
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for an turn-based auto-match criteria object.
        # Corresponds to the JSON property `autoMatchingCriteria`
        # @return [Google::Apis::GamesV1::TurnBasedAutoMatchingCriteria]
        attr_accessor :auto_matching_criteria
      
        # The player ids to invite to the match.
        # Corresponds to the JSON property `invitedPlayerIds`
        # @return [Array<String>]
        attr_accessor :invited_player_ids
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchCreateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A randomly generated numeric ID. This number is used at the server to ensure
        # that the request is handled correctly across retries.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The variant / mode of the application to be played. This can be any integer
        # value, or left blank. You should use a small number of variants to keep the
        # auto-matching pool as large as possible.
        # Corresponds to the JSON property `variant`
        # @return [Fixnum]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matching_criteria = args[:auto_matching_criteria] unless args[:auto_matching_criteria].nil?
          @invited_player_ids = args[:invited_player_ids] unless args[:invited_player_ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @variant = args[:variant] unless args[:variant].nil?
        end
      end
      
      # This is a JSON template for a turn-based match data object.
      class TurnBasedMatchData
        include Google::Apis::Core::Hashable
      
        # The byte representation of the data (limited to 128 kB), as a Base64-encoded
        # string with the URL_SAFE encoding option.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # True if this match has data available but it wasn't returned in a list
        # response; fetching the match individually will retrieve this data.
        # Corresponds to the JSON property `dataAvailable`
        # @return [Boolean]
        attr_accessor :data_available
        alias_method :data_available?, :data_available
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchData.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @data_available = args[:data_available] unless args[:data_available].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for sending a turn-based match data object.
      class TurnBasedMatchDataRequest
        include Google::Apis::Core::Hashable
      
        # The byte representation of the data (limited to 128 kB), as a Base64-encoded
        # string with the URL_SAFE encoding option.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchDataRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for a list of turn-based matches.
      class TurnBasedMatchList
        include Google::Apis::Core::Hashable
      
        # The matches.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::TurnBasedMatch>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchList.
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
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for turn-based match modification metadata.
      class TurnBasedMatchModification
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchModification.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The timestamp at which they modified the match, in milliseconds since the
        # epoch in UTC.
        # Corresponds to the JSON property `modifiedTimestampMillis`
        # @return [String]
        attr_accessor :modified_timestamp_millis
      
        # The ID of the participant that modified the match.
        # Corresponds to the JSON property `participantId`
        # @return [String]
        attr_accessor :participant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @modified_timestamp_millis = args[:modified_timestamp_millis] unless args[:modified_timestamp_millis].nil?
          @participant_id = args[:participant_id] unless args[:participant_id].nil?
        end
      end
      
      # This is a JSON template for a participant in a turn-based match.
      class TurnBasedMatchParticipant
        include Google::Apis::Core::Hashable
      
        # True if this participant was auto-matched with the requesting player.
        # Corresponds to the JSON property `autoMatched`
        # @return [Boolean]
        attr_accessor :auto_matched
        alias_method :auto_matched?, :auto_matched
      
        # This is a JSON template for an anonymous player
        # Corresponds to the JSON property `autoMatchedPlayer`
        # @return [Google::Apis::GamesV1::AnonymousPlayer]
        attr_accessor :auto_matched_player
      
        # An identifier for the participant in the scope of the match. Cannot be used to
        # identify a player across matches or in other contexts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchParticipant.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for a Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesV1::Player]
        attr_accessor :player
      
        # The status of the participant with respect to the match.
        # Possible values are:
        # - "PARTICIPANT_NOT_INVITED_YET" - The participant is slated to be invited to
        # the match, but the invitation has not been sent; the invite will be sent when
        # it becomes their turn.
        # - "PARTICIPANT_INVITED" - The participant has been invited to join the match,
        # but has not yet responded.
        # - "PARTICIPANT_JOINED" - The participant has joined the match (either after
        # creating it or accepting an invitation.)
        # - "PARTICIPANT_DECLINED" - The participant declined an invitation to join the
        # match.
        # - "PARTICIPANT_LEFT" - The participant joined the match and then left it.
        # - "PARTICIPANT_FINISHED" - The participant finished playing in the match.
        # - "PARTICIPANT_UNRESPONSIVE" - The participant did not take their turn in the
        # allotted time.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_matched = args[:auto_matched] unless args[:auto_matched].nil?
          @auto_matched_player = args[:auto_matched_player] unless args[:auto_matched_player].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @player = args[:player] unless args[:player].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # This is a JSON template for a rematch response.
      class TurnBasedMatchRematch
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchRematch.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for a turn-based match resource object.
        # Corresponds to the JSON property `previousMatch`
        # @return [Google::Apis::GamesV1::TurnBasedMatch]
        attr_accessor :previous_match
      
        # This is a JSON template for a turn-based match resource object.
        # Corresponds to the JSON property `rematch`
        # @return [Google::Apis::GamesV1::TurnBasedMatch]
        attr_accessor :rematch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @previous_match = args[:previous_match] unless args[:previous_match].nil?
          @rematch = args[:rematch] unless args[:rematch].nil?
        end
      end
      
      # This is a JSON template for a turn-based match results object.
      class TurnBasedMatchResults
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for sending a turn-based match data object.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::GamesV1::TurnBasedMatchDataRequest]
        attr_accessor :data
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchResults.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The version of the match being updated.
        # Corresponds to the JSON property `matchVersion`
        # @return [Fixnum]
        attr_accessor :match_version
      
        # The match results for the participants in the match.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GamesV1::ParticipantResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @match_version = args[:match_version] unless args[:match_version].nil?
          @results = args[:results] unless args[:results].nil?
        end
      end
      
      # This is a JSON template for a list of turn-based matches returned from a sync.
      class TurnBasedMatchSync
        include Google::Apis::Core::Hashable
      
        # The matches.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesV1::TurnBasedMatch>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchSync.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # True if there were more matches available to fetch at the time the response
        # was generated (which were not returned due to page size limits.)
        # Corresponds to the JSON property `moreAvailable`
        # @return [Boolean]
        attr_accessor :more_available
        alias_method :more_available?, :more_available
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @more_available = args[:more_available] unless args[:more_available].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # This is a JSON template for the object representing a turn.
      class TurnBasedMatchTurn
        include Google::Apis::Core::Hashable
      
        # This is a JSON template for sending a turn-based match data object.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::GamesV1::TurnBasedMatchDataRequest]
        attr_accessor :data
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string games#turnBasedMatchTurn.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The version of this match: an increasing counter, used to avoid out-of-date
        # updates to the match.
        # Corresponds to the JSON property `matchVersion`
        # @return [Fixnum]
        attr_accessor :match_version
      
        # The ID of the participant who should take their turn next. May be set to the
        # current player's participant ID to update match state without changing the
        # turn. If not set, the match will wait for other player(s) to join via
        # automatching; this is only valid if automatch criteria is set on the match
        # with remaining slots for automatched players.
        # Corresponds to the JSON property `pendingParticipantId`
        # @return [String]
        attr_accessor :pending_participant_id
      
        # The match results for the participants in the match.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GamesV1::ParticipantResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @match_version = args[:match_version] unless args[:match_version].nil?
          @pending_participant_id = args[:pending_participant_id] unless args[:pending_participant_id].nil?
          @results = args[:results] unless args[:results].nil?
        end
      end
    end
  end
end
