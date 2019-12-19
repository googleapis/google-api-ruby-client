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
    module ToolresultsV1
      
      class Anr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableDeepLinks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlankScreen
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrashDialogError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncounteredLoginScreen
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncounteredNonAndroidUiWidgetScreen
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailedToInstall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FatalException
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InAppPurchasesFound
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsufficientCoverage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IosAppCrashed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LauncherActivityNotFound
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NativeCrash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonSdkApi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonSdkApiInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonSdkApiUsageViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonSdkApiUsageViolationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OverlappingUiElements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PendingGoogleUpdateInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformedGoogleLogin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformedMonkeyActions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoboScriptExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartActivityNotFound
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UiElementTooDeep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnspecifiedWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnusedRoboDirective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsedRoboDirective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsedRoboIgnoreDirective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Anr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stack_trace, as: 'stackTrace', class: Google::Apis::ToolresultsV1::StackTrace, decorator: Google::Apis::ToolresultsV1::StackTrace::Representation
      
        end
      end
      
      class AvailableDeepLinks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BlankScreen
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :screen_id, as: 'screenId'
        end
      end
      
      class CrashDialogError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crash_package, as: 'crashPackage'
        end
      end
      
      class EncounteredLoginScreen
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distinct_screens, as: 'distinctScreens'
          collection :screen_ids, as: 'screenIds'
        end
      end
      
      class EncounteredNonAndroidUiWidgetScreen
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distinct_screens, as: 'distinctScreens'
          collection :screen_ids, as: 'screenIds'
        end
      end
      
      class FailedToInstall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FatalException
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stack_trace, as: 'stackTrace', class: Google::Apis::ToolresultsV1::StackTrace, decorator: Google::Apis::ToolresultsV1::StackTrace::Representation
      
        end
      end
      
      class InAppPurchasesFound
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :in_app_purchases_flows_explored, as: 'inAppPurchasesFlowsExplored'
          property :in_app_purchases_flows_started, as: 'inAppPurchasesFlowsStarted'
        end
      end
      
      class InsufficientCoverage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class IosAppCrashed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stack_trace, as: 'stackTrace', class: Google::Apis::ToolresultsV1::StackTrace, decorator: Google::Apis::ToolresultsV1::StackTrace::Representation
      
        end
      end
      
      class LauncherActivityNotFound
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class NativeCrash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stack_trace, as: 'stackTrace', class: Google::Apis::ToolresultsV1::StackTrace, decorator: Google::Apis::ToolresultsV1::StackTrace::Representation
      
        end
      end
      
      class NonSdkApi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_signature, as: 'apiSignature'
          collection :example_stack_traces, as: 'exampleStackTraces'
          collection :insights, as: 'insights', class: Google::Apis::ToolresultsV1::NonSdkApiInsight, decorator: Google::Apis::ToolresultsV1::NonSdkApiInsight::Representation
      
          property :invocation_count, as: 'invocationCount'
          property :list, as: 'list'
        end
      end
      
      class NonSdkApiInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :example_trace_messages, as: 'exampleTraceMessages'
          property :matcher_id, as: 'matcherId'
          property :pending_google_update_insight, as: 'pendingGoogleUpdateInsight', class: Google::Apis::ToolresultsV1::PendingGoogleUpdateInsight, decorator: Google::Apis::ToolresultsV1::PendingGoogleUpdateInsight::Representation
      
          property :upgrade_insight, as: 'upgradeInsight', class: Google::Apis::ToolresultsV1::UpgradeInsight, decorator: Google::Apis::ToolresultsV1::UpgradeInsight::Representation
      
        end
      end
      
      class NonSdkApiUsageViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_signatures, as: 'apiSignatures'
          property :unique_apis, as: 'uniqueApis'
        end
      end
      
      class NonSdkApiUsageViolationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :example_apis, as: 'exampleApis', class: Google::Apis::ToolresultsV1::NonSdkApi, decorator: Google::Apis::ToolresultsV1::NonSdkApi::Representation
      
          property :min_sdk_version, as: 'minSdkVersion'
          property :target_sdk_version, as: 'targetSdkVersion'
          property :unique_apis, as: 'uniqueApis'
        end
      end
      
      class OverlappingUiElements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_name, as: 'resourceName'
          property :screen_id, as: 'screenId'
        end
      end
      
      class PendingGoogleUpdateInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name_of_google_library, as: 'nameOfGoogleLibrary'
        end
      end
      
      class PerformedGoogleLogin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PerformedMonkeyActions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_actions, as: 'totalActions'
        end
      end
      
      class RoboScriptExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :successful_actions, as: 'successfulActions'
          property :total_actions, as: 'totalActions'
        end
      end
      
      class StackTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exception, as: 'exception'
        end
      end
      
      class StartActivityNotFound
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :uri, as: 'uri'
        end
      end
      
      class UiElementTooDeep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :depth, as: 'depth'
          property :screen_id, as: 'screenId'
          property :screen_state_id, as: 'screenStateId'
        end
      end
      
      class UnspecifiedWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UnusedRoboDirective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class UpgradeInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_name, as: 'packageName'
          property :upgrade_to_version, as: 'upgradeToVersion'
        end
      end
      
      class UsedRoboDirective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class UsedRoboIgnoreDirective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
    end
  end
end
