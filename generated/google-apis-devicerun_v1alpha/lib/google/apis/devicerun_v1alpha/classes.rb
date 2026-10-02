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
    module DevicerunV1alpha
      
      # Allocation config.
      class AllocationConfig
        include Google::Apis::Core::Hashable
      
        # Required. At least one device config is required. If more than one device
        # config is required, the multiple devices are allocated to each shard of the
        # OmniLab job to run multi-device-interaction tests.
        # Corresponds to the JSON property `deviceConfigs`
        # @return [Array<Google::Apis::DevicerunV1alpha::DeviceConfig>]
        attr_accessor :device_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_configs = args[:device_configs] if args.key?(:device_configs)
        end
      end
      
      # Captures a bugreport from the device. The output will be written to a file
      # named `bugreport.zip` in the execution output directory.
      class AndroidBugreportDeviceAction
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to deliver the bugreport when the test passes. If false, the
        # bugreport is skipped on pass to save time (default behavior). If true, the
        # bugreport is always delivered.
        # Corresponds to the JSON property `collectOnPass`
        # @return [Boolean]
        attr_accessor :collect_on_pass
        alias_method :collect_on_pass?, :collect_on_pass
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collect_on_pass = args[:collect_on_pass] if args.key?(:collect_on_pass)
        end
      end
      
      # Captures dumpsys output from the device. The output will be written to a file
      # named `dumpsys.log` in the execution output directory.
      class AndroidDumpsysDeviceAction
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to deliver the dumpsys when the test passes. If false, the
        # dumpsys is skipped on pass to save time (default behavior). If true, the
        # dumpsys is always delivered.
        # Corresponds to the JSON property `collectOnPass`
        # @return [Boolean]
        attr_accessor :collect_on_pass
        alias_method :collect_on_pass?, :collect_on_pass
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collect_on_pass = args[:collect_on_pass] if args.key?(:collect_on_pass)
        end
      end
      
      # Installs Android packages on the device. At least one installable is specified
      # when using this device action. Limits: - A maximum of 20 installables in total
      # are allowed. - A maximum of 100 files are allowed in total across all
      # installables.
      class AndroidInstallPackagesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated: use `pre_target_app_installables`, `target_app` and `
        # post_target_app_installables` instead. The Android packages to install on the
        # device. The installation will be performed in the order specified, before the
        # installables of all other fields.
        # Corresponds to the JSON property `installables`
        # @return [Array<Google::Apis::DevicerunV1alpha::AndroidInstallable>]
        attr_accessor :installables
      
        # Optional. The Android packages to install on the device after `target_app` (if
        # specified) is installed. The installation will be performed in the order
        # specified.
        # Corresponds to the JSON property `postTargetAppInstallables`
        # @return [Array<Google::Apis::DevicerunV1alpha::AndroidInstallable>]
        attr_accessor :post_target_app_installables
      
        # Optional. The Android packages to install on the device before `target_app` (
        # if specified) is installed. The installation will be performed in the order
        # specified.
        # Corresponds to the JSON property `preTargetAppInstallables`
        # @return [Array<Google::Apis::DevicerunV1alpha::AndroidInstallable>]
        attr_accessor :pre_target_app_installables
      
        # An Android Installable represents the file(s) for installing an Android
        # package on a device. This can be an APK, an Android App Bundle (AAB), or an
        # APK Set.
        # Corresponds to the JSON property `targetApp`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstallable]
        attr_accessor :target_app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @installables = args[:installables] if args.key?(:installables)
          @post_target_app_installables = args[:post_target_app_installables] if args.key?(:post_target_app_installables)
          @pre_target_app_installables = args[:pre_target_app_installables] if args.key?(:pre_target_app_installables)
          @target_app = args[:target_app] if args.key?(:target_app)
        end
      end
      
      # An Android Installable represents the file(s) for installing an Android
      # package on a device. This can be an APK, an Android App Bundle (AAB), or an
      # APK Set.
      class AndroidInstallable
        include Google::Apis::Core::Hashable
      
        # Required. Files that make up the package. Supported formats are distinguished
        # by their file extension: - APK: One or more files with extension `.apk`. - App
        # Bundle: A single file with extension `.aab`. - APK Set: A single file with
        # extension `.apks`.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::DevicerunV1alpha::InputFile>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # The configuration of an Android instrumentation test. See https://developer.
      # android.com/training/testing/instrumented-tests for more information on
      # Android instrumentation tests.
      class AndroidInstrumentationTest
        include Google::Apis::Core::Hashable
      
        # Optional. Additional test options to pass to the test runner. Passed to `am
        # instrument` command as `-e` options, which will be passed to the
        # instrumentation test runner using its `onCreate()` method. Formats supported
        # in test_targets are not allowed to be used here. Limits: - Maximum number of
        # entries: 32. - Maximum key size: 64 bytes (UTF-8). - Maximum value size: 1024
        # bytes (UTF-8).
        # Corresponds to the JSON property `additionalTestOptions`
        # @return [Hash<String,String>]
        attr_accessor :additional_test_options
      
        # Optional. Whether to enable code coverage collection for the test. A coverage
        # file `coverage.ec` will be uploaded to the results folder. For this to work,
        # your classes have to be instrumented offline (build time) by EMMA/JaCoCo.
        # Corresponds to the JSON property `enableCodeCoverage`
        # @return [Boolean]
        attr_accessor :enable_code_coverage
        alias_method :enable_code_coverage?, :enable_code_coverage
      
        # Optional. The timeout of the instrumentation test. Default value: 5 min. Range:
        # [1 min, 3 hours].
        # Corresponds to the JSON property `instrumentationTimeout`
        # @return [String]
        attr_accessor :instrumentation_timeout
      
        # Optional. The version of the Android Test Orchestrator to use for the test.
        # The available orchestrator versions can be retrieved from the catalog service.
        # If set to "auto", the default orchestrator is used. If not set, no
        # orchestrator is used.
        # Corresponds to the JSON property `orchestratorVersion`
        # @return [String]
        attr_accessor :orchestrator_version
      
        # The smart sharding strategy to split the job into multiple shards based on the
        # test methods and their recorded execution time.
        # Corresponds to the JSON property `smartSharding`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestSmartSharding]
        attr_accessor :smart_sharding
      
        # An Android Installable represents the file(s) for installing an Android
        # package on a device. This can be an APK, an Android App Bundle (AAB), or an
        # APK Set.
        # Corresponds to the JSON property `testInstallable`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstallable]
        attr_accessor :test_installable
      
        # Optional. Full class name of the test runner class. The class must be `
        # androidx.test.runner.AndroidJUnitRunner` or a subclass of it. The default
        # value is determined by examining the application's manifest. If multiple
        # instrumentations are found, the first one in the manifest will be used.
        # Corresponds to the JSON property `testRunnerClass`
        # @return [String]
        attr_accessor :test_runner_class
      
        # Optional. A list of test targets or target filters to run. Each target must be
        # fully qualified with the package name or class name, in one of these formats: -
        # `package package_name` - `notPackage com.package.to.skip` - `class
        # package_name.class_name` - `class package_name.class_name#method_name` - `
        # notClass com.foo.ClassToSkip` - `notClass com.foo.ClassName#testMethodToSkip` -
        # `annotation com.foo.AnnotationToRun` - `notAnnotation com.foo.
        # AnnotationToSkip` - `size [small|medium|large]` Formats like `testfile` or `
        # notTestfile` won't be supported. If empty, all targets in the module will be
        # run. Limits: - Maximum number of entries: 1024.
        # Corresponds to the JSON property `testTargets`
        # @return [Array<String>]
        attr_accessor :test_targets
      
        # Uniformly shards test cases given a total number of shards. It will be
        # translated to `-e numShard` and `-e shardIndex` AndroidJUnitRunner arguments.
        # With uniform sharding enabled, specifying either of these sharding arguments
        # via `environment_variables` is invalid. Based on the sharding mechanism
        # AndroidJUnitRunner uses, there is no guarantee that test cases will be
        # distributed uniformly across all shards.
        # Corresponds to the JSON property `uniformSharding`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstrumentationTestUniformSharding]
        attr_accessor :uniform_sharding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_test_options = args[:additional_test_options] if args.key?(:additional_test_options)
          @enable_code_coverage = args[:enable_code_coverage] if args.key?(:enable_code_coverage)
          @instrumentation_timeout = args[:instrumentation_timeout] if args.key?(:instrumentation_timeout)
          @orchestrator_version = args[:orchestrator_version] if args.key?(:orchestrator_version)
          @smart_sharding = args[:smart_sharding] if args.key?(:smart_sharding)
          @test_installable = args[:test_installable] if args.key?(:test_installable)
          @test_runner_class = args[:test_runner_class] if args.key?(:test_runner_class)
          @test_targets = args[:test_targets] if args.key?(:test_targets)
          @uniform_sharding = args[:uniform_sharding] if args.key?(:uniform_sharding)
        end
      end
      
      # The smart sharding strategy to split the job into multiple shards based on the
      # test methods and their recorded execution time.
      class AndroidInstrumentationTestSmartSharding
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of shards to create. If unset or less than 1,
        # system-defined max limits are used. This limit takes precedence if the
        # targeted_shard_duration cannot be satisfied. Limits: - For physical devices,
        # the number of shards must be <= 20. - For virtual devices, the number of
        # shards must be <= 200.
        # Corresponds to the JSON property `maxShardCount`
        # @return [Fixnum]
        attr_accessor :max_shard_count
      
        # Required. The targeted duration of each shard. Limits: - Must be at least 2
        # minutes. - Must be at most 3 hours. Shard duration is not guaranteed because
        # smart sharding uses test case history and default durations which may not be
        # accurate. Durations are calculated based on the following inputs: - Timing
        # records from previous runs of the same test case. - For new test cases, the
        # average duration of other known test cases. - A system-chosen, default
        # duration if there are no previous timing records available. Because the actual
        # shard duration can exceed the targeted shard duration, we recommend that you
        # set the targeted value at least 5 minutes less than the maximum allowed
        # instrumentation timeout. This approach avoids cancelling the shard before all
        # tests can finish.
        # Corresponds to the JSON property `targetedShardDuration`
        # @return [String]
        attr_accessor :targeted_shard_duration
      
        # Input file.
        # Corresponds to the JSON property `timingRecord`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :timing_record
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_shard_count = args[:max_shard_count] if args.key?(:max_shard_count)
          @targeted_shard_duration = args[:targeted_shard_duration] if args.key?(:targeted_shard_duration)
          @timing_record = args[:timing_record] if args.key?(:timing_record)
        end
      end
      
      # Uniformly shards test cases given a total number of shards. It will be
      # translated to `-e numShard` and `-e shardIndex` AndroidJUnitRunner arguments.
      # With uniform sharding enabled, specifying either of these sharding arguments
      # via `environment_variables` is invalid. Based on the sharding mechanism
      # AndroidJUnitRunner uses, there is no guarantee that test cases will be
      # distributed uniformly across all shards.
      class AndroidInstrumentationTestUniformSharding
        include Google::Apis::Core::Hashable
      
        # Required. The total number of shards to create. This must always be a positive
        # number that is no greater than the total number of test cases. Limits: - For
        # physical devices, the number of shards must be <= 20. - For virtual devices,
        # the number of shards must be <= 200.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
        end
      end
      
      # Collects logcat output from the device. The output will be written to a file
      # named `logcat.txt` in the execution output directory.
      class AndroidLogcatDeviceAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Mocks the location of the Android device.
      class AndroidMockLocationDeviceAction
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DevicerunV1alpha::LatLng]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # The configuration of an Android native binary execution.
      class AndroidNativeBinary
        include Google::Apis::Core::Hashable
      
        # Input file.
        # Corresponds to the JSON property `androidNativeBinary`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :android_native_binary
      
        # Optional. Arguments for running the binary file. The flags will be appended to
        # the command line that invokes the binary. The number of options is limited to
        # 100.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Optional. A map of environment variables to set for the binary process. The
        # keys are the variable names and the values are the variable values. The
        # maximum number of entries is 100. Each key is limited to 128 characters and
        # must conform to POSIX standards. Each value is limited to 2048 characters. The
        # total size of all environment variables must not exceed 16 KiB.
        # Corresponds to the JSON property `envVars`
        # @return [Hash<String,String>]
        attr_accessor :env_vars
      
        # Optional. The timeout of the execution. Default value: 5 min. Range: [1 min, 3
        # hours].
        # Corresponds to the JSON property `executionTimeout`
        # @return [String]
        attr_accessor :execution_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_native_binary = args[:android_native_binary] if args.key?(:android_native_binary)
          @args = args[:args] if args.key?(:args)
          @env_vars = args[:env_vars] if args.key?(:env_vars)
          @execution_timeout = args[:execution_timeout] if args.key?(:execution_timeout)
        end
      end
      
      # Sets the orientation of the device.
      class AndroidOrientationDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. The orientation to set the device to. One of `portrait` or `
        # landscape`.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @orientation = args[:orientation] if args.key?(:orientation)
        end
      end
      
      # Pulls directories and files from the device at the end of the run. Files will
      # be copied to the '/artifacts' directory, with the absolute path structure
      # preserved. Note that: 1. A clean device is provided for the run. 2. Any
      # existing files in the output directory may be overwritten. 3. Pulling files is
      # best effort. Will skip files if they don't exist on the device.
      class AndroidPullFilesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. Absolute directory or file paths to pull from the device. Limits: -
        # A maximum of 10 paths are allowed.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # Pushes files to the device at the beginning of the run. Files are overwritten
      # if a file with the same path already exists on the device, if device
      # permissions allow.
      class AndroidPushFilesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. Configs of pushing files to the device. Limits: - A maximum of 50
        # files are allowed.
        # Corresponds to the JSON property `fileConfigs`
        # @return [Array<Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceActionFileConfig>]
        attr_accessor :file_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_configs = args[:file_configs] if args.key?(:file_configs)
        end
      end
      
      # The configuration of pushing a file to the device.
      class AndroidPushFilesDeviceActionFileConfig
        include Google::Apis::Core::Hashable
      
        # Required. The destination path on the device.
        # Corresponds to the JSON property `destinationPath`
        # @return [String]
        attr_accessor :destination_path
      
        # Input file.
        # Corresponds to the JSON property `sourceFile`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :source_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_path = args[:destination_path] if args.key?(:destination_path)
          @source_file = args[:source_file] if args.key?(:source_file)
        end
      end
      
      # Records a video of the device screen during the run. The video will be written
      # to a file named `video.mp4` in the execution output directory.
      class AndroidRecordVideoDeviceAction
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to discard and not upload the recording when the test passes.
        # Default is false.
        # Corresponds to the JSON property `discardOnPass`
        # @return [Boolean]
        attr_accessor :discard_on_pass
        alias_method :discard_on_pass?, :discard_on_pass
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discard_on_pass = args[:discard_on_pass] if args.key?(:discard_on_pass)
        end
      end
      
      # Switches the locale (language and region) of the device.
      class AndroidSwitchLocaleDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. The locale (language and region) to switch the device to. The format
        # is `language-region`, e.g. "en-US", "zh-CN", etc. The typical language value
        # is a two or three-letter language code as defined in ISO639. The typical
        # region value is a two-letter ISO 3166 code or a three-digit UN M.49 area code.
        # Corresponds to the JSON property `localeCode`
        # @return [String]
        attr_accessor :locale_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale_code = args[:locale_code] if args.key?(:locale_code)
        end
      end
      
      # Request to cancel a session.
      class CancelSessionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the cancel session request.
      class CancelSessionResponse
        include Google::Apis::Core::Hashable
      
        # The result of the request.
        # Corresponds to the JSON property `cancelResult`
        # @return [String]
        attr_accessor :cancel_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_result = args[:cancel_result] if args.key?(:cancel_result)
        end
      end
      
      # Android-specific device attributes.
      class CatalogAndroidDeviceDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Mirrors the AOSP `ro.build.type` property, e.g. "user", "
        # userdebug", "eng". Empty if unknown.
        # Corresponds to the JSON property `buildType`
        # @return [String]
        attr_accessor :build_type
      
        # Output only. Lists ABIs supported by the device (android.os.Build.
        # SUPPORTED_ABIS), most preferred first, e.g. "arm64-v8a".
        # Corresponds to the JSON property `supportedAbis`
        # @return [Array<String>]
        attr_accessor :supported_abis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_type = args[:build_type] if args.key?(:build_type)
          @supported_abis = args[:supported_abis] if args.key?(:supported_abis)
        end
      end
      
      # AndroidX Test Orchestrator-specific attributes. Reserved for future
      # orchestrator-only fields.
      class CatalogAndroidxTestOrchestratorDetails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Per-product metadata for the Automation (DeviceRun) product.
      class CatalogAutomationSupport
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A single routable device configuration in the catalog.
      class CatalogDevice
        include Google::Apis::Core::Hashable
      
        # Output only. Reasons for access denial. This model is accessible/usable if
        # this list is empty, otherwise the model is viewable only.
        # Corresponds to the JSON property `accessDeniedReasons`
        # @return [Array<String>]
        attr_accessor :access_denied_reasons
      
        # Android-specific device attributes.
        # Corresponds to the JSON property `androidDetails`
        # @return [Google::Apis::DevicerunV1alpha::CatalogAndroidDeviceDetails]
        attr_accessor :android_details
      
        # Fleet availability for a device configuration.
        # Corresponds to the JSON property `availability`
        # @return [Google::Apis::DevicerunV1alpha::CatalogDeviceAvailability]
        attr_accessor :availability
      
        # Output only. Provides a human-readable display name, e.g. "Pixel 5".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Specifies the form factor of the device.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # Output only. Indicates whether the device is physical or virtual.
        # Corresponds to the JSON property `hardwareType`
        # @return [String]
        attr_accessor :hardware_type
      
        # iOS-specific device attributes. Reserved for future iOS-only fields.
        # Corresponds to the JSON property `iosDetails`
        # @return [Google::Apis::DevicerunV1alpha::CatalogIosDeviceDetails]
        attr_accessor :ios_details
      
        # The lab hosting a device.
        # Corresponds to the JSON property `labInfo`
        # @return [Google::Apis::DevicerunV1alpha::CatalogLabInfo]
        attr_accessor :lab_info
      
        # Output only. Additional information. Informational only. May change over the
        # lifecycle of a device.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Catalog resource lifecycle: maturity state plus key lifecycle dates.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DevicerunV1alpha::CatalogLifecycle]
        attr_accessor :lifecycle
      
        # Output only. Specifies the hardware manufacturer of the device.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. Provides a human-readable model identifier for this device,
        # independent of OS version. May be empty. Platform-dependent: * Android
        # physical: hardware codename (android.os.Build.DEVICE), e.g. "shiba". * Android
        # virtual: AVD model identifier, e.g. "MediumPhone.arm". * iOS: model identifier,
        # e.g. "iphone14pro".
        # Corresponds to the JSON property `modelCode`
        # @return [String]
        attr_accessor :model_code
      
        # Identifier. Identifies the device resource. Format: `projects/`project`/
        # locations/`location`/devices/`device``. The `device` segment is an opaque,
        # stable string. Clients must not parse it to derive or assume device-specific
        # details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies the OS version, e.g. "30" (Android API level) or "17.4"
        # (iOS).
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. Specifies the platform of the device.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Screen measurements of a device.
        # Corresponds to the JSON property `primaryScreen`
        # @return [Google::Apis::DevicerunV1alpha::CatalogScreenMetrics]
        attr_accessor :primary_screen
      
        # Output only. Products/Services supported by this device.
        # Corresponds to the JSON property `supportedProducts`
        # @return [Array<Google::Apis::DevicerunV1alpha::CatalogSupportedProduct>]
        attr_accessor :supported_products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_denied_reasons = args[:access_denied_reasons] if args.key?(:access_denied_reasons)
          @android_details = args[:android_details] if args.key?(:android_details)
          @availability = args[:availability] if args.key?(:availability)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @hardware_type = args[:hardware_type] if args.key?(:hardware_type)
          @ios_details = args[:ios_details] if args.key?(:ios_details)
          @lab_info = args[:lab_info] if args.key?(:lab_info)
          @labels = args[:labels] if args.key?(:labels)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @model_code = args[:model_code] if args.key?(:model_code)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @platform = args[:platform] if args.key?(:platform)
          @primary_screen = args[:primary_screen] if args.key?(:primary_screen)
          @supported_products = args[:supported_products] if args.key?(:supported_products)
        end
      end
      
      # Fleet availability for a device configuration.
      class CatalogDeviceAvailability
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the current availability bucket (idle, immediately
        # allocatable devices) for this device configuration. This is a best-effort
        # snapshot, refreshed periodically. It fluctuates depending on traffic as other
        # requests allocate devices.
        # Corresponds to the JSON property `available`
        # @return [String]
        attr_accessor :available
      
        # Output only. Specifies the current capacity bucket for this device
        # configuration. Represents the total number of online devices (idle or in use).
        # Corresponds to the JSON property `capacity`
        # @return [String]
        attr_accessor :capacity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available = args[:available] if args.key?(:available)
          @capacity = args[:capacity] if args.key?(:capacity)
        end
      end
      
      # Per-product metadata for the DeviceStreaming product.
      class CatalogDeviceStreamingSupport
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the minimum Android Studio version that supports this
        # device. Optional; only set when the device is known to work only at or above a
        # certain Android Studio version. Expected format "major.minor.micro.patch", e.g.
        # "5921.22.2211.8881706".
        # Corresponds to the JSON property `minimumAndroidStudioVersion`
        # @return [String]
        attr_accessor :minimum_android_studio_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_android_studio_version = args[:minimum_android_studio_version] if args.key?(:minimum_android_studio_version)
        end
      end
      
      # iOS-specific device attributes. Reserved for future iOS-only fields.
      class CatalogIosDeviceDetails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The lab hosting a device.
      class CatalogLabInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Display name of the lab where the device is hosted. If empty, the
        # device is hosted in a Google owned lab.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The Unicode country/region code (CLDR) of the lab where the
        # device is hosted, e.g. "US" for United States, "KR" for South Korea. Empty
        # when the hosting region is not published.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Catalog resource lifecycle: maturity state plus key lifecycle dates.
      class CatalogLifecycle
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `removalDate`
        # @return [Google::Apis::DevicerunV1alpha::Date]
        attr_accessor :removal_date
      
        # Output only. Specifies the current maturity state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @removal_date = args[:removal_date] if args.key?(:removal_date)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response including listed devices.
      class CatalogListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::DevicerunV1alpha::CatalogDevice>]
        attr_accessor :devices
      
        # Token to receive the next page of devices. This will be absent if the end of
        # the response list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response including listed software versions.
      class CatalogListSoftwareVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of software versions. This will be absent if
        # the end of the response list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of software versions.
        # Corresponds to the JSON property `softwareVersions`
        # @return [Array<Google::Apis::DevicerunV1alpha::CatalogSoftwareVersion>]
        attr_accessor :software_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @software_versions = args[:software_versions] if args.key?(:software_versions)
        end
      end
      
      # Screen measurements of a device.
      class CatalogScreenMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. Pixel density in dots per inch (dpi).
        # Corresponds to the JSON property `densityDpi`
        # @return [Fixnum]
        attr_accessor :density_dpi
      
        # Output only. Height in pixels.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # Output only. Width in pixels.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @density_dpi = args[:density_dpi] if args.key?(:density_dpi)
          @height_px = args[:height_px] if args.key?(:height_px)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # A single software version in the catalog.
      class CatalogSoftwareVersion
        include Google::Apis::Core::Hashable
      
        # AndroidX Test Orchestrator-specific attributes. Reserved for future
        # orchestrator-only fields.
        # Corresponds to the JSON property `androidxTestOrchestratorDetails`
        # @return [Google::Apis::DevicerunV1alpha::CatalogAndroidxTestOrchestratorDetails]
        attr_accessor :androidx_test_orchestrator_details
      
        # Output only. Provides a human-readable name for this version, e.g. "AndroidX
        # Test Orchestrator 1.4.1".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Indicates whether the system uses this version when a request
        # does not select one explicitly. Exactly one version per `software_type` is the
        # default, and it may change over time.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Catalog resource lifecycle: maturity state plus key lifecycle dates.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DevicerunV1alpha::CatalogLifecycle]
        attr_accessor :lifecycle
      
        # Identifier. Identifies the software version resource. Format: `projects/`
        # project`/locations/`location`/softwareVersions/`software_version``. The `
        # software_version` segment is an opaque, stable string. Clients must not parse
        # it to derive or assume the version.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies which software this is a version of. Filter on this
        # field to narrow the collection to a single kind of software, for example `
        # software_type = "ANDROIDX_TEST_ORCHESTRATOR"`.
        # Corresponds to the JSON property `softwareType`
        # @return [String]
        attr_accessor :software_type
      
        # Output only. Specifies the version identifier, e.g. "1.4.1". Unique within a `
        # software_type`.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Xcode-specific attributes.
        # Corresponds to the JSON property `xcodeDetails`
        # @return [Google::Apis::DevicerunV1alpha::CatalogXcodeDetails]
        attr_accessor :xcode_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @androidx_test_orchestrator_details = args[:androidx_test_orchestrator_details] if args.key?(:androidx_test_orchestrator_details)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_default = args[:is_default] if args.key?(:is_default)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @name = args[:name] if args.key?(:name)
          @software_type = args[:software_type] if args.key?(:software_type)
          @version = args[:version] if args.key?(:version)
          @xcode_details = args[:xcode_details] if args.key?(:xcode_details)
        end
      end
      
      # Declares that a device supports a given Device Cloud product, with optional
      # per-product metadata. Discriminated by which product-specific message is set;
      # adding a new product = new oneof arm + new per-product message.
      class CatalogSupportedProduct
        include Google::Apis::Core::Hashable
      
        # Per-product metadata for the Automation (DeviceRun) product.
        # Corresponds to the JSON property `automation`
        # @return [Google::Apis::DevicerunV1alpha::CatalogAutomationSupport]
        attr_accessor :automation
      
        # Per-product metadata for the DeviceStreaming product.
        # Corresponds to the JSON property `deviceStreaming`
        # @return [Google::Apis::DevicerunV1alpha::CatalogDeviceStreamingSupport]
        attr_accessor :device_streaming
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automation = args[:automation] if args.key?(:automation)
          @device_streaming = args[:device_streaming] if args.key?(:device_streaming)
        end
      end
      
      # Xcode-specific attributes.
      class CatalogXcodeDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Lists the iOS versions this Xcode can run tests against, e.g. "16.
        # 6". This is a property of the toolchain, so it says nothing about whether a
        # device on that iOS version is available; list the `Device` collection to find
        # out.
        # Corresponds to the JSON property `supportedIosVersions`
        # @return [Array<String>]
        attr_accessor :supported_ios_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @supported_ios_versions = args[:supported_ios_versions] if args.key?(:supported_ios_versions)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # The action to be performed on a device.
      class DeviceAction
        include Google::Apis::Core::Hashable
      
        # Captures a bugreport from the device. The output will be written to a file
        # named `bugreport.zip` in the execution output directory.
        # Corresponds to the JSON property `androidBugreport`
        # @return [Google::Apis::DevicerunV1alpha::AndroidBugreportDeviceAction]
        attr_accessor :android_bugreport
      
        # Captures dumpsys output from the device. The output will be written to a file
        # named `dumpsys.log` in the execution output directory.
        # Corresponds to the JSON property `androidDumpsys`
        # @return [Google::Apis::DevicerunV1alpha::AndroidDumpsysDeviceAction]
        attr_accessor :android_dumpsys
      
        # Installs Android packages on the device. At least one installable is specified
        # when using this device action. Limits: - A maximum of 20 installables in total
        # are allowed. - A maximum of 100 files are allowed in total across all
        # installables.
        # Corresponds to the JSON property `androidInstallPackages`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstallPackagesDeviceAction]
        attr_accessor :android_install_packages
      
        # Collects logcat output from the device. The output will be written to a file
        # named `logcat.txt` in the execution output directory.
        # Corresponds to the JSON property `androidLogcat`
        # @return [Google::Apis::DevicerunV1alpha::AndroidLogcatDeviceAction]
        attr_accessor :android_logcat
      
        # Mocks the location of the Android device.
        # Corresponds to the JSON property `androidMockLocation`
        # @return [Google::Apis::DevicerunV1alpha::AndroidMockLocationDeviceAction]
        attr_accessor :android_mock_location
      
        # Sets the orientation of the device.
        # Corresponds to the JSON property `androidOrientation`
        # @return [Google::Apis::DevicerunV1alpha::AndroidOrientationDeviceAction]
        attr_accessor :android_orientation
      
        # Pulls directories and files from the device at the end of the run. Files will
        # be copied to the '/artifacts' directory, with the absolute path structure
        # preserved. Note that: 1. A clean device is provided for the run. 2. Any
        # existing files in the output directory may be overwritten. 3. Pulling files is
        # best effort. Will skip files if they don't exist on the device.
        # Corresponds to the JSON property `androidPullFiles`
        # @return [Google::Apis::DevicerunV1alpha::AndroidPullFilesDeviceAction]
        attr_accessor :android_pull_files
      
        # Pushes files to the device at the beginning of the run. Files are overwritten
        # if a file with the same path already exists on the device, if device
        # permissions allow.
        # Corresponds to the JSON property `androidPushFiles`
        # @return [Google::Apis::DevicerunV1alpha::AndroidPushFilesDeviceAction]
        attr_accessor :android_push_files
      
        # Records a video of the device screen during the run. The video will be written
        # to a file named `video.mp4` in the execution output directory.
        # Corresponds to the JSON property `androidRecordVideo`
        # @return [Google::Apis::DevicerunV1alpha::AndroidRecordVideoDeviceAction]
        attr_accessor :android_record_video
      
        # Switches the locale (language and region) of the device.
        # Corresponds to the JSON property `androidSwitchLocale`
        # @return [Google::Apis::DevicerunV1alpha::AndroidSwitchLocaleDeviceAction]
        attr_accessor :android_switch_locale
      
        # Collects the exported iOS App Privacy Report during the test run. When enabled,
        # the iOS device records application activity (such as network access, domain
        # requests, and sensitive resource access like photos, camera, or location) and
        # exports Apple's official App Privacy Report. The report will be written to a
        # file named `AppActivityReport.ndjson` in the execution output directory.
        # Corresponds to the JSON property `iosAppPrivacyReport`
        # @return [Google::Apis::DevicerunV1alpha::IosAppPrivacyReportDeviceAction]
        attr_accessor :ios_app_privacy_report
      
        # Installs iOS packages on the device.
        # Corresponds to the JSON property `iosInstallPackages`
        # @return [Google::Apis::DevicerunV1alpha::IosInstallPackagesDeviceAction]
        attr_accessor :ios_install_packages
      
        # Pulls directories and files from the iOS device sandbox at the end of the run.
        # Corresponds to the JSON property `iosPullFiles`
        # @return [Google::Apis::DevicerunV1alpha::IosPullFilesDeviceAction]
        attr_accessor :ios_pull_files
      
        # Pushes files to the iOS device sandbox at the beginning of the run.
        # Corresponds to the JSON property `iosPushFiles`
        # @return [Google::Apis::DevicerunV1alpha::IosPushFilesDeviceAction]
        attr_accessor :ios_push_files
      
        # Records a video of the iOS device screen during the run. The video will be
        # written to a file named `video.mp4` in the execution output directory.
        # Corresponds to the JSON property `iosRecordVideo`
        # @return [Google::Apis::DevicerunV1alpha::IosRecordVideoDeviceAction]
        attr_accessor :ios_record_video
      
        # Switches the locale (language and region) of the iOS application.
        # Corresponds to the JSON property `iosSwitchLocale`
        # @return [Google::Apis::DevicerunV1alpha::IosSwitchLocaleDeviceAction]
        attr_accessor :ios_switch_locale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_bugreport = args[:android_bugreport] if args.key?(:android_bugreport)
          @android_dumpsys = args[:android_dumpsys] if args.key?(:android_dumpsys)
          @android_install_packages = args[:android_install_packages] if args.key?(:android_install_packages)
          @android_logcat = args[:android_logcat] if args.key?(:android_logcat)
          @android_mock_location = args[:android_mock_location] if args.key?(:android_mock_location)
          @android_orientation = args[:android_orientation] if args.key?(:android_orientation)
          @android_pull_files = args[:android_pull_files] if args.key?(:android_pull_files)
          @android_push_files = args[:android_push_files] if args.key?(:android_push_files)
          @android_record_video = args[:android_record_video] if args.key?(:android_record_video)
          @android_switch_locale = args[:android_switch_locale] if args.key?(:android_switch_locale)
          @ios_app_privacy_report = args[:ios_app_privacy_report] if args.key?(:ios_app_privacy_report)
          @ios_install_packages = args[:ios_install_packages] if args.key?(:ios_install_packages)
          @ios_pull_files = args[:ios_pull_files] if args.key?(:ios_pull_files)
          @ios_push_files = args[:ios_push_files] if args.key?(:ios_push_files)
          @ios_record_video = args[:ios_record_video] if args.key?(:ios_record_video)
          @ios_switch_locale = args[:ios_switch_locale] if args.key?(:ios_switch_locale)
        end
      end
      
      # The configuration of a run on a device.
      class DeviceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The actions to be performed on the device. Actions will be executed
        # in the order they are specified in the list. Each action type can at most have
        # 1 instance in the list.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DevicerunV1alpha::DeviceAction>]
        attr_accessor :actions
      
        # The requirement of a device.
        # Corresponds to the JSON property `requirement`
        # @return [Google::Apis::DevicerunV1alpha::DeviceRequirement]
        attr_accessor :requirement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @requirement = args[:requirement] if args.key?(:requirement)
        end
      end
      
      # The requirement of a device.
      class DeviceRequirement
        include Google::Apis::Core::Hashable
      
        # The device ID of a device in the catalog. The device ID is the last part of a
        # device's resource name.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
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
      
      # The runtime information and result report of a single on-device execution
      # attempt.
      class ExecutionReport
        include Google::Apis::Core::Hashable
      
        # Output only. The display_name set by users in the ExecutionConfig.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The end time of the execution.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The unique identifier of the execution.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The output files of the execution.
        # Corresponds to the JSON property `outputFiles`
        # @return [Array<Google::Apis::DevicerunV1alpha::OutputFile>]
        attr_accessor :output_files
      
        # The result of a session/job/execution.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DevicerunV1alpha::Result]
        attr_accessor :result
      
        # Output only. The start time of the execution.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of a session/job/execution.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DevicerunV1alpha::Status]
        attr_accessor :status
      
        # Output only. Non-fatal warnings collected during the execution.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DevicerunV1alpha::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @output_files = args[:output_files] if args.key?(:output_files)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # A path to a file or directory in Google Cloud Storage.
      class GcsPath
        include Google::Apis::Core::Hashable
      
        # Required. The Google Cloud Storage path of the file or directory. Format: `gs:/
        # //`.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DevicerunV1alpha::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DevicerunV1alpha::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Input file.
      class InputFile
        include Google::Apis::Core::Hashable
      
        # A path to a file or directory in Google Cloud Storage.
        # Corresponds to the JSON property `gcsInputFile`
        # @return [Google::Apis::DevicerunV1alpha::GcsPath]
        attr_accessor :gcs_input_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_input_file = args[:gcs_input_file] if args.key?(:gcs_input_file)
        end
      end
      
      # Collects the exported iOS App Privacy Report during the test run. When enabled,
      # the iOS device records application activity (such as network access, domain
      # requests, and sensitive resource access like photos, camera, or location) and
      # exports Apple's official App Privacy Report. The report will be written to a
      # file named `AppActivityReport.ndjson` in the execution output directory.
      class IosAppPrivacyReportDeviceAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Installs iOS packages on the device.
      class IosInstallPackagesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. Additional iOS packages (IPAs) to install on the device. Limits: - A
        # maximum of 20 IPAs are allowed.
        # Corresponds to the JSON property `ipas`
        # @return [Array<Google::Apis::DevicerunV1alpha::InputFile>]
        attr_accessor :ipas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ipas = args[:ipas] if args.key?(:ipas)
        end
      end
      
      # Pulls directories and files from the iOS device sandbox at the end of the run.
      class IosPullFilesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. Absolute directory or file paths to pull from the device. Limits: -
        # A maximum of 10 paths are allowed.
        # Corresponds to the JSON property `paths`
        # @return [Array<Google::Apis::DevicerunV1alpha::IosPullFilesDeviceActionPathConfig>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # The configuration of pulling a file or directory from the iOS device.
      class IosPullFilesDeviceActionPathConfig
        include Google::Apis::Core::Hashable
      
        # Required. The bundle ID of the application sandbox.
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Required. The device path relative to the app sandbox, e.g. "/Documents/output/
        # ".
        # Corresponds to the JSON property `devicePath`
        # @return [String]
        attr_accessor :device_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @device_path = args[:device_path] if args.key?(:device_path)
        end
      end
      
      # Pushes files to the iOS device sandbox at the beginning of the run.
      class IosPushFilesDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. Configs of pushing files to the device. Limits: - A maximum of 50
        # files are allowed.
        # Corresponds to the JSON property `fileConfigs`
        # @return [Array<Google::Apis::DevicerunV1alpha::IosPushFilesDeviceActionFileConfig>]
        attr_accessor :file_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_configs = args[:file_configs] if args.key?(:file_configs)
        end
      end
      
      # The configuration of pushing a file to the iOS device.
      class IosPushFilesDeviceActionFileConfig
        include Google::Apis::Core::Hashable
      
        # Required. The bundle ID of the application sandbox.
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Required. The destination path relative to the app sandbox, e.g. "/Documents/
        # file.txt".
        # Corresponds to the JSON property `destinationPath`
        # @return [String]
        attr_accessor :destination_path
      
        # Input file.
        # Corresponds to the JSON property `sourceFile`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :source_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @destination_path = args[:destination_path] if args.key?(:destination_path)
          @source_file = args[:source_file] if args.key?(:source_file)
        end
      end
      
      # Records a video of the iOS device screen during the run. The video will be
      # written to a file named `video.mp4` in the execution output directory.
      class IosRecordVideoDeviceAction
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to discard the video if the test passes. If not specified,
        # the default is false (always keep the video).
        # Corresponds to the JSON property `discardOnPass`
        # @return [Boolean]
        attr_accessor :discard_on_pass
        alias_method :discard_on_pass?, :discard_on_pass
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discard_on_pass = args[:discard_on_pass] if args.key?(:discard_on_pass)
        end
      end
      
      # Switches the locale (language and region) of the iOS application.
      class IosSwitchLocaleDeviceAction
        include Google::Apis::Core::Hashable
      
        # Required. The locale (language and region) to switch the app to. The format is
        # `language-region` or `language`, e.g. "en-US", "zh-CN", "ja", etc.
        # Corresponds to the JSON property `localeCode`
        # @return [String]
        attr_accessor :locale_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale_code = args[:locale_code] if args.key?(:locale_code)
        end
      end
      
      # The configuration of an iOS XCTest.
      class IosXcTest
        include Google::Apis::Core::Hashable
      
        # Input file.
        # Corresponds to the JSON property `testsZip`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :tests_zip
      
        # Optional. The timeout of the test. Default value: 5 min. Range: [1 min, 3
        # hours].
        # Corresponds to the JSON property `xcTestTimeout`
        # @return [String]
        attr_accessor :xc_test_timeout
      
        # Optional. The Xcode version that should be used for the test. If not set, a
        # system-default Xcode version is used. The available Xcode versions can be
        # retrieved from the catalog service.
        # Corresponds to the JSON property `xcodeVersion`
        # @return [String]
        attr_accessor :xcode_version
      
        # Input file.
        # Corresponds to the JSON property `xctestrun`
        # @return [Google::Apis::DevicerunV1alpha::InputFile]
        attr_accessor :xctestrun
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tests_zip = args[:tests_zip] if args.key?(:tests_zip)
          @xc_test_timeout = args[:xc_test_timeout] if args.key?(:xc_test_timeout)
          @xcode_version = args[:xcode_version] if args.key?(:xcode_version)
          @xctestrun = args[:xctestrun] if args.key?(:xctestrun)
        end
      end
      
      # Describes the summary of an issue (error or warning) with structured details.
      class IssueSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Human-readable explanation of the issue in English.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The reason of the issue. This is a constant value that identifies
        # the proximate cause of the issue. This should be at most 63 characters and
        # match a regular expression of `A-Z*[A-Z0-9]`, which represents
        # UPPER_SNAKE_CASE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Output only. The issue classification based on responsibility.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The action to be performed in a job.
      class JobAction
        include Google::Apis::Core::Hashable
      
        # The configuration of an Android instrumentation test. See https://developer.
        # android.com/training/testing/instrumented-tests for more information on
        # Android instrumentation tests.
        # Corresponds to the JSON property `androidInstrumentationTest`
        # @return [Google::Apis::DevicerunV1alpha::AndroidInstrumentationTest]
        attr_accessor :android_instrumentation_test
      
        # The configuration of an Android native binary execution.
        # Corresponds to the JSON property `androidNativeBinary`
        # @return [Google::Apis::DevicerunV1alpha::AndroidNativeBinary]
        attr_accessor :android_native_binary
      
        # The configuration of an iOS XCTest.
        # Corresponds to the JSON property `iosXcTest`
        # @return [Google::Apis::DevicerunV1alpha::IosXcTest]
        attr_accessor :ios_xc_test
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_instrumentation_test = args[:android_instrumentation_test] if args.key?(:android_instrumentation_test)
          @android_native_binary = args[:android_native_binary] if args.key?(:android_native_binary)
          @ios_xc_test = args[:ios_xc_test] if args.key?(:ios_xc_test)
        end
      end
      
      # The configuration of a job.
      class JobConfig
        include Google::Apis::Core::Hashable
      
        # The action to be performed in a job.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::DevicerunV1alpha::JobAction]
        attr_accessor :action
      
        # Allocation config.
        # Corresponds to the JSON property `allocationConfig`
        # @return [Google::Apis::DevicerunV1alpha::AllocationConfig]
        attr_accessor :allocation_config
      
        # Optional. User-settable, human-readable name for the job. If set, it must be
        # unique within the session. If not set, the display name will default to `job-`,
        # where `` is the 0-based index of the job in the session formatted as three
        # digits (e.g., job-000, job-001, ...). Maximum size is 63 bytes when encoded as
        # UTF-8. If set, must match regex: `^A-Za-z0-9*$`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User-defined metadata for tracking or categorization. These labels
        # do not affect job execution and are surfaced in the JobReport. Limits: -
        # Maximum number of entries: 16. - Maximum key size: 32 bytes (UTF-8). - Maximum
        # value size: 1024 bytes (UTF-8).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Job settings to control the job execution.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::DevicerunV1alpha::JobSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @allocation_config = args[:allocation_config] if args.key?(:allocation_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # The runtime information and result report of a job.
      class JobReport
        include Google::Apis::Core::Hashable
      
        # Output only. The display_name set by users in the JobConfig.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The end time of the job.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Reports of the execution attempts of the job.
        # Corresponds to the JSON property `executionReports`
        # @return [Array<Google::Apis::DevicerunV1alpha::ExecutionReport>]
        attr_accessor :execution_reports
      
        # Output only. The unique identifier of the job.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The original labels provided by the user during job creation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The output files of the job.
        # Corresponds to the JSON property `outputFiles`
        # @return [Array<Google::Apis::DevicerunV1alpha::OutputFile>]
        attr_accessor :output_files
      
        # The result of a session/job/execution.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DevicerunV1alpha::Result]
        attr_accessor :result
      
        # Output only. The start time of the job.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of a session/job/execution.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DevicerunV1alpha::Status]
        attr_accessor :status
      
        # Output only. Non-fatal warnings collected during the job.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DevicerunV1alpha::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @execution_reports = args[:execution_reports] if args.key?(:execution_reports)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @output_files = args[:output_files] if args.key?(:output_files)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Job settings to control the job execution.
      class JobSettings
        include Google::Apis::Core::Hashable
      
        # Retry settings.
        # Corresponds to the JSON property `retrySettings`
        # @return [Google::Apis::DevicerunV1alpha::RetrySettings]
        attr_accessor :retry_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retry_settings = args[:retry_settings] if args.key?(:retry_settings)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DevicerunV1alpha::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response including listed sessions.
      class ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of sessions. This will be absent if the end of
        # the response list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of sessions.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::DevicerunV1alpha::Session>]
        attr_accessor :sessions
      
        # Unordered list. Sessions that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Output file.
      class OutputFile
        include Google::Apis::Core::Hashable
      
        # A path to a file or directory in Google Cloud Storage.
        # Corresponds to the JSON property `gcsOutputFile`
        # @return [Google::Apis::DevicerunV1alpha::GcsPath]
        attr_accessor :gcs_output_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_output_file = args[:gcs_output_file] if args.key?(:gcs_output_file)
        end
      end
      
      # The result of a session/job/execution.
      class Result
        include Google::Apis::Core::Hashable
      
        # Describes the cause of the non-passed result occurred during the execution.
        # Corresponds to the JSON property `cause`
        # @return [Google::Apis::DevicerunV1alpha::ResultCause]
        attr_accessor :cause
      
        # Output only. The result type of the session/job/execution.
        # Corresponds to the JSON property `resultType`
        # @return [String]
        attr_accessor :result_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @result_type = args[:result_type] if args.key?(:result_type)
        end
      end
      
      # Describes the cause of the non-passed result occurred during the execution.
      class ResultCause
        include Google::Apis::Core::Hashable
      
        # Describes the summary of an issue (error or warning) with structured details.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DevicerunV1alpha::IssueSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Retry settings.
      class RetrySettings
        include Google::Apis::Core::Hashable
      
        # Default retry strategy. It will retry on test failures for up to
        # flaky_test_attempts (including the initial run). It also retries on infra
        # issues for up to 2 attempts (including the initial run). So in total, an
        # execution can run up to flaky_test_attempts * 2 times in the worst case.
        # Corresponds to the JSON property `flakyTestRetryStrategy`
        # @return [Google::Apis::DevicerunV1alpha::RetrySettingsFlakyTestRetryStrategy]
        attr_accessor :flaky_test_retry_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flaky_test_retry_strategy = args[:flaky_test_retry_strategy] if args.key?(:flaky_test_retry_strategy)
        end
      end
      
      # Default retry strategy. It will retry on test failures for up to
      # flaky_test_attempts (including the initial run). It also retries on infra
      # issues for up to 2 attempts (including the initial run). So in total, an
      # execution can run up to flaky_test_attempts * 2 times in the worst case.
      class RetrySettingsFlakyTestRetryStrategy
        include Google::Apis::Core::Hashable
      
        # Required. The total attempts for flaky tests, including the initial run.
        # Default value: 1 (no retry). Range: [1, 5].
        # Corresponds to the JSON property `flakyTestAttempts`
        # @return [Fixnum]
        attr_accessor :flaky_test_attempts
      
        # Optional. Whether to retry the test failures in parallel. By default, the test
        # is retried sequentially. If true, when the initial attempt fails, (
        # flaky_test_attempts - 1) attempts will be triggered at the same time to run in
        # parallel.
        # Corresponds to the JSON property `parallelRetry`
        # @return [Boolean]
        attr_accessor :parallel_retry
        alias_method :parallel_retry?, :parallel_retry
      
        # Optional. The mode of test reduction for retry. If the test runner doesn't
        # support the specified test reduction mode, the request will be rejected with
        # an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `testReductionMode`
        # @return [String]
        attr_accessor :test_reduction_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flaky_test_attempts = args[:flaky_test_attempts] if args.key?(:flaky_test_attempts)
          @parallel_retry = args[:parallel_retry] if args.key?(:parallel_retry)
          @test_reduction_mode = args[:test_reduction_mode] if args.key?(:test_reduction_mode)
        end
      end
      
      # A session resource in the AutomationSession API. At a high level, `Session`
      # describes the configuration of one or multiple jobs, the state transitions it
      # goes through, and the results.
      class Session
        include Google::Apis::Core::Hashable
      
        # Identifier. The resource name of the session. Format: `projects/`project`/
        # locations/`location`/sessions/`session``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # SessionConfig is used to create a session.
        # Corresponds to the JSON property `sessionConfig`
        # @return [Google::Apis::DevicerunV1alpha::SessionConfig]
        attr_accessor :session_config
      
        # The runtime information and result report of a session.
        # Corresponds to the JSON property `sessionReport`
        # @return [Google::Apis::DevicerunV1alpha::SessionReport]
        attr_accessor :session_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @session_config = args[:session_config] if args.key?(:session_config)
          @session_report = args[:session_report] if args.key?(:session_report)
        end
      end
      
      # SessionConfig is used to create a session.
      class SessionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. User-settable, human-readable name for the session. Maximum size is
        # 63 bytes when encoded as UTF-8. If set, must match regex: `^A-Za-z0-9*$`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Configs of the jobs in the session.
        # Corresponds to the JSON property `jobConfigs`
        # @return [Array<Google::Apis::DevicerunV1alpha::JobConfig>]
        attr_accessor :job_configs
      
        # Config to control session notification.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DevicerunV1alpha::SessionConfigSessionNotificationConfig]
        attr_accessor :notification_config
      
        # Config to control session output file directory.
        # Corresponds to the JSON property `outputDirectoryConfig`
        # @return [Google::Apis::DevicerunV1alpha::SessionConfigSessionOutputFileDirectoryConfig]
        attr_accessor :output_directory_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @job_configs = args[:job_configs] if args.key?(:job_configs)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @output_directory_config = args[:output_directory_config] if args.key?(:output_directory_config)
        end
      end
      
      # Config to control session notification.
      class SessionConfigSessionNotificationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The Pub/Sub topics to which session events are published. Format: `
        # projects/`project`/topics/`topic``. See https://cloud.google.com/pubsub/docs/
        # admin#topic_and_subscription_name_restrictions
        # Corresponds to the JSON property `pubsubTopic`
        # @return [Array<String>]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # Config to control session output file directory.
      class SessionConfigSessionOutputFileDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to write output files directly under the output directory
        # instead of nesting them under service-generated subdirectories. By default (`
        # false`), output files are stored under `////`. When `true`, the session ID
        # subdirectory is never appended, and the job display name subdirectory is
        # appended only when the session has more than one job. Output files are
        # therefore stored under: - `//` for a single-job session. - `///` for a multi-
        # job session. Set this to `true` when the output directory is already unique
        # per session (for example, when a CI system generates it), to avoid redundant
        # nesting.
        # Corresponds to the JSON property `flatDirectoryStructure`
        # @return [Boolean]
        attr_accessor :flat_directory_structure
        alias_method :flat_directory_structure?, :flat_directory_structure
      
        # A path to a file or directory in Google Cloud Storage.
        # Corresponds to the JSON property `gcsOutputDirectory`
        # @return [Google::Apis::DevicerunV1alpha::GcsPath]
        attr_accessor :gcs_output_directory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flat_directory_structure = args[:flat_directory_structure] if args.key?(:flat_directory_structure)
          @gcs_output_directory = args[:gcs_output_directory] if args.key?(:gcs_output_directory)
        end
      end
      
      # The runtime information and result report of a session.
      class SessionReport
        include Google::Apis::Core::Hashable
      
        # Output only. The end time of the session.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The unique identifier of the session.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Reports of the jobs in the session.
        # Corresponds to the JSON property `jobReports`
        # @return [Array<Google::Apis::DevicerunV1alpha::JobReport>]
        attr_accessor :job_reports
      
        # The result of a session/job/execution.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DevicerunV1alpha::Result]
        attr_accessor :result
      
        # Output only. The start time of the session.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of a session/job/execution.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DevicerunV1alpha::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @job_reports = args[:job_reports] if args.key?(:job_reports)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The status of a session/job/execution.
      class Status
        include Google::Apis::Core::Hashable
      
        # Output only. Human-readable, detailed descriptions of the session/job/
        # execution's progress. For example: "Provisioning a device", "Starting Test".
        # Each message should contain only one line of text. During the course of
        # execution new data may be appended to the end of progress_messages.
        # Corresponds to the JSON property `progressMessages`
        # @return [Array<String>]
        attr_accessor :progress_messages
      
        # Output only. The status type of the session/job/execution.
        # Corresponds to the JSON property `statusType`
        # @return [String]
        attr_accessor :status_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @progress_messages = args[:progress_messages] if args.key?(:progress_messages)
          @status_type = args[:status_type] if args.key?(:status_type)
        end
      end
      
      # Non-fatal operational anomaly, lint observation, or execution insight.
      class Warning
        include Google::Apis::Core::Hashable
      
        # Describes the summary of an issue (error or warning) with structured details.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DevicerunV1alpha::IssueSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
    end
  end
end
