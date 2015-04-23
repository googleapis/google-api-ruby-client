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
    module TagmanagerV1
      
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AccountAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ConditionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContainerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContainerAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContainerVersionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ContainerVersionHeaderRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CreateContainerVersionRequestVersionOptionsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CreateContainerVersionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListAccountUsersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListAccountsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListContainerVersionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListContainersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListMacrosResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListRulesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTagsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListTriggersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListVariablesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MacroRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishContainerVersionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TagRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TriggerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VariableRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AccountRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :fingerprint, as: 'fingerprint'
        property :name, as: 'name'
        property :share_data, as: 'shareData'
      end

      # @private
      class AccountAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :permission, as: 'permission'
      end

      # @private
      class ConditionRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        property :type, as: 'type'
      end

      # @private
      class ContainerRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :container_id, as: 'containerId'
        collection :domain_name, as: 'domainName'
        
        collection :enabled_built_in_variable, as: 'enabledBuiltInVariable'
        
        property :fingerprint, as: 'fingerprint'
        property :name, as: 'name'
        property :notes, as: 'notes'
        property :public_id, as: 'publicId'
        property :time_zone_country_id, as: 'timeZoneCountryId'
        property :time_zone_id, as: 'timeZoneId'
        collection :usage_context, as: 'usageContext'
      end

      # @private
      class ContainerAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :container_id, as: 'containerId'
        collection :permission, as: 'permission'
      end

      # @private
      class ContainerVersionRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :container, as: 'container', class: Google::Apis::TagmanagerV1::Container, decorator: Google::Apis::TagmanagerV1::ContainerRepresentation
        
        property :container_id, as: 'containerId'
        property :container_version_id, as: 'containerVersionId'
        property :deleted, as: 'deleted'
        property :fingerprint, as: 'fingerprint'
        collection :macro, as: 'macro', class: Google::Apis::TagmanagerV1::Macro, decorator: Google::Apis::TagmanagerV1::MacroRepresentation
        
        
        property :name, as: 'name'
        property :notes, as: 'notes'
        collection :rule, as: 'rule', class: Google::Apis::TagmanagerV1::Rule, decorator: Google::Apis::TagmanagerV1::RuleRepresentation
        
        
        collection :tag, as: 'tag', class: Google::Apis::TagmanagerV1::Tag, decorator: Google::Apis::TagmanagerV1::TagRepresentation
        
        
        collection :trigger, as: 'trigger', class: Google::Apis::TagmanagerV1::Trigger, decorator: Google::Apis::TagmanagerV1::TriggerRepresentation
        
        
        collection :variable, as: 'variable', class: Google::Apis::TagmanagerV1::Variable, decorator: Google::Apis::TagmanagerV1::VariableRepresentation
      end

      # @private
      class ContainerVersionHeaderRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :container_id, as: 'containerId'
        property :container_version_id, as: 'containerVersionId'
        property :deleted, as: 'deleted'
        property :name, as: 'name'
        property :num_macros, as: 'numMacros'
        property :num_rules, as: 'numRules'
        property :num_tags, as: 'numTags'
        property :num_triggers, as: 'numTriggers'
        property :num_variables, as: 'numVariables'
      end

      # @private
      class CreateContainerVersionRequestVersionOptionsRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :name, as: 'name'
        property :notes, as: 'notes'
        property :quick_preview, as: 'quickPreview'
      end

      # @private
      class CreateContainerVersionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :compiler_error, as: 'compilerError'
        property :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersionRepresentation
      end

      # @private
      class ListAccountUsersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :user_access, as: 'userAccess', class: Google::Apis::TagmanagerV1::UserAccess, decorator: Google::Apis::TagmanagerV1::UserAccessRepresentation
      end

      # @private
      class ListAccountsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :accounts, as: 'accounts', class: Google::Apis::TagmanagerV1::Account, decorator: Google::Apis::TagmanagerV1::AccountRepresentation
      end

      # @private
      class ListContainerVersionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersionRepresentation
        
        
        collection :container_version_header, as: 'containerVersionHeader', class: Google::Apis::TagmanagerV1::ContainerVersionHeader, decorator: Google::Apis::TagmanagerV1::ContainerVersionHeaderRepresentation
      end

      # @private
      class ListContainersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :containers, as: 'containers', class: Google::Apis::TagmanagerV1::Container, decorator: Google::Apis::TagmanagerV1::ContainerRepresentation
      end

      # @private
      class ListMacrosResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :macros, as: 'macros', class: Google::Apis::TagmanagerV1::Macro, decorator: Google::Apis::TagmanagerV1::MacroRepresentation
      end

      # @private
      class ListRulesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :rules, as: 'rules', class: Google::Apis::TagmanagerV1::Rule, decorator: Google::Apis::TagmanagerV1::RuleRepresentation
      end

      # @private
      class ListTagsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :tags, as: 'tags', class: Google::Apis::TagmanagerV1::Tag, decorator: Google::Apis::TagmanagerV1::TagRepresentation
      end

      # @private
      class ListTriggersResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :triggers, as: 'triggers', class: Google::Apis::TagmanagerV1::Trigger, decorator: Google::Apis::TagmanagerV1::TriggerRepresentation
      end

      # @private
      class ListVariablesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :variables, as: 'variables', class: Google::Apis::TagmanagerV1::Variable, decorator: Google::Apis::TagmanagerV1::VariableRepresentation
      end

      # @private
      class MacroRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :container_id, as: 'containerId'
        collection :disabling_rule_id, as: 'disablingRuleId'
        
        collection :enabling_rule_id, as: 'enablingRuleId'
        
        property :fingerprint, as: 'fingerprint'
        property :macro_id, as: 'macroId'
        property :name, as: 'name'
        property :notes, as: 'notes'
        collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        property :schedule_end_ms, as: 'scheduleEndMs'
        property :schedule_start_ms, as: 'scheduleStartMs'
        property :type, as: 'type'
      end

      # @private
      class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :key, as: 'key'
        collection :list, as: 'list', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        collection :map, as: 'map', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        property :type, as: 'type'
        property :value, as: 'value'
      end

      # @private
      class PublishContainerVersionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :compiler_error, as: 'compilerError'
        property :container_version, as: 'containerVersion', class: Google::Apis::TagmanagerV1::ContainerVersion, decorator: Google::Apis::TagmanagerV1::ContainerVersionRepresentation
      end

      # @private
      class RuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        collection :condition, as: 'condition', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::ConditionRepresentation
        
        
        property :container_id, as: 'containerId'
        property :fingerprint, as: 'fingerprint'
        property :name, as: 'name'
        property :notes, as: 'notes'
        property :rule_id, as: 'ruleId'
      end

      # @private
      class TagRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        collection :blocking_rule_id, as: 'blockingRuleId'
        
        collection :blocking_trigger_id, as: 'blockingTriggerId'
        
        property :container_id, as: 'containerId'
        property :fingerprint, as: 'fingerprint'
        collection :firing_rule_id, as: 'firingRuleId'
        
        collection :firing_trigger_id, as: 'firingTriggerId'
        
        property :live_only, as: 'liveOnly'
        property :name, as: 'name'
        property :notes, as: 'notes'
        collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        property :priority, as: 'priority', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :schedule_end_ms, as: 'scheduleEndMs'
        property :schedule_start_ms, as: 'scheduleStartMs'
        property :tag_id, as: 'tagId'
        property :type, as: 'type'
      end

      # @private
      class TriggerRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        collection :auto_event_filter, as: 'autoEventFilter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::ConditionRepresentation
        
        
        property :check_validation, as: 'checkValidation', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :container_id, as: 'containerId'
        collection :custom_event_filter, as: 'customEventFilter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::ConditionRepresentation
        
        
        property :enable_all_videos, as: 'enableAllVideos', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :event_name, as: 'eventName', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        collection :filter, as: 'filter', class: Google::Apis::TagmanagerV1::Condition, decorator: Google::Apis::TagmanagerV1::ConditionRepresentation
        
        
        property :fingerprint, as: 'fingerprint'
        property :interval, as: 'interval', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :limit, as: 'limit', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :name, as: 'name'
        property :trigger_id, as: 'triggerId'
        property :type, as: 'type'
        property :unique_trigger_id, as: 'uniqueTriggerId', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :video_percentage_list, as: 'videoPercentageList', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :wait_for_tags, as: 'waitForTags', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        property :wait_for_tags_timeout, as: 'waitForTagsTimeout', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
      end

      # @private
      class UserAccessRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_access, as: 'accountAccess', class: Google::Apis::TagmanagerV1::AccountAccess, decorator: Google::Apis::TagmanagerV1::AccountAccessRepresentation
        
        property :account_id, as: 'accountId'
        collection :container_access, as: 'containerAccess', class: Google::Apis::TagmanagerV1::ContainerAccess, decorator: Google::Apis::TagmanagerV1::ContainerAccessRepresentation
        
        
        property :email_address, as: 'emailAddress'
        property :permission_id, as: 'permissionId'
      end

      # @private
      class VariableRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :account_id, as: 'accountId'
        property :container_id, as: 'containerId'
        collection :disabling_trigger_id, as: 'disablingTriggerId'
        
        collection :enabling_trigger_id, as: 'enablingTriggerId'
        
        property :fingerprint, as: 'fingerprint'
        property :name, as: 'name'
        property :notes, as: 'notes'
        collection :parameter, as: 'parameter', class: Google::Apis::TagmanagerV1::Parameter, decorator: Google::Apis::TagmanagerV1::ParameterRepresentation
        
        
        property :schedule_end_ms, as: 'scheduleEndMs'
        property :schedule_start_ms, as: 'scheduleStartMs'
        property :type, as: 'type'
        property :variable_id, as: 'variableId'
      end
    end
  end
end
