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
    module GamesConfigurationV1configuration
      
      class AchievementConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementConfigurationDetailRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AchievementConfigurationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GamesNumberAffixConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GamesNumberFormatConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImageConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardConfigurationDetailRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LeaderboardConfigurationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocalizedStringRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocalizedStringBundleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AchievementConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :achievement_type, as: 'achievementType'
        property :draft, as: 'draft', class: Google::Apis::GamesConfigurationV1configuration::AchievementConfigurationDetail, decorator: Google::Apis::GamesConfigurationV1configuration::AchievementConfigurationDetailRepresentation
        
        property :id, as: 'id'
        property :initial_state, as: 'initialState'
        property :kind, as: 'kind'
        property :published, as: 'published', class: Google::Apis::GamesConfigurationV1configuration::AchievementConfigurationDetail, decorator: Google::Apis::GamesConfigurationV1configuration::AchievementConfigurationDetailRepresentation
        
        property :steps_to_unlock, as: 'stepsToUnlock'
        property :token, as: 'token'
      end

      # @private
      class AchievementConfigurationDetailRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :description, as: 'description', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :icon_url, as: 'iconUrl'
        property :kind, as: 'kind'
        property :name, as: 'name', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :point_value, as: 'pointValue'
        property :sort_rank, as: 'sortRank'
      end

      # @private
      class AchievementConfigurationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::GamesConfigurationV1configuration::AchievementConfiguration, decorator: Google::Apis::GamesConfigurationV1configuration::AchievementConfigurationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class GamesNumberAffixConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :few, as: 'few', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :many, as: 'many', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :one, as: 'one', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :other, as: 'other', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :two, as: 'two', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :zero, as: 'zero', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
      end

      # @private
      class GamesNumberFormatConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :currency_code, as: 'currencyCode'
        property :num_decimal_places, as: 'numDecimalPlaces'
        property :number_format_type, as: 'numberFormatType'
        property :suffix, as: 'suffix', class: Google::Apis::GamesConfigurationV1configuration::GamesNumberAffixConfiguration, decorator: Google::Apis::GamesConfigurationV1configuration::GamesNumberAffixConfigurationRepresentation
      end

      # @private
      class ImageConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :image_type, as: 'imageType'
        property :kind, as: 'kind'
        property :resource_id, as: 'resourceId'
        property :url, as: 'url'
      end

      # @private
      class LeaderboardConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :draft, as: 'draft', class: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfigurationDetail, decorator: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfigurationDetailRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :published, as: 'published', class: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfigurationDetail, decorator: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfigurationDetailRepresentation
        
        property :score_max, as: 'scoreMax'
        property :score_min, as: 'scoreMin'
        property :score_order, as: 'scoreOrder'
        property :token, as: 'token'
      end

      # @private
      class LeaderboardConfigurationDetailRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :icon_url, as: 'iconUrl'
        property :kind, as: 'kind'
        property :name, as: 'name', class: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundle, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringBundleRepresentation
        
        property :score_format, as: 'scoreFormat', class: Google::Apis::GamesConfigurationV1configuration::GamesNumberFormatConfiguration, decorator: Google::Apis::GamesConfigurationV1configuration::GamesNumberFormatConfigurationRepresentation
        
        property :sort_rank, as: 'sortRank'
      end

      # @private
      class LeaderboardConfigurationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfiguration, decorator: Google::Apis::GamesConfigurationV1configuration::LeaderboardConfigurationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LocalizedStringRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :locale, as: 'locale'
        property :value, as: 'value'
      end

      # @private
      class LocalizedStringBundleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        collection :translations, as: 'translations', class: Google::Apis::GamesConfigurationV1configuration::LocalizedString, decorator: Google::Apis::GamesConfigurationV1configuration::LocalizedStringRepresentation
      end
    end
  end
end
