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
      
      # Represents a Google Tag Manager Account.
      class Account
        include Google::Apis::Core::Hashable
      
        # The Account ID uniquely identifies the GTM Account.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The fingerprint of the GTM Account as computed at storage time. This value is
        # recomputed whenever the account is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Account display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the account shares data anonymously with Google and others.
        # Corresponds to the JSON property `shareData`
        # @return [Boolean]
        attr_accessor :share_data
        alias_method :share_data?, :share_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @name = args[:name] unless args[:name].nil?
          @share_data = args[:share_data] unless args[:share_data].nil?
        end
      end
      
      # Defines the Google Tag Manager Account access permissions.
      class AccountAccess
        include Google::Apis::Core::Hashable
      
        # List of Account permissions. Valid account permissions are read and manage.
        # Corresponds to the JSON property `permission`
        # @return [Array<String>]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] unless args[:permission].nil?
        end
      end
      
      # Represents a predicate.
      class Condition
        include Google::Apis::Core::Hashable
      
        # A list of named parameters (key/value), depending on the condition's type.
        # Notes:
        # - For binary operators, include parameters named arg0 and arg1 for specifying
        # the left and right operands, respectively.
        # - At this time, the left operand (arg0) must be a reference to a variable.
        # - For case-insensitive Regex matching, include a boolean parameter named
        # ignore_case that is set to true. If not specified or set to any other value,
        # the matching will be case sensitive.
        # - To negate an operator, include a boolean parameter named negate boolean
        # parameter that is set to true.
        # Corresponds to the JSON property `parameter`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :parameter
      
        # The type of operator for this condition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter = args[:parameter] unless args[:parameter].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Represents a Google Tag Manager Container.
      class Container
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The Container ID uniquely identifies the GTM Container.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # Optional list of domain names associated with the Container.
        # Corresponds to the JSON property `domainName`
        # @return [Array<String>]
        attr_accessor :domain_name
      
        # List of enabled built-in variables. Valid values include: pageUrl,
        # pageHostname, pagePath, referrer, event, clickElement, clickClasses, clickId,
        # clickTarget, clickUrl, clickText, formElement, formClasses, formId, formTarget,
        # formUrl, formText, errorMessage, errorUrl, errorLine, newHistoryFragment,
        # oldHistoryFragment, newHistoryState, oldHistoryState, historySource,
        # containerVersion, debugMode, randomNumber, containerId.
        # Corresponds to the JSON property `enabledBuiltInVariable`
        # @return [Array<String>]
        attr_accessor :enabled_built_in_variable
      
        # The fingerprint of the GTM Container as computed at storage time. This value
        # is recomputed whenever the account is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Container display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container Notes.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Container Public ID.
        # Corresponds to the JSON property `publicId`
        # @return [String]
        attr_accessor :public_id
      
        # Container Country ID.
        # Corresponds to the JSON property `timeZoneCountryId`
        # @return [String]
        attr_accessor :time_zone_country_id
      
        # Container Time Zone ID.
        # Corresponds to the JSON property `timeZoneId`
        # @return [String]
        attr_accessor :time_zone_id
      
        # List of Usage Contexts for the Container. Valid values include: web, android,
        # ios.
        # Corresponds to the JSON property `usageContext`
        # @return [Array<String>]
        attr_accessor :usage_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @domain_name = args[:domain_name] unless args[:domain_name].nil?
          @enabled_built_in_variable = args[:enabled_built_in_variable] unless args[:enabled_built_in_variable].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @public_id = args[:public_id] unless args[:public_id].nil?
          @time_zone_country_id = args[:time_zone_country_id] unless args[:time_zone_country_id].nil?
          @time_zone_id = args[:time_zone_id] unless args[:time_zone_id].nil?
          @usage_context = args[:usage_context] unless args[:usage_context].nil?
        end
      end
      
      # Defines the Google Tag Manager Container access permissions.
      class ContainerAccess
        include Google::Apis::Core::Hashable
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # List of Container permissions. Valid container permissions are: read, edit,
        # delete, publish.
        # Corresponds to the JSON property `permission`
        # @return [Array<String>]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_id = args[:container_id] unless args[:container_id].nil?
          @permission = args[:permission] unless args[:permission].nil?
        end
      end
      
      # Represents a Google Tag Manager Container Version.
      class ContainerVersion
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Represents a Google Tag Manager Container.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::TagmanagerV1::Container]
        attr_accessor :container
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # The Container Version ID uniquely identifies the GTM Container Version.
        # Corresponds to the JSON property `containerVersionId`
        # @return [String]
        attr_accessor :container_version_id
      
        # A value of true indicates this container version has been deleted.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The fingerprint of the GTM Container Version as computed at storage time. This
        # value is recomputed whenever the container version is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The folders in the container that this version was taken from.
        # Corresponds to the JSON property `folder`
        # @return [Array<Google::Apis::TagmanagerV1::Folder>]
        attr_accessor :folder
      
        # The macros in the container that this version was taken from.
        # Corresponds to the JSON property `macro`
        # @return [Array<Google::Apis::TagmanagerV1::Macro>]
        attr_accessor :macro
      
        # Container version display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes on how to apply this container version in the container.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The rules in the container that this version was taken from.
        # Corresponds to the JSON property `rule`
        # @return [Array<Google::Apis::TagmanagerV1::Rule>]
        attr_accessor :rule
      
        # The tags in the container that this version was taken from.
        # Corresponds to the JSON property `tag`
        # @return [Array<Google::Apis::TagmanagerV1::Tag>]
        attr_accessor :tag
      
        # The triggers in the container that this version was taken from.
        # Corresponds to the JSON property `trigger`
        # @return [Array<Google::Apis::TagmanagerV1::Trigger>]
        attr_accessor :trigger
      
        # The variables in the container that this version was taken from.
        # Corresponds to the JSON property `variable`
        # @return [Array<Google::Apis::TagmanagerV1::Variable>]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container = args[:container] unless args[:container].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @container_version_id = args[:container_version_id] unless args[:container_version_id].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @folder = args[:folder] unless args[:folder].nil?
          @macro = args[:macro] unless args[:macro].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @rule = args[:rule] unless args[:rule].nil?
          @tag = args[:tag] unless args[:tag].nil?
          @trigger = args[:trigger] unless args[:trigger].nil?
          @variable = args[:variable] unless args[:variable].nil?
        end
      end
      
      # Represents a Google Tag Manager Container Version Header.
      class ContainerVersionHeader
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # The Container Version ID uniquely identifies the GTM Container Version.
        # Corresponds to the JSON property `containerVersionId`
        # @return [String]
        attr_accessor :container_version_id
      
        # A value of true indicates this container version has been deleted.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Container version display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Number of macros in the container version.
        # Corresponds to the JSON property `numMacros`
        # @return [String]
        attr_accessor :num_macros
      
        # Number of rules in the container version.
        # Corresponds to the JSON property `numRules`
        # @return [String]
        attr_accessor :num_rules
      
        # Number of tags in the container version.
        # Corresponds to the JSON property `numTags`
        # @return [String]
        attr_accessor :num_tags
      
        # Number of triggers in the container version.
        # Corresponds to the JSON property `numTriggers`
        # @return [String]
        attr_accessor :num_triggers
      
        # Number of variables in the container version.
        # Corresponds to the JSON property `numVariables`
        # @return [String]
        attr_accessor :num_variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @container_version_id = args[:container_version_id] unless args[:container_version_id].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @name = args[:name] unless args[:name].nil?
          @num_macros = args[:num_macros] unless args[:num_macros].nil?
          @num_rules = args[:num_rules] unless args[:num_rules].nil?
          @num_tags = args[:num_tags] unless args[:num_tags].nil?
          @num_triggers = args[:num_triggers] unless args[:num_triggers].nil?
          @num_variables = args[:num_variables] unless args[:num_variables].nil?
        end
      end
      
      # Options for new container versions.
      class CreateContainerVersionRequestVersionOptions
        include Google::Apis::Core::Hashable
      
        # The name of the container version to be created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The notes of the container version to be created.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The creation of this version may be for quick preview and shouldn't be saved.
        # Corresponds to the JSON property `quickPreview`
        # @return [Boolean]
        attr_accessor :quick_preview
        alias_method :quick_preview?, :quick_preview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @quick_preview = args[:quick_preview] unless args[:quick_preview].nil?
        end
      end
      
      # Create container versions response.
      class CreateContainerVersionResponse
        include Google::Apis::Core::Hashable
      
        # Compiler errors or not.
        # Corresponds to the JSON property `compilerError`
        # @return [Boolean]
        attr_accessor :compiler_error
        alias_method :compiler_error?, :compiler_error
      
        # Represents a Google Tag Manager Container Version.
        # Corresponds to the JSON property `containerVersion`
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        attr_accessor :container_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compiler_error = args[:compiler_error] unless args[:compiler_error].nil?
          @container_version = args[:container_version] unless args[:container_version].nil?
        end
      end
      
      # Represents a Google Tag Manager Folder.
      class Folder
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # The fingerprint of the GTM Folder as computed at storage time. This value is
        # recomputed whenever the folder is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The Folder ID uniquely identifies the GTM Folder.
        # Corresponds to the JSON property `folderId`
        # @return [String]
        attr_accessor :folder_id
      
        # Folder display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @folder_id = args[:folder_id] unless args[:folder_id].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Represents a Google Tag Manager Folder's contents.
      class FolderEntities
        include Google::Apis::Core::Hashable
      
        # The list of tags inside the folder.
        # Corresponds to the JSON property `tag`
        # @return [Array<Google::Apis::TagmanagerV1::Tag>]
        attr_accessor :tag
      
        # The list of triggers inside the folder.
        # Corresponds to the JSON property `trigger`
        # @return [Array<Google::Apis::TagmanagerV1::Trigger>]
        attr_accessor :trigger
      
        # The list of variables inside the folder.
        # Corresponds to the JSON property `variable`
        # @return [Array<Google::Apis::TagmanagerV1::Variable>]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] unless args[:tag].nil?
          @trigger = args[:trigger] unless args[:trigger].nil?
          @variable = args[:variable] unless args[:variable].nil?
        end
      end
      
      # List AccountUsers Response.
      class ListAccountUsersResponse
        include Google::Apis::Core::Hashable
      
        # All GTM AccountUsers of a GTM Account.
        # Corresponds to the JSON property `userAccess`
        # @return [Array<Google::Apis::TagmanagerV1::UserAccess>]
        attr_accessor :user_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_access = args[:user_access] unless args[:user_access].nil?
        end
      end
      
      # List Accounts Response.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # List of GTM Accounts that a user has access to.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::TagmanagerV1::Account>]
        attr_accessor :accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] unless args[:accounts].nil?
        end
      end
      
      # List container versions response.
      class ListContainerVersionsResponse
        include Google::Apis::Core::Hashable
      
        # All versions of a GTM Container.
        # Corresponds to the JSON property `containerVersion`
        # @return [Array<Google::Apis::TagmanagerV1::ContainerVersion>]
        attr_accessor :container_version
      
        # All container version headers of a GTM Container.
        # Corresponds to the JSON property `containerVersionHeader`
        # @return [Array<Google::Apis::TagmanagerV1::ContainerVersionHeader>]
        attr_accessor :container_version_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_version = args[:container_version] unless args[:container_version].nil?
          @container_version_header = args[:container_version_header] unless args[:container_version_header].nil?
        end
      end
      
      # List Containers Response.
      class ListContainersResponse
        include Google::Apis::Core::Hashable
      
        # All Containers of a GTM Account.
        # Corresponds to the JSON property `containers`
        # @return [Array<Google::Apis::TagmanagerV1::Container>]
        attr_accessor :containers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containers = args[:containers] unless args[:containers].nil?
        end
      end
      
      # List Folders Response.
      class ListFoldersResponse
        include Google::Apis::Core::Hashable
      
        # All GTM Folders of a GTM Container.
        # Corresponds to the JSON property `folders`
        # @return [Array<Google::Apis::TagmanagerV1::Folder>]
        attr_accessor :folders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] unless args[:folders].nil?
        end
      end
      
      # List Tags Response.
      class ListTagsResponse
        include Google::Apis::Core::Hashable
      
        # All GTM Tags of a GTM Container.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::TagmanagerV1::Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] unless args[:tags].nil?
        end
      end
      
      # List triggers response.
      class ListTriggersResponse
        include Google::Apis::Core::Hashable
      
        # All GTM Triggers of a GTM Container.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::TagmanagerV1::Trigger>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @triggers = args[:triggers] unless args[:triggers].nil?
        end
      end
      
      # List Variables Response.
      class ListVariablesResponse
        include Google::Apis::Core::Hashable
      
        # All GTM Variables of a GTM Container.
        # Corresponds to the JSON property `variables`
        # @return [Array<Google::Apis::TagmanagerV1::Variable>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variables = args[:variables] unless args[:variables].nil?
        end
      end
      
      # Represents a Google Tag Manager Macro.
      class Macro
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # For mobile containers only: A list of rule IDs for disabling conditional
        # macros; the macro is enabled if one of the enabling rules is true while all
        # the disabling rules are false. Treated as an unordered set.
        # Corresponds to the JSON property `disablingRuleId`
        # @return [Array<String>]
        attr_accessor :disabling_rule_id
      
        # For mobile containers only: A list of rule IDs for enabling conditional macros;
        # the macro is enabled if one of the enabling rules is true while all the
        # disabling rules are false. Treated as an unordered set.
        # Corresponds to the JSON property `enablingRuleId`
        # @return [Array<String>]
        attr_accessor :enabling_rule_id
      
        # The fingerprint of the GTM Macro as computed at storage time. This value is
        # recomputed whenever the macro is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The Macro ID uniquely identifies the GTM Macro.
        # Corresponds to the JSON property `macroId`
        # @return [String]
        attr_accessor :macro_id
      
        # Macro display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes on how to apply this macro in the container.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The macro's parameters.
        # Corresponds to the JSON property `parameter`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :parameter
      
        # Parent folder id.
        # Corresponds to the JSON property `parentFolderId`
        # @return [String]
        attr_accessor :parent_folder_id
      
        # The end timestamp in milliseconds to schedule a macro.
        # Corresponds to the JSON property `scheduleEndMs`
        # @return [String]
        attr_accessor :schedule_end_ms
      
        # The start timestamp in milliseconds to schedule a macro.
        # Corresponds to the JSON property `scheduleStartMs`
        # @return [String]
        attr_accessor :schedule_start_ms
      
        # GTM Macro Type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @disabling_rule_id = args[:disabling_rule_id] unless args[:disabling_rule_id].nil?
          @enabling_rule_id = args[:enabling_rule_id] unless args[:enabling_rule_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @macro_id = args[:macro_id] unless args[:macro_id].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @parameter = args[:parameter] unless args[:parameter].nil?
          @parent_folder_id = args[:parent_folder_id] unless args[:parent_folder_id].nil?
          @schedule_end_ms = args[:schedule_end_ms] unless args[:schedule_end_ms].nil?
          @schedule_start_ms = args[:schedule_start_ms] unless args[:schedule_start_ms].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Represents a Google Tag Manager Parameter.
      class Parameter
        include Google::Apis::Core::Hashable
      
        # The named key that uniquely identifies a parameter. Required for top-level
        # parameters, as well as map values. Ignored for list values.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # This list parameter's parameters (keys will be ignored).
        # Corresponds to the JSON property `list`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :list
      
        # This map parameter's parameters (must have keys; keys must be unique).
        # Corresponds to the JSON property `map`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :map
      
        # The parameter type. Valid values are:
        # - boolean: The value represents a boolean, represented as 'true' or 'false'
        # - integer: The value represents a 64-bit signed integer value, in base 10
        # - list: A list of parameters should be specified
        # - map: A map of parameters should be specified
        # - template: The value represents any text; this can include variable
        # references (even variable references that might return non-string types)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A parameter's value (may contain variable references such as "``myVariable``")
        # as appropriate to the specified type.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] unless args[:key].nil?
          @list = args[:list] unless args[:list].nil?
          @map = args[:map] unless args[:map].nil?
          @type = args[:type] unless args[:type].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Publish container version response.
      class PublishContainerVersionResponse
        include Google::Apis::Core::Hashable
      
        # Compiler errors or not.
        # Corresponds to the JSON property `compilerError`
        # @return [Boolean]
        attr_accessor :compiler_error
        alias_method :compiler_error?, :compiler_error
      
        # Represents a Google Tag Manager Container Version.
        # Corresponds to the JSON property `containerVersion`
        # @return [Google::Apis::TagmanagerV1::ContainerVersion]
        attr_accessor :container_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compiler_error = args[:compiler_error] unless args[:compiler_error].nil?
          @container_version = args[:container_version] unless args[:container_version].nil?
        end
      end
      
      # Represents a Google Tag Manager Rule.
      class Rule
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The list of conditions that make up this rule (implicit AND between them).
        # Corresponds to the JSON property `condition`
        # @return [Array<Google::Apis::TagmanagerV1::Condition>]
        attr_accessor :condition
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # The fingerprint of the GTM Rule as computed at storage time. This value is
        # recomputed whenever the rule is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Rule display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes on how to apply this rule in the container.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The Rule ID uniquely identifies the GTM Rule.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @condition = args[:condition] unless args[:condition].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @rule_id = args[:rule_id] unless args[:rule_id].nil?
        end
      end
      
      # 
      class SetupTag
        include Google::Apis::Core::Hashable
      
        # If true, fire the main tag if and only if the setup tag fires successfully. If
        # false, fire the main tag regardless of setup tag firing status.
        # Corresponds to the JSON property `stopOnSetupFailure`
        # @return [Boolean]
        attr_accessor :stop_on_setup_failure
        alias_method :stop_on_setup_failure?, :stop_on_setup_failure
      
        # The name of the setup tag.
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stop_on_setup_failure = args[:stop_on_setup_failure] unless args[:stop_on_setup_failure].nil?
          @tag_name = args[:tag_name] unless args[:tag_name].nil?
        end
      end
      
      # Represents a Google Tag Manager Tag.
      class Tag
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Blocking rule IDs. If any of the listed rules evaluate to true, the tag will
        # not fire.
        # Corresponds to the JSON property `blockingRuleId`
        # @return [Array<String>]
        attr_accessor :blocking_rule_id
      
        # Blocking trigger IDs. If any of the listed triggers evaluate to true, the tag
        # will not fire.
        # Corresponds to the JSON property `blockingTriggerId`
        # @return [Array<String>]
        attr_accessor :blocking_trigger_id
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # The fingerprint of the GTM Tag as computed at storage time. This value is
        # recomputed whenever the tag is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Firing rule IDs. A tag will fire when any of the listed rules are true and all
        # of its blockingRuleIds (if any specified) are false.
        # Corresponds to the JSON property `firingRuleId`
        # @return [Array<String>]
        attr_accessor :firing_rule_id
      
        # Firing trigger IDs. A tag will fire when any of the listed triggers are true
        # and all of its blockingTriggerIds (if any specified) are false.
        # Corresponds to the JSON property `firingTriggerId`
        # @return [Array<String>]
        attr_accessor :firing_trigger_id
      
        # If set to true, this tag will only fire in the live environment (e.g. not in
        # preview or debug mode).
        # Corresponds to the JSON property `liveOnly`
        # @return [Boolean]
        attr_accessor :live_only
        alias_method :live_only?, :live_only
      
        # Tag display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes on how to apply this tag in the container.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The tag's parameters.
        # Corresponds to the JSON property `parameter`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :parameter
      
        # Parent folder id.
        # Corresponds to the JSON property `parentFolderId`
        # @return [String]
        attr_accessor :parent_folder_id
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `priority`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :priority
      
        # The end timestamp in milliseconds to schedule a tag.
        # Corresponds to the JSON property `scheduleEndMs`
        # @return [String]
        attr_accessor :schedule_end_ms
      
        # The start timestamp in milliseconds to schedule a tag.
        # Corresponds to the JSON property `scheduleStartMs`
        # @return [String]
        attr_accessor :schedule_start_ms
      
        # The list of setup tags. Currently we only allow one.
        # Corresponds to the JSON property `setupTag`
        # @return [Array<Google::Apis::TagmanagerV1::SetupTag>]
        attr_accessor :setup_tag
      
        # Option to fire this tag.
        # Corresponds to the JSON property `tagFiringOption`
        # @return [String]
        attr_accessor :tag_firing_option
      
        # The Tag ID uniquely identifies the GTM Tag.
        # Corresponds to the JSON property `tagId`
        # @return [String]
        attr_accessor :tag_id
      
        # The list of teardown tags. Currently we only allow one.
        # Corresponds to the JSON property `teardownTag`
        # @return [Array<Google::Apis::TagmanagerV1::TeardownTag>]
        attr_accessor :teardown_tag
      
        # GTM Tag Type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @blocking_rule_id = args[:blocking_rule_id] unless args[:blocking_rule_id].nil?
          @blocking_trigger_id = args[:blocking_trigger_id] unless args[:blocking_trigger_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @firing_rule_id = args[:firing_rule_id] unless args[:firing_rule_id].nil?
          @firing_trigger_id = args[:firing_trigger_id] unless args[:firing_trigger_id].nil?
          @live_only = args[:live_only] unless args[:live_only].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @parameter = args[:parameter] unless args[:parameter].nil?
          @parent_folder_id = args[:parent_folder_id] unless args[:parent_folder_id].nil?
          @priority = args[:priority] unless args[:priority].nil?
          @schedule_end_ms = args[:schedule_end_ms] unless args[:schedule_end_ms].nil?
          @schedule_start_ms = args[:schedule_start_ms] unless args[:schedule_start_ms].nil?
          @setup_tag = args[:setup_tag] unless args[:setup_tag].nil?
          @tag_firing_option = args[:tag_firing_option] unless args[:tag_firing_option].nil?
          @tag_id = args[:tag_id] unless args[:tag_id].nil?
          @teardown_tag = args[:teardown_tag] unless args[:teardown_tag].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class TeardownTag
        include Google::Apis::Core::Hashable
      
        # If true, fire the teardown tag if and only if the main tag fires successfully.
        # If false, fire the teardown tag regardless of main tag firing status.
        # Corresponds to the JSON property `stopTeardownOnFailure`
        # @return [Boolean]
        attr_accessor :stop_teardown_on_failure
        alias_method :stop_teardown_on_failure?, :stop_teardown_on_failure
      
        # The name of the teardown tag.
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stop_teardown_on_failure = args[:stop_teardown_on_failure] unless args[:stop_teardown_on_failure].nil?
          @tag_name = args[:tag_name] unless args[:tag_name].nil?
        end
      end
      
      # Represents a Google Tag Manager Trigger
      class Trigger
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Used in the case of auto event tracking.
        # Corresponds to the JSON property `autoEventFilter`
        # @return [Array<Google::Apis::TagmanagerV1::Condition>]
        attr_accessor :auto_event_filter
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `checkValidation`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :check_validation
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # Used in the case of custom event, which is fired iff all Conditions are true.
        # Corresponds to the JSON property `customEventFilter`
        # @return [Array<Google::Apis::TagmanagerV1::Condition>]
        attr_accessor :custom_event_filter
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `enableAllVideos`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :enable_all_videos
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `eventName`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :event_name
      
        # The trigger will only fire iff all Conditions are true.
        # Corresponds to the JSON property `filter`
        # @return [Array<Google::Apis::TagmanagerV1::Condition>]
        attr_accessor :filter
      
        # The fingerprint of the GTM Trigger as computed at storage time. This value is
        # recomputed whenever the trigger is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :interval
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `limit`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :limit
      
        # Trigger display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent folder id.
        # Corresponds to the JSON property `parentFolderId`
        # @return [String]
        attr_accessor :parent_folder_id
      
        # The Trigger ID uniquely identifies the GTM Trigger.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Defines the data layer event that causes this trigger.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `uniqueTriggerId`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :unique_trigger_id
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `videoPercentageList`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :video_percentage_list
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `waitForTags`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :wait_for_tags
      
        # Represents a Google Tag Manager Parameter.
        # Corresponds to the JSON property `waitForTagsTimeout`
        # @return [Google::Apis::TagmanagerV1::Parameter]
        attr_accessor :wait_for_tags_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @auto_event_filter = args[:auto_event_filter] unless args[:auto_event_filter].nil?
          @check_validation = args[:check_validation] unless args[:check_validation].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @custom_event_filter = args[:custom_event_filter] unless args[:custom_event_filter].nil?
          @enable_all_videos = args[:enable_all_videos] unless args[:enable_all_videos].nil?
          @event_name = args[:event_name] unless args[:event_name].nil?
          @filter = args[:filter] unless args[:filter].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @interval = args[:interval] unless args[:interval].nil?
          @limit = args[:limit] unless args[:limit].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_folder_id = args[:parent_folder_id] unless args[:parent_folder_id].nil?
          @trigger_id = args[:trigger_id] unless args[:trigger_id].nil?
          @type = args[:type] unless args[:type].nil?
          @unique_trigger_id = args[:unique_trigger_id] unless args[:unique_trigger_id].nil?
          @video_percentage_list = args[:video_percentage_list] unless args[:video_percentage_list].nil?
          @wait_for_tags = args[:wait_for_tags] unless args[:wait_for_tags].nil?
          @wait_for_tags_timeout = args[:wait_for_tags_timeout] unless args[:wait_for_tags_timeout].nil?
        end
      end
      
      # Represents a user's permissions to an account and its container.
      class UserAccess
        include Google::Apis::Core::Hashable
      
        # Defines the Google Tag Manager Account access permissions.
        # Corresponds to the JSON property `accountAccess`
        # @return [Google::Apis::TagmanagerV1::AccountAccess]
        attr_accessor :account_access
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # GTM Container access permissions.
        # Corresponds to the JSON property `containerAccess`
        # @return [Array<Google::Apis::TagmanagerV1::ContainerAccess>]
        attr_accessor :container_access
      
        # User's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Account Permission ID.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_access = args[:account_access] unless args[:account_access].nil?
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_access = args[:container_access] unless args[:container_access].nil?
          @email_address = args[:email_address] unless args[:email_address].nil?
          @permission_id = args[:permission_id] unless args[:permission_id].nil?
        end
      end
      
      # Represents a Google Tag Manager Variable.
      class Variable
        include Google::Apis::Core::Hashable
      
        # GTM Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # GTM Container ID.
        # Corresponds to the JSON property `containerId`
        # @return [String]
        attr_accessor :container_id
      
        # For mobile containers only: A list of trigger IDs for disabling conditional
        # variables; the variable is enabled if one of the enabling trigger is true
        # while all the disabling trigger are false. Treated as an unordered set.
        # Corresponds to the JSON property `disablingTriggerId`
        # @return [Array<String>]
        attr_accessor :disabling_trigger_id
      
        # For mobile containers only: A list of trigger IDs for enabling conditional
        # variables; the variable is enabled if one of the enabling triggers is true
        # while all the disabling triggers are false. Treated as an unordered set.
        # Corresponds to the JSON property `enablingTriggerId`
        # @return [Array<String>]
        attr_accessor :enabling_trigger_id
      
        # The fingerprint of the GTM Variable as computed at storage time. This value is
        # recomputed whenever the variable is modified.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Variable display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User notes on how to apply this variable in the container.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The variable's parameters.
        # Corresponds to the JSON property `parameter`
        # @return [Array<Google::Apis::TagmanagerV1::Parameter>]
        attr_accessor :parameter
      
        # Parent folder id.
        # Corresponds to the JSON property `parentFolderId`
        # @return [String]
        attr_accessor :parent_folder_id
      
        # The end timestamp in milliseconds to schedule a variable.
        # Corresponds to the JSON property `scheduleEndMs`
        # @return [String]
        attr_accessor :schedule_end_ms
      
        # The start timestamp in milliseconds to schedule a variable.
        # Corresponds to the JSON property `scheduleStartMs`
        # @return [String]
        attr_accessor :schedule_start_ms
      
        # GTM Variable Type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The Variable ID uniquely identifies the GTM Variable.
        # Corresponds to the JSON property `variableId`
        # @return [String]
        attr_accessor :variable_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @container_id = args[:container_id] unless args[:container_id].nil?
          @disabling_trigger_id = args[:disabling_trigger_id] unless args[:disabling_trigger_id].nil?
          @enabling_trigger_id = args[:enabling_trigger_id] unless args[:enabling_trigger_id].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @name = args[:name] unless args[:name].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @parameter = args[:parameter] unless args[:parameter].nil?
          @parent_folder_id = args[:parent_folder_id] unless args[:parent_folder_id].nil?
          @schedule_end_ms = args[:schedule_end_ms] unless args[:schedule_end_ms].nil?
          @schedule_start_ms = args[:schedule_start_ms] unless args[:schedule_start_ms].nil?
          @type = args[:type] unless args[:type].nil?
          @variable_id = args[:variable_id] unless args[:variable_id].nil?
        end
      end
    end
  end
end
