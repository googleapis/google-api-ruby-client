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
    module ToolresultsV1beta3
      
      # Additional details for an ANR crash.
      class Anr
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1beta3::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # Android app information.
      class AndroidAppInfo
        include Google::Apis::Core::Hashable
      
        # The name of the app. Optional
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The package name of the app. Required.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The internal version code of the app. Optional.
        # Corresponds to the JSON property `versionCode`
        # @return [String]
        attr_accessor :version_code
      
        # The version name of the app. Optional.
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
          @version_code = args[:version_code] if args.key?(:version_code)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # A test of an Android application that can control an Android component
      # independently of its normal lifecycle. See for more information on types of
      # Android tests.
      class AndroidInstrumentationTest
        include Google::Apis::Core::Hashable
      
        # The java package for the test to be executed. Required
        # Corresponds to the JSON property `testPackageId`
        # @return [String]
        attr_accessor :test_package_id
      
        # The InstrumentationTestRunner class. Required
        # Corresponds to the JSON property `testRunnerClass`
        # @return [String]
        attr_accessor :test_runner_class
      
        # Each target must be fully qualified with the package name or class name, in
        # one of these formats: - "package package_name" - "class package_name.
        # class_name" - "class package_name.class_name#method_name" If empty, all
        # targets in the module will be run.
        # Corresponds to the JSON property `testTargets`
        # @return [Array<String>]
        attr_accessor :test_targets
      
        # The flag indicates whether Android Test Orchestrator will be used to run test
        # or not.
        # Corresponds to the JSON property `useOrchestrator`
        # @return [Boolean]
        attr_accessor :use_orchestrator
        alias_method :use_orchestrator?, :use_orchestrator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_package_id = args[:test_package_id] if args.key?(:test_package_id)
          @test_runner_class = args[:test_runner_class] if args.key?(:test_runner_class)
          @test_targets = args[:test_targets] if args.key?(:test_targets)
          @use_orchestrator = args[:use_orchestrator] if args.key?(:use_orchestrator)
        end
      end
      
      # A test of an android application that explores the application on a virtual or
      # physical Android device, finding culprits and crashes as it goes.
      class AndroidRoboTest
        include Google::Apis::Core::Hashable
      
        # The initial activity that should be used to start the app. Optional
        # Corresponds to the JSON property `appInitialActivity`
        # @return [String]
        attr_accessor :app_initial_activity
      
        # The java package for the bootstrap. Optional
        # Corresponds to the JSON property `bootstrapPackageId`
        # @return [String]
        attr_accessor :bootstrap_package_id
      
        # The runner class for the bootstrap. Optional
        # Corresponds to the JSON property `bootstrapRunnerClass`
        # @return [String]
        attr_accessor :bootstrap_runner_class
      
        # The max depth of the traversal stack Robo can explore. Optional
        # Corresponds to the JSON property `maxDepth`
        # @return [Fixnum]
        attr_accessor :max_depth
      
        # The max number of steps/actions Robo can execute. Default is no limit (0).
        # Optional
        # Corresponds to the JSON property `maxSteps`
        # @return [Fixnum]
        attr_accessor :max_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_initial_activity = args[:app_initial_activity] if args.key?(:app_initial_activity)
          @bootstrap_package_id = args[:bootstrap_package_id] if args.key?(:bootstrap_package_id)
          @bootstrap_runner_class = args[:bootstrap_runner_class] if args.key?(:bootstrap_runner_class)
          @max_depth = args[:max_depth] if args.key?(:max_depth)
          @max_steps = args[:max_steps] if args.key?(:max_steps)
        end
      end
      
      # An Android mobile test specification.
      class AndroidTest
        include Google::Apis::Core::Hashable
      
        # Android app information.
        # Corresponds to the JSON property `androidAppInfo`
        # @return [Google::Apis::ToolresultsV1beta3::AndroidAppInfo]
        attr_accessor :android_app_info
      
        # A test of an Android application that can control an Android component
        # independently of its normal lifecycle. See for more information on types of
        # Android tests.
        # Corresponds to the JSON property `androidInstrumentationTest`
        # @return [Google::Apis::ToolresultsV1beta3::AndroidInstrumentationTest]
        attr_accessor :android_instrumentation_test
      
        # A test of an android application that explores the application on a virtual or
        # physical Android device, finding culprits and crashes as it goes.
        # Corresponds to the JSON property `androidRoboTest`
        # @return [Google::Apis::ToolresultsV1beta3::AndroidRoboTest]
        attr_accessor :android_robo_test
      
        # Test Loops are tests that can be launched by the app itself, determining when
        # to run by listening for an intent.
        # Corresponds to the JSON property `androidTestLoop`
        # @return [Google::Apis::ToolresultsV1beta3::AndroidTestLoop]
        attr_accessor :android_test_loop
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `testTimeout`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :test_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_info = args[:android_app_info] if args.key?(:android_app_info)
          @android_instrumentation_test = args[:android_instrumentation_test] if args.key?(:android_instrumentation_test)
          @android_robo_test = args[:android_robo_test] if args.key?(:android_robo_test)
          @android_test_loop = args[:android_test_loop] if args.key?(:android_test_loop)
          @test_timeout = args[:test_timeout] if args.key?(:test_timeout)
        end
      end
      
      # Test Loops are tests that can be launched by the app itself, determining when
      # to run by listening for an intent.
      class AndroidTestLoop
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # `Any` contains an arbitrary serialized protocol buffer message along with a
      # URL that describes the type of the serialized message. Protobuf library
      # provides support to pack/unpack Any values in the form of utility functions or
      # additional generated methods of the Any type. Example 1: Pack and unpack a
      # message in C++. Foo foo = ...; Any any; any.PackFrom(foo); ... if (any.
      # UnpackTo(&foo)) ` ... ` Example 2: Pack and unpack a message in Java. Foo foo =
      # ...; Any any = Any.pack(foo); ... if (any.is(Foo.class)) ` foo = any.unpack(
      # Foo.class); ` Example 3: Pack and unpack a message in Python. foo = Foo(...)
      # any = Any() any.Pack(foo) ... if any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ...
      # Example 4: Pack and unpack a message in Go foo := &pb.Foo`...` any, err :=
      # ptypes.MarshalAny(foo) ... foo := &pb.Foo`` if err := ptypes.UnmarshalAny(any,
      # foo); err != nil ` ... ` The pack methods provided by protobuf library will by
      # default use 'type.googleapis.com/full.type.name' as the type URL and the
      # unpack methods only use the fully qualified type name after the last '/' in
      # the type URL, for example "foo.bar.com/x/y.z" will yield type name "y.z". #
      # JSON The JSON representation of an `Any` value uses the regular representation
      # of the deserialized, embedded message, with an additional field `@type` which
      # contains the type URL. Example: package google.profile; message Person `
      # string first_name = 1; string last_name = 2; ` ` "@type": "type.googleapis.com/
      # google.profile.Person", "firstName": , "lastName": ` If the embedded message
      # type is well-known and has a custom JSON representation, that representation
      # will be embedded adding a field `value` which holds the custom JSON in
      # addition to the `@type` field. Example (for message google.protobuf.Duration):
      # ` "@type": "type.googleapis.com/google.protobuf.Duration", "value": "1.212s" `
      class Any
        include Google::Apis::Core::Hashable
      
        # A URL/resource name that uniquely identifies the type of the serialized
        # protocol buffer message. This string must contain at least one "/" character.
        # The last segment of the URL's path must represent the fully qualified name of
        # the type (as in `path/google.protobuf.Duration`). The name should be in a
        # canonical form (e.g., leading "." is not accepted). In practice, teams usually
        # precompile into the binary all types that they expect it to use in the context
        # of Any. However, for URLs which use the scheme `http`, `https`, or no scheme,
        # one can optionally set up a type server that maps type URLs to message
        # definitions as follows: * If no scheme is provided, `https` is assumed. * An
        # HTTP GET on the URL must yield a google.protobuf.Type value in binary format,
        # or produce an error. * Applications are allowed to cache lookup results based
        # on the URL, or have them precompiled into a binary to avoid any lookup.
        # Therefore, binary compatibility needs to be preserved on changes to types. (
        # Use versioned type names to manage breaking changes.) Note: this functionality
        # is not currently available in the official protobuf release, and it is not
        # used for type URLs beginning with type.googleapis.com. Schemes other than `
        # http`, `https` (or the empty scheme) might be used with implementation
        # specific semantics.
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        # Must be a valid serialized protocol buffer of the above specified type.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type_url = args[:type_url] if args.key?(:type_url)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class AppStartTime
        include Google::Apis::Core::Hashable
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `fullyDrawnTime`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :fully_drawn_time
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `initialDisplayTime`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :initial_display_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_drawn_time = args[:fully_drawn_time] if args.key?(:fully_drawn_time)
          @initial_display_time = args[:initial_display_time] if args.key?(:initial_display_time)
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
      
      # Encapsulates the metadata for basic sample series represented by a line chart
      class BasicPerfSampleSeries
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `perfMetricType`
        # @return [String]
        attr_accessor :perf_metric_type
      
        # 
        # Corresponds to the JSON property `perfUnit`
        # @return [String]
        attr_accessor :perf_unit
      
        # 
        # Corresponds to the JSON property `sampleSeriesLabel`
        # @return [String]
        attr_accessor :sample_series_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @perf_metric_type = args[:perf_metric_type] if args.key?(:perf_metric_type)
          @perf_unit = args[:perf_unit] if args.key?(:perf_unit)
          @sample_series_label = args[:sample_series_label] if args.key?(:sample_series_label)
        end
      end
      
      # The request must provide up to a maximum of 5000 samples to be created; a
      # larger sample size will cause an INVALID_ARGUMENT error
      class BatchCreatePerfSamplesRequest
        include Google::Apis::Core::Hashable
      
        # The set of PerfSamples to create should not include existing timestamps
        # Corresponds to the JSON property `perfSamples`
        # @return [Array<Google::Apis::ToolresultsV1beta3::PerfSample>]
        attr_accessor :perf_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @perf_samples = args[:perf_samples] if args.key?(:perf_samples)
        end
      end
      
      # 
      class BatchCreatePerfSamplesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `perfSamples`
        # @return [Array<Google::Apis::ToolresultsV1beta3::PerfSample>]
        attr_accessor :perf_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @perf_samples = args[:perf_samples] if args.key?(:perf_samples)
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
      
      # 
      class CpuInfo
        include Google::Apis::Core::Hashable
      
        # description of the device processor ie '1.8 GHz hexa core 64-bit ARMv8-A'
        # Corresponds to the JSON property `cpuProcessor`
        # @return [String]
        attr_accessor :cpu_processor
      
        # the CPU clock speed in GHz
        # Corresponds to the JSON property `cpuSpeedInGhz`
        # @return [Float]
        attr_accessor :cpu_speed_in_ghz
      
        # the number of CPU cores
        # Corresponds to the JSON property `numberOfCores`
        # @return [Fixnum]
        attr_accessor :number_of_cores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_processor = args[:cpu_processor] if args.key?(:cpu_processor)
          @cpu_speed_in_ghz = args[:cpu_speed_in_ghz] if args.key?(:cpu_speed_in_ghz)
          @number_of_cores = args[:number_of_cores] if args.key?(:number_of_cores)
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
      
      # A warning that device ran out of memory
      class DeviceOutOfMemory
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Duration represents a signed, fixed-length span of time represented as a
      # count of seconds and fractions of seconds at nanosecond resolution. It is
      # independent of any calendar and concepts like "day" or "month". It is related
      # to Timestamp in that the difference between two Timestamp values is a Duration
      # and it can be added or subtracted from a Timestamp. Range is approximately +-
      # 10,000 years.
      class Duration
        include Google::Apis::Core::Hashable
      
        # Signed fractions of a second at nanosecond resolution of the span of time.
        # Durations less than one second are represented with a 0 `seconds` field and a
        # positive or negative `nanos` field. For durations of one second or more, a non-
        # zero value for the `nanos` field must be of the same sign as the `seconds`
        # field. Must be from -999,999,999 to +999,999,999 inclusive.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Signed seconds of the span of time. Must be from -315,576,000,000 to +315,576,
        # 000,000 inclusive. Note: these bounds are computed from: 60 sec/min * 60 min/
        # hr * 24 hr/day * 365.25 days/year * 10000 years
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
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
      
      # An Environment represents the set of test runs (Steps) from the parent
      # Execution that are configured with the same set of dimensions (Model, Version,
      # Locale, and Orientation). Multiple such runs occur particularly because of
      # features like sharding (splitting up a test suite to run in parallel across
      # devices) and reruns (running a test multiple times to check for different
      # outcomes).
      class Environment
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `completionTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :completion_time
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `creationTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :creation_time
      
        # Dimension values describing the environment. Dimension values always consist
        # of "Model", "Version", "Locale", and "Orientation". - In response: always set -
        # In create request: always set - In update request: never set
        # Corresponds to the JSON property `dimensionValue`
        # @return [Array<Google::Apis::ToolresultsV1beta3::EnvironmentDimensionValueEntry>]
        attr_accessor :dimension_value
      
        # A short human-readable name to display in the UI. Maximum of 100 characters.
        # For example: Nexus 5, API 27.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. An Environment id.
        # Corresponds to the JSON property `environmentId`
        # @return [String]
        attr_accessor :environment_id
      
        # Merged test result for environment. If the environment has only one step (no
        # reruns or shards), then the merged result is the same as the step result. If
        # the environment has multiple shards and/or reruns, then the results of shards
        # and reruns that belong to the same environment are merged into one environment
        # result.
        # Corresponds to the JSON property `environmentResult`
        # @return [Google::Apis::ToolresultsV1beta3::MergedResult]
        attr_accessor :environment_result
      
        # Output only. An Execution id.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Output only. A History id.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # Output only. A Project id.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The storage for test results.
        # Corresponds to the JSON property `resultsStorage`
        # @return [Google::Apis::ToolresultsV1beta3::ResultsStorage]
        attr_accessor :results_storage
      
        # Output only. Summaries of shards. Only one shard will present unless sharding
        # feature is enabled in TestExecutionService.
        # Corresponds to the JSON property `shardSummaries`
        # @return [Array<Google::Apis::ToolresultsV1beta3::ShardSummary>]
        attr_accessor :shard_summaries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @dimension_value = args[:dimension_value] if args.key?(:dimension_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment_id = args[:environment_id] if args.key?(:environment_id)
          @environment_result = args[:environment_result] if args.key?(:environment_result)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @history_id = args[:history_id] if args.key?(:history_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @results_storage = args[:results_storage] if args.key?(:results_storage)
          @shard_summaries = args[:shard_summaries] if args.key?(:shard_summaries)
        end
      end
      
      # 
      class EnvironmentDimensionValueEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An Execution represents a collection of Steps. For instance, it could
      # represent: - a mobile test executed across a range of device configurations -
      # a jenkins job with a build step followed by a test step The maximum size of an
      # execution message is 1 MiB. An Execution can be updated until its state is set
      # to COMPLETE at which point it becomes immutable.
      class Execution
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `completionTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :completion_time
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `creationTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :creation_time
      
        # The dimensions along which different steps in this execution may vary. This
        # must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if
        # this field is set in an update request. Returns INVALID_ARGUMENT if the same
        # name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if
        # the size of the list is over 100. - In response: present if set by create - In
        # create request: optional - In update request: never set
        # Corresponds to the JSON property `dimensionDefinitions`
        # @return [Array<Google::Apis::ToolresultsV1beta3::MatrixDimensionDefinition>]
        attr_accessor :dimension_definitions
      
        # A unique identifier within a History for this Execution. Returns
        # INVALID_ARGUMENT if this field is set or overwritten by the caller. - In
        # response always set - In create/update request: never set
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Interprets a result so that humans and machines can act on it.
        # Corresponds to the JSON property `outcome`
        # @return [Google::Apis::ToolresultsV1beta3::Outcome]
        attr_accessor :outcome
      
        # The details about how to run the execution.
        # Corresponds to the JSON property `specification`
        # @return [Google::Apis::ToolresultsV1beta3::Specification]
        attr_accessor :specification
      
        # The initial state is IN_PROGRESS. The only legal state transitions is from
        # IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid
        # transition is requested. The state can only be set to COMPLETE once. A
        # FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple
        # times. If the state is set to COMPLETE, all the in-progress steps within the
        # execution will be set as COMPLETE. If the outcome of the step is not set, the
        # outcome will be set to INCONCLUSIVE. - In response always set - In create/
        # update request: optional
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # TestExecution Matrix ID that the TestExecutionService uses. - In response:
        # present if set by create - In create: optional - In update: never set
        # Corresponds to the JSON property `testExecutionMatrixId`
        # @return [String]
        attr_accessor :test_execution_matrix_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @dimension_definitions = args[:dimension_definitions] if args.key?(:dimension_definitions)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @outcome = args[:outcome] if args.key?(:outcome)
          @specification = args[:specification] if args.key?(:specification)
          @state = args[:state] if args.key?(:state)
          @test_execution_matrix_id = args[:test_execution_matrix_id] if args.key?(:test_execution_matrix_id)
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
      
      # Details for an outcome with a FAILURE outcome summary.
      class FailureDetail
        include Google::Apis::Core::Hashable
      
        # If the failure was severe because the system (app) under test crashed.
        # Corresponds to the JSON property `crashed`
        # @return [Boolean]
        attr_accessor :crashed
        alias_method :crashed?, :crashed
      
        # If the device ran out of memory during a test, causing the test to crash.
        # Corresponds to the JSON property `deviceOutOfMemory`
        # @return [Boolean]
        attr_accessor :device_out_of_memory
        alias_method :device_out_of_memory?, :device_out_of_memory
      
        # If the Roboscript failed to complete successfully, e.g., because a Roboscript
        # action or assertion failed or a Roboscript action could not be matched during
        # the entire crawl.
        # Corresponds to the JSON property `failedRoboscript`
        # @return [Boolean]
        attr_accessor :failed_roboscript
        alias_method :failed_roboscript?, :failed_roboscript
      
        # If an app is not installed and thus no test can be run with the app. This
        # might be caused by trying to run a test on an unsupported platform.
        # Corresponds to the JSON property `notInstalled`
        # @return [Boolean]
        attr_accessor :not_installed
        alias_method :not_installed?, :not_installed
      
        # If a native process (including any other than the app) crashed.
        # Corresponds to the JSON property `otherNativeCrash`
        # @return [Boolean]
        attr_accessor :other_native_crash
        alias_method :other_native_crash?, :other_native_crash
      
        # If the test overran some time limit, and that is why it failed.
        # Corresponds to the JSON property `timedOut`
        # @return [Boolean]
        attr_accessor :timed_out
        alias_method :timed_out?, :timed_out
      
        # If the robo was unable to crawl the app; perhaps because the app did not start.
        # Corresponds to the JSON property `unableToCrawl`
        # @return [Boolean]
        attr_accessor :unable_to_crawl
        alias_method :unable_to_crawl?, :unable_to_crawl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crashed = args[:crashed] if args.key?(:crashed)
          @device_out_of_memory = args[:device_out_of_memory] if args.key?(:device_out_of_memory)
          @failed_roboscript = args[:failed_roboscript] if args.key?(:failed_roboscript)
          @not_installed = args[:not_installed] if args.key?(:not_installed)
          @other_native_crash = args[:other_native_crash] if args.key?(:other_native_crash)
          @timed_out = args[:timed_out] if args.key?(:timed_out)
          @unable_to_crawl = args[:unable_to_crawl] if args.key?(:unable_to_crawl)
        end
      end
      
      # Additional details for a fatal exception.
      class FatalException
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1beta3::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # A reference to a file.
      class FileReference
        include Google::Apis::Core::Hashable
      
        # The URI of a file stored in Google Cloud Storage. For example: http://storage.
        # googleapis.com/mybucket/path/to/test.xml or in gsutil format: gs://mybucket/
        # path/to/test.xml with version-specific info, gs://mybucket/path/to/test.xml#
        # 1360383693690000 An INVALID_ARGUMENT error will be returned if the URI format
        # is not supported. - In response: always set - In create/update request: always
        # set
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
        end
      end
      
      # Graphics statistics for the App. The information is collected from 'adb shell
      # dumpsys graphicsstats'. For more info see: https://developer.android.com/
      # training/testing/performance.html Statistics will only be present for API 23+.
      class GraphicsStats
        include Google::Apis::Core::Hashable
      
        # Histogram of frame render times. There should be 154 buckets ranging from [5ms,
        # 6ms) to [4950ms, infinity)
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::ToolresultsV1beta3::GraphicsStatsBucket>]
        attr_accessor :buckets
      
        # Total "high input latency" events.
        # Corresponds to the JSON property `highInputLatencyCount`
        # @return [Fixnum]
        attr_accessor :high_input_latency_count
      
        # Total frames with slow render time. Should be <= total_frames.
        # Corresponds to the JSON property `jankyFrames`
        # @return [Fixnum]
        attr_accessor :janky_frames
      
        # Total "missed vsync" events.
        # Corresponds to the JSON property `missedVsyncCount`
        # @return [Fixnum]
        attr_accessor :missed_vsync_count
      
        # 50th percentile frame render time in milliseconds.
        # Corresponds to the JSON property `p50Millis`
        # @return [Fixnum]
        attr_accessor :p50_millis
      
        # 90th percentile frame render time in milliseconds.
        # Corresponds to the JSON property `p90Millis`
        # @return [Fixnum]
        attr_accessor :p90_millis
      
        # 95th percentile frame render time in milliseconds.
        # Corresponds to the JSON property `p95Millis`
        # @return [Fixnum]
        attr_accessor :p95_millis
      
        # 99th percentile frame render time in milliseconds.
        # Corresponds to the JSON property `p99Millis`
        # @return [Fixnum]
        attr_accessor :p99_millis
      
        # Total "slow bitmap upload" events.
        # Corresponds to the JSON property `slowBitmapUploadCount`
        # @return [Fixnum]
        attr_accessor :slow_bitmap_upload_count
      
        # Total "slow draw" events.
        # Corresponds to the JSON property `slowDrawCount`
        # @return [Fixnum]
        attr_accessor :slow_draw_count
      
        # Total "slow UI thread" events.
        # Corresponds to the JSON property `slowUiThreadCount`
        # @return [Fixnum]
        attr_accessor :slow_ui_thread_count
      
        # Total frames rendered by package.
        # Corresponds to the JSON property `totalFrames`
        # @return [Fixnum]
        attr_accessor :total_frames
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @high_input_latency_count = args[:high_input_latency_count] if args.key?(:high_input_latency_count)
          @janky_frames = args[:janky_frames] if args.key?(:janky_frames)
          @missed_vsync_count = args[:missed_vsync_count] if args.key?(:missed_vsync_count)
          @p50_millis = args[:p50_millis] if args.key?(:p50_millis)
          @p90_millis = args[:p90_millis] if args.key?(:p90_millis)
          @p95_millis = args[:p95_millis] if args.key?(:p95_millis)
          @p99_millis = args[:p99_millis] if args.key?(:p99_millis)
          @slow_bitmap_upload_count = args[:slow_bitmap_upload_count] if args.key?(:slow_bitmap_upload_count)
          @slow_draw_count = args[:slow_draw_count] if args.key?(:slow_draw_count)
          @slow_ui_thread_count = args[:slow_ui_thread_count] if args.key?(:slow_ui_thread_count)
          @total_frames = args[:total_frames] if args.key?(:total_frames)
        end
      end
      
      # 
      class GraphicsStatsBucket
        include Google::Apis::Core::Hashable
      
        # Number of frames in the bucket.
        # Corresponds to the JSON property `frameCount`
        # @return [Fixnum]
        attr_accessor :frame_count
      
        # Lower bound of render time in milliseconds.
        # Corresponds to the JSON property `renderMillis`
        # @return [Fixnum]
        attr_accessor :render_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frame_count = args[:frame_count] if args.key?(:frame_count)
          @render_millis = args[:render_millis] if args.key?(:render_millis)
        end
      end
      
      # A History represents a sorted list of Executions ordered by the
      # start_timestamp_millis field (descending). It can be used to group all the
      # Executions of a continuous build. Note that the ordering only operates on one-
      # dimension. If a repository has multiple branches, it means that multiple
      # histories will need to be used in order to order Executions per branch.
      class History
        include Google::Apis::Core::Hashable
      
        # A short human-readable (plain text) name to display in the UI. Maximum of 100
        # characters. - In response: present if set during create. - In create request:
        # optional
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A unique identifier within a project for this History. Returns
        # INVALID_ARGUMENT if this field is set or overwritten by the caller. - In
        # response always set - In create request: never set
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # A name to uniquely identify a history within a project. Maximum of 200
        # characters. - In response always set - In create request: always set
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The platform of the test history. - In response: always set. Returns the
        # platform of the last execution if unknown.
        # Corresponds to the JSON property `testPlatform`
        # @return [String]
        attr_accessor :test_platform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @history_id = args[:history_id] if args.key?(:history_id)
          @name = args[:name] if args.key?(:name)
          @test_platform = args[:test_platform] if args.key?(:test_platform)
        end
      end
      
      # An image, with a link to the main image and a thumbnail.
      class Image
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ToolresultsV1beta3::Status]
        attr_accessor :error
      
        # A reference to a ToolExecution output file.
        # Corresponds to the JSON property `sourceImage`
        # @return [Google::Apis::ToolresultsV1beta3::ToolOutputReference]
        attr_accessor :source_image
      
        # The step to which the image is attached. Always set.
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        # A single thumbnail, with its size and format.
        # Corresponds to the JSON property `thumbnail`
        # @return [Google::Apis::ToolresultsV1beta3::Thumbnail]
        attr_accessor :thumbnail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @source_image = args[:source_image] if args.key?(:source_image)
          @step_id = args[:step_id] if args.key?(:step_id)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
        end
      end
      
      # Additional details of in-app purchases encountered during the crawl.
      class InAppPurchasesFound
        include Google::Apis::Core::Hashable
      
        # The total number of in-app purchases flows explored: how many times the robo
        # tries to buy a SKU.
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
      
      # Details for an outcome with an INCONCLUSIVE outcome summary.
      class InconclusiveDetail
        include Google::Apis::Core::Hashable
      
        # If the end user aborted the test execution before a pass or fail could be
        # determined. For example, the user pressed ctrl-c which sent a kill signal to
        # the test runner while the test was running.
        # Corresponds to the JSON property `abortedByUser`
        # @return [Boolean]
        attr_accessor :aborted_by_user
        alias_method :aborted_by_user?, :aborted_by_user
      
        # If results are being provided to the user in certain cases of infrastructure
        # failures
        # Corresponds to the JSON property `hasErrorLogs`
        # @return [Boolean]
        attr_accessor :has_error_logs
        alias_method :has_error_logs?, :has_error_logs
      
        # If the test runner could not determine success or failure because the test
        # depends on a component other than the system under test which failed. For
        # example, a mobile test requires provisioning a device where the test executes,
        # and that provisioning can fail.
        # Corresponds to the JSON property `infrastructureFailure`
        # @return [Boolean]
        attr_accessor :infrastructure_failure
        alias_method :infrastructure_failure?, :infrastructure_failure
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aborted_by_user = args[:aborted_by_user] if args.key?(:aborted_by_user)
          @has_error_logs = args[:has_error_logs] if args.key?(:has_error_logs)
          @infrastructure_failure = args[:infrastructure_failure] if args.key?(:infrastructure_failure)
        end
      end
      
      # Step Id and outcome of each individual step that was run as a group with other
      # steps with the same configuration.
      class IndividualOutcome
        include Google::Apis::Core::Hashable
      
        # Unique int given to each step. Ranges from 0(inclusive) to total number of
        # steps(exclusive). The primary step is 0.
        # Corresponds to the JSON property `multistepNumber`
        # @return [Fixnum]
        attr_accessor :multistep_number
      
        # 
        # Corresponds to the JSON property `outcomeSummary`
        # @return [String]
        attr_accessor :outcome_summary
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `runDuration`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :run_duration
      
        # 
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @multistep_number = args[:multistep_number] if args.key?(:multistep_number)
          @outcome_summary = args[:outcome_summary] if args.key?(:outcome_summary)
          @run_duration = args[:run_duration] if args.key?(:run_duration)
          @step_id = args[:step_id] if args.key?(:step_id)
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
        # @return [Google::Apis::ToolresultsV1beta3::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # iOS app information
      class IosAppInfo
        include Google::Apis::Core::Hashable
      
        # The name of the app. Required
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A Robo test for an iOS application.
      class IosRoboTest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A iOS mobile test specification
      class IosTest
        include Google::Apis::Core::Hashable
      
        # iOS app information
        # Corresponds to the JSON property `iosAppInfo`
        # @return [Google::Apis::ToolresultsV1beta3::IosAppInfo]
        attr_accessor :ios_app_info
      
        # A Robo test for an iOS application.
        # Corresponds to the JSON property `iosRoboTest`
        # @return [Google::Apis::ToolresultsV1beta3::IosRoboTest]
        attr_accessor :ios_robo_test
      
        # A game loop test of an iOS application.
        # Corresponds to the JSON property `iosTestLoop`
        # @return [Google::Apis::ToolresultsV1beta3::IosTestLoop]
        attr_accessor :ios_test_loop
      
        # A test of an iOS application that uses the XCTest framework.
        # Corresponds to the JSON property `iosXcTest`
        # @return [Google::Apis::ToolresultsV1beta3::IosXcTest]
        attr_accessor :ios_xc_test
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `testTimeout`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :test_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ios_app_info = args[:ios_app_info] if args.key?(:ios_app_info)
          @ios_robo_test = args[:ios_robo_test] if args.key?(:ios_robo_test)
          @ios_test_loop = args[:ios_test_loop] if args.key?(:ios_test_loop)
          @ios_xc_test = args[:ios_xc_test] if args.key?(:ios_xc_test)
          @test_timeout = args[:test_timeout] if args.key?(:test_timeout)
        end
      end
      
      # A game loop test of an iOS application.
      class IosTestLoop
        include Google::Apis::Core::Hashable
      
        # Bundle ID of the app.
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
        end
      end
      
      # A test of an iOS application that uses the XCTest framework.
      class IosXcTest
        include Google::Apis::Core::Hashable
      
        # Bundle ID of the app.
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Xcode version that the test was run with.
        # Corresponds to the JSON property `xcodeVersion`
        # @return [String]
        attr_accessor :xcode_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @xcode_version = args[:xcode_version] if args.key?(:xcode_version)
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
      
      # Response message for EnvironmentService.ListEnvironments.
      class ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # Environments. Always set.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ToolresultsV1beta3::Environment>]
        attr_accessor :environments
      
        # A Execution id Always set.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # A History id. Always set.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # A continuation token to resume the query at the next item. Will only be set if
        # there are more Environments to fetch.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A Project id. Always set.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @history_id = args[:history_id] if args.key?(:history_id)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # 
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # Executions. Always set.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::ToolresultsV1beta3::Execution>]
        attr_accessor :executions
      
        # A continuation token to resume the query at the next item. Will only be set if
        # there are more Executions to fetch.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for HistoryService.List
      class ListHistoriesResponse
        include Google::Apis::Core::Hashable
      
        # Histories.
        # Corresponds to the JSON property `histories`
        # @return [Array<Google::Apis::ToolresultsV1beta3::History>]
        attr_accessor :histories
      
        # A continuation token to resume the query at the next item. Will only be set if
        # there are more histories to fetch. Tokens are valid for up to one hour from
        # the time of the first list request. For instance, if you make a list request
        # at 1PM and use the token from this first request 10 minutes later, the token
        # from this second response will only be valid for 50 minutes.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histories = args[:histories] if args.key?(:histories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListPerfSampleSeriesResponse
        include Google::Apis::Core::Hashable
      
        # The resulting PerfSampleSeries sorted by id
        # Corresponds to the JSON property `perfSampleSeries`
        # @return [Array<Google::Apis::ToolresultsV1beta3::PerfSampleSeries>]
        attr_accessor :perf_sample_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @perf_sample_series = args[:perf_sample_series] if args.key?(:perf_sample_series)
        end
      end
      
      # 
      class ListPerfSamplesResponse
        include Google::Apis::Core::Hashable
      
        # Optional, returned if result size exceeds the page size specified in the
        # request (or the default page size, 500, if unspecified). It indicates the last
        # sample timestamp to be used as page_token in subsequent request
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `perfSamples`
        # @return [Array<Google::Apis::ToolresultsV1beta3::PerfSample>]
        attr_accessor :perf_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @perf_samples = args[:perf_samples] if args.key?(:perf_samples)
        end
      end
      
      # 
      class ListScreenshotClustersResponse
        include Google::Apis::Core::Hashable
      
        # The set of clusters associated with an execution Always set
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ToolresultsV1beta3::ScreenshotCluster>]
        attr_accessor :clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
        end
      end
      
      # Response message for AccessibilityService.ListStepAccessibilityClusters.
      class ListStepAccessibilityClustersResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of accessibility suggestions, grouped into clusters. Within the
        # sequence, clusters that belong to the same SuggestionCategory should be
        # adjacent. Within each category, clusters should be ordered by their
        # SuggestionPriority (ERRORs first). The categories should be ordered by their
        # highest priority cluster.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ToolresultsV1beta3::SuggestionClusterProto>]
        attr_accessor :clusters
      
        # A full resource name of the step. For example, projects/my-project/histories/
        # bh.1234567890abcdef/executions/ 1234567890123456789/steps/bs.1234567890abcdef
        # Always presents.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A response containing the thumbnails in a step.
      class ListStepThumbnailsResponse
        include Google::Apis::Core::Hashable
      
        # A continuation token to resume the query at the next item. If set, indicates
        # that there are more thumbnails to read, by calling list again with this value
        # in the page_token field.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of image data. Images are returned in a deterministic order; they are
        # ordered by these factors, in order of importance: * First, by their associated
        # test case. Images without a test case are considered greater than images with
        # one. * Second, by their creation time. Images without a creation time are
        # greater than images with one. * Third, by the order in which they were added
        # to the step (by calls to CreateStep or UpdateStep).
        # Corresponds to the JSON property `thumbnails`
        # @return [Array<Google::Apis::ToolresultsV1beta3::Image>]
        attr_accessor :thumbnails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @thumbnails = args[:thumbnails] if args.key?(:thumbnails)
        end
      end
      
      # Response message for StepService.List.
      class ListStepsResponse
        include Google::Apis::Core::Hashable
      
        # A continuation token to resume the query at the next item. If set, indicates
        # that there are more steps to read, by calling list again with this value in
        # the page_token field.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Steps.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::ToolresultsV1beta3::Step>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # Response message for StepService.ListTestCases.
      class ListTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of test cases.
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::ToolresultsV1beta3::TestCase>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # One dimension of the matrix of different runs of a step.
      class MatrixDimensionDefinition
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class MemoryInfo
        include Google::Apis::Core::Hashable
      
        # Maximum memory that can be allocated to the process in KiB
        # Corresponds to the JSON property `memoryCapInKibibyte`
        # @return [Fixnum]
        attr_accessor :memory_cap_in_kibibyte
      
        # Total memory available on the device in KiB
        # Corresponds to the JSON property `memoryTotalInKibibyte`
        # @return [Fixnum]
        attr_accessor :memory_total_in_kibibyte
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memory_cap_in_kibibyte = args[:memory_cap_in_kibibyte] if args.key?(:memory_cap_in_kibibyte)
          @memory_total_in_kibibyte = args[:memory_total_in_kibibyte] if args.key?(:memory_total_in_kibibyte)
        end
      end
      
      # Merged test result for environment. If the environment has only one step (no
      # reruns or shards), then the merged result is the same as the step result. If
      # the environment has multiple shards and/or reruns, then the results of shards
      # and reruns that belong to the same environment are merged into one environment
      # result.
      class MergedResult
        include Google::Apis::Core::Hashable
      
        # Interprets a result so that humans and machines can act on it.
        # Corresponds to the JSON property `outcome`
        # @return [Google::Apis::ToolresultsV1beta3::Outcome]
        attr_accessor :outcome
      
        # State of the resource
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The combined and rolled-up result of each test suite that was run as part of
        # this environment. Combining: When the test cases from a suite are run in
        # different steps (sharding), the results are added back together in one
        # overview. (e.g., if shard1 has 2 failures and shard2 has 1 failure than the
        # overview failure_count = 3). Rollup: When test cases from the same suite are
        # run multiple times (flaky), the results are combined (e.g., if testcase1.run1
        # fails, testcase1.run2 passes, and both testcase2.run1 and testcase2.run2 fail
        # then the overview flaky_count = 1 and failure_count = 1).
        # Corresponds to the JSON property `testSuiteOverviews`
        # @return [Array<Google::Apis::ToolresultsV1beta3::TestSuiteOverview>]
        attr_accessor :test_suite_overviews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outcome = args[:outcome] if args.key?(:outcome)
          @state = args[:state] if args.key?(:state)
          @test_suite_overviews = args[:test_suite_overviews] if args.key?(:test_suite_overviews)
        end
      end
      
      # Details when multiple steps are run with the same configuration as a group.
      class MultiStep
        include Google::Apis::Core::Hashable
      
        # Unique int given to each step. Ranges from 0(inclusive) to total number of
        # steps(exclusive). The primary step is 0.
        # Corresponds to the JSON property `multistepNumber`
        # @return [Fixnum]
        attr_accessor :multistep_number
      
        # Stores rollup test status of multiple steps that were run as a group and
        # outcome of each individual step.
        # Corresponds to the JSON property `primaryStep`
        # @return [Google::Apis::ToolresultsV1beta3::PrimaryStep]
        attr_accessor :primary_step
      
        # Step Id of the primary (original) step, which might be this step.
        # Corresponds to the JSON property `primaryStepId`
        # @return [String]
        attr_accessor :primary_step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @multistep_number = args[:multistep_number] if args.key?(:multistep_number)
          @primary_step = args[:primary_step] if args.key?(:primary_step)
          @primary_step_id = args[:primary_step_id] if args.key?(:primary_step_id)
        end
      end
      
      # Additional details for a native crash.
      class NativeCrash
        include Google::Apis::Core::Hashable
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1beta3::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # A non-sdk API and examples of it being called along with other metadata See
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
        # @return [Array<Google::Apis::ToolresultsV1beta3::NonSdkApiInsight>]
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
      
        # Optional sample stack traces, for which this insight applies (there should be
        # at least one).
        # Corresponds to the JSON property `exampleTraceMessages`
        # @return [Array<String>]
        attr_accessor :example_trace_messages
      
        # A unique ID, to be used for determining the effectiveness of this particular
        # insight in the context of a matcher. (required)
        # Corresponds to the JSON property `matcherId`
        # @return [String]
        attr_accessor :matcher_id
      
        # This insight indicates that the hidden API usage originates from a Google-
        # provided library. Users need not take any action.
        # Corresponds to the JSON property `pendingGoogleUpdateInsight`
        # @return [Google::Apis::ToolresultsV1beta3::PendingGoogleUpdateInsight]
        attr_accessor :pending_google_update_insight
      
        # This insight is a recommendation to upgrade a given library to the specified
        # version, in order to avoid dependencies on non-SDK APIs.
        # Corresponds to the JSON property `upgradeInsight`
        # @return [Google::Apis::ToolresultsV1beta3::UpgradeInsight]
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
        # @return [Array<Google::Apis::ToolresultsV1beta3::NonSdkApi>]
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
      
      # Interprets a result so that humans and machines can act on it.
      class Outcome
        include Google::Apis::Core::Hashable
      
        # Details for an outcome with a FAILURE outcome summary.
        # Corresponds to the JSON property `failureDetail`
        # @return [Google::Apis::ToolresultsV1beta3::FailureDetail]
        attr_accessor :failure_detail
      
        # Details for an outcome with an INCONCLUSIVE outcome summary.
        # Corresponds to the JSON property `inconclusiveDetail`
        # @return [Google::Apis::ToolresultsV1beta3::InconclusiveDetail]
        attr_accessor :inconclusive_detail
      
        # Details for an outcome with a SKIPPED outcome summary.
        # Corresponds to the JSON property `skippedDetail`
        # @return [Google::Apis::ToolresultsV1beta3::SkippedDetail]
        attr_accessor :skipped_detail
      
        # Details for an outcome with a SUCCESS outcome summary. LINT.IfChange
        # Corresponds to the JSON property `successDetail`
        # @return [Google::Apis::ToolresultsV1beta3::SuccessDetail]
        attr_accessor :success_detail
      
        # The simplest way to interpret a result. Required
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_detail = args[:failure_detail] if args.key?(:failure_detail)
          @inconclusive_detail = args[:inconclusive_detail] if args.key?(:inconclusive_detail)
          @skipped_detail = args[:skipped_detail] if args.key?(:skipped_detail)
          @success_detail = args[:success_detail] if args.key?(:success_detail)
          @summary = args[:summary] if args.key?(:summary)
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
      
      # This insight indicates that the hidden API usage originates from a Google-
      # provided library. Users need not take any action.
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
      
      # Encapsulates performance environment info
      class PerfEnvironment
        include Google::Apis::Core::Hashable
      
        # CPU related environment info
        # Corresponds to the JSON property `cpuInfo`
        # @return [Google::Apis::ToolresultsV1beta3::CpuInfo]
        attr_accessor :cpu_info
      
        # Memory related environment info
        # Corresponds to the JSON property `memoryInfo`
        # @return [Google::Apis::ToolresultsV1beta3::MemoryInfo]
        attr_accessor :memory_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_info = args[:cpu_info] if args.key?(:cpu_info)
          @memory_info = args[:memory_info] if args.key?(:memory_info)
        end
      end
      
      # A summary of perf metrics collected and performance environment info
      class PerfMetricsSummary
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appStartTime`
        # @return [Google::Apis::ToolresultsV1beta3::AppStartTime]
        attr_accessor :app_start_time
      
        # A tool results execution ID. @OutputOnly
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Graphics statistics for the App. The information is collected from 'adb shell
        # dumpsys graphicsstats'. For more info see: https://developer.android.com/
        # training/testing/performance.html Statistics will only be present for API 23+.
        # Corresponds to the JSON property `graphicsStats`
        # @return [Google::Apis::ToolresultsV1beta3::GraphicsStats]
        attr_accessor :graphics_stats
      
        # A tool results history ID. @OutputOnly
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # Encapsulates performance environment info
        # Corresponds to the JSON property `perfEnvironment`
        # @return [Google::Apis::ToolresultsV1beta3::PerfEnvironment]
        attr_accessor :perf_environment
      
        # Set of resource collected
        # Corresponds to the JSON property `perfMetrics`
        # @return [Array<String>]
        attr_accessor :perf_metrics
      
        # The cloud project @OutputOnly
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # A tool results step ID. @OutputOnly
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_start_time = args[:app_start_time] if args.key?(:app_start_time)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @graphics_stats = args[:graphics_stats] if args.key?(:graphics_stats)
          @history_id = args[:history_id] if args.key?(:history_id)
          @perf_environment = args[:perf_environment] if args.key?(:perf_environment)
          @perf_metrics = args[:perf_metrics] if args.key?(:perf_metrics)
          @project_id = args[:project_id] if args.key?(:project_id)
          @step_id = args[:step_id] if args.key?(:step_id)
        end
      end
      
      # Resource representing a single performance measure or data point
      class PerfSample
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `sampleTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :sample_time
      
        # Value observed
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Resource representing a collection of performance samples (or data points)
      class PerfSampleSeries
        include Google::Apis::Core::Hashable
      
        # Encapsulates the metadata for basic sample series represented by a line chart
        # Corresponds to the JSON property `basicPerfSampleSeries`
        # @return [Google::Apis::ToolresultsV1beta3::BasicPerfSampleSeries]
        attr_accessor :basic_perf_sample_series
      
        # A tool results execution ID. @OutputOnly
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # A tool results history ID. @OutputOnly
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # The cloud project @OutputOnly
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # A sample series id @OutputOnly
        # Corresponds to the JSON property `sampleSeriesId`
        # @return [String]
        attr_accessor :sample_series_id
      
        # A tool results step ID. @OutputOnly
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_perf_sample_series = args[:basic_perf_sample_series] if args.key?(:basic_perf_sample_series)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @history_id = args[:history_id] if args.key?(:history_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @sample_series_id = args[:sample_series_id] if args.key?(:sample_series_id)
          @step_id = args[:step_id] if args.key?(:step_id)
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
      
      # Stores rollup test status of multiple steps that were run as a group and
      # outcome of each individual step.
      class PrimaryStep
        include Google::Apis::Core::Hashable
      
        # Step Id and outcome of each individual step.
        # Corresponds to the JSON property `individualOutcome`
        # @return [Array<Google::Apis::ToolresultsV1beta3::IndividualOutcome>]
        attr_accessor :individual_outcome
      
        # Rollup test status of multiple steps that were run with the same configuration
        # as a group.
        # Corresponds to the JSON property `rollUp`
        # @return [String]
        attr_accessor :roll_up
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @individual_outcome = args[:individual_outcome] if args.key?(:individual_outcome)
          @roll_up = args[:roll_up] if args.key?(:roll_up)
        end
      end
      
      # Per-project settings for the Tool Results service.
      class ProjectSettings
        include Google::Apis::Core::Hashable
      
        # The name of the Google Cloud Storage bucket to which results are written. By
        # default, this is unset. In update request: optional In response: optional
        # Corresponds to the JSON property `defaultBucket`
        # @return [String]
        attr_accessor :default_bucket
      
        # The name of the project's settings. Always of the form: projects/`project-id`/
        # settings In update request: never set In response: always set
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_bucket = args[:default_bucket] if args.key?(:default_bucket)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for StepService.PublishXunitXmlFiles.
      class PublishXunitXmlFilesRequest
        include Google::Apis::Core::Hashable
      
        # URI of the Xunit XML files to publish. The maximum size of the file this
        # reference is pointing to is 50MB. Required.
        # Corresponds to the JSON property `xunitXmlFiles`
        # @return [Array<Google::Apis::ToolresultsV1beta3::FileReference>]
        attr_accessor :xunit_xml_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @xunit_xml_files = args[:xunit_xml_files] if args.key?(:xunit_xml_files)
        end
      end
      
      # A rectangular region.
      class RegionProto
        include Google::Apis::Core::Hashable
      
        # The height, in pixels. Always set.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # The left side of the rectangle, in pixels. Always set.
        # Corresponds to the JSON property `leftPx`
        # @return [Fixnum]
        attr_accessor :left_px
      
        # The top of the rectangle, in pixels. Always set.
        # Corresponds to the JSON property `topPx`
        # @return [Fixnum]
        attr_accessor :top_px
      
        # The width, in pixels. Always set.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_px = args[:height_px] if args.key?(:height_px)
          @left_px = args[:left_px] if args.key?(:left_px)
          @top_px = args[:top_px] if args.key?(:top_px)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # The storage for test results.
      class ResultsStorage
        include Google::Apis::Core::Hashable
      
        # A reference to a file.
        # Corresponds to the JSON property `resultsStoragePath`
        # @return [Google::Apis::ToolresultsV1beta3::FileReference]
        attr_accessor :results_storage_path
      
        # A reference to a file.
        # Corresponds to the JSON property `xunitXmlFile`
        # @return [Google::Apis::ToolresultsV1beta3::FileReference]
        attr_accessor :xunit_xml_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results_storage_path = args[:results_storage_path] if args.key?(:results_storage_path)
          @xunit_xml_file = args[:xunit_xml_file] if args.key?(:xunit_xml_file)
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
      
      # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
      # it's trivial for an attacker to forge serialized messages that don't fulfill
      # the type's safety contract -- for example, it could contain attacker
      # controlled script. A system which receives a SafeHtmlProto implicitly trusts
      # the producer of the SafeHtmlProto. So, it's generally safe to return this
      # message in RPC responses, but generally unsafe to accept it in RPC requests.
      class SafeHtmlProto
        include Google::Apis::Core::Hashable
      
        # IMPORTANT: Never set or read this field, even from tests, it is private. See
        # documentation at the top of .proto file for programming language packages with
        # which to create or read this message.
        # Corresponds to the JSON property `privateDoNotAccessOrElseSafeHtmlWrappedValue`
        # @return [String]
        attr_accessor :private_do_not_access_or_else_safe_html_wrapped_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_do_not_access_or_else_safe_html_wrapped_value = args[:private_do_not_access_or_else_safe_html_wrapped_value] if args.key?(:private_do_not_access_or_else_safe_html_wrapped_value)
        end
      end
      
      # 
      class Screen
        include Google::Apis::Core::Hashable
      
        # File reference of the png file. Required.
        # Corresponds to the JSON property `fileReference`
        # @return [String]
        attr_accessor :file_reference
      
        # Locale of the device that the screenshot was taken on. Required.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Model of the device that the screenshot was taken on. Required.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # OS version of the device that the screenshot was taken on. Required.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_reference = args[:file_reference] if args.key?(:file_reference)
          @locale = args[:locale] if args.key?(:locale)
          @model = args[:model] if args.key?(:model)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class ScreenshotCluster
        include Google::Apis::Core::Hashable
      
        # A string that describes the activity of every screen in the cluster.
        # Corresponds to the JSON property `activity`
        # @return [String]
        attr_accessor :activity
      
        # A unique identifier for the cluster. @OutputOnly
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # A singular screen that represents the cluster as a whole. This screen will act
        # as the "cover" of the entire cluster. When users look at the clusters, only
        # the key screen from each cluster will be shown. Which screen is the key screen
        # is determined by the ClusteringAlgorithm
        # Corresponds to the JSON property `keyScreen`
        # @return [Google::Apis::ToolresultsV1beta3::Screen]
        attr_accessor :key_screen
      
        # Full list of screens.
        # Corresponds to the JSON property `screens`
        # @return [Array<Google::Apis::ToolresultsV1beta3::Screen>]
        attr_accessor :screens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity = args[:activity] if args.key?(:activity)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @key_screen = args[:key_screen] if args.key?(:key_screen)
          @screens = args[:screens] if args.key?(:screens)
        end
      end
      
      # Result summary for a shard in an environment.
      class ShardSummary
        include Google::Apis::Core::Hashable
      
        # Summaries of the steps belonging to the shard. With flaky_test_attempts
        # enabled from TestExecutionService, more than one run (Step) can present. And
        # the runs will be sorted by multistep_number.
        # Corresponds to the JSON property `runs`
        # @return [Array<Google::Apis::ToolresultsV1beta3::StepSummary>]
        attr_accessor :runs
      
        # Merged test result for environment. If the environment has only one step (no
        # reruns or shards), then the merged result is the same as the step result. If
        # the environment has multiple shards and/or reruns, then the results of shards
        # and reruns that belong to the same environment are merged into one environment
        # result.
        # Corresponds to the JSON property `shardResult`
        # @return [Google::Apis::ToolresultsV1beta3::MergedResult]
        attr_accessor :shard_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @runs = args[:runs] if args.key?(:runs)
          @shard_result = args[:shard_result] if args.key?(:shard_result)
        end
      end
      
      # Details for an outcome with a SKIPPED outcome summary.
      class SkippedDetail
        include Google::Apis::Core::Hashable
      
        # If the App doesn't support the specific API level.
        # Corresponds to the JSON property `incompatibleAppVersion`
        # @return [Boolean]
        attr_accessor :incompatible_app_version
        alias_method :incompatible_app_version?, :incompatible_app_version
      
        # If the App doesn't run on the specific architecture, for example, x86.
        # Corresponds to the JSON property `incompatibleArchitecture`
        # @return [Boolean]
        attr_accessor :incompatible_architecture
        alias_method :incompatible_architecture?, :incompatible_architecture
      
        # If the requested OS version doesn't run on the specific device model.
        # Corresponds to the JSON property `incompatibleDevice`
        # @return [Boolean]
        attr_accessor :incompatible_device
        alias_method :incompatible_device?, :incompatible_device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @incompatible_app_version = args[:incompatible_app_version] if args.key?(:incompatible_app_version)
          @incompatible_architecture = args[:incompatible_architecture] if args.key?(:incompatible_architecture)
          @incompatible_device = args[:incompatible_device] if args.key?(:incompatible_device)
        end
      end
      
      # The details about how to run the execution.
      class Specification
        include Google::Apis::Core::Hashable
      
        # An Android mobile test specification.
        # Corresponds to the JSON property `androidTest`
        # @return [Google::Apis::ToolresultsV1beta3::AndroidTest]
        attr_accessor :android_test
      
        # A iOS mobile test specification
        # Corresponds to the JSON property `iosTest`
        # @return [Google::Apis::ToolresultsV1beta3::IosTest]
        attr_accessor :ios_test
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_test = args[:android_test] if args.key?(:android_test)
          @ios_test = args[:ios_test] if args.key?(:ios_test)
        end
      end
      
      # A stacktrace.
      class StackTrace
        include Google::Apis::Core::Hashable
      
        # The stack trace message. Required
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A Step represents a single operation performed as part of Execution. A step
      # can be used to represent the execution of a tool ( for example a test runner
      # execution or an execution of a compiler). Steps can overlap (for instance two
      # steps might have the same start time if some operations are done in parallel).
      # Here is an example, let's consider that we have a continuous build is
      # executing a test runner for each iteration. The workflow would look like: -
      # user creates a Execution with id 1 - user creates an TestExecutionStep with id
      # 100 for Execution 1 - user update TestExecutionStep with id 100 to add a raw
      # xml log + the service parses the xml logs and returns a TestExecutionStep with
      # updated TestResult(s). - user update the status of TestExecutionStep with id
      # 100 to COMPLETE A Step can be updated until its state is set to COMPLETE at
      # which points it becomes immutable. Next tag: 27
      class Step
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `completionTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :completion_time
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `creationTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :creation_time
      
        # A description of this tool For example: mvn clean package -D skipTests=true -
        # In response: present if set by create/update request - In create/update
        # request: optional
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `deviceUsageDuration`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :device_usage_duration
      
        # If the execution containing this step has any dimension_definition set, then
        # this field allows the child to specify the values of the dimensions. The keys
        # must exactly match the dimension_definition of the execution. For example, if
        # the execution has `dimension_definition = ['attempt', 'device']` then a step
        # must define values for those dimensions, eg. `dimension_value = ['attempt': '1'
        # , 'device': 'Nexus 6']` If a step does not participate in one dimension of the
        # matrix, the value for that dimension should be empty string. For example, if
        # one of the tests is executed by a runner which does not support retries, the
        # step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If
        # the step does not participate in any dimensions of the matrix, it may leave
        # dimension_value unset. A PRECONDITION_FAILED will be returned if any of the
        # keys do not exist in the dimension_definition of the execution. A
        # PRECONDITION_FAILED will be returned if another step in this execution already
        # has the same name and dimension_value, but differs on other data fields, for
        # example, step field is different. A PRECONDITION_FAILED will be returned if
        # dimension_value is set, and there is a dimension_definition in the execution
        # which is not specified as one of the keys. - In response: present if set by
        # create - In create request: optional - In update request: never set
        # Corresponds to the JSON property `dimensionValue`
        # @return [Array<Google::Apis::ToolresultsV1beta3::StepDimensionValueEntry>]
        attr_accessor :dimension_value
      
        # Whether any of the outputs of this step are images whose thumbnails can be
        # fetched with ListThumbnails. - In response: always set - In create/update
        # request: never set
        # Corresponds to the JSON property `hasImages`
        # @return [Boolean]
        attr_accessor :has_images
        alias_method :has_images?, :has_images
      
        # Arbitrary user-supplied key/value pairs that are associated with the step.
        # Users are responsible for managing the key namespace such that keys don't
        # accidentally collide. An INVALID_ARGUMENT will be returned if the number of
        # labels exceeds 100 or if the length of any of the keys or values exceeds 100
        # characters. - In response: always set - In create request: optional - In
        # update request: optional; any new key/value pair will be added to the map, and
        # any new value for an existing key will update that key's value
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::ToolresultsV1beta3::StepLabelsEntry>]
        attr_accessor :labels
      
        # Details when multiple steps are run with the same configuration as a group.
        # Corresponds to the JSON property `multiStep`
        # @return [Google::Apis::ToolresultsV1beta3::MultiStep]
        attr_accessor :multi_step
      
        # A short human-readable name to display in the UI. Maximum of 100 characters.
        # For example: Clean build A PRECONDITION_FAILED will be returned upon creating
        # a new step if it shares its name and dimension_value with an existing step. If
        # two steps represent a similar action, but have different dimension values,
        # they should share the same name. For instance, if the same set of tests is run
        # on two different platforms, the two steps should have the same name. - In
        # response: always set - In create request: always set - In update request:
        # never set
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Interprets a result so that humans and machines can act on it.
        # Corresponds to the JSON property `outcome`
        # @return [Google::Apis::ToolresultsV1beta3::Outcome]
        attr_accessor :outcome
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `runDuration`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :run_duration
      
        # The initial state is IN_PROGRESS. The only legal state transitions are *
        # IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an invalid
        # transition is requested. It is valid to create Step with a state set to
        # COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED
        # will be returned if the state is set to COMPLETE multiple times. - In response:
        # always set - In create/update request: optional
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT
        # if this field is set or overwritten by the caller. - In response: always set -
        # In create/update request: never set
        # Corresponds to the JSON property `stepId`
        # @return [String]
        attr_accessor :step_id
      
        # A step that represents running tests. It accepts ant-junit xml files which
        # will be parsed into structured test results by the service. Xml file paths are
        # updated in order to append more files, however they can't be deleted. Users
        # can also add test results manually by using the test_result field.
        # Corresponds to the JSON property `testExecutionStep`
        # @return [Google::Apis::ToolresultsV1beta3::TestExecutionStep]
        attr_accessor :test_execution_step
      
        # Generic tool step to be used for binaries we do not explicitly support. For
        # example: running cp to copy artifacts from one location to another.
        # Corresponds to the JSON property `toolExecutionStep`
        # @return [Google::Apis::ToolresultsV1beta3::ToolExecutionStep]
        attr_accessor :tool_execution_step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @device_usage_duration = args[:device_usage_duration] if args.key?(:device_usage_duration)
          @dimension_value = args[:dimension_value] if args.key?(:dimension_value)
          @has_images = args[:has_images] if args.key?(:has_images)
          @labels = args[:labels] if args.key?(:labels)
          @multi_step = args[:multi_step] if args.key?(:multi_step)
          @name = args[:name] if args.key?(:name)
          @outcome = args[:outcome] if args.key?(:outcome)
          @run_duration = args[:run_duration] if args.key?(:run_duration)
          @state = args[:state] if args.key?(:state)
          @step_id = args[:step_id] if args.key?(:step_id)
          @test_execution_step = args[:test_execution_step] if args.key?(:test_execution_step)
          @tool_execution_step = args[:tool_execution_step] if args.key?(:tool_execution_step)
        end
      end
      
      # 
      class StepDimensionValueEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class StepLabelsEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Lightweight summary of a step within this execution.
      class StepSummary
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details for an outcome with a SUCCESS outcome summary. LINT.IfChange
      class SuccessDetail
        include Google::Apis::Core::Hashable
      
        # If a native process other than the app crashed.
        # Corresponds to the JSON property `otherNativeCrash`
        # @return [Boolean]
        attr_accessor :other_native_crash
        alias_method :other_native_crash?, :other_native_crash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @other_native_crash = args[:other_native_crash] if args.key?(:other_native_crash)
        end
      end
      
      # A set of similar suggestions that we suspect are closely related. This proto
      # and most of the nested protos are branched from foxandcrown.prelaunchreport.
      # service.SuggestionClusterProto, replacing PLR's dependencies with FTL's.
      class SuggestionClusterProto
        include Google::Apis::Core::Hashable
      
        # Category in which these types of suggestions should appear. Always set.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # A sequence of suggestions. All of the suggestions within a cluster must have
        # the same SuggestionPriority and belong to the same SuggestionCategory.
        # Suggestions with the same screenshot URL should be adjacent.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::ToolresultsV1beta3::SuggestionProto>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # 
      class SuggestionProto
        include Google::Apis::Core::Hashable
      
        # Reference to a help center article concerning this type of suggestion. Always
        # set.
        # Corresponds to the JSON property `helpUrl`
        # @return [String]
        attr_accessor :help_url
      
        # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
        # it's trivial for an attacker to forge serialized messages that don't fulfill
        # the type's safety contract -- for example, it could contain attacker
        # controlled script. A system which receives a SafeHtmlProto implicitly trusts
        # the producer of the SafeHtmlProto. So, it's generally safe to return this
        # message in RPC responses, but generally unsafe to accept it in RPC requests.
        # Corresponds to the JSON property `longMessage`
        # @return [Google::Apis::ToolresultsV1beta3::SafeHtmlProto]
        attr_accessor :long_message
      
        # Relative importance of a suggestion. Always set.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # A somewhat human readable identifier of the source view, if it does not have a
        # resource_name. This is a path within the accessibility hierarchy, an element
        # with resource name; similar to an XPath.
        # Corresponds to the JSON property `pseudoResourceId`
        # @return [String]
        attr_accessor :pseudo_resource_id
      
        # A rectangular region.
        # Corresponds to the JSON property `region`
        # @return [Google::Apis::ToolresultsV1beta3::RegionProto]
        attr_accessor :region
      
        # Reference to a view element, identified by its resource name, if it has one.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # ID of the screen for the suggestion. It is used for getting the corresponding
        # screenshot path. For example, screen_id "1" corresponds to "1.png" file in GCS.
        # Always set.
        # Corresponds to the JSON property `screenId`
        # @return [String]
        attr_accessor :screen_id
      
        # Relative importance of a suggestion as compared with other suggestions that
        # have the same priority and category. This is a meaningless value that can be
        # used to order suggestions that are in the same category and have the same
        # priority. The larger values have higher priority (i.e., are more important).
        # Optional.
        # Corresponds to the JSON property `secondaryPriority`
        # @return [Float]
        attr_accessor :secondary_priority
      
        # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
        # it's trivial for an attacker to forge serialized messages that don't fulfill
        # the type's safety contract -- for example, it could contain attacker
        # controlled script. A system which receives a SafeHtmlProto implicitly trusts
        # the producer of the SafeHtmlProto. So, it's generally safe to return this
        # message in RPC responses, but generally unsafe to accept it in RPC requests.
        # Corresponds to the JSON property `shortMessage`
        # @return [Google::Apis::ToolresultsV1beta3::SafeHtmlProto]
        attr_accessor :short_message
      
        # General title for the suggestion, in the user's language, without markup.
        # Always set.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @help_url = args[:help_url] if args.key?(:help_url)
          @long_message = args[:long_message] if args.key?(:long_message)
          @priority = args[:priority] if args.key?(:priority)
          @pseudo_resource_id = args[:pseudo_resource_id] if args.key?(:pseudo_resource_id)
          @region = args[:region] if args.key?(:region)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @screen_id = args[:screen_id] if args.key?(:screen_id)
          @secondary_priority = args[:secondary_priority] if args.key?(:secondary_priority)
          @short_message = args[:short_message] if args.key?(:short_message)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class TestCase
        include Google::Apis::Core::Hashable
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `elapsedTime`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :elapsed_time
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :end_time
      
        # Why the test case was skipped. Present only for skipped test case
        # Corresponds to the JSON property `skippedMessage`
        # @return [String]
        attr_accessor :skipped_message
      
        # The stack trace details if the test case failed or encountered an error. The
        # maximum size of the stack traces is 100KiB, beyond which the stack track will
        # be truncated. Zero if the test case passed.
        # Corresponds to the JSON property `stackTraces`
        # @return [Array<Google::Apis::ToolresultsV1beta3::StackTrace>]
        attr_accessor :stack_traces
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :start_time
      
        # The status of the test case. Required.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A unique identifier within a Step for this Test Case.
        # Corresponds to the JSON property `testCaseId`
        # @return [String]
        attr_accessor :test_case_id
      
        # A reference to a test case. Test case references are canonically ordered
        # lexicographically by these three factors: * First, by test_suite_name. *
        # Second, by class_name. * Third, by name.
        # Corresponds to the JSON property `testCaseReference`
        # @return [Google::Apis::ToolresultsV1beta3::TestCaseReference]
        attr_accessor :test_case_reference
      
        # References to opaque files of any format output by the tool execution. @
        # OutputOnly
        # Corresponds to the JSON property `toolOutputs`
        # @return [Array<Google::Apis::ToolresultsV1beta3::ToolOutputReference>]
        attr_accessor :tool_outputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elapsed_time = args[:elapsed_time] if args.key?(:elapsed_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @skipped_message = args[:skipped_message] if args.key?(:skipped_message)
          @stack_traces = args[:stack_traces] if args.key?(:stack_traces)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @test_case_id = args[:test_case_id] if args.key?(:test_case_id)
          @test_case_reference = args[:test_case_reference] if args.key?(:test_case_reference)
          @tool_outputs = args[:tool_outputs] if args.key?(:tool_outputs)
        end
      end
      
      # A reference to a test case. Test case references are canonically ordered
      # lexicographically by these three factors: * First, by test_suite_name. *
      # Second, by class_name. * Third, by name.
      class TestCaseReference
        include Google::Apis::Core::Hashable
      
        # The name of the class.
        # Corresponds to the JSON property `className`
        # @return [String]
        attr_accessor :class_name
      
        # The name of the test case. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the test suite to which this test case belongs.
        # Corresponds to the JSON property `testSuiteName`
        # @return [String]
        attr_accessor :test_suite_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_name = args[:class_name] if args.key?(:class_name)
          @name = args[:name] if args.key?(:name)
          @test_suite_name = args[:test_suite_name] if args.key?(:test_suite_name)
        end
      end
      
      # A step that represents running tests. It accepts ant-junit xml files which
      # will be parsed into structured test results by the service. Xml file paths are
      # updated in order to append more files, however they can't be deleted. Users
      # can also add test results manually by using the test_result field.
      class TestExecutionStep
        include Google::Apis::Core::Hashable
      
        # Issues observed during the test execution. For example, if the mobile app
        # under test crashed during the test, the error message and the stack trace
        # content can be recorded here to assist debugging. - In response: present if
        # set by create or update - In create/update request: optional
        # Corresponds to the JSON property `testIssues`
        # @return [Array<Google::Apis::ToolresultsV1beta3::TestIssue>]
        attr_accessor :test_issues
      
        # List of test suite overview contents. This could be parsed from xUnit XML log
        # by server, or uploaded directly by user. This references should only be called
        # when test suites are fully parsed or uploaded. The maximum allowed number of
        # test suite overviews per step is 1000. - In response: always set - In create
        # request: optional - In update request: never (use publishXunitXmlFiles custom
        # method instead)
        # Corresponds to the JSON property `testSuiteOverviews`
        # @return [Array<Google::Apis::ToolresultsV1beta3::TestSuiteOverview>]
        attr_accessor :test_suite_overviews
      
        # Testing timing break down to know phases.
        # Corresponds to the JSON property `testTiming`
        # @return [Google::Apis::ToolresultsV1beta3::TestTiming]
        attr_accessor :test_timing
      
        # An execution of an arbitrary tool. It could be a test runner or a tool copying
        # artifacts or deploying code.
        # Corresponds to the JSON property `toolExecution`
        # @return [Google::Apis::ToolresultsV1beta3::ToolExecution]
        attr_accessor :tool_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_issues = args[:test_issues] if args.key?(:test_issues)
          @test_suite_overviews = args[:test_suite_overviews] if args.key?(:test_suite_overviews)
          @test_timing = args[:test_timing] if args.key?(:test_timing)
          @tool_execution = args[:tool_execution] if args.key?(:tool_execution)
        end
      end
      
      # An issue detected occurring during a test execution.
      class TestIssue
        include Google::Apis::Core::Hashable
      
        # Category of issue. Required.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # A brief human-readable message describing the issue. Required.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Severity of issue. Required.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # A stacktrace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::ToolresultsV1beta3::StackTrace]
        attr_accessor :stack_trace
      
        # Type of issue. Required.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # `Any` contains an arbitrary serialized protocol buffer message along with a
        # URL that describes the type of the serialized message. Protobuf library
        # provides support to pack/unpack Any values in the form of utility functions or
        # additional generated methods of the Any type. Example 1: Pack and unpack a
        # message in C++. Foo foo = ...; Any any; any.PackFrom(foo); ... if (any.
        # UnpackTo(&foo)) ` ... ` Example 2: Pack and unpack a message in Java. Foo foo =
        # ...; Any any = Any.pack(foo); ... if (any.is(Foo.class)) ` foo = any.unpack(
        # Foo.class); ` Example 3: Pack and unpack a message in Python. foo = Foo(...)
        # any = Any() any.Pack(foo) ... if any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ...
        # Example 4: Pack and unpack a message in Go foo := &pb.Foo`...` any, err :=
        # ptypes.MarshalAny(foo) ... foo := &pb.Foo`` if err := ptypes.UnmarshalAny(any,
        # foo); err != nil ` ... ` The pack methods provided by protobuf library will by
        # default use 'type.googleapis.com/full.type.name' as the type URL and the
        # unpack methods only use the fully qualified type name after the last '/' in
        # the type URL, for example "foo.bar.com/x/y.z" will yield type name "y.z". #
        # JSON The JSON representation of an `Any` value uses the regular representation
        # of the deserialized, embedded message, with an additional field `@type` which
        # contains the type URL. Example: package google.profile; message Person `
        # string first_name = 1; string last_name = 2; ` ` "@type": "type.googleapis.com/
        # google.profile.Person", "firstName": , "lastName": ` If the embedded message
        # type is well-known and has a custom JSON representation, that representation
        # will be embedded adding a field `value` which holds the custom JSON in
        # addition to the `@type` field. Example (for message google.protobuf.Duration):
        # ` "@type": "type.googleapis.com/google.protobuf.Duration", "value": "1.212s" `
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ToolresultsV1beta3::Any]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @error_message = args[:error_message] if args.key?(:error_message)
          @severity = args[:severity] if args.key?(:severity)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
          @type = args[:type] if args.key?(:type)
          @warning = args[:warning] if args.key?(:warning)
        end
      end
      
      # A summary of a test suite result either parsed from XML or uploaded directly
      # by a user. Note: the API related comments are for StepService only. This
      # message is also being used in ExecutionService in a read only mode for the
      # corresponding step.
      class TestSuiteOverview
        include Google::Apis::Core::Hashable
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `elapsedTime`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :elapsed_time
      
        # Number of test cases in error, typically set by the service by parsing the
        # xml_source. - In create/response: always set - In update request: never
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # Number of failed test cases, typically set by the service by parsing the
        # xml_source. May also be set by the user. - In create/response: always set - In
        # update request: never
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Number of flaky test cases, set by the service by rolling up flaky test
        # attempts. Present only for rollup test suite overview at environment level. A
        # step cannot have flaky test cases.
        # Corresponds to the JSON property `flakyCount`
        # @return [Fixnum]
        attr_accessor :flaky_count
      
        # The name of the test suite. - In create/response: always set - In update
        # request: never
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Number of test cases not run, typically set by the service by parsing the
        # xml_source. - In create/response: always set - In update request: never
        # Corresponds to the JSON property `skippedCount`
        # @return [Fixnum]
        attr_accessor :skipped_count
      
        # Number of test cases, typically set by the service by parsing the xml_source. -
        # In create/response: always set - In update request: never
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        # A reference to a file.
        # Corresponds to the JSON property `xmlSource`
        # @return [Google::Apis::ToolresultsV1beta3::FileReference]
        attr_accessor :xml_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elapsed_time = args[:elapsed_time] if args.key?(:elapsed_time)
          @error_count = args[:error_count] if args.key?(:error_count)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @flaky_count = args[:flaky_count] if args.key?(:flaky_count)
          @name = args[:name] if args.key?(:name)
          @skipped_count = args[:skipped_count] if args.key?(:skipped_count)
          @total_count = args[:total_count] if args.key?(:total_count)
          @xml_source = args[:xml_source] if args.key?(:xml_source)
        end
      end
      
      # Testing timing break down to know phases.
      class TestTiming
        include Google::Apis::Core::Hashable
      
        # A Duration represents a signed, fixed-length span of time represented as a
        # count of seconds and fractions of seconds at nanosecond resolution. It is
        # independent of any calendar and concepts like "day" or "month". It is related
        # to Timestamp in that the difference between two Timestamp values is a Duration
        # and it can be added or subtracted from a Timestamp. Range is approximately +-
        # 10,000 years.
        # Corresponds to the JSON property `testProcessDuration`
        # @return [Google::Apis::ToolresultsV1beta3::Duration]
        attr_accessor :test_process_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_process_duration = args[:test_process_duration] if args.key?(:test_process_duration)
        end
      end
      
      # A single thumbnail, with its size and format.
      class Thumbnail
        include Google::Apis::Core::Hashable
      
        # The thumbnail's content type, i.e. "image/png". Always set.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The thumbnail file itself. That is, the bytes here are precisely the bytes
        # that make up the thumbnail file; they can be served as an image as-is (with
        # the appropriate content type.) Always set.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # The height of the thumbnail, in pixels. Always set.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # The width of the thumbnail, in pixels. Always set.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @height_px = args[:height_px] if args.key?(:height_px)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # A Timestamp represents a point in time independent of any time zone or local
      # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
      # resolution. The count is relative to an epoch at UTC midnight on January 1,
      # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
      # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
      # smeared" so that no leap second table is needed for interpretation, using a [
      # 24-hour linear smear](https://developers.google.com/time/smear). The range is
      # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
      # that range, we ensure that we can convert to and from [RFC 3339](https://www.
      # ietf.org/rfc/rfc3339.txt) date strings.
      class Timestamp
        include Google::Apis::Core::Hashable
      
        # Non-negative fractions of a second at nanosecond resolution. Negative second
        # values with fractions must still have non-negative nanos values that count
        # forward in time. Must be from 0 to 999,999,999 inclusive.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must be
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # An execution of an arbitrary tool. It could be a test runner or a tool copying
      # artifacts or deploying code.
      class ToolExecution
        include Google::Apis::Core::Hashable
      
        # The full tokenized command line including the program name (equivalent to argv
        # in a C program). - In response: present if set by create request - In create
        # request: optional - In update request: never set
        # Corresponds to the JSON property `commandLineArguments`
        # @return [Array<String>]
        attr_accessor :command_line_arguments
      
        # Exit code from a tool execution.
        # Corresponds to the JSON property `exitCode`
        # @return [Google::Apis::ToolresultsV1beta3::ToolExitCode]
        attr_accessor :exit_code
      
        # References to any plain text logs output the tool execution. This field can be
        # set before the tool has exited in order to be able to have access to a live
        # view of the logs while the tool is running. The maximum allowed number of tool
        # logs per step is 1000. - In response: present if set by create/update request -
        # In create request: optional - In update request: optional, any value provided
        # will be appended to the existing list
        # Corresponds to the JSON property `toolLogs`
        # @return [Array<Google::Apis::ToolresultsV1beta3::FileReference>]
        attr_accessor :tool_logs
      
        # References to opaque files of any format output by the tool execution. The
        # maximum allowed number of tool outputs per step is 1000. - In response:
        # present if set by create/update request - In create request: optional - In
        # update request: optional, any value provided will be appended to the existing
        # list
        # Corresponds to the JSON property `toolOutputs`
        # @return [Array<Google::Apis::ToolresultsV1beta3::ToolOutputReference>]
        attr_accessor :tool_outputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_line_arguments = args[:command_line_arguments] if args.key?(:command_line_arguments)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
          @tool_logs = args[:tool_logs] if args.key?(:tool_logs)
          @tool_outputs = args[:tool_outputs] if args.key?(:tool_outputs)
        end
      end
      
      # Generic tool step to be used for binaries we do not explicitly support. For
      # example: running cp to copy artifacts from one location to another.
      class ToolExecutionStep
        include Google::Apis::Core::Hashable
      
        # An execution of an arbitrary tool. It could be a test runner or a tool copying
        # artifacts or deploying code.
        # Corresponds to the JSON property `toolExecution`
        # @return [Google::Apis::ToolresultsV1beta3::ToolExecution]
        attr_accessor :tool_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_execution = args[:tool_execution] if args.key?(:tool_execution)
        end
      end
      
      # Exit code from a tool execution.
      class ToolExitCode
        include Google::Apis::Core::Hashable
      
        # Tool execution exit code. A value of 0 means that the execution was successful.
        # - In response: always set - In create/update request: always set
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # A reference to a ToolExecution output file.
      class ToolOutputReference
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar
        # backwards to year one. All minutes are 60 seconds long. Leap seconds are "
        # smeared" so that no leap second table is needed for interpretation, using a [
        # 24-hour linear smear](https://developers.google.com/time/smear). The range is
        # from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to
        # that range, we ensure that we can convert to and from [RFC 3339](https://www.
        # ietf.org/rfc/rfc3339.txt) date strings.
        # Corresponds to the JSON property `creationTime`
        # @return [Google::Apis::ToolresultsV1beta3::Timestamp]
        attr_accessor :creation_time
      
        # A reference to a file.
        # Corresponds to the JSON property `output`
        # @return [Google::Apis::ToolresultsV1beta3::FileReference]
        attr_accessor :output
      
        # A reference to a test case. Test case references are canonically ordered
        # lexicographically by these three factors: * First, by test_suite_name. *
        # Second, by class_name. * Third, by name.
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::ToolresultsV1beta3::TestCaseReference]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @output = args[:output] if args.key?(:output)
          @test_case = args[:test_case] if args.key?(:test_case)
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
      
        # The suggested version to upgrade to. Optional: In case we are not sure which
        # version solves this problem
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
      
      # Additional details of a used Robo directive with an ignore action. Note: This
      # is a different scenario than unused directive.
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
