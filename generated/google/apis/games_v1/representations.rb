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
      
      class AchievementDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementDefinitionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementIncrementResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementRevealResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementSetStepsAtLeastResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementUnlockResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementUpdateMultipleRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementUpdateMultipleResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AggregateStatsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AnonymousPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ApplicationCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CategoryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventBatchRecordFailureRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventChildRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventDefinitionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventPeriodRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventPeriodUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventRecordFailureRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventRecordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementIncrementRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementSetStepsAtLeastRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImageAssetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceAndroidDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceIosDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class InstanceWebDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardEntryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardScoreRankRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardScoresRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetagameConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParticipantResultRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PeerChannelDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PeerSessionDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerRepresentation < Google::Apis::Core::JsonRepresentation
        
        class NameRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class PlayerAchievementRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerAchievementListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerEventRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerEventListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerExperienceInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerLeaderboardScoreRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerLeaderboardScoreListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerLevelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerScoreRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerScoreListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerScoreResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PlayerScoreSubmissionListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PushTokenRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PushTokenIdRepresentation < Google::Apis::Core::JsonRepresentation
        
        class IosRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class QuestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QuestContributionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QuestCriterionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QuestListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class QuestMilestoneRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RevisionCheckResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomAutoMatchStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomAutoMatchingCriteriaRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomClientAddressRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomCreateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomJoinRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomLeaveDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomLeaveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomModificationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomP2PStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomP2PStatusesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomParticipantRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RoomStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ScoreSubmissionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SnapshotRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SnapshotImageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SnapshotListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedAutoMatchingCriteriaRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchCreateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchDataRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchModificationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchParticipantRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchRematchRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchResultsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchSyncRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TurnBasedMatchTurnRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AchievementDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        property :achievement_type, as: 'achievementType'
        property :description, as: 'description'
        property :experience_points, as: 'experiencePoints'
        property :formatted_total_steps, as: 'formattedTotalSteps'
        property :id, as: 'id'
        property :initial_state, as: 'initialState'
        property :is_revealed_icon_url_default, as: 'isRevealedIconUrlDefault'
        property :is_unlocked_icon_url_default, as: 'isUnlockedIconUrlDefault'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :revealed_icon_url, as: 'revealedIconUrl'
        property :total_steps, as: 'totalSteps'
        property :unlocked_icon_url, as: 'unlockedIconUrl'
      end

      # @private
      class AchievementDefinitionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::AchievementDefinition, decorator: Google::Apis::GamesV1::AchievementDefinitionRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AchievementIncrementResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_steps, as: 'currentSteps'
        property :kind, as: 'kind'
        property :newly_unlocked, as: 'newlyUnlocked'
      end

      # @private
      class AchievementRevealResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_state, as: 'currentState'
        property :kind, as: 'kind'
      end

      # @private
      class AchievementSetStepsAtLeastResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_steps, as: 'currentSteps'
        property :kind, as: 'kind'
        property :newly_unlocked, as: 'newlyUnlocked'
      end

      # @private
      class AchievementUnlockResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :newly_unlocked, as: 'newlyUnlocked'
      end

      # @private
      class AchievementUpdateMultipleRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :updates, as: 'updates', class: Google::Apis::GamesV1::AchievementUpdateRequest, decorator: Google::Apis::GamesV1::AchievementUpdateRequestRepresentation
      end

      # @private
      class AchievementUpdateMultipleResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :updated_achievements, as: 'updatedAchievements', class: Google::Apis::GamesV1::AchievementUpdateResponse, decorator: Google::Apis::GamesV1::AchievementUpdateResponseRepresentation
      end

      # @private
      class AchievementUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :achievement_id, as: 'achievementId'
        property :increment_payload, as: 'incrementPayload', class: Google::Apis::GamesV1::AchievementIncrement, decorator: Google::Apis::GamesV1::AchievementIncrementRepresentation
        
        property :kind, as: 'kind'
        property :set_steps_at_least_payload, as: 'setStepsAtLeastPayload', class: Google::Apis::GamesV1::AchievementSetStepsAtLeast, decorator: Google::Apis::GamesV1::AchievementSetStepsAtLeastRepresentation
        
        property :update_type, as: 'updateType'
      end

      # @private
      class AchievementUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :achievement_id, as: 'achievementId'
        property :current_state, as: 'currentState'
        property :current_steps, as: 'currentSteps'
        property :kind, as: 'kind'
        property :newly_unlocked, as: 'newlyUnlocked'
        property :update_occurred, as: 'updateOccurred'
      end

      # @private
      class AggregateStatsRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :kind, as: 'kind'
        property :max, as: 'max'
        property :min, as: 'min'
        property :sum, as: 'sum'
      end

      # @private
      class AnonymousPlayerRepresentation < Google::Apis::Core::JsonRepresentation
        property :avatar_image_url, as: 'avatarImageUrl'
        property :display_name, as: 'displayName'
        property :kind, as: 'kind'
      end

      # @private
      class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation
        property :achievement_count, as: 'achievement_count'
        collection :assets, as: 'assets', class: Google::Apis::GamesV1::ImageAsset, decorator: Google::Apis::GamesV1::ImageAssetRepresentation
        
        
        property :author, as: 'author'
        property :category, as: 'category', class: Google::Apis::GamesV1::ApplicationCategory, decorator: Google::Apis::GamesV1::ApplicationCategoryRepresentation
        
        property :description, as: 'description'
        collection :enabled_features, as: 'enabledFeatures'
        
        property :id, as: 'id'
        collection :instances, as: 'instances', class: Google::Apis::GamesV1::Instance, decorator: Google::Apis::GamesV1::InstanceRepresentation
        
        
        property :kind, as: 'kind'
        property :last_updated_timestamp, as: 'lastUpdatedTimestamp'
        property :leaderboard_count, as: 'leaderboard_count'
        property :name, as: 'name'
        property :theme_color, as: 'themeColor'
      end

      # @private
      class ApplicationCategoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :primary, as: 'primary'
        property :secondary, as: 'secondary'
      end

      # @private
      class CategoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :category, as: 'category'
        property :experience_points, as: 'experiencePoints'
        property :kind, as: 'kind'
      end

      # @private
      class CategoryListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Category, decorator: Google::Apis::GamesV1::CategoryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class EventBatchRecordFailureRepresentation < Google::Apis::Core::JsonRepresentation
        property :failure_cause, as: 'failureCause'
        property :kind, as: 'kind'
        property :range, as: 'range', class: Google::Apis::GamesV1::EventPeriodRange, decorator: Google::Apis::GamesV1::EventPeriodRangeRepresentation
      end

      # @private
      class EventChildRepresentation < Google::Apis::Core::JsonRepresentation
        property :child_id, as: 'childId'
        property :kind, as: 'kind'
      end

      # @private
      class EventDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :child_events, as: 'childEvents', class: Google::Apis::GamesV1::EventChild, decorator: Google::Apis::GamesV1::EventChildRepresentation
        
        
        property :description, as: 'description'
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :image_url, as: 'imageUrl'
        property :is_default_image_url, as: 'isDefaultImageUrl'
        property :kind, as: 'kind'
        property :visibility, as: 'visibility'
      end

      # @private
      class EventDefinitionListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::EventDefinition, decorator: Google::Apis::GamesV1::EventDefinitionRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class EventPeriodRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :period_end_millis, as: 'periodEndMillis'
        property :period_start_millis, as: 'periodStartMillis'
      end

      # @private
      class EventPeriodUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :time_period, as: 'timePeriod', class: Google::Apis::GamesV1::EventPeriodRange, decorator: Google::Apis::GamesV1::EventPeriodRangeRepresentation
        
        collection :updates, as: 'updates', class: Google::Apis::GamesV1::EventUpdateRequest, decorator: Google::Apis::GamesV1::EventUpdateRequestRepresentation
      end

      # @private
      class EventRecordFailureRepresentation < Google::Apis::Core::JsonRepresentation
        property :event_id, as: 'eventId'
        property :failure_cause, as: 'failureCause'
        property :kind, as: 'kind'
      end

      # @private
      class EventRecordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_time_millis, as: 'currentTimeMillis'
        property :kind, as: 'kind'
        property :request_id, as: 'requestId'
        collection :time_periods, as: 'timePeriods', class: Google::Apis::GamesV1::EventPeriodUpdate, decorator: Google::Apis::GamesV1::EventPeriodUpdateRepresentation
      end

      # @private
      class EventUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :definition_id, as: 'definitionId'
        property :kind, as: 'kind'
        property :update_count, as: 'updateCount'
      end

      # @private
      class EventUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :batch_failures, as: 'batchFailures', class: Google::Apis::GamesV1::EventBatchRecordFailure, decorator: Google::Apis::GamesV1::EventBatchRecordFailureRepresentation
        
        
        collection :event_failures, as: 'eventFailures', class: Google::Apis::GamesV1::EventRecordFailure, decorator: Google::Apis::GamesV1::EventRecordFailureRepresentation
        
        
        property :kind, as: 'kind'
        collection :player_events, as: 'playerEvents', class: Google::Apis::GamesV1::PlayerEvent, decorator: Google::Apis::GamesV1::PlayerEventRepresentation
      end

      # @private
      class AchievementIncrementRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :request_id, as: 'requestId'
        property :steps, as: 'steps'
      end

      # @private
      class AchievementSetStepsAtLeastRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :steps, as: 'steps'
      end

      # @private
      class ImageAssetRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :url, as: 'url'
        property :width, as: 'width'
      end

      # @private
      class InstanceRepresentation < Google::Apis::Core::JsonRepresentation
        property :acquisition_uri, as: 'acquisitionUri'
        property :android_instance, as: 'androidInstance', class: Google::Apis::GamesV1::InstanceAndroidDetails, decorator: Google::Apis::GamesV1::InstanceAndroidDetailsRepresentation
        
        property :ios_instance, as: 'iosInstance', class: Google::Apis::GamesV1::InstanceIosDetails, decorator: Google::Apis::GamesV1::InstanceIosDetailsRepresentation
        
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :platform_type, as: 'platformType'
        property :realtime_play, as: 'realtimePlay'
        property :turn_based_play, as: 'turnBasedPlay'
        property :web_instance, as: 'webInstance', class: Google::Apis::GamesV1::InstanceWebDetails, decorator: Google::Apis::GamesV1::InstanceWebDetailsRepresentation
      end

      # @private
      class InstanceAndroidDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :enable_piracy_check, as: 'enablePiracyCheck'
        property :kind, as: 'kind'
        property :package_name, as: 'packageName'
        property :preferred, as: 'preferred'
      end

      # @private
      class InstanceIosDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :bundle_identifier, as: 'bundleIdentifier'
        property :itunes_app_id, as: 'itunesAppId'
        property :kind, as: 'kind'
        property :preferred_for_ipad, as: 'preferredForIpad'
        property :preferred_for_iphone, as: 'preferredForIphone'
        property :support_ipad, as: 'supportIpad'
        property :support_iphone, as: 'supportIphone'
      end

      # @private
      class InstanceWebDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :launch_url, as: 'launchUrl'
        property :preferred, as: 'preferred'
      end

      # @private
      class LeaderboardRepresentation < Google::Apis::Core::JsonRepresentation
        property :icon_url, as: 'iconUrl'
        property :id, as: 'id'
        property :is_icon_url_default, as: 'isIconUrlDefault'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :order, as: 'order'
      end

      # @private
      class LeaderboardEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :formatted_score, as: 'formattedScore'
        property :formatted_score_rank, as: 'formattedScoreRank'
        property :kind, as: 'kind'
        property :player, as: 'player', class: Google::Apis::GamesV1::Player, decorator: Google::Apis::GamesV1::PlayerRepresentation
        
        property :score_rank, as: 'scoreRank'
        property :score_tag, as: 'scoreTag'
        property :score_value, as: 'scoreValue'
        property :time_span, as: 'timeSpan'
        property :write_timestamp_millis, as: 'writeTimestampMillis'
      end

      # @private
      class LeaderboardListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Leaderboard, decorator: Google::Apis::GamesV1::LeaderboardRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LeaderboardScoreRankRepresentation < Google::Apis::Core::JsonRepresentation
        property :formatted_num_scores, as: 'formattedNumScores'
        property :formatted_rank, as: 'formattedRank'
        property :kind, as: 'kind'
        property :num_scores, as: 'numScores'
        property :rank, as: 'rank'
      end

      # @private
      class LeaderboardScoresRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::LeaderboardEntry, decorator: Google::Apis::GamesV1::LeaderboardEntryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :num_scores, as: 'numScores'
        property :player_score, as: 'playerScore', class: Google::Apis::GamesV1::LeaderboardEntry, decorator: Google::Apis::GamesV1::LeaderboardEntryRepresentation
        
        property :prev_page_token, as: 'prevPageToken'
      end

      # @private
      class MetagameConfigRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_version, as: 'currentVersion'
        property :kind, as: 'kind'
        collection :player_levels, as: 'playerLevels', class: Google::Apis::GamesV1::PlayerLevel, decorator: Google::Apis::GamesV1::PlayerLevelRepresentation
      end

      # @private
      class NetworkDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :android_network_subtype, as: 'androidNetworkSubtype'
        property :android_network_type, as: 'androidNetworkType'
        property :ios_network_type, as: 'iosNetworkType'
        property :kind, as: 'kind'
        property :network_operator_code, as: 'networkOperatorCode'
        property :network_operator_name, as: 'networkOperatorName'
        property :registration_latency_millis, as: 'registrationLatencyMillis'
      end

      # @private
      class ParticipantResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :participant_id, as: 'participantId'
        property :placing, as: 'placing'
        property :result, as: 'result'
      end

      # @private
      class PeerChannelDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :bytes_received, as: 'bytesReceived', class: Google::Apis::GamesV1::AggregateStats, decorator: Google::Apis::GamesV1::AggregateStatsRepresentation
        
        property :bytes_sent, as: 'bytesSent', class: Google::Apis::GamesV1::AggregateStats, decorator: Google::Apis::GamesV1::AggregateStatsRepresentation
        
        property :kind, as: 'kind'
        property :num_messages_lost, as: 'numMessagesLost'
        property :num_messages_received, as: 'numMessagesReceived'
        property :num_messages_sent, as: 'numMessagesSent'
        property :num_send_failures, as: 'numSendFailures'
        property :roundtrip_latency_millis, as: 'roundtripLatencyMillis', class: Google::Apis::GamesV1::AggregateStats, decorator: Google::Apis::GamesV1::AggregateStatsRepresentation
      end

      # @private
      class PeerSessionDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :connected_timestamp_millis, as: 'connectedTimestampMillis'
        property :kind, as: 'kind'
        property :participant_id, as: 'participantId'
        property :reliable_channel, as: 'reliableChannel', class: Google::Apis::GamesV1::PeerChannelDiagnostics, decorator: Google::Apis::GamesV1::PeerChannelDiagnosticsRepresentation
        
        property :unreliable_channel, as: 'unreliableChannel', class: Google::Apis::GamesV1::PeerChannelDiagnostics, decorator: Google::Apis::GamesV1::PeerChannelDiagnosticsRepresentation
      end

      # @private
      class PlayedRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matched, as: 'autoMatched'
        property :kind, as: 'kind'
        property :time_millis, as: 'timeMillis'
      end

      # @private
      class PlayerRepresentation < Google::Apis::Core::JsonRepresentation
        class NameRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :avatar_image_url, as: 'avatarImageUrl'
        property :display_name, as: 'displayName'
        property :experience_info, as: 'experienceInfo', class: Google::Apis::GamesV1::PlayerExperienceInfo, decorator: Google::Apis::GamesV1::PlayerExperienceInfoRepresentation
        
        property :kind, as: 'kind'
        property :last_played_with, as: 'lastPlayedWith', class: Google::Apis::GamesV1::Played, decorator: Google::Apis::GamesV1::PlayedRepresentation
        
        property :name, as: 'name', class: Google::Apis::GamesV1::Player::Name, decorator: Google::Apis::GamesV1::PlayerRepresentation::NameRepresentation
        
        property :player_id, as: 'playerId'
        property :title, as: 'title'
        
        # @private
        class NameRepresentation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
        end
      end

      # @private
      class PlayerAchievementRepresentation < Google::Apis::Core::JsonRepresentation
        property :achievement_state, as: 'achievementState'
        property :current_steps, as: 'currentSteps'
        property :experience_points, as: 'experiencePoints'
        property :formatted_current_steps_string, as: 'formattedCurrentStepsString'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_updated_timestamp, as: 'lastUpdatedTimestamp'
      end

      # @private
      class PlayerAchievementListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::PlayerAchievement, decorator: Google::Apis::GamesV1::PlayerAchievementRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PlayerEventRepresentation < Google::Apis::Core::JsonRepresentation
        property :definition_id, as: 'definitionId'
        property :formatted_num_events, as: 'formattedNumEvents'
        property :kind, as: 'kind'
        property :num_events, as: 'numEvents'
        property :player_id, as: 'playerId'
      end

      # @private
      class PlayerEventListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::PlayerEvent, decorator: Google::Apis::GamesV1::PlayerEventRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PlayerExperienceInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :current_experience_points, as: 'currentExperiencePoints'
        property :current_level, as: 'currentLevel', class: Google::Apis::GamesV1::PlayerLevel, decorator: Google::Apis::GamesV1::PlayerLevelRepresentation
        
        property :kind, as: 'kind'
        property :last_level_up_timestamp_millis, as: 'lastLevelUpTimestampMillis'
        property :next_level, as: 'nextLevel', class: Google::Apis::GamesV1::PlayerLevel, decorator: Google::Apis::GamesV1::PlayerLevelRepresentation
      end

      # @private
      class PlayerLeaderboardScoreRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :leaderboard_id, as: 'leaderboard_id'
        property :public_rank, as: 'publicRank', class: Google::Apis::GamesV1::LeaderboardScoreRank, decorator: Google::Apis::GamesV1::LeaderboardScoreRankRepresentation
        
        property :score_string, as: 'scoreString'
        property :score_tag, as: 'scoreTag'
        property :score_value, as: 'scoreValue'
        property :social_rank, as: 'socialRank', class: Google::Apis::GamesV1::LeaderboardScoreRank, decorator: Google::Apis::GamesV1::LeaderboardScoreRankRepresentation
        
        property :time_span, as: 'timeSpan'
        property :write_timestamp, as: 'writeTimestamp'
      end

      # @private
      class PlayerLeaderboardScoreListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::PlayerLeaderboardScore, decorator: Google::Apis::GamesV1::PlayerLeaderboardScoreRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :player, as: 'player', class: Google::Apis::GamesV1::Player, decorator: Google::Apis::GamesV1::PlayerRepresentation
      end

      # @private
      class PlayerLevelRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :level, as: 'level'
        property :max_experience_points, as: 'maxExperiencePoints'
        property :min_experience_points, as: 'minExperiencePoints'
      end

      # @private
      class PlayerListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Player, decorator: Google::Apis::GamesV1::PlayerRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PlayerScoreRepresentation < Google::Apis::Core::JsonRepresentation
        property :formatted_score, as: 'formattedScore'
        property :kind, as: 'kind'
        property :score, as: 'score'
        property :score_tag, as: 'scoreTag'
        property :time_span, as: 'timeSpan'
      end

      # @private
      class PlayerScoreListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :submitted_scores, as: 'submittedScores', class: Google::Apis::GamesV1::PlayerScoreResponse, decorator: Google::Apis::GamesV1::PlayerScoreResponseRepresentation
      end

      # @private
      class PlayerScoreResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :beaten_score_time_spans, as: 'beatenScoreTimeSpans'
        
        property :formatted_score, as: 'formattedScore'
        property :kind, as: 'kind'
        property :leaderboard_id, as: 'leaderboardId'
        property :score_tag, as: 'scoreTag'
        collection :unbeaten_scores, as: 'unbeatenScores', class: Google::Apis::GamesV1::PlayerScore, decorator: Google::Apis::GamesV1::PlayerScoreRepresentation
      end

      # @private
      class PlayerScoreSubmissionListRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :scores, as: 'scores', class: Google::Apis::GamesV1::ScoreSubmission, decorator: Google::Apis::GamesV1::ScoreSubmissionRepresentation
      end

      # @private
      class PushTokenRepresentation < Google::Apis::Core::JsonRepresentation
        property :client_revision, as: 'clientRevision'
        property :id, as: 'id', class: Google::Apis::GamesV1::PushTokenId, decorator: Google::Apis::GamesV1::PushTokenIdRepresentation
        
        property :kind, as: 'kind'
        property :language, as: 'language'
      end

      # @private
      class PushTokenIdRepresentation < Google::Apis::Core::JsonRepresentation
        class IosRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :ios, as: 'ios', class: Google::Apis::GamesV1::PushTokenId::Ios, decorator: Google::Apis::GamesV1::PushTokenIdRepresentation::IosRepresentation
        
        property :kind, as: 'kind'
        
        # @private
        class IosRepresentation < Google::Apis::Core::JsonRepresentation
          property :apns_device_token, :base64 => true, as: 'apns_device_token'
          property :apns_environment, as: 'apns_environment'
        end
      end

      # @private
      class QuestRepresentation < Google::Apis::Core::JsonRepresentation
        property :accepted_timestamp_millis, as: 'acceptedTimestampMillis'
        property :application_id, as: 'applicationId'
        property :banner_url, as: 'bannerUrl'
        property :description, as: 'description'
        property :end_timestamp_millis, as: 'endTimestampMillis'
        property :icon_url, as: 'iconUrl'
        property :id, as: 'id'
        property :is_default_banner_url, as: 'isDefaultBannerUrl'
        property :is_default_icon_url, as: 'isDefaultIconUrl'
        property :kind, as: 'kind'
        property :last_updated_timestamp_millis, as: 'lastUpdatedTimestampMillis'
        collection :milestones, as: 'milestones', class: Google::Apis::GamesV1::QuestMilestone, decorator: Google::Apis::GamesV1::QuestMilestoneRepresentation
        
        
        property :name, as: 'name'
        property :notify_timestamp_millis, as: 'notifyTimestampMillis'
        property :start_timestamp_millis, as: 'startTimestampMillis'
        property :state, as: 'state'
      end

      # @private
      class QuestContributionRepresentation < Google::Apis::Core::JsonRepresentation
        property :formatted_value, as: 'formattedValue'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class QuestCriterionRepresentation < Google::Apis::Core::JsonRepresentation
        property :completion_contribution, as: 'completionContribution', class: Google::Apis::GamesV1::QuestContribution, decorator: Google::Apis::GamesV1::QuestContributionRepresentation
        
        property :current_contribution, as: 'currentContribution', class: Google::Apis::GamesV1::QuestContribution, decorator: Google::Apis::GamesV1::QuestContributionRepresentation
        
        property :event_id, as: 'eventId'
        property :initial_player_progress, as: 'initialPlayerProgress', class: Google::Apis::GamesV1::QuestContribution, decorator: Google::Apis::GamesV1::QuestContributionRepresentation
        
        property :kind, as: 'kind'
      end

      # @private
      class QuestListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Quest, decorator: Google::Apis::GamesV1::QuestRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class QuestMilestoneRepresentation < Google::Apis::Core::JsonRepresentation
        property :completion_reward_data, :base64 => true, as: 'completionRewardData'
        collection :criteria, as: 'criteria', class: Google::Apis::GamesV1::QuestCriterion, decorator: Google::Apis::GamesV1::QuestCriterionRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :state, as: 'state'
      end

      # @private
      class RevisionCheckResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :api_version, as: 'apiVersion'
        property :kind, as: 'kind'
        property :revision_status, as: 'revisionStatus'
      end

      # @private
      class RoomRepresentation < Google::Apis::Core::JsonRepresentation
        property :application_id, as: 'applicationId'
        property :auto_matching_criteria, as: 'autoMatchingCriteria', class: Google::Apis::GamesV1::RoomAutoMatchingCriteria, decorator: Google::Apis::GamesV1::RoomAutoMatchingCriteriaRepresentation
        
        property :auto_matching_status, as: 'autoMatchingStatus', class: Google::Apis::GamesV1::RoomAutoMatchStatus, decorator: Google::Apis::GamesV1::RoomAutoMatchStatusRepresentation
        
        property :creation_details, as: 'creationDetails', class: Google::Apis::GamesV1::RoomModification, decorator: Google::Apis::GamesV1::RoomModificationRepresentation
        
        property :description, as: 'description'
        property :inviter_id, as: 'inviterId'
        property :kind, as: 'kind'
        property :last_update_details, as: 'lastUpdateDetails', class: Google::Apis::GamesV1::RoomModification, decorator: Google::Apis::GamesV1::RoomModificationRepresentation
        
        collection :participants, as: 'participants', class: Google::Apis::GamesV1::RoomParticipant, decorator: Google::Apis::GamesV1::RoomParticipantRepresentation
        
        
        property :room_id, as: 'roomId'
        property :room_status_version, as: 'roomStatusVersion'
        property :status, as: 'status'
        property :variant, as: 'variant'
      end

      # @private
      class RoomAutoMatchStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :wait_estimate_seconds, as: 'waitEstimateSeconds'
      end

      # @private
      class RoomAutoMatchingCriteriaRepresentation < Google::Apis::Core::JsonRepresentation
        property :exclusive_bitmask, as: 'exclusiveBitmask'
        property :kind, as: 'kind'
        property :max_auto_matching_players, as: 'maxAutoMatchingPlayers'
        property :min_auto_matching_players, as: 'minAutoMatchingPlayers'
      end

      # @private
      class RoomClientAddressRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :xmpp_address, as: 'xmppAddress'
      end

      # @private
      class RoomCreateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matching_criteria, as: 'autoMatchingCriteria', class: Google::Apis::GamesV1::RoomAutoMatchingCriteria, decorator: Google::Apis::GamesV1::RoomAutoMatchingCriteriaRepresentation
        
        collection :capabilities, as: 'capabilities'
        
        property :client_address, as: 'clientAddress', class: Google::Apis::GamesV1::RoomClientAddress, decorator: Google::Apis::GamesV1::RoomClientAddressRepresentation
        
        collection :invited_player_ids, as: 'invitedPlayerIds'
        
        property :kind, as: 'kind'
        property :network_diagnostics, as: 'networkDiagnostics', class: Google::Apis::GamesV1::NetworkDiagnostics, decorator: Google::Apis::GamesV1::NetworkDiagnosticsRepresentation
        
        property :request_id, as: 'requestId'
        property :variant, as: 'variant'
      end

      # @private
      class RoomJoinRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :capabilities, as: 'capabilities'
        
        property :client_address, as: 'clientAddress', class: Google::Apis::GamesV1::RoomClientAddress, decorator: Google::Apis::GamesV1::RoomClientAddressRepresentation
        
        property :kind, as: 'kind'
        property :network_diagnostics, as: 'networkDiagnostics', class: Google::Apis::GamesV1::NetworkDiagnostics, decorator: Google::Apis::GamesV1::NetworkDiagnosticsRepresentation
      end

      # @private
      class RoomLeaveDiagnosticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :android_network_subtype, as: 'androidNetworkSubtype'
        property :android_network_type, as: 'androidNetworkType'
        property :ios_network_type, as: 'iosNetworkType'
        property :kind, as: 'kind'
        property :network_operator_code, as: 'networkOperatorCode'
        property :network_operator_name, as: 'networkOperatorName'
        collection :peer_session, as: 'peerSession', class: Google::Apis::GamesV1::PeerSessionDiagnostics, decorator: Google::Apis::GamesV1::PeerSessionDiagnosticsRepresentation
        
        
        property :sockets_used, as: 'socketsUsed'
      end

      # @private
      class RoomLeaveRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :leave_diagnostics, as: 'leaveDiagnostics', class: Google::Apis::GamesV1::RoomLeaveDiagnostics, decorator: Google::Apis::GamesV1::RoomLeaveDiagnosticsRepresentation
        
        property :reason, as: 'reason'
      end

      # @private
      class RoomListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Room, decorator: Google::Apis::GamesV1::RoomRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class RoomModificationRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :modified_timestamp_millis, as: 'modifiedTimestampMillis'
        property :participant_id, as: 'participantId'
      end

      # @private
      class RoomP2PStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :connection_setup_latency_millis, as: 'connectionSetupLatencyMillis'
        property :error, as: 'error'
        property :error_reason, as: 'error_reason'
        property :kind, as: 'kind'
        property :participant_id, as: 'participantId'
        property :status, as: 'status'
        property :unreliable_roundtrip_latency_millis, as: 'unreliableRoundtripLatencyMillis'
      end

      # @private
      class RoomP2PStatusesRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :updates, as: 'updates', class: Google::Apis::GamesV1::RoomP2PStatus, decorator: Google::Apis::GamesV1::RoomP2PStatusRepresentation
      end

      # @private
      class RoomParticipantRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matched, as: 'autoMatched'
        property :auto_matched_player, as: 'autoMatchedPlayer', class: Google::Apis::GamesV1::AnonymousPlayer, decorator: Google::Apis::GamesV1::AnonymousPlayerRepresentation
        
        collection :capabilities, as: 'capabilities'
        
        property :client_address, as: 'clientAddress', class: Google::Apis::GamesV1::RoomClientAddress, decorator: Google::Apis::GamesV1::RoomClientAddressRepresentation
        
        property :connected, as: 'connected'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :leave_reason, as: 'leaveReason'
        property :player, as: 'player', class: Google::Apis::GamesV1::Player, decorator: Google::Apis::GamesV1::PlayerRepresentation
        
        property :status, as: 'status'
      end

      # @private
      class RoomStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matching_status, as: 'autoMatchingStatus', class: Google::Apis::GamesV1::RoomAutoMatchStatus, decorator: Google::Apis::GamesV1::RoomAutoMatchStatusRepresentation
        
        property :kind, as: 'kind'
        collection :participants, as: 'participants', class: Google::Apis::GamesV1::RoomParticipant, decorator: Google::Apis::GamesV1::RoomParticipantRepresentation
        
        
        property :room_id, as: 'roomId'
        property :status, as: 'status'
        property :status_version, as: 'statusVersion'
      end

      # @private
      class ScoreSubmissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :leaderboard_id, as: 'leaderboardId'
        property :score, as: 'score'
        property :score_tag, as: 'scoreTag'
        property :signature, as: 'signature'
      end

      # @private
      class SnapshotRepresentation < Google::Apis::Core::JsonRepresentation
        property :cover_image, as: 'coverImage', class: Google::Apis::GamesV1::SnapshotImage, decorator: Google::Apis::GamesV1::SnapshotImageRepresentation
        
        property :description, as: 'description'
        property :drive_id, as: 'driveId'
        property :duration_millis, as: 'durationMillis'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modified_millis, as: 'lastModifiedMillis'
        property :progress_value, as: 'progressValue'
        property :title, as: 'title'
        property :type, as: 'type'
        property :unique_name, as: 'uniqueName'
      end

      # @private
      class SnapshotImageRepresentation < Google::Apis::Core::JsonRepresentation
        property :height, as: 'height'
        property :kind, as: 'kind'
        property :mime_type, as: 'mime_type'
        property :url, as: 'url'
        property :width, as: 'width'
      end

      # @private
      class SnapshotListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::Snapshot, decorator: Google::Apis::GamesV1::SnapshotRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class TurnBasedAutoMatchingCriteriaRepresentation < Google::Apis::Core::JsonRepresentation
        property :exclusive_bitmask, as: 'exclusiveBitmask'
        property :kind, as: 'kind'
        property :max_auto_matching_players, as: 'maxAutoMatchingPlayers'
        property :min_auto_matching_players, as: 'minAutoMatchingPlayers'
      end

      # @private
      class TurnBasedMatchRepresentation < Google::Apis::Core::JsonRepresentation
        property :application_id, as: 'applicationId'
        property :auto_matching_criteria, as: 'autoMatchingCriteria', class: Google::Apis::GamesV1::TurnBasedAutoMatchingCriteria, decorator: Google::Apis::GamesV1::TurnBasedAutoMatchingCriteriaRepresentation
        
        property :creation_details, as: 'creationDetails', class: Google::Apis::GamesV1::TurnBasedMatchModification, decorator: Google::Apis::GamesV1::TurnBasedMatchModificationRepresentation
        
        property :data, as: 'data', class: Google::Apis::GamesV1::TurnBasedMatchData, decorator: Google::Apis::GamesV1::TurnBasedMatchDataRepresentation
        
        property :description, as: 'description'
        property :inviter_id, as: 'inviterId'
        property :kind, as: 'kind'
        property :last_update_details, as: 'lastUpdateDetails', class: Google::Apis::GamesV1::TurnBasedMatchModification, decorator: Google::Apis::GamesV1::TurnBasedMatchModificationRepresentation
        
        property :match_id, as: 'matchId'
        property :match_number, as: 'matchNumber'
        property :match_version, as: 'matchVersion'
        collection :participants, as: 'participants', class: Google::Apis::GamesV1::TurnBasedMatchParticipant, decorator: Google::Apis::GamesV1::TurnBasedMatchParticipantRepresentation
        
        
        property :pending_participant_id, as: 'pendingParticipantId'
        property :previous_match_data, as: 'previousMatchData', class: Google::Apis::GamesV1::TurnBasedMatchData, decorator: Google::Apis::GamesV1::TurnBasedMatchDataRepresentation
        
        property :rematch_id, as: 'rematchId'
        collection :results, as: 'results', class: Google::Apis::GamesV1::ParticipantResult, decorator: Google::Apis::GamesV1::ParticipantResultRepresentation
        
        
        property :status, as: 'status'
        property :user_match_status, as: 'userMatchStatus'
        property :variant, as: 'variant'
        property :with_participant_id, as: 'withParticipantId'
      end

      # @private
      class TurnBasedMatchCreateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matching_criteria, as: 'autoMatchingCriteria', class: Google::Apis::GamesV1::TurnBasedAutoMatchingCriteria, decorator: Google::Apis::GamesV1::TurnBasedAutoMatchingCriteriaRepresentation
        
        collection :invited_player_ids, as: 'invitedPlayerIds'
        
        property :kind, as: 'kind'
        property :request_id, as: 'requestId'
        property :variant, as: 'variant'
      end

      # @private
      class TurnBasedMatchDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, :base64 => true, as: 'data'
        property :data_available, as: 'dataAvailable'
        property :kind, as: 'kind'
      end

      # @private
      class TurnBasedMatchDataRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, :base64 => true, as: 'data'
        property :kind, as: 'kind'
      end

      # @private
      class TurnBasedMatchListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::TurnBasedMatch, decorator: Google::Apis::GamesV1::TurnBasedMatchRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class TurnBasedMatchModificationRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :modified_timestamp_millis, as: 'modifiedTimestampMillis'
        property :participant_id, as: 'participantId'
      end

      # @private
      class TurnBasedMatchParticipantRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_matched, as: 'autoMatched'
        property :auto_matched_player, as: 'autoMatchedPlayer', class: Google::Apis::GamesV1::AnonymousPlayer, decorator: Google::Apis::GamesV1::AnonymousPlayerRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :player, as: 'player', class: Google::Apis::GamesV1::Player, decorator: Google::Apis::GamesV1::PlayerRepresentation
        
        property :status, as: 'status'
      end

      # @private
      class TurnBasedMatchRematchRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :previous_match, as: 'previousMatch', class: Google::Apis::GamesV1::TurnBasedMatch, decorator: Google::Apis::GamesV1::TurnBasedMatchRepresentation
        
        property :rematch, as: 'rematch', class: Google::Apis::GamesV1::TurnBasedMatch, decorator: Google::Apis::GamesV1::TurnBasedMatchRepresentation
      end

      # @private
      class TurnBasedMatchResultsRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, as: 'data', class: Google::Apis::GamesV1::TurnBasedMatchDataRequest, decorator: Google::Apis::GamesV1::TurnBasedMatchDataRequestRepresentation
        
        property :kind, as: 'kind'
        property :match_version, as: 'matchVersion'
        collection :results, as: 'results', class: Google::Apis::GamesV1::ParticipantResult, decorator: Google::Apis::GamesV1::ParticipantResultRepresentation
      end

      # @private
      class TurnBasedMatchSyncRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::GamesV1::TurnBasedMatch, decorator: Google::Apis::GamesV1::TurnBasedMatchRepresentation
        
        
        property :kind, as: 'kind'
        property :more_available, as: 'moreAvailable'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class TurnBasedMatchTurnRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, as: 'data', class: Google::Apis::GamesV1::TurnBasedMatchDataRequest, decorator: Google::Apis::GamesV1::TurnBasedMatchDataRequestRepresentation
        
        property :kind, as: 'kind'
        property :match_version, as: 'matchVersion'
        property :pending_participant_id, as: 'pendingParticipantId'
        collection :results, as: 'results', class: Google::Apis::GamesV1::ParticipantResult, decorator: Google::Apis::GamesV1::ParticipantResultRepresentation
      end
    end
  end
end
