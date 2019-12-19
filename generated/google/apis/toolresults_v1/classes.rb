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
      
      # Additional details for an ANR crash.
      class Anr
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # A suggestion to use deep links for a Robo run.
      class AvailableDeepLinks
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A warning that Robo encountered a screen that was mostly blank; this may
      # indicate a problem with the app.
      class BlankScreen
        include Google::Apis::Core::Hashable
      
        # The screen id of the element
        # Corresponds to the JSON property `screenId`
        # @return [String]
        attr_accessor :screen_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @screen_id = args[:screen_id] if args.key?(:screen_id)
        end
      end
      
      # Crash dialog was detected during the test execution
      class CrashDialogError
        include Google::Apis::Core::Hashable
      
        # The name of the package that caused the dialog.
        # Corresponds to the JSON property `crashPackage`
        # @return [String]
        attr_accessor :crash_package
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crash_package = args[:crash_package] if args.key?(:crash_package)
        end
      end
      
      # Additional details about encountered login screens.
      class EncounteredLoginScreen
        include Google::Apis::Core::Hashable
      
        # Number of encountered distinct login screens.
        # Corresponds to the JSON property `distinctScreens`
        # @return [Fixnum]
        attr_accessor :distinct_screens
      
        # Subset of login screens.
        # Corresponds to the JSON property `screenIds`
        # @return [Array<String>]
        attr_accessor :screen_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distinct_screens = args[:distinct_screens] if args.key?(:distinct_screens)
          @screen_ids = args[:screen_ids] if args.key?(:screen_ids)
        end
      end
      
      # Additional details about encountered screens with elements that are not
      # Android UI widgets.
      class EncounteredNonAndroidUiWidgetScreen
        include Google::Apis::Core::Hashable
      
        # Number of encountered distinct screens with non Android UI widgets.
        # Corresponds to the JSON property `distinctScreens`
        # @return [Fixnum]
        attr_accessor :distinct_screens
      
        # Subset of screens which contain non Android UI widgets.
        # Corresponds to the JSON property `screenIds`
        # @return [Array<String>]
        attr_accessor :screen_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distinct_screens = args[:distinct_screens] if args.key?(:distinct_screens)
          @screen_ids = args[:screen_ids] if args.key?(:screen_ids)
        end
      end
      
      # Failed to install the APK.
      class FailedToInstall
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional details for a fatal exception.
      class FatalException
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # Additional details of in-app purchases encountered during the crawl.
      class InAppPurchasesFound
        include Google::Apis::Core::Hashable
      
        # The total number of in-app purchases flows explored: how many times the
        # robo tries to buy a SKU.
        # Corresponds to the JSON property `inAppPurchasesFlowsExplored`
        # @return [Fixnum]
        attr_accessor :in_app_purchases_flows_explored
      
        # The total number of in-app purchases flows started.
        # Corresponds to the JSON property `inAppPurchasesFlowsStarted`
        # @return [Fixnum]
        attr_accessor :in_app_purchases_flows_started
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @in_app_purchases_flows_explored = args[:in_app_purchases_flows_explored] if args.key?(:in_app_purchases_flows_explored)
          @in_app_purchases_flows_started = args[:in_app_purchases_flows_started] if args.key?(:in_app_purchases_flows_started)
        end
      end
      
      # A warning that Robo did not crawl potentially important parts of the app.
      class InsufficientCoverage
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional details for an iOS app crash.
      class IosAppCrashed
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # Failed to find the launcher activity of an app.
      class LauncherActivityNotFound
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional details for a native crash.
      class NativeCrash
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # A non-sdk API and examples of it being called along with other metadata
      # See
      # https://developer.android.com/distribute/best-practices/develop/restrictions-
      # non-sdk-interfaces
      class NonSdkApi
        include Google::Apis::Core::Hashable
      
        # The signature of the Non-SDK API
        # Corresponds to the JSON property `apiSignature`
        # @return [String]
        attr_accessor :api_signature
      
        # Example stack traces of this API being called.
        # Corresponds to the JSON property `exampleStackTraces`
        # @return [Array<String>]
        attr_accessor :example_stack_traces
      
        # Optional debugging insights for non-SDK API violations.
        # Corresponds to the JSON property `insights`
        # @return [Array<Google::Apis::ToolresultsV1::NonSdkApiInsight>]
        attr_accessor :insights
      
        # The total number of times this API was observed to have been called.
        # Corresponds to the JSON property `invocationCount`
        # @return [Fixnum]
        attr_accessor :invocation_count
      
        # Which list this API appears on
        # Corresponds to the JSON property `list`
        # @return [String]
        attr_accessor :list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_signature = args[:api_signature] if args.key?(:api_signature)
          @example_stack_traces = args[:example_stack_traces] if args.key?(:example_stack_traces)
          @insights = args[:insights] if args.key?(:insights)
          @invocation_count = args[:invocation_count] if args.key?(:invocation_count)
          @list = args[:list] if args.key?(:list)
        end
      end
      
      # Non-SDK API insights (to address debugging solutions).
      class NonSdkApiInsight
        include Google::Apis::Core::Hashable
      
        # Optional sample stack traces, for which this insight applies (there
        # should be at least one).
        # Corresponds to the JSON property `exampleTraceMessages`
        # @return [Array<String>]
        attr_accessor :example_trace_messages
      
        # A unique ID, to be used for determining the effectiveness of this
        # particular insight in the context of a matcher. (required)
        # Corresponds to the JSON property `matcherId`
        # @return [String]
        attr_accessor :matcher_id
      
        # This insight indicates that the hidden API usage originates from a
        # Google-provided library. Users need not take any action.
        # Corresponds to the JSON property `pendingGoogleUpdateInsight`
        # @return [Google::Apis::ToolresultsV1::PendingGoogleUpdateInsight]
        attr_accessor :pending_google_update_insight
      
        # This insight is a recommendation to upgrade a given library to the specified
        # version, in order to avoid dependencies on non-SDK APIs.
        # Corresponds to the JSON property `upgradeInsight`
        # @return [Google::Apis::ToolresultsV1::UpgradeInsight]
        attr_accessor :upgrade_insight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_trace_messages = args[:example_trace_messages] if args.key?(:example_trace_messages)
          @matcher_id = args[:matcher_id] if args.key?(:matcher_id)
          @pending_google_update_insight = args[:pending_google_update_insight] if args.key?(:pending_google_update_insight)
          @upgrade_insight = args[:upgrade_insight] if args.key?(:upgrade_insight)
        end
      end
      
      # Additional details for a non-sdk API usage violation.
      class NonSdkApiUsageViolation
        include Google::Apis::Core::Hashable
      
        # Signatures of a subset of those hidden API's.
        # Corresponds to the JSON property `apiSignatures`
        # @return [Array<String>]
        attr_accessor :api_signatures
      
        # Total number of unique hidden API's accessed.
        # Corresponds to the JSON property `uniqueApis`
        # @return [Fixnum]
        attr_accessor :unique_apis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_signatures = args[:api_signatures] if args.key?(:api_signatures)
          @unique_apis = args[:unique_apis] if args.key?(:unique_apis)
        end
      end
      
      # Contains a summary and examples of non-sdk API usage violations.
      class NonSdkApiUsageViolationReport
        include Google::Apis::Core::Hashable
      
        # Examples of the detected API usages.
        # Corresponds to the JSON property `exampleApis`
        # @return [Array<Google::Apis::ToolresultsV1::NonSdkApi>]
        attr_accessor :example_apis
      
        # Minimum API level required for the application to run.
        # Corresponds to the JSON property `minSdkVersion`
        # @return [Fixnum]
        attr_accessor :min_sdk_version
      
        # Specifies the API Level on which the application is designed to run.
        # Corresponds to the JSON property `targetSdkVersion`
        # @return [Fixnum]
        attr_accessor :target_sdk_version
      
        # Total number of unique Non-SDK API's accessed.
        # Corresponds to the JSON property `uniqueApis`
        # @return [Fixnum]
        attr_accessor :unique_apis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_apis = args[:example_apis] if args.key?(:example_apis)
          @min_sdk_version = args[:min_sdk_version] if args.key?(:min_sdk_version)
          @target_sdk_version = args[:target_sdk_version] if args.key?(:target_sdk_version)
          @unique_apis = args[:unique_apis] if args.key?(:unique_apis)
        end
      end
      
      # A warning that Robo encountered a screen that has overlapping clickable
      # elements; this may indicate a potential UI issue.
      class OverlappingUiElements
        include Google::Apis::Core::Hashable
      
        # Resource names of the overlapping screen elements
        # Corresponds to the JSON property `resourceName`
        # @return [Array<String>]
        attr_accessor :resource_name
      
        # The screen id of the elements
        # Corresponds to the JSON property `screenId`
        # @return [String]
        attr_accessor :screen_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @screen_id = args[:screen_id] if args.key?(:screen_id)
        end
      end
      
      # This insight indicates that the hidden API usage originates from a
      # Google-provided library. Users need not take any action.
      class PendingGoogleUpdateInsight
        include Google::Apis::Core::Hashable
      
        # The name of the Google-provided library with the non-SDK API dependency.
        # Corresponds to the JSON property `nameOfGoogleLibrary`
        # @return [String]
        attr_accessor :name_of_google_library
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name_of_google_library = args[:name_of_google_library] if args.key?(:name_of_google_library)
        end
      end
      
      # A notification that Robo signed in with Google.
      class PerformedGoogleLogin
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A notification that Robo performed some monkey actions.
      class PerformedMonkeyActions
        include Google::Apis::Core::Hashable
      
        # The total number of monkey actions performed during the crawl.
        # Corresponds to the JSON property `totalActions`
        # @return [Fixnum]
        attr_accessor :total_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_actions = args[:total_actions] if args.key?(:total_actions)
        end
      end
      
      # Execution stats for a user-provided Robo script.
      class RoboScriptExecution
        include Google::Apis::Core::Hashable
      
        # The number of Robo script actions executed successfully.
        # Corresponds to the JSON property `successfulActions`
        # @return [Fixnum]
        attr_accessor :successful_actions
      
        # The total number of actions in the Robo script.
        # Corresponds to the JSON property `totalActions`
        # @return [Fixnum]
        attr_accessor :total_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @successful_actions = args[:successful_actions] if args.key?(:successful_actions)
          @total_actions = args[:total_actions] if args.key?(:total_actions)
        end
      end
      
      # A stacktrace.
      class StackTrace
        include Google::Apis::Core::Hashable
      
        # The stack trace message.
        # Required
        # Corresponds to the JSON property `exception`
        # @return [String]
        attr_accessor :exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exception = args[:exception] if args.key?(:exception)
        end
      end
      
      # User provided intent failed to resolve to an activity.
      class StartActivityNotFound
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A warning that the screen hierarchy is deeper than the recommended threshold.
      class UiElementTooDeep
        include Google::Apis::Core::Hashable
      
        # The depth of the screen element
        # Corresponds to the JSON property `depth`
        # @return [Fixnum]
        attr_accessor :depth
      
        # The screen id of the element
        # Corresponds to the JSON property `screenId`
        # @return [String]
        attr_accessor :screen_id
      
        # The screen state id of the element
        # Corresponds to the JSON property `screenStateId`
        # @return [String]
        attr_accessor :screen_state_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @depth = args[:depth] if args.key?(:depth)
          @screen_id = args[:screen_id] if args.key?(:screen_id)
          @screen_state_id = args[:screen_state_id] if args.key?(:screen_state_id)
        end
      end
      
      # Default unspecified warning.
      class UnspecifiedWarning
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional details of an unused robodirective.
      class UnusedRoboDirective
        include Google::Apis::Core::Hashable
      
        # The name of the resource that was unused.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # This insight is a recommendation to upgrade a given library to the specified
      # version, in order to avoid dependencies on non-SDK APIs.
      class UpgradeInsight
        include Google::Apis::Core::Hashable
      
        # The name of the package to be upgraded.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The suggested version to upgrade to.
        # Optional: In case we are not sure which version solves this problem
        # Corresponds to the JSON property `upgradeToVersion`
        # @return [String]
        attr_accessor :upgrade_to_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_name = args[:package_name] if args.key?(:package_name)
          @upgrade_to_version = args[:upgrade_to_version] if args.key?(:upgrade_to_version)
        end
      end
      
      # Additional details of a used Robo directive.
      class UsedRoboDirective
        include Google::Apis::Core::Hashable
      
        # The name of the resource that was used.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Additional details of a used Robo directive with an ignore action.
      # Note: This is a different scenario than unused directive.
      class UsedRoboIgnoreDirective
        include Google::Apis::Core::Hashable
      
        # The name of the resource that was ignored.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
    end
  end
end
