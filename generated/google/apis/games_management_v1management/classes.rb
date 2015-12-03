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
    module GamesManagementV1management
      
      # This is a JSON template for achievement reset all response.
      class AchievementResetAllResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#achievementResetAllResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The achievement reset results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GamesManagementV1management::AchievementResetResponse>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @results = args[:results] unless args[:results].nil?
        end
      end
      
      # This is a JSON template for multiple achievements reset all request.
      class AchievementResetMultipleForAllRequest
        include Google::Apis::Core::Hashable
      
        # The IDs of achievements to reset.
        # Corresponds to the JSON property `achievement_ids`
        # @return [Array<String>]
        attr_accessor :achievement_ids
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#achievementResetMultipleForAllRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @achievement_ids = args[:achievement_ids] unless args[:achievement_ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for an achievement reset response.
      class AchievementResetResponse
        include Google::Apis::Core::Hashable
      
        # The current state of the achievement. This is the same as the initial state of
        # the achievement.
        # Possible values are:
        # - "HIDDEN"- Achievement is hidden.
        # - "REVEALED" - Achievement is revealed.
        # - "UNLOCKED" - Achievement is unlocked.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # The ID of an achievement for which player state has been updated.
        # Corresponds to the JSON property `definitionId`
        # @return [String]
        attr_accessor :definition_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#achievementResetResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Flag to indicate if the requested update actually occurred.
        # Corresponds to the JSON property `updateOccurred`
        # @return [Boolean]
        attr_accessor :update_occurred
        alias_method :update_occurred?, :update_occurred
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state = args[:current_state] unless args[:current_state].nil?
          @definition_id = args[:definition_id] unless args[:definition_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @update_occurred = args[:update_occurred] unless args[:update_occurred].nil?
        end
      end
      
      # This is a JSON template for multiple events reset all request.
      class EventsResetMultipleForAllRequest
        include Google::Apis::Core::Hashable
      
        # The IDs of events to reset.
        # Corresponds to the JSON property `event_ids`
        # @return [Array<String>]
        attr_accessor :event_ids
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#eventsResetMultipleForAllRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_ids = args[:event_ids] unless args[:event_ids].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # This is a JSON template for metadata about a player playing a game with the
      # currently authenticated user.
      class GamesPlayedResource
        include Google::Apis::Core::Hashable
      
        # True if the player was auto-matched with the currently authenticated user.
        # Corresponds to the JSON property `autoMatched`
        # @return [Boolean]
        attr_accessor :auto_matched
        alias_method :auto_matched?, :auto_matched
      
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
          @time_millis = args[:time_millis] unless args[:time_millis].nil?
        end
      end
      
      # This is a JSON template for 1P/3P metadata about the player's experience.
      class GamesPlayerExperienceInfoResource
        include Google::Apis::Core::Hashable
      
        # The current number of experience points for the player.
        # Corresponds to the JSON property `currentExperiencePoints`
        # @return [String]
        attr_accessor :current_experience_points
      
        # This is a JSON template for 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `currentLevel`
        # @return [Google::Apis::GamesManagementV1management::GamesPlayerLevelResource]
        attr_accessor :current_level
      
        # The timestamp when the player was leveled up, in millis since Unix epoch UTC.
        # Corresponds to the JSON property `lastLevelUpTimestampMillis`
        # @return [String]
        attr_accessor :last_level_up_timestamp_millis
      
        # This is a JSON template for 1P/3P metadata about a user's level.
        # Corresponds to the JSON property `nextLevel`
        # @return [Google::Apis::GamesManagementV1management::GamesPlayerLevelResource]
        attr_accessor :next_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_experience_points = args[:current_experience_points] unless args[:current_experience_points].nil?
          @current_level = args[:current_level] unless args[:current_level].nil?
          @last_level_up_timestamp_millis = args[:last_level_up_timestamp_millis] unless args[:last_level_up_timestamp_millis].nil?
          @next_level = args[:next_level] unless args[:next_level].nil?
        end
      end
      
      # This is a JSON template for 1P/3P metadata about a user's level.
      class GamesPlayerLevelResource
        include Google::Apis::Core::Hashable
      
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
          @level = args[:level] unless args[:level].nil?
          @max_experience_points = args[:max_experience_points] unless args[:max_experience_points].nil?
          @min_experience_points = args[:min_experience_points] unless args[:min_experience_points].nil?
        end
      end
      
      # This is a JSON template for the HiddenPlayer resource.
      class HiddenPlayer
        include Google::Apis::Core::Hashable
      
        # The time this player was hidden.
        # Corresponds to the JSON property `hiddenTimeMillis`
        # @return [String]
        attr_accessor :hidden_time_millis
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#hiddenPlayer.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for a Player resource.
        # Corresponds to the JSON property `player`
        # @return [Google::Apis::GamesManagementV1management::Player]
        attr_accessor :player
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hidden_time_millis = args[:hidden_time_millis] unless args[:hidden_time_millis].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @player = args[:player] unless args[:player].nil?
        end
      end
      
      # This is a JSON template for a list of hidden players.
      class HiddenPlayerList
        include Google::Apis::Core::Hashable
      
        # The players.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::GamesManagementV1management::HiddenPlayer>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#hiddenPlayerList.
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
        # @return [Google::Apis::GamesManagementV1management::GamesPlayerExperienceInfoResource]
        attr_accessor :experience_info
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#player.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This is a JSON template for metadata about a player playing a game with the
        # currently authenticated user.
        # Corresponds to the JSON property `lastPlayedWith`
        # @return [Google::Apis::GamesManagementV1management::GamesPlayedResource]
        attr_accessor :last_played_with
      
        # An object representation of the individual components of the player's name.
        # For some players, these fields may not be present.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::GamesManagementV1management::Player::Name]
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
      
      # This is a JSON template for a list of leaderboard reset resources.
      class PlayerScoreResetAllResponse
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#playerScoreResetResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The leaderboard reset results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::GamesManagementV1management::PlayerScoreResetResponse>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @results = args[:results] unless args[:results].nil?
        end
      end
      
      # This is a JSON template for a list of reset leaderboard entry resources.
      class PlayerScoreResetResponse
        include Google::Apis::Core::Hashable
      
        # The ID of an leaderboard for which player state has been updated.
        # Corresponds to the JSON property `definitionId`
        # @return [String]
        attr_accessor :definition_id
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#playerScoreResetResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time spans of the updated score.
        # Possible values are:
        # - "ALL_TIME" - The score is an all-time score.
        # - "WEEKLY" - The score is a weekly score.
        # - "DAILY" - The score is a daily score.
        # Corresponds to the JSON property `resetScoreTimeSpans`
        # @return [Array<String>]
        attr_accessor :reset_score_time_spans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @definition_id = args[:definition_id] unless args[:definition_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @reset_score_time_spans = args[:reset_score_time_spans] unless args[:reset_score_time_spans].nil?
        end
      end
      
      # This is a JSON template for multiple quests reset all request.
      class QuestsResetMultipleForAllRequest
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#questsResetMultipleForAllRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The IDs of quests to reset.
        # Corresponds to the JSON property `quest_ids`
        # @return [Array<String>]
        attr_accessor :quest_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @quest_ids = args[:quest_ids] unless args[:quest_ids].nil?
        end
      end
      
      # This is a JSON template for multiple scores reset all request.
      class ScoresResetMultipleForAllRequest
        include Google::Apis::Core::Hashable
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string gamesManagement#scoresResetMultipleForAllRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The IDs of leaderboards to reset.
        # Corresponds to the JSON property `leaderboard_ids`
        # @return [Array<String>]
        attr_accessor :leaderboard_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @leaderboard_ids = args[:leaderboard_ids] unless args[:leaderboard_ids].nil?
        end
      end
    end
  end
end
