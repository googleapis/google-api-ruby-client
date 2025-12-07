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
    module FirebaseappdistributionV1alpha
      
      # Point for describing bounding boxes tap locations Top left is 0,0
      class AndroidxCrawlerOutputPoint
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `xCoordinate`
        # @return [Fixnum]
        attr_accessor :x_coordinate
      
        # 
        # Corresponds to the JSON property `yCoordinate`
        # @return [Fixnum]
        attr_accessor :y_coordinate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x_coordinate = args[:x_coordinate] if args.key?(:x_coordinate)
          @y_coordinate = args[:y_coordinate] if args.key?(:y_coordinate)
        end
      end
      
      # Rectangle for describing bounding boxes
      class AndroidxCrawlerOutputRectangle
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bottom`
        # @return [Fixnum]
        attr_accessor :bottom
      
        # 
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # 
        # Corresponds to the JSON property `right`
        # @return [Fixnum]
        attr_accessor :right
      
        # 
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom = args[:bottom] if args.key?(:bottom)
          @left = args[:left] if args.key?(:left)
          @right = args[:right] if args.key?(:right)
          @top = args[:top] if args.key?(:top)
        end
      end
      
      # A release of a Firebase app.
      class GoogleFirebaseAppdistroV1Release
        include Google::Apis::Core::Hashable
      
        # Output only. A signed link (which expires in one hour) to directly download
        # the app binary (IPA/APK/AAB) file.
        # Corresponds to the JSON property `binaryDownloadUri`
        # @return [String]
        attr_accessor :binary_download_uri
      
        # Output only. Build version of the release. For an Android release, the build
        # version is the `versionCode`. For an iOS release, the build version is the `
        # CFBundleVersion`.
        # Corresponds to the JSON property `buildVersion`
        # @return [String]
        attr_accessor :build_version
      
        # Output only. The time the release was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Display version of the release. For an Android release, the
        # display version is the `versionName`. For an iOS release, the display version
        # is the `CFBundleShortVersionString`.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # Output only. The time the release will expire.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. A link to the Firebase console displaying a single release.
        # Corresponds to the JSON property `firebaseConsoleUri`
        # @return [String]
        attr_accessor :firebase_console_uri
      
        # The name of the release resource. Format: `projects/`project_number`/apps/`app`
        # /releases/`release``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Notes that belong to a release.
        # Corresponds to the JSON property `releaseNotes`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1ReleaseNotes]
        attr_accessor :release_notes
      
        # Output only. A link to the release in the tester web clip or Android app that
        # lets testers (which were granted access to the app) view release notes and
        # install the app onto their devices.
        # Corresponds to the JSON property `testingUri`
        # @return [String]
        attr_accessor :testing_uri
      
        # Output only. The time the release was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_download_uri = args[:binary_download_uri] if args.key?(:binary_download_uri)
          @build_version = args[:build_version] if args.key?(:build_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_version = args[:display_version] if args.key?(:display_version)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @firebase_console_uri = args[:firebase_console_uri] if args.key?(:firebase_console_uri)
          @name = args[:name] if args.key?(:name)
          @release_notes = args[:release_notes] if args.key?(:release_notes)
          @testing_uri = args[:testing_uri] if args.key?(:testing_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Notes that belong to a release.
      class GoogleFirebaseAppdistroV1ReleaseNotes
        include Google::Apis::Core::Hashable
      
        # The text of the release notes.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Operation metadata for `UploadRelease`.
      class GoogleFirebaseAppdistroV1UploadReleaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `UploadRelease`.
      class GoogleFirebaseAppdistroV1UploadReleaseResponse
        include Google::Apis::Core::Hashable
      
        # A release of a Firebase app.
        # Corresponds to the JSON property `release`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1Release]
        attr_accessor :release
      
        # Result of upload release.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release = args[:release] if args.key?(:release)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # App bundle test certificate
      class GoogleFirebaseAppdistroV1alphaAabCertificate
        include Google::Apis::Core::Hashable
      
        # MD5 hash of the certificate used to resign the AAB
        # Corresponds to the JSON property `certificateHashMd5`
        # @return [String]
        attr_accessor :certificate_hash_md5
      
        # SHA1 hash of the certificate used to resign the AAB
        # Corresponds to the JSON property `certificateHashSha1`
        # @return [String]
        attr_accessor :certificate_hash_sha1
      
        # SHA256 hash of the certificate used to resign the AAB
        # Corresponds to the JSON property `certificateHashSha256`
        # @return [String]
        attr_accessor :certificate_hash_sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_hash_md5 = args[:certificate_hash_md5] if args.key?(:certificate_hash_md5)
          @certificate_hash_sha1 = args[:certificate_hash_sha1] if args.key?(:certificate_hash_sha1)
          @certificate_hash_sha256 = args[:certificate_hash_sha256] if args.key?(:certificate_hash_sha256)
        end
      end
      
      # 
      class GoogleFirebaseAppdistroV1alphaAiInstructions
        include Google::Apis::Core::Hashable
      
        # Required. Steps to be accomplished by the AI
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiStep>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # A step to be accomplished by the AI
      class GoogleFirebaseAppdistroV1alphaAiStep
        include Google::Apis::Core::Hashable
      
        # An assertion to be checked by the AI
        # Corresponds to the JSON property `assertion`
        # @return [String]
        attr_accessor :assertion
      
        # A goal to be accomplished by the AI
        # Corresponds to the JSON property `goal`
        # @return [String]
        attr_accessor :goal
      
        # Optional. Hint text containing suggestions to help the agent accomplish the
        # goal
        # Corresponds to the JSON property `hint`
        # @return [String]
        attr_accessor :hint
      
        # Optional. A description of criteria the agent should use to determine if the
        # goal has been successfully completed
        # Corresponds to the JSON property `successCriteria`
        # @return [String]
        attr_accessor :success_criteria
      
        # Output only. The test case that contained this step. Note: The test case may
        # have changed or been deleted since this step was created. Format: `projects/`
        # project_number`/apps/`app`/testCases/`test_case``
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion = args[:assertion] if args.key?(:assertion)
          @goal = args[:goal] if args.key?(:goal)
          @hint = args[:hint] if args.key?(:hint)
          @success_criteria = args[:success_criteria] if args.key?(:success_criteria)
          @test_case = args[:test_case] if args.key?(:test_case)
        end
      end
      
      # Captures the results of an AiStep
      class GoogleFirebaseAppdistroV1alphaAiStepResult
        include Google::Apis::Core::Hashable
      
        # Details for an assertion step.
        # Corresponds to the JSON property `assertionDetails`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAssertionDetails]
        attr_accessor :assertion_details
      
        # Details for a goal step.
        # Corresponds to the JSON property `goalDetails`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGoalDetails]
        attr_accessor :goal_details
      
        # Output only. The current state of the step
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A step to be accomplished by the AI
        # Corresponds to the JSON property `step`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiStep]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_details = args[:assertion_details] if args.key?(:assertion_details)
          @goal_details = args[:goal_details] if args.key?(:goal_details)
          @state = args[:state] if args.key?(:state)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # An app.
      class GoogleFirebaseAppdistroV1alphaApp
        include Google::Apis::Core::Hashable
      
        # App bundle test certificate
        # Corresponds to the JSON property `aabCertificate`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAabCertificate]
        attr_accessor :aab_certificate
      
        # App bundle state. Only valid for android apps. The app_view field in the
        # request must be set to FULL in order for this to be populated.
        # Corresponds to the JSON property `aabState`
        # @return [String]
        attr_accessor :aab_state
      
        # Firebase gmp app id
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Bundle identifier
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Developer contact email for testers to reach out to about privacy or support
        # issues.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # iOS or Android
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Project number of the Firebase project, for example 300830567303.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aab_certificate = args[:aab_certificate] if args.key?(:aab_certificate)
          @aab_state = args[:aab_state] if args.key?(:aab_state)
          @app_id = args[:app_id] if args.key?(:app_id)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @platform = args[:platform] if args.key?(:platform)
          @project_number = args[:project_number] if args.key?(:project_number)
        end
      end
      
      # An app crash that occurred during an automated test.
      class GoogleFirebaseAppdistroV1alphaAppCrash
        include Google::Apis::Core::Hashable
      
        # Output only. The message associated with the crash.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The raw stack trace.
        # Corresponds to the JSON property `stackTrace`
        # @return [String]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # Details for an assertion step.
      class GoogleFirebaseAppdistroV1alphaAssertionDetails
        include Google::Apis::Core::Hashable
      
        # Output only. An explanation justifying the assertion result.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # Output only. The result of the assertion.
        # Corresponds to the JSON property `result`
        # @return [Boolean]
        attr_accessor :result
        alias_method :result?, :result
      
        # A device screenshot taken during a test.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaScreenshot]
        attr_accessor :screenshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @result = args[:result] if args.key?(:result)
          @screenshot = args[:screenshot] if args.key?(:screenshot)
        end
      end
      
      # The request message for `BatchDeleteTestCase`.
      class GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the test cases to delete. A maximum number of 1000 test
        # cases can be deleted in one batch Format: `projects/`project_number`/apps/`app`
        # /testCases/`test_case``
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # The request message for `BatchUpdateTestCase`.
      class GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The update requests. A maximum number of 1000 test cases can be
        # updated in one batch
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaUpdateTestCaseRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # The response message for `BatchUpdateTestCase`.
      class GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The updated test cases.
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # The (empty) response message for `CancelReleaseTest`.
      class GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `ClearTestCaseCache`.
      class GoogleFirebaseAppdistroV1alphaClearTestCaseCacheRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The list of devices for which to clear the cache. If not present,
        # clear all of them.
        # Corresponds to the JSON property `testDevices`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestDevice>]
        attr_accessor :test_devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_devices = args[:test_devices] if args.key?(:test_devices)
        end
      end
      
      # Response empty (google.protobuf.Empty) message for `ClearTestCaseCache`
      class GoogleFirebaseAppdistroV1alphaClearTestCaseCacheResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for `CreateReleaseNotes`.
      class GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest
        include Google::Apis::Core::Hashable
      
        # Release notes for a release.
        # Corresponds to the JSON property `releaseNotes`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseNotes]
        attr_accessor :release_notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release_notes = args[:release_notes] if args.key?(:release_notes)
        end
      end
      
      # The response message for `CreateReleaseNotes`.
      class GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A high level action taken by the AI on the device, potentially involving
      # multiple taps, text entries, waits, etc.
      class GoogleFirebaseAppdistroV1alphaDeviceAction
        include Google::Apis::Core::Hashable
      
        # Output only. A short description of the high level action taken by the AI
        # agent.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The interactions made with the device as part of this higher
        # level action taken by the agent, such as taps, text entries, waits, etc.
        # Corresponds to the JSON property `deviceInteractions`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteraction>]
        attr_accessor :device_interactions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @device_interactions = args[:device_interactions] if args.key?(:device_interactions)
        end
      end
      
      # The results of running an automated test on a particular device.
      class GoogleFirebaseAppdistroV1alphaDeviceExecution
        include Google::Apis::Core::Hashable
      
        # Output only. Results of the AI steps if passed in
        # Corresponds to the JSON property `aiStepResults`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiStepResult>]
        attr_accessor :ai_step_results
      
        # An app crash that occurred during an automated test.
        # Corresponds to the JSON property `appCrash`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAppCrash]
        attr_accessor :app_crash
      
        # Output only. A URI to an image of the Robo crawl graph.
        # Corresponds to the JSON property `crawlGraphUri`
        # @return [String]
        attr_accessor :crawl_graph_uri
      
        # A device on which automated tests can be run.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestDevice]
        attr_accessor :device
      
        # Output only. The type of execution for the test.
        # Corresponds to the JSON property `executionType`
        # @return [String]
        attr_accessor :execution_type
      
        # Output only. The reason why the test failed.
        # Corresponds to the JSON property `failedReason`
        # @return [String]
        attr_accessor :failed_reason
      
        # Output only. Indicates that the test replayed saved actions and concluded
        # without a final AI assertion.
        # Corresponds to the JSON property `finalAiAssertionMissing`
        # @return [Boolean]
        attr_accessor :final_ai_assertion_missing
        alias_method :final_ai_assertion_missing?, :final_ai_assertion_missing
      
        # Output only. The reason why the test was inconclusive.
        # Corresponds to the JSON property `inconclusiveReason`
        # @return [String]
        attr_accessor :inconclusive_reason
      
        # Identifier. The name of the device execution resource. Format: `projects/`
        # project_number`/apps/`app`/releases/`release`/tests/`test`/deviceExecutions/`
        # device_execution``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The device execution from which cached steps were used during
        # this execution. Note: This field is only populated for ACTION_BASED_REPLAY
        # executions. If the original device execution no longer exists, this field will
        # be empty. Format: `projects/`project_number`/apps/`app`/releases/`release`/
        # tests/`test`/deviceExecutions/`device_execution``
        # Corresponds to the JSON property `originDeviceExecution`
        # @return [String]
        attr_accessor :origin_device_execution
      
        # Output only. The path to a directory in Cloud Storage that will eventually
        # contain the results for this execution. For example, gs://bucket/Nexus5-18-en-
        # portrait.
        # Corresponds to the JSON property `resultsStoragePath`
        # @return [String]
        attr_accessor :results_storage_path
      
        # Statistics collected during a Robo test.
        # Corresponds to the JSON property `roboStats`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaRoboStats]
        attr_accessor :robo_stats
      
        # Output only. A list of screenshot image URIs taken from the Robo crawl. The
        # file names are numbered by the order in which they were taken.
        # Corresponds to the JSON property `screenshotUris`
        # @return [Array<String>]
        attr_accessor :screenshot_uris
      
        # Output only. The state of the test.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the video started recording.
        # Corresponds to the JSON property `videoStartTime`
        # @return [String]
        attr_accessor :video_start_time
      
        # Output only. A URI to a video of the test run.
        # Corresponds to the JSON property `videoUri`
        # @return [String]
        attr_accessor :video_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_step_results = args[:ai_step_results] if args.key?(:ai_step_results)
          @app_crash = args[:app_crash] if args.key?(:app_crash)
          @crawl_graph_uri = args[:crawl_graph_uri] if args.key?(:crawl_graph_uri)
          @device = args[:device] if args.key?(:device)
          @execution_type = args[:execution_type] if args.key?(:execution_type)
          @failed_reason = args[:failed_reason] if args.key?(:failed_reason)
          @final_ai_assertion_missing = args[:final_ai_assertion_missing] if args.key?(:final_ai_assertion_missing)
          @inconclusive_reason = args[:inconclusive_reason] if args.key?(:inconclusive_reason)
          @name = args[:name] if args.key?(:name)
          @origin_device_execution = args[:origin_device_execution] if args.key?(:origin_device_execution)
          @results_storage_path = args[:results_storage_path] if args.key?(:results_storage_path)
          @robo_stats = args[:robo_stats] if args.key?(:robo_stats)
          @screenshot_uris = args[:screenshot_uris] if args.key?(:screenshot_uris)
          @state = args[:state] if args.key?(:state)
          @video_start_time = args[:video_start_time] if args.key?(:video_start_time)
          @video_uri = args[:video_uri] if args.key?(:video_uri)
        end
      end
      
      # An interaction with the device, such as a tap, text entry, wait, etc.
      class GoogleFirebaseAppdistroV1alphaDeviceInteraction
        include Google::Apis::Core::Hashable
      
        # A back action.
        # Corresponds to the JSON property `backAction`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteractionBack]
        attr_accessor :back_action
      
        # A drag and drop action.
        # Corresponds to the JSON property `dragAndDrop`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteractionDragAndDrop]
        attr_accessor :drag_and_drop
      
        # A text entry action, that enters text into a particular text field, clearing
        # any existing text in the field.
        # Corresponds to the JSON property `enterText`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText]
        attr_accessor :enter_text
      
        # Output only. Key code for a key event action.
        # Corresponds to the JSON property `keyCode`
        # @return [String]
        attr_accessor :key_code
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `longPress`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :long_press
      
        # A device screenshot taken during a test.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaScreenshot]
        attr_accessor :screenshot
      
        # A swipe action.
        # Corresponds to the JSON property `swipe`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe]
        attr_accessor :swipe
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `tap`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :tap_prop
      
        # Output only. A text input action, that types some text into whatever field is
        # currently focused, if any. Unlike `enter_text` this action requires that the
        # field be brought into focus first, for example by emitting a tap action before
        # this one.
        # Corresponds to the JSON property `textInput`
        # @return [String]
        attr_accessor :text_input
      
        # A wait action.
        # Corresponds to the JSON property `wait`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceInteractionWait]
        attr_accessor :wait
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @back_action = args[:back_action] if args.key?(:back_action)
          @drag_and_drop = args[:drag_and_drop] if args.key?(:drag_and_drop)
          @enter_text = args[:enter_text] if args.key?(:enter_text)
          @key_code = args[:key_code] if args.key?(:key_code)
          @long_press = args[:long_press] if args.key?(:long_press)
          @screenshot = args[:screenshot] if args.key?(:screenshot)
          @swipe = args[:swipe] if args.key?(:swipe)
          @tap_prop = args[:tap_prop] if args.key?(:tap_prop)
          @text_input = args[:text_input] if args.key?(:text_input)
          @wait = args[:wait] if args.key?(:wait)
        end
      end
      
      # A back action.
      class GoogleFirebaseAppdistroV1alphaDeviceInteractionBack
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A drag and drop action.
      class GoogleFirebaseAppdistroV1alphaDeviceInteractionDragAndDrop
        include Google::Apis::Core::Hashable
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :end
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A text entry action, that enters text into a particular text field, clearing
      # any existing text in the field.
      class GoogleFirebaseAppdistroV1alphaDeviceInteractionEnterText
        include Google::Apis::Core::Hashable
      
        # Rectangle for describing bounding boxes
        # Corresponds to the JSON property `elementBounds`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputRectangle]
        attr_accessor :element_bounds
      
        # Output only. The text to enter.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @element_bounds = args[:element_bounds] if args.key?(:element_bounds)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A swipe action.
      class GoogleFirebaseAppdistroV1alphaDeviceInteractionSwipe
        include Google::Apis::Core::Hashable
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :end
      
        # Point for describing bounding boxes tap locations Top left is 0,0
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::AndroidxCrawlerOutputPoint]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A wait action.
      class GoogleFirebaseAppdistroV1alphaDeviceInteractionWait
        include Google::Apis::Core::Hashable
      
        # Output only. The duration of the wait.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # The request message for `EnableAccessOnRelease`.
      class GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Ignored. Used to be build version of the app release if an instance
        # identifier was provided for the release_id.
        # Corresponds to the JSON property `buildVersion`
        # @return [String]
        attr_accessor :build_version
      
        # Optional. Ignored. Used to be display version of the app release if an
        # instance identifier was provided for the release_id.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # Optional. An email address which should get access to this release, for
        # example rebeccahe@google.com
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        # Optional. A repeated list of group aliases to enable access to a release for
        # Note: This field is misnamed, but can't be changed because we need to maintain
        # compatibility with old build tools
        # Corresponds to the JSON property `groupIds`
        # @return [Array<String>]
        attr_accessor :group_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_version = args[:build_version] if args.key?(:build_version)
          @display_version = args[:display_version] if args.key?(:display_version)
          @emails = args[:emails] if args.key?(:emails)
          @group_ids = args[:group_ids] if args.key?(:group_ids)
        end
      end
      
      # The response message for `EnableAccessOnRelease`.
      class GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response object to get the release given a upload hash
      class GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
        include Google::Apis::Core::Hashable
      
        # Proto defining a release object
        # Corresponds to the JSON property `release`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaRelease]
        attr_accessor :release
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release = args[:release] if args.key?(:release)
        end
      end
      
      # Response containing the UDIDs of tester iOS devices in a project
      class GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse
        include Google::Apis::Core::Hashable
      
        # The UDIDs of tester iOS devices in a project
        # Corresponds to the JSON property `testerUdids`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTesterUdid>]
        attr_accessor :tester_udids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tester_udids = args[:tester_udids] if args.key?(:tester_udids)
        end
      end
      
      # The response message for `GetUploadStatus`.
      class GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse
        include Google::Apis::Core::Hashable
      
        # The error code associated with (only set on "FAILURE")
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Any additional context for the given upload status (e.g. error message) Meant
        # to be displayed to the client
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Proto defining a release object
        # Corresponds to the JSON property `release`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaRelease]
        attr_accessor :release
      
        # The status of the upload
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @message = args[:message] if args.key?(:message)
          @release = args[:release] if args.key?(:release)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # An action taken by the AI agent while attempting to accomplish a goal.
      class GoogleFirebaseAppdistroV1alphaGoalAction
        include Google::Apis::Core::Hashable
      
        # Output only. The type of caching used to determine the action.
        # Corresponds to the JSON property `cachingType`
        # @return [String]
        attr_accessor :caching_type
      
        # Information to help the customer understand why the agent took this action.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo]
        attr_accessor :debug_info
      
        # A high level action taken by the AI on the device, potentially involving
        # multiple taps, text entries, waits, etc.
        # Corresponds to the JSON property `deviceAction`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceAction]
        attr_accessor :device_action
      
        # Output only. An explanation justifying why the action was taken.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # Output only. The time at which the action started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # An action taken by the AI to end the goal.
        # Corresponds to the JSON property `terminalAction`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTerminalAction]
        attr_accessor :terminal_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caching_type = args[:caching_type] if args.key?(:caching_type)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @device_action = args[:device_action] if args.key?(:device_action)
          @explanation = args[:explanation] if args.key?(:explanation)
          @start_time = args[:start_time] if args.key?(:start_time)
          @terminal_action = args[:terminal_action] if args.key?(:terminal_action)
        end
      end
      
      # Information to help the customer understand why the agent took this action.
      class GoogleFirebaseAppdistroV1alphaGoalActionDebugInfo
        include Google::Apis::Core::Hashable
      
        # Output only. URI of the screenshot with elements labeled which was used by the
        # agent.
        # Corresponds to the JSON property `annotatedScreenshotUri`
        # @return [String]
        attr_accessor :annotated_screenshot_uri
      
        # Output only. Structured data explaining the agent's choice.
        # Corresponds to the JSON property `jsonUri`
        # @return [String]
        attr_accessor :json_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_screenshot_uri = args[:annotated_screenshot_uri] if args.key?(:annotated_screenshot_uri)
          @json_uri = args[:json_uri] if args.key?(:json_uri)
        end
      end
      
      # Details for a goal step.
      class GoogleFirebaseAppdistroV1alphaGoalDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The actions taken by the AI while attempting to accomplish the
        # goal.
        # Corresponds to the JSON property `goalActions`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGoalAction>]
        attr_accessor :goal_actions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @goal_actions = args[:goal_actions] if args.key?(:goal_actions)
        end
      end
      
      # A JWT token.
      class GoogleFirebaseAppdistroV1alphaJwt
        include Google::Apis::Core::Hashable
      
        # The JWT token (three Base64URL-encoded strings joined by dots).
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # The response message for `ListReleaseTests`.
      class GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse
        include Google::Apis::Core::Hashable
      
        # A short-lived token, which can be sent as `pageToken` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The tests listed.
        # Corresponds to the JSON property `releaseTests`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest>]
        attr_accessor :release_tests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @release_tests = args[:release_tests] if args.key?(:release_tests)
        end
      end
      
      # The response message for `ListTestCases`.
      class GoogleFirebaseAppdistroV1alphaListTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The test cases from the specified app.
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase>]
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
      
      # Login credential for automated tests
      class GoogleFirebaseAppdistroV1alphaLoginCredential
        include Google::Apis::Core::Hashable
      
        # Hints to the crawler for identifying input fields
        # Corresponds to the JSON property `fieldHints`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints]
        attr_accessor :field_hints
      
        # Optional. Are these credentials for Google?
        # Corresponds to the JSON property `google`
        # @return [Boolean]
        attr_accessor :google
        alias_method :google?, :google
      
        # Optional. Password for automated tests
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Username for automated tests
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_hints = args[:field_hints] if args.key?(:field_hints)
          @google = args[:google] if args.key?(:google)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Hints to the crawler for identifying input fields
      class GoogleFirebaseAppdistroV1alphaLoginCredentialFieldHints
        include Google::Apis::Core::Hashable
      
        # Required. The Android resource name of the password UI element. For example,
        # in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed.
        # Reference doc: https://developer.android.com/guide/topics/resources/accessing-
        # resources.html
        # Corresponds to the JSON property `passwordResourceName`
        # @return [String]
        attr_accessor :password_resource_name
      
        # Required. The Android resource name of the username UI element. For example,
        # in Java: R.string.foo in xml: @string/foo Only the "foo" part is needed.
        # Reference doc: https://developer.android.com/guide/topics/resources/accessing-
        # resources.html
        # Corresponds to the JSON property `usernameResourceName`
        # @return [String]
        attr_accessor :username_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password_resource_name = args[:password_resource_name] if args.key?(:password_resource_name)
          @username_resource_name = args[:username_resource_name] if args.key?(:username_resource_name)
        end
      end
      
      # Proto defining a release object
      class GoogleFirebaseAppdistroV1alphaRelease
        include Google::Apis::Core::Hashable
      
        # Release build version
        # Corresponds to the JSON property `buildVersion`
        # @return [String]
        attr_accessor :build_version
      
        # Release version
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # Timestamp when the release was created
        # Corresponds to the JSON property `distributedAt`
        # @return [String]
        attr_accessor :distributed_at
      
        # Release Id
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Instance id of the release
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Last activity timestamp
        # Corresponds to the JSON property `lastActivityAt`
        # @return [String]
        attr_accessor :last_activity_at
      
        # Number of testers who have open invitations for the release
        # Corresponds to the JSON property `openInvitationCount`
        # @return [Fixnum]
        attr_accessor :open_invitation_count
      
        # unused.
        # Corresponds to the JSON property `receivedAt`
        # @return [String]
        attr_accessor :received_at
      
        # Release notes summary
        # Corresponds to the JSON property `releaseNotesSummary`
        # @return [String]
        attr_accessor :release_notes_summary
      
        # Count of testers added to the release
        # Corresponds to the JSON property `testerCount`
        # @return [Fixnum]
        attr_accessor :tester_count
      
        # Number of testers who have installed the release
        # Corresponds to the JSON property `testerWithInstallCount`
        # @return [Fixnum]
        attr_accessor :tester_with_install_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_version = args[:build_version] if args.key?(:build_version)
          @display_version = args[:display_version] if args.key?(:display_version)
          @distributed_at = args[:distributed_at] if args.key?(:distributed_at)
          @id = args[:id] if args.key?(:id)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @last_activity_at = args[:last_activity_at] if args.key?(:last_activity_at)
          @open_invitation_count = args[:open_invitation_count] if args.key?(:open_invitation_count)
          @received_at = args[:received_at] if args.key?(:received_at)
          @release_notes_summary = args[:release_notes_summary] if args.key?(:release_notes_summary)
          @tester_count = args[:tester_count] if args.key?(:tester_count)
          @tester_with_install_count = args[:tester_with_install_count] if args.key?(:tester_with_install_count)
        end
      end
      
      # Release notes for a release.
      class GoogleFirebaseAppdistroV1alphaReleaseNotes
        include Google::Apis::Core::Hashable
      
        # The actual release notes text from the user.
        # Corresponds to the JSON property `releaseNotes`
        # @return [String]
        attr_accessor :release_notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release_notes = args[:release_notes] if args.key?(:release_notes)
        end
      end
      
      # Instance of an automated test for a release.
      class GoogleFirebaseAppdistroV1alphaReleaseTest
        include Google::Apis::Core::Hashable
      
        # Optional. Instructions for AI driven test.
        # Corresponds to the JSON property `aiInstructions`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiInstructions]
        attr_accessor :ai_instructions
      
        # Output only. Timestamp when the test was run.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The results of the test on each device.
        # Corresponds to the JSON property `deviceExecutions`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaDeviceExecution>]
        attr_accessor :device_executions
      
        # Optional. Display name of the release test. Required if the release test is
        # created with multiple goals.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Login credential for automated tests
        # Corresponds to the JSON property `loginCredential`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaLoginCredential]
        attr_accessor :login_credential
      
        # The name of the release test resource. Format: `projects/`project_number`/apps/
        # `app`/releases/`release`/tests/`test``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The test case that was used to generate this release test. Note: The
        # test case may have changed or been deleted since the release test was created.
        # Format: `projects/`project_number`/apps/`app`/testCases/`test_case``
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        # Output only. The state of the release test.
        # Corresponds to the JSON property `testState`
        # @return [String]
        attr_accessor :test_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_instructions = args[:ai_instructions] if args.key?(:ai_instructions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @device_executions = args[:device_executions] if args.key?(:device_executions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @login_credential = args[:login_credential] if args.key?(:login_credential)
          @name = args[:name] if args.key?(:name)
          @test_case = args[:test_case] if args.key?(:test_case)
          @test_state = args[:test_state] if args.key?(:test_state)
        end
      end
      
      # Configuration for Robo crawler
      class GoogleFirebaseAppdistroV1alphaRoboCrawler
        include Google::Apis::Core::Hashable
      
        # Optional. Instructions for AI driven test
        # Corresponds to the JSON property `aiInstructions`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiInstructions]
        attr_accessor :ai_instructions
      
        # Login credential for automated tests
        # Corresponds to the JSON property `loginCredential`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaLoginCredential]
        attr_accessor :login_credential
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_instructions = args[:ai_instructions] if args.key?(:ai_instructions)
          @login_credential = args[:login_credential] if args.key?(:login_credential)
        end
      end
      
      # Statistics collected during a Robo test.
      class GoogleFirebaseAppdistroV1alphaRoboStats
        include Google::Apis::Core::Hashable
      
        # Output only. Number of actions that crawler performed.
        # Corresponds to the JSON property `actionsPerformed`
        # @return [Fixnum]
        attr_accessor :actions_performed
      
        # Output only. Duration of crawl.
        # Corresponds to the JSON property `crawlDuration`
        # @return [String]
        attr_accessor :crawl_duration
      
        # Output only. Number of distinct screens visited.
        # Corresponds to the JSON property `distinctVisitedScreens`
        # @return [Fixnum]
        attr_accessor :distinct_visited_screens
      
        # Output only. Whether the main activity crawl timed out.
        # Corresponds to the JSON property `mainActivityCrawlTimedOut`
        # @return [Boolean]
        attr_accessor :main_activity_crawl_timed_out
        alias_method :main_activity_crawl_timed_out?, :main_activity_crawl_timed_out
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions_performed = args[:actions_performed] if args.key?(:actions_performed)
          @crawl_duration = args[:crawl_duration] if args.key?(:crawl_duration)
          @distinct_visited_screens = args[:distinct_visited_screens] if args.key?(:distinct_visited_screens)
          @main_activity_crawl_timed_out = args[:main_activity_crawl_timed_out] if args.key?(:main_activity_crawl_timed_out)
        end
      end
      
      # A device screenshot taken during a test.
      class GoogleFirebaseAppdistroV1alphaScreenshot
        include Google::Apis::Core::Hashable
      
        # Output only. The height of the screenshot, in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Output only. The URI of the screenshot.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Output only. The width of the screenshot, in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @uri = args[:uri] if args.key?(:uri)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # An action taken by the AI to end the goal.
      class GoogleFirebaseAppdistroV1alphaTerminalAction
        include Google::Apis::Core::Hashable
      
        # Output only. The reason why this goal was ended.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # A device screenshot taken during a test.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaScreenshot]
        attr_accessor :screenshot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @screenshot = args[:screenshot] if args.key?(:screenshot)
        end
      end
      
      # AI test cases
      class GoogleFirebaseAppdistroV1alphaTestCase
        include Google::Apis::Core::Hashable
      
        # Optional. Instructions for AI driven test.
        # Corresponds to the JSON property `aiInstructions`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaAiInstructions]
        attr_accessor :ai_instructions
      
        # Output only. Timestamp when the test case was created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Other test cases that depend on this test case as a prerequisite.
        # Corresponds to the JSON property `dependentTestCases`
        # @return [Array<String>]
        attr_accessor :dependent_test_cases
      
        # Required. Display name of the test case.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The name of the test case resource. Format: `projects/`
        # project_number`/apps/`app`/testCases/`test_case``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Test case that must be run before this test case.
        # Corresponds to the JSON property `prerequisiteTestCase`
        # @return [String]
        attr_accessor :prerequisite_test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ai_instructions = args[:ai_instructions] if args.key?(:ai_instructions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dependent_test_cases = args[:dependent_test_cases] if args.key?(:dependent_test_cases)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @prerequisite_test_case = args[:prerequisite_test_case] if args.key?(:prerequisite_test_case)
        end
      end
      
      # Configuration for automated tests
      class GoogleFirebaseAppdistroV1alphaTestConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Display name of the AI driven test. Required if the release test is
        # created with multiple goals.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The name of the test configuration resource. Format: `projects/`
        # project_number`/apps/`app`/testConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for Robo crawler
        # Corresponds to the JSON property `roboCrawler`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaRoboCrawler]
        attr_accessor :robo_crawler
      
        # Optional. Tests will be run on this list of devices
        # Corresponds to the JSON property `testDevices`
        # @return [Array<Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestDevice>]
        attr_accessor :test_devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @robo_crawler = args[:robo_crawler] if args.key?(:robo_crawler)
          @test_devices = args[:test_devices] if args.key?(:test_devices)
        end
      end
      
      # A device on which automated tests can be run.
      class GoogleFirebaseAppdistroV1alphaTestDevice
        include Google::Apis::Core::Hashable
      
        # Optional. The locale of the device (e.g. "en_US" for US English) during the
        # test.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Required. The device model.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. The orientation of the device during the test.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Required. The version of the device (API level on Android).
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @model = args[:model] if args.key?(:model)
          @orientation = args[:orientation] if args.key?(:orientation)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Customer quota information for `ReleaseTests`. Note: This quota only applies
      # to tests with `AiInstructions` and is separate from the quota which might
      # apply to the device time used by any tests.
      class GoogleFirebaseAppdistroV1alphaTestQuota
        include Google::Apis::Core::Hashable
      
        # Output only. Maximum number of `ReleaseTests` allotted for the current month.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Identifier. The name of the `TestQuota` resource. Format: `projects/`
        # project_number`/testQuota`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of `ReleaseTests` run in the current month
        # Corresponds to the JSON property `usage`
        # @return [Fixnum]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limit = args[:limit] if args.key?(:limit)
          @name = args[:name] if args.key?(:name)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # The UDIDs of a tester's iOS device
      class GoogleFirebaseAppdistroV1alphaTesterUdid
        include Google::Apis::Core::Hashable
      
        # The name of the tester's device
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The platform of the tester's device
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The UDID of the tester's device
        # Corresponds to the JSON property `udid`
        # @return [String]
        attr_accessor :udid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @platform = args[:platform] if args.key?(:platform)
          @udid = args[:udid] if args.key?(:udid)
        end
      end
      
      # The request message for `UpdateTestCase`.
      class GoogleFirebaseAppdistroV1alphaUpdateTestCaseRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, and the test case is not found, a new test case will
        # be created.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # AI test cases
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @test_case = args[:test_case] if args.key?(:test_case)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
