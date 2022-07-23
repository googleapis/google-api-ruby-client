# Copyright 2020 Google LLC
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
    module DrivelabelsV2
      
      class GoogleAppsDriveLabelsV2BadgeColors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2BadgeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldDateOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldIntegerOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldListOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldTextOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2FieldUserOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LabelAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LabelDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LabelProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LabelSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2Lifecycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LifecycleDisabledPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2ListLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2LockStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2BadgeColors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DrivelabelsV2::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2::GoogleTypeColor::Representation
      
          property :foreground_color, as: 'foregroundColor', class: Google::Apis::DrivelabelsV2::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2::GoogleTypeColor::Representation
      
          property :solo_color, as: 'soloColor', class: Google::Apis::DrivelabelsV2::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2::GoogleTypeColor::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2BadgeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color', class: Google::Apis::DrivelabelsV2::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2::GoogleTypeColor::Representation
      
          property :priority_override, :numeric_string => true, as: 'priorityOverride'
        end
      end
      
      class GoogleAppsDriveLabelsV2Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldAppliedCapabilities::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :date_options, as: 'dateOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDateOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDateOptions::Representation
      
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDisplayHints, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDisplayHints::Representation
      
          property :id, as: 'id'
          property :integer_options, as: 'integerOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldIntegerOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldIntegerOptions::Representation
      
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus::Representation
      
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldProperties, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldProperties::Representation
      
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :query_key, as: 'queryKey'
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSchemaCapabilities::Representation
      
          property :selection_options, as: 'selectionOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptions::Representation
      
          property :text_options, as: 'textOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldTextOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldTextOptions::Representation
      
          property :update_time, as: 'updateTime'
          property :updater, as: 'updater', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :user_options, as: 'userOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldUserOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldUserOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_read, as: 'canRead'
          property :can_search, as: 'canSearch'
          property :can_write, as: 'canWrite'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldDateOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_format, as: 'dateFormat'
          property :date_format_type, as: 'dateFormatType'
          property :max_value, as: 'maxValue', class: Google::Apis::DrivelabelsV2::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2::GoogleTypeDate::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DrivelabelsV2::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :required, as: 'required'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldIntegerOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldListOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_entries, as: 'maxEntries'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :insert_before_field, as: 'insertBeforeField'
          property :required, as: 'required'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :choices, as: 'choices', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice::Representation
      
          property :list_options, as: 'listOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints::Representation
      
          property :id, as: 'id'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus::Representation
      
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties::Representation
      
          property :publish_time, as: 'publishTime'
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities::Representation
      
          property :update_time, as: 'updateTime'
          property :updater, as: 'updater', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_read, as: 'canRead'
          property :can_search, as: 'canSearch'
          property :can_select, as: 'canSelect'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_colors, as: 'badgeColors', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors::Representation
      
          property :badge_priority, :numeric_string => true, as: 'badgePriority'
          property :dark_badge_colors, as: 'darkBadgeColors', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors::Representation
      
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_config, as: 'badgeConfig', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeConfig, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeConfig::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :insert_before_choice, as: 'insertBeforeChoice'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldTextOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_length, as: 'maxLength'
          property :min_length, as: 'minLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2FieldUserOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_options, as: 'listOptions', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedCapabilities::Representation
      
          property :applied_label_policy, as: 'appliedLabelPolicy', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelDisplayHints, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelDisplayHints::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Field, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Field::Representation
      
          property :id, as: 'id'
          property :label_type, as: 'labelType'
          property :learn_more_uri, as: 'learnMoreUri'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus::Representation
      
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelProperties, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelProperties::Representation
      
          property :publish_time, as: 'publishTime'
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_creator, as: 'revisionCreator', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo::Representation
      
          property :revision_id, as: 'revisionId'
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelSchemaCapabilities::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2LabelAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_apply, as: 'canApply'
          property :can_read, as: 'canRead'
          property :can_remove, as: 'canRemove'
        end
      end
      
      class GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy_mode, as: 'copyMode'
        end
      end
      
      class GoogleAppsDriveLabelsV2LabelDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :priority, :numeric_string => true, as: 'priority'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2LabelProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsDriveLabelsV2LabelSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2Lifecycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_policy, as: 'disabledPolicy', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy::Representation
      
          property :has_unpublished_changes, as: 'hasUnpublishedChanges'
          property :state, as: 'state'
        end
      end
      
      class GoogleAppsDriveLabelsV2LifecycleDisabledPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hide_in_search, as: 'hideInSearch'
          property :show_in_apply, as: 'showInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2ListLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label, decorator: Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsDriveLabelsV2LockStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locked, as: 'locked'
        end
      end
      
      class GoogleAppsDriveLabelsV2UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person'
        end
      end
      
      class GoogleTypeColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
