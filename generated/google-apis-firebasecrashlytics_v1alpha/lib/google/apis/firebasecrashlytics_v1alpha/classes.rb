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
    module FirebasecrashlyticsV1alpha
      
      # Response message for the BatchGetEvents method.
      class BatchGetEventsResponse
        include Google::Apis::Core::Hashable
      
        # The list of retrieved events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Event>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Request message for the BatchUpdateIssues method.
      class BatchUpdateIssuesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the resources to update. A maximum of
        # 100 issues can be modified in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::UpdateIssueRequest>]
        attr_accessor :requests
      
        # Optional. The list of Issue fields to update. If this is set, the update_mask
        # field in the UpdateIssueRequest messages must either be empty or match this
        # field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response message for the BatchUpdateIssues method.
      class BatchUpdateIssuesResponse
        include Google::Apis::Core::Hashable
      
        # Issues updated in the same order as in BatchUpdateIssuesRequest.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Issue>]
        attr_accessor :issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
        end
      end
      
      # Analytics events recorded during the session.
      class Breadcrumb
        include Google::Apis::Core::Hashable
      
        # Device timestamp for the event.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Event parameters.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # Analytic event name.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @params = args[:params] if args.key?(:params)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Web browser metadata.
      class Browser
        include Google::Apis::Core::Hashable
      
        # Browser name.
        # Corresponds to the JSON property `browser`
        # @return [String]
        attr_accessor :browser
      
        # Browser name and version number. Formatted to be suitable for passing to
        # BrowserFilter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Browser display version number.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser = args[:browser] if args.key?(:browser)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_version = args[:display_version] if args.key?(:display_version)
        end
      end
      
      # Response message for the DeleteUserCrashReports method. All crash reports
      # associated with the specified user will be deleted typically within 24 hours
      # of receiving the crash report.
      class DeleteUserCrashReportsResponse
        include Google::Apis::Core::Hashable
      
        # Target time to complete the delete crash reports operation.
        # Corresponds to the JSON property `targetCompleteTime`
        # @return [String]
        attr_accessor :target_complete_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_complete_time = args[:target_complete_time] if args.key?(:target_complete_time)
        end
      end
      
      # Mobile device metadata.
      class Device
        include Google::Apis::Core::Hashable
      
        # Device processor architecture.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # An invariant name of the manufacturer that submitted this product in its most
        # recognizable public form, e.g. "Google".
        # Corresponds to the JSON property `companyName`
        # @return [String]
        attr_accessor :company_name
      
        # Full device name, suitable for passing to DeviceFilter. Format: "manufacturer (
        # model)".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # See FormFactor message.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # Device brand name which is consistent with android.os.Build.BRAND.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Marketing name, most recognizable public form, e.g. "Pixel 6".
        # Corresponds to the JSON property `marketingName`
        # @return [String]
        attr_accessor :marketing_name
      
        # The model name which is consistent with android.os.Build.MODEL, e.g. ("SPH-
        # L710", "GT-I9300").
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @company_name = args[:company_name] if args.key?(:company_name)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @marketing_name = args[:marketing_name] if args.key?(:marketing_name)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A non-fatal error and its stacktrace, only from Apple apps.
      class Error
        include Google::Apis::Core::Hashable
      
        # True when the Crashlytics analysis has determined that the stacktrace in this
        # error is where the fault occurred.
        # Corresponds to the JSON property `blamed`
        # @return [Boolean]
        attr_accessor :blamed
        alias_method :blamed?, :blamed
      
        # Error code associated with the app's custom logged NSError.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # The frames in the error's stacktrace.
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Frame>]
        attr_accessor :frames
      
        # The queue on which the thread was running.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # The subtitle of the error.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title of the error.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blamed = args[:blamed] if args.key?(:blamed)
          @code = args[:code] if args.key?(:code)
          @frames = args[:frames] if args.key?(:frames)
          @queue = args[:queue] if args.key?(:queue)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The message describing a single Crashlytics event. Related to BigQuery export
      # schema, which can be found at [Export Crashlytics data to BigQuery](https://
      # firebase.google.com/docs/crashlytics/bigquery-export#dataset-schema-
      # crashlytics)
      class Event
        include Google::Apis::Core::Hashable
      
        # App orientation at the time of the crash (portrait or landscape).
        # Corresponds to the JSON property `appOrientation`
        # @return [String]
        attr_accessor :app_orientation
      
        # A frame in a stacktrace.
        # Corresponds to the JSON property `blameFrame`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Frame]
        attr_accessor :blame_frame
      
        # Analytics events recorded by the analytics SDK during the session.
        # Corresponds to the JSON property `breadcrumbs`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Breadcrumb>]
        attr_accessor :breadcrumbs
      
        # Web browser metadata.
        # Corresponds to the JSON property `browser`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Browser]
        attr_accessor :browser
      
        # Metadata provided by the app's build system, including version control
        # repository info.
        # Corresponds to the JSON property `buildStamp`
        # @return [String]
        attr_accessor :build_stamp
      
        # The bundle name for iOS apps or the package name of Android apps. Format: "com.
        # mycompany.myapp".
        # Corresponds to the JSON property `bundleOrPackage`
        # @return [String]
        attr_accessor :bundle_or_package
      
        # Crashlytics SDK version.
        # Corresponds to the JSON property `crashlyticsSdkVersion`
        # @return [String]
        attr_accessor :crashlytics_sdk_version
      
        # Custom keys set by the developer during the session.
        # Corresponds to the JSON property `customKeys`
        # @return [Hash<String,String>]
        attr_accessor :custom_keys
      
        # Mobile device metadata.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Device]
        attr_accessor :device
      
        # Device orientation at the time of the crash (portrait or landscape).
        # Corresponds to the JSON property `deviceOrientation`
        # @return [String]
        attr_accessor :device_orientation
      
        # Apple only. A non-fatal error captured by the iOS SDK and its stacktrace.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Error>]
        attr_accessor :errors
      
        # Output only. Immutable. The unique event identifier is assigned during
        # processing.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Device timestamp that the event was recorded.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Android and web only. Exceptions that occurred during this event. Nested
        # exceptions are presented in reverse chronological order, so that the last
        # record is the first exception thrown.
        # Corresponds to the JSON property `exceptions`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Exception>]
        attr_accessor :exceptions
      
        # Unique identifier for the device-app installation. This field is used to
        # compute the unique number of impacted users.
        # Corresponds to the JSON property `installationUuid`
        # @return [String]
        attr_accessor :installation_uuid
      
        # An issue describes a set of similar events that have been analyzed by
        # Crashlytics and grouped together. All events within an issue will be of the
        # same error_type: crash, non-fatal exception or ANR. All events within an issue
        # will contain similar stack traces in their blamed thread.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Issue]
        attr_accessor :issue
      
        # The subtitle of the issue in which the event was grouped. This is usually a
        # symbol or an exception message.
        # Corresponds to the JSON property `issueSubtitle`
        # @return [String]
        attr_accessor :issue_subtitle
      
        # The title of the issue in which the event was grouped. This is usually a
        # source file or method name.
        # Corresponds to the JSON property `issueTitle`
        # @return [String]
        attr_accessor :issue_title
      
        # A variant is a subgroup of an issue where all events have very similar stack
        # traces. Issues may contain one or more variants.
        # Corresponds to the JSON property `issueVariant`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant]
        attr_accessor :issue_variant
      
        # Log messages recorded by the developer during the session.
        # Corresponds to the JSON property `logs`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Log>]
        attr_accessor :logs
      
        # Mobile device memory usage.
        # Corresponds to the JSON property `memory`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Memory]
        attr_accessor :memory
      
        # Required. Output only. Immutable. Identifier. The name of the event resource.
        # Format: "projects/`project`/apps/`app_id`/events/`event`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Mobile device operating system metadata.
        # Corresponds to the JSON property `operatingSystem`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem]
        attr_accessor :operating_system
      
        # ANDROID, IOS, or WEB.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The state of the app process at the time of the event.
        # Corresponds to the JSON property `processState`
        # @return [String]
        attr_accessor :process_state
      
        # Server timestamp that the event was received by Crashlytics.
        # Corresponds to the JSON property `receivedTime`
        # @return [String]
        attr_accessor :received_time
      
        # Output only. Web only. The route path of the web application when the event
        # occurred, excluding query parameters and fragment.
        # Corresponds to the JSON property `routePath`
        # @return [String]
        attr_accessor :route_path
      
        # Unique identifier for the Firebase session.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # Mobile device disk/flash usage. Not reported for all devices.
        # Corresponds to the JSON property `storage`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Storage]
        attr_accessor :storage
      
        # Application threads present at the time the event was recorded. Each contains
        # a stacktrace. One thread will be blamed for the error.
        # Corresponds to the JSON property `threads`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Thread>]
        attr_accessor :threads
      
        # Developer-provided end user identifiers.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::User]
        attr_accessor :user
      
        # Application software version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_orientation = args[:app_orientation] if args.key?(:app_orientation)
          @blame_frame = args[:blame_frame] if args.key?(:blame_frame)
          @breadcrumbs = args[:breadcrumbs] if args.key?(:breadcrumbs)
          @browser = args[:browser] if args.key?(:browser)
          @build_stamp = args[:build_stamp] if args.key?(:build_stamp)
          @bundle_or_package = args[:bundle_or_package] if args.key?(:bundle_or_package)
          @crashlytics_sdk_version = args[:crashlytics_sdk_version] if args.key?(:crashlytics_sdk_version)
          @custom_keys = args[:custom_keys] if args.key?(:custom_keys)
          @device = args[:device] if args.key?(:device)
          @device_orientation = args[:device_orientation] if args.key?(:device_orientation)
          @errors = args[:errors] if args.key?(:errors)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @exceptions = args[:exceptions] if args.key?(:exceptions)
          @installation_uuid = args[:installation_uuid] if args.key?(:installation_uuid)
          @issue = args[:issue] if args.key?(:issue)
          @issue_subtitle = args[:issue_subtitle] if args.key?(:issue_subtitle)
          @issue_title = args[:issue_title] if args.key?(:issue_title)
          @issue_variant = args[:issue_variant] if args.key?(:issue_variant)
          @logs = args[:logs] if args.key?(:logs)
          @memory = args[:memory] if args.key?(:memory)
          @name = args[:name] if args.key?(:name)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @platform = args[:platform] if args.key?(:platform)
          @process_state = args[:process_state] if args.key?(:process_state)
          @received_time = args[:received_time] if args.key?(:received_time)
          @route_path = args[:route_path] if args.key?(:route_path)
          @session_id = args[:session_id] if args.key?(:session_id)
          @storage = args[:storage] if args.key?(:storage)
          @threads = args[:threads] if args.key?(:threads)
          @user = args[:user] if args.key?(:user)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A Java or Javascript exception and its stacktrace. Only from Android or web
      # apps.
      class Exception
        include Google::Apis::Core::Hashable
      
        # True when the Crashlytics analysis has determined that this thread is where
        # the fault occurred.
        # Corresponds to the JSON property `blamed`
        # @return [Boolean]
        attr_accessor :blamed
        alias_method :blamed?, :blamed
      
        # A message associated with the exception.
        # Corresponds to the JSON property `exceptionMessage`
        # @return [String]
        attr_accessor :exception_message
      
        # The frames in the exception's stacktrace.
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Frame>]
        attr_accessor :frames
      
        # True for all but the last-thrown exception (i.e. the first record).
        # Corresponds to the JSON property `nested`
        # @return [Boolean]
        attr_accessor :nested
        alias_method :nested?, :nested
      
        # The subtitle of the exception.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title of the exception.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The exception type e.g. java.lang.IllegalStateException.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blamed = args[:blamed] if args.key?(:blamed)
          @exception_message = args[:exception_message] if args.key?(:exception_message)
          @frames = args[:frames] if args.key?(:frames)
          @nested = args[:nested] if args.key?(:nested)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Sessions recorded by the Firebase App Quality Sessions SDK.
      class FirebaseSessionEvent
        include Google::Apis::Core::Hashable
      
        # Mobile device metadata.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Device]
        attr_accessor :device
      
        # The start timestamp for the session event.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Session event type. The SDK only supports SESSION_START events at this time.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Uniquely identifies a device with Firebase apps installed.
        # Corresponds to the JSON property `firebaseInstallationId`
        # @return [String]
        attr_accessor :firebase_installation_id
      
        # The identifier of the first session since the last cold start. This id and the
        # session_id will be the same for app launches.
        # Corresponds to the JSON property `firstSessionId`
        # @return [String]
        attr_accessor :first_session_id
      
        # Mobile device operating system metadata.
        # Corresponds to the JSON property `operatingSystem`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem]
        attr_accessor :operating_system
      
        # Unique identifier for the Firebase session.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # Indicates the number of sessions since the last cold start.
        # Corresponds to the JSON property `sessionIndex`
        # @return [Fixnum]
        attr_accessor :session_index
      
        # Application software version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @firebase_installation_id = args[:firebase_installation_id] if args.key?(:firebase_installation_id)
          @first_session_id = args[:first_session_id] if args.key?(:first_session_id)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @session_id = args[:session_id] if args.key?(:session_id)
          @session_index = args[:session_index] if args.key?(:session_index)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A frame in a stacktrace.
      class Frame
        include Google::Apis::Core::Hashable
      
        # The address in the binary image which contains the code. Present for native
        # frames.
        # Corresponds to the JSON property `address`
        # @return [Fixnum]
        attr_accessor :address
      
        # True when the Crashlytics analysis has determined that this frame is likely to
        # be the cause of the error.
        # Corresponds to the JSON property `blamed`
        # @return [Boolean]
        attr_accessor :blamed
        alias_method :blamed?, :blamed
      
        # The column on the line.
        # Corresponds to the JSON property `column`
        # @return [Fixnum]
        attr_accessor :column
      
        # The name of the source file in which the frame is found.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # The display name of the library that includes the frame.
        # Corresponds to the JSON property `library`
        # @return [String]
        attr_accessor :library
      
        # The line number in the file of the frame.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        # The byte offset into the binary image that contains the code. Present for
        # native frames.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # One of DEVELOPER, VENDOR, RUNTIME, PLATFORM, or SYSTEM.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The frame symbol after it has been deobfuscated or symbolicated. The raw
        # symbol from the device if it could not be hydrated.
        # Corresponds to the JSON property `symbol`
        # @return [String]
        attr_accessor :symbol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @blamed = args[:blamed] if args.key?(:blamed)
          @column = args[:column] if args.key?(:column)
          @file = args[:file] if args.key?(:file)
          @library = args[:library] if args.key?(:library)
          @line = args[:line] if args.key?(:line)
          @offset = args[:offset] if args.key?(:offset)
          @owner = args[:owner] if args.key?(:owner)
          @symbol = args[:symbol] if args.key?(:symbol)
        end
      end
      
      # A set of computed metric values for a time interval
      class IntervalMetrics
        include Google::Apis::Core::Hashable
      
        # The end of the interval covered by the computation.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The total count of events in the interval.
        # Corresponds to the JSON property `eventsCount`
        # @return [Fixnum]
        attr_accessor :events_count
      
        # The number of distinct users in the set of events.
        # Corresponds to the JSON property `impactedUsersCount`
        # @return [Fixnum]
        attr_accessor :impacted_users_count
      
        # The number of distinct sessions in the set of events.
        # Corresponds to the JSON property `sessionsCount`
        # @return [Fixnum]
        attr_accessor :sessions_count
      
        # The start of the interval covered by the computation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @events_count = args[:events_count] if args.key?(:events_count)
          @impacted_users_count = args[:impacted_users_count] if args.key?(:impacted_users_count)
          @sessions_count = args[:sessions_count] if args.key?(:sessions_count)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # An issue describes a set of similar events that have been analyzed by
      # Crashlytics and grouped together. All events within an issue will be of the
      # same error_type: crash, non-fatal exception or ANR. All events within an issue
      # will contain similar stack traces in their blamed thread.
      class Issue
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. Indicates whether this issue is a crash, non-fatal
        # exception, or ANR.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # Output only. Immutable. The first time this issue was seen.
        # Corresponds to the JSON property `firstSeenTime`
        # @return [String]
        attr_accessor :first_seen_time
      
        # Output only. Immutable. The first app display_version in which this issue was
        # seen, populated for mobile issues only.
        # Corresponds to the JSON property `firstSeenVersion`
        # @return [String]
        attr_accessor :first_seen_version
      
        # Output only. Immutable. Unique identifier for the issue.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The most recent time this issue was seen.
        # Corresponds to the JSON property `lastSeenTime`
        # @return [String]
        attr_accessor :last_seen_time
      
        # Output only. The most recent app display_version in which this issue was seen,
        # populated for mobile issues only.
        # Corresponds to the JSON property `lastSeenVersion`
        # @return [String]
        attr_accessor :last_seen_version
      
        # Required. Output only. Immutable. Identifier. The name of the issue resource.
        # Format: "projects/`project`/apps/`app`/issues/`issue`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of notes attached to an issue.
        # Corresponds to the JSON property `notesCount`
        # @return [Fixnum]
        attr_accessor :notes_count
      
        # Output only. The resource name for a sample event in this issue.
        # Corresponds to the JSON property `sampleEvent`
        # @return [String]
        attr_accessor :sample_event
      
        # Output only. Immutable. Distinctive characteristics assigned by the
        # Crashlytics analyzer.
        # Corresponds to the JSON property `signals`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::IssueSignals>]
        attr_accessor :signals
      
        # Output only. Indicates whether this issue is open, closed or muted. For
        # details on how issue states change without user actions, see [Regressed Issues]
        # (https://firebase.google.com/docs/crashlytics/troubleshooting?platform=ios#
        # regressed-issues).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the issue state was last changed.
        # Corresponds to the JSON property `stateUpdateTime`
        # @return [String]
        attr_accessor :state_update_time
      
        # Output only. Immutable. Caption subtitle. This is usually a symbol or an
        # exception message.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Output only. Immutable. Caption title. This is usually a source file or method
        # name.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Provides a link to the Issue on the Firebase console. When this
        # Issue is obtained as part of a Report, then the link will be configured with
        # the same time interval and filters as the request.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Output only. Immutable. The top 12 variants (subgroups) within the issue.
        # Variants group events within an issue that are very similar. A single result
        # implies that the variant is the same as the parent issue. This field will be
        # empty when multiple issues are requested. Request a single issue to list
        # variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_type = args[:error_type] if args.key?(:error_type)
          @first_seen_time = args[:first_seen_time] if args.key?(:first_seen_time)
          @first_seen_version = args[:first_seen_version] if args.key?(:first_seen_version)
          @id = args[:id] if args.key?(:id)
          @last_seen_time = args[:last_seen_time] if args.key?(:last_seen_time)
          @last_seen_version = args[:last_seen_version] if args.key?(:last_seen_version)
          @name = args[:name] if args.key?(:name)
          @notes_count = args[:notes_count] if args.key?(:notes_count)
          @sample_event = args[:sample_event] if args.key?(:sample_event)
          @signals = args[:signals] if args.key?(:signals)
          @state = args[:state] if args.key?(:state)
          @state_update_time = args[:state_update_time] if args.key?(:state_update_time)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # Distinctive characteristics assigned by the Crashlytics analyzer.
      class IssueSignals
        include Google::Apis::Core::Hashable
      
        # Output only. Supporting detail information.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The signal name.
        # Corresponds to the JSON property `signal`
        # @return [String]
        attr_accessor :signal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @signal = args[:signal] if args.key?(:signal)
        end
      end
      
      # A variant is a subgroup of an issue where all events have very similar stack
      # traces. Issues may contain one or more variants.
      class IssueVariant
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. Distinct identifier for the variant.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The resource name for a sample event in this variant.
        # Corresponds to the JSON property `sampleEvent`
        # @return [String]
        attr_accessor :sample_event
      
        # Output only. Provides a link to the variant on the Firebase console. When this
        # variant is obtained as part of a Report, then the link will be configured with
        # the same time interval and filters as the request.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @sample_event = args[:sample_event] if args.key?(:sample_event)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response message for the ListEvents method.
      class ListEventsResponse
        include Google::Apis::Core::Hashable
      
        # Returns one element per event, in descending order the by event timestamp.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Event>]
        attr_accessor :events
      
        # A pagination token to retrieve the next page of events. The next page will
        # have earlier or later events depending on the request's ordering. If this
        # field is not present, there are no subsequent events.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @events = args[:events] if args.key?(:events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListNotes method.
      class ListNotesResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token to retrieve the next page of notes. If this field is not
        # present, there are no subsequent notes.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Returns notes ordered descending by the timestamp.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # Response method for the ListReports method. The response will always include
      # all of the available reports.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # The report objects returned will contain their names and usage instructions,
        # but include no results. Use the `GetReport` method to run the report and
        # obtain the paged results.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Report>]
        attr_accessor :reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reports = args[:reports] if args.key?(:reports)
        end
      end
      
      # Developer-provided log lines recorded during the session.
      class Log
        include Google::Apis::Core::Hashable
      
        # Device timestamp when the line was logged.
        # Corresponds to the JSON property `logTime`
        # @return [String]
        attr_accessor :log_time
      
        # Log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_time = args[:log_time] if args.key?(:log_time)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Mobile device memory usage.
      class Memory
        include Google::Apis::Core::Hashable
      
        # Bytes free.
        # Corresponds to the JSON property `free`
        # @return [Fixnum]
        attr_accessor :free
      
        # Bytes in use.
        # Corresponds to the JSON property `used`
        # @return [Fixnum]
        attr_accessor :used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free = args[:free] if args.key?(:free)
          @used = args[:used] if args.key?(:used)
        end
      end
      
      # Developer notes for an issue.
      class Note
        include Google::Apis::Core::Hashable
      
        # Output only. The email of the author of the note.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # Immutable. The body of the note.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Output only. Time when the note was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Identifier. Format: "projects/`project`/apps/app/issues/`issue`/
        # notes/`note`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Mobile device operating system metadata.
      class OperatingSystem
        include Google::Apis::Core::Hashable
      
        # The device category (mobile, tablet, desktop).
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Name and version number. Formatted to be suitable for passing to
        # OperatingSystemFilter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Operating system display version number.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # Indicates if the OS has been modified or "jailbroken".
        # Corresponds to the JSON property `modificationState`
        # @return [String]
        attr_accessor :modification_state
      
        # Operating system name.
        # Corresponds to the JSON property `os`
        # @return [String]
        attr_accessor :os
      
        # The OS type on Apple platforms (iOS, iPadOS, etc.).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_version = args[:display_version] if args.key?(:display_version)
          @modification_state = args[:modification_state] if args.key?(:modification_state)
          @os = args[:os] if args.key?(:os)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Describes a release track in the Play Developer Console.
      class PlayTrack
        include Google::Apis::Core::Hashable
      
        # User-generated or auto-generated name of the track. PROD and INTERNAL track
        # types always have auto-generated names, e.g. "prod" and "internal"
        # respectively. Tracks of type EARLY_ACCESS always have a user-generated name.
        # Other track types do not have any guarantees, might have user-generated or
        # auto-generated names.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The type of track (prod, internal, etc...).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response message for the GetReport method. A report consists of the results of
      # a query over an application's events. The events may be filtered by various
      # criteria defined in the filters proto. The result will consist of a number of
      # paginated groups, of a type relevant to the report such as issues or device
      # models.
      class Report
        include Google::Apis::Core::Hashable
      
        # Output only. The displayable title of the report.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Aggregate event statistics in the report will be grouped by a dimension, such
        # as by issue or by version. The response contains one element per group, and
        # all ReportGroup messages will have the same parent field.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup>]
        attr_accessor :groups
      
        # The name of the report. Format: "projects/`project`/apps/`app_id`/reports/`
        # report`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A page token used to retrieve additional report groups. If this
        # field is not present, there are no subsequent pages available to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The total number of groups retrievable by the request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # Usage instructions for the report with a description of the result metrics.
        # This field contains a description of the underlying query and describes the
        # expected response data with any known caveats. This string can be displayed in
        # the UI of any integration that offers comprehensive access to all Crashlytics
        # reports.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @groups = args[:groups] if args.key?(:groups)
          @name = args[:name] if args.key?(:name)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # A group of results in an EventReport. In any report, the group_parent field is
      # strictly the same type for all of the groups in any collection.
      class ReportGroup
        include Google::Apis::Core::Hashable
      
        # Web browser metadata.
        # Corresponds to the JSON property `browser`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Browser]
        attr_accessor :browser
      
        # Mobile device metadata.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Device]
        attr_accessor :device
      
        # An issue describes a set of similar events that have been analyzed by
        # Crashlytics and grouped together. All events within an issue will be of the
        # same error_type: crash, non-fatal exception or ANR. All events within an issue
        # will contain similar stack traces in their blamed thread.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Issue]
        attr_accessor :issue
      
        # Scalar metrics will contain a single object covering the entire interval,
        # while time-dimensioned graphs will contain one per time grain.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::IntervalMetrics>]
        attr_accessor :metrics
      
        # Mobile device operating system metadata.
        # Corresponds to the JSON property `operatingSystem`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::OperatingSystem]
        attr_accessor :operating_system
      
        # When applicable, this field contains additional nested groupings. For example,
        # events can be grouped by operating system and by operating system version.
        # Corresponds to the JSON property `subgroups`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::ReportGroup>]
        attr_accessor :subgroups
      
        # A variant is a subgroup of an issue where all events have very similar stack
        # traces. Issues may contain one or more variants.
        # Corresponds to the JSON property `variant`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::IssueVariant]
        attr_accessor :variant
      
        # Application software version.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Version]
        attr_accessor :version
      
        # Represents a grouping for metrics specific to web applications.
        # Corresponds to the JSON property `webMetricsGroup`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::WebMetricsGroup]
        attr_accessor :web_metrics_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browser = args[:browser] if args.key?(:browser)
          @device = args[:device] if args.key?(:device)
          @issue = args[:issue] if args.key?(:issue)
          @metrics = args[:metrics] if args.key?(:metrics)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @subgroups = args[:subgroups] if args.key?(:subgroups)
          @variant = args[:variant] if args.key?(:variant)
          @version = args[:version] if args.key?(:version)
          @web_metrics_group = args[:web_metrics_group] if args.key?(:web_metrics_group)
        end
      end
      
      # Mobile device disk/flash usage. Not reported for all devices.
      class Storage
        include Google::Apis::Core::Hashable
      
        # Bytes free.
        # Corresponds to the JSON property `free`
        # @return [Fixnum]
        attr_accessor :free
      
        # Bytes used.
        # Corresponds to the JSON property `used`
        # @return [Fixnum]
        attr_accessor :used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free = args[:free] if args.key?(:free)
          @used = args[:used] if args.key?(:used)
        end
      end
      
      # An application thread.
      class Thread
        include Google::Apis::Core::Hashable
      
        # True when the Crashlytics analysis has determined that the stacktrace in this
        # thread is where the fault occurred.
        # Corresponds to the JSON property `blamed`
        # @return [Boolean]
        attr_accessor :blamed
        alias_method :blamed?, :blamed
      
        # The address of the signal that caused the application to crash. Only present
        # on crashed native threads.
        # Corresponds to the JSON property `crashAddress`
        # @return [Fixnum]
        attr_accessor :crash_address
      
        # True when the thread has crashed.
        # Corresponds to the JSON property `crashed`
        # @return [Boolean]
        attr_accessor :crashed
        alias_method :crashed?, :crashed
      
        # The frames in the thread's stacktrace.
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::Frame>]
        attr_accessor :frames
      
        # The name of the thread.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The queue on which the thread was running.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # The name of the signal that caused the app to crash. Only present on crashed
        # native threads.
        # Corresponds to the JSON property `signal`
        # @return [String]
        attr_accessor :signal
      
        # The code of the signal that caused the app to crash. Only present on crashed
        # native threads.
        # Corresponds to the JSON property `signalCode`
        # @return [String]
        attr_accessor :signal_code
      
        # The subtitle of the thread.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The system id of the thread, only available for ANR threads.
        # Corresponds to the JSON property `sysThreadId`
        # @return [Fixnum]
        attr_accessor :sys_thread_id
      
        # The id of the thread, only available for ANR threads.
        # Corresponds to the JSON property `threadId`
        # @return [Fixnum]
        attr_accessor :thread_id
      
        # Output only. The state of the thread at the time the ANR occurred.
        # Corresponds to the JSON property `threadState`
        # @return [String]
        attr_accessor :thread_state
      
        # The title of the thread.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blamed = args[:blamed] if args.key?(:blamed)
          @crash_address = args[:crash_address] if args.key?(:crash_address)
          @crashed = args[:crashed] if args.key?(:crashed)
          @frames = args[:frames] if args.key?(:frames)
          @name = args[:name] if args.key?(:name)
          @queue = args[:queue] if args.key?(:queue)
          @signal = args[:signal] if args.key?(:signal)
          @signal_code = args[:signal_code] if args.key?(:signal_code)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @sys_thread_id = args[:sys_thread_id] if args.key?(:sys_thread_id)
          @thread_id = args[:thread_id] if args.key?(:thread_id)
          @thread_state = args[:thread_state] if args.key?(:thread_state)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Request message for the UpdateIssue method.
      class UpdateIssueRequest
        include Google::Apis::Core::Hashable
      
        # An issue describes a set of similar events that have been analyzed by
        # Crashlytics and grouped together. All events within an issue will be of the
        # same error_type: crash, non-fatal exception or ANR. All events within an issue
        # will contain similar stack traces in their blamed thread.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::FirebasecrashlyticsV1alpha::Issue]
        attr_accessor :issue
      
        # Optional. The list of Issue fields to update. Currently only "state" is
        # mutable.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue = args[:issue] if args.key?(:issue)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Developer-provided end user identifiers.
      class User
        include Google::Apis::Core::Hashable
      
        # User id if provided by the app developer.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Application software version.
      class Version
        include Google::Apis::Core::Hashable
      
        # Mobile only. One display_version can have many build_version. On Android,
        # strictly the same as "version code". On iOS, strictly the same as "build
        # number" or CFBundleVersion.
        # Corresponds to the JSON property `buildVersion`
        # @return [String]
        attr_accessor :build_version
      
        # Compound readable string containing both display and build versions. Format: "
        # display_version (build_version)" e.g. "1.2.3 (456)". This string can be used
        # for filtering with the VersionFilter.display_name field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Readable version string, e.g. "1.2.3". On Android, strictly the same as "
        # version name". On iOS, strictly the same as "version number" or
        # CFBundleShortVersionString.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # Indicates releases which have artifacts that are currently available in the
        # Play Store to the target audience of the track. Versions may be available in
        # multiple tracks.
        # Corresponds to the JSON property `tracks`
        # @return [Array<Google::Apis::FirebasecrashlyticsV1alpha::PlayTrack>]
        attr_accessor :tracks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_version = args[:build_version] if args.key?(:build_version)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_version = args[:display_version] if args.key?(:display_version)
          @tracks = args[:tracks] if args.key?(:tracks)
        end
      end
      
      # Represents a grouping for metrics specific to web applications.
      class WebMetricsGroup
        include Google::Apis::Core::Hashable
      
        # The id of the web metrics group
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
    end
  end
end
