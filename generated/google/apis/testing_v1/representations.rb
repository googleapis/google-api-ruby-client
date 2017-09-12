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
    module TestingV1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidDeviceCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidDeviceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidInstrumentationTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidRoboTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidRuntimeConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidTestLoop
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelTestMatrixResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientInfoDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAuto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Locale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfigurationCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObbFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Orientation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoboDirective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestEnvironmentCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestSetup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestSpecification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolResultsExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolResultsHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolResultsStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_auto, as: 'googleAuto', class: Google::Apis::TestingV1::GoogleAuto, decorator: Google::Apis::TestingV1::GoogleAuto::Representation
      
        end
      end
      
      class AndroidDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_model_id, as: 'androidModelId'
          property :android_version_id, as: 'androidVersionId'
          property :locale, as: 'locale'
          property :orientation, as: 'orientation'
        end
      end
      
      class AndroidDeviceCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::TestingV1::AndroidModel, decorator: Google::Apis::TestingV1::AndroidModel::Representation
      
          property :runtime_configuration, as: 'runtimeConfiguration', class: Google::Apis::TestingV1::AndroidRuntimeConfiguration, decorator: Google::Apis::TestingV1::AndroidRuntimeConfiguration::Representation
      
          collection :versions, as: 'versions', class: Google::Apis::TestingV1::AndroidVersion, decorator: Google::Apis::TestingV1::AndroidVersion::Representation
      
        end
      end
      
      class AndroidDeviceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :android_devices, as: 'androidDevices', class: Google::Apis::TestingV1::AndroidDevice, decorator: Google::Apis::TestingV1::AndroidDevice::Representation
      
        end
      end
      
      class AndroidInstrumentationTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_apk, as: 'appApk', class: Google::Apis::TestingV1::FileReference, decorator: Google::Apis::TestingV1::FileReference::Representation
      
          property :app_package_id, as: 'appPackageId'
          property :orchestrator_option, as: 'orchestratorOption'
          property :test_apk, as: 'testApk', class: Google::Apis::TestingV1::FileReference, decorator: Google::Apis::TestingV1::FileReference::Representation
      
          property :test_package_id, as: 'testPackageId'
          property :test_runner_class, as: 'testRunnerClass'
          collection :test_targets, as: 'testTargets'
        end
      end
      
      class AndroidMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :android_model_ids, as: 'androidModelIds'
          collection :android_version_ids, as: 'androidVersionIds'
          collection :locales, as: 'locales'
          collection :orientations, as: 'orientations'
        end
      end
      
      class AndroidModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand, as: 'brand'
          property :codename, as: 'codename'
          property :form, as: 'form'
          property :id, as: 'id'
          property :manufacturer, as: 'manufacturer'
          property :name, as: 'name'
          property :screen_density, as: 'screenDensity'
          property :screen_x, as: 'screenX'
          property :screen_y, as: 'screenY'
          collection :supported_abis, as: 'supportedAbis'
          collection :supported_version_ids, as: 'supportedVersionIds'
          collection :tags, as: 'tags'
        end
      end
      
      class AndroidRoboTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_apk, as: 'appApk', class: Google::Apis::TestingV1::FileReference, decorator: Google::Apis::TestingV1::FileReference::Representation
      
          property :app_initial_activity, as: 'appInitialActivity'
          property :app_package_id, as: 'appPackageId'
          property :max_depth, as: 'maxDepth'
          property :max_steps, as: 'maxSteps'
          collection :robo_directives, as: 'roboDirectives', class: Google::Apis::TestingV1::RoboDirective, decorator: Google::Apis::TestingV1::RoboDirective::Representation
      
        end
      end
      
      class AndroidRuntimeConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locales, as: 'locales', class: Google::Apis::TestingV1::Locale, decorator: Google::Apis::TestingV1::Locale::Representation
      
          collection :orientations, as: 'orientations', class: Google::Apis::TestingV1::Orientation, decorator: Google::Apis::TestingV1::Orientation::Representation
      
        end
      end
      
      class AndroidTestLoop
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_apk, as: 'appApk', class: Google::Apis::TestingV1::FileReference, decorator: Google::Apis::TestingV1::FileReference::Representation
      
          property :app_package_id, as: 'appPackageId'
          collection :scenario_labels, as: 'scenarioLabels'
          collection :scenarios, as: 'scenarios'
        end
      end
      
      class AndroidVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_level, as: 'apiLevel'
          property :code_name, as: 'codeName'
          property :distribution, as: 'distribution', class: Google::Apis::TestingV1::Distribution, decorator: Google::Apis::TestingV1::Distribution::Representation
      
          property :id, as: 'id'
          property :release_date, as: 'releaseDate', class: Google::Apis::TestingV1::Date, decorator: Google::Apis::TestingV1::Date::Representation
      
          collection :tags, as: 'tags'
          property :version_string, as: 'versionString'
        end
      end
      
      class CancelTestMatrixResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_state, as: 'testState'
        end
      end
      
      class ClientInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_info_details, as: 'clientInfoDetails', class: Google::Apis::TestingV1::ClientInfoDetail, decorator: Google::Apis::TestingV1::ClientInfoDetail::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ClientInfoDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DeviceFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :obb_file, as: 'obbFile', class: Google::Apis::TestingV1::ObbFile, decorator: Google::Apis::TestingV1::ObbFile::Representation
      
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :market_share, as: 'marketShare'
          property :measurement_time, as: 'measurementTime'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_device, as: 'androidDevice', class: Google::Apis::TestingV1::AndroidDevice, decorator: Google::Apis::TestingV1::AndroidDevice::Representation
      
        end
      end
      
      class EnvironmentMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_device_list, as: 'androidDeviceList', class: Google::Apis::TestingV1::AndroidDeviceList, decorator: Google::Apis::TestingV1::AndroidDeviceList::Representation
      
          property :android_matrix, as: 'androidMatrix', class: Google::Apis::TestingV1::AndroidMatrix, decorator: Google::Apis::TestingV1::AndroidMatrix::Representation
      
        end
      end
      
      class EnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class FileReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_path, as: 'gcsPath'
        end
      end
      
      class GoogleAuto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_path, as: 'gcsPath'
        end
      end
      
      class Locale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :region, as: 'region'
          collection :tags, as: 'tags'
        end
      end
      
      class NetworkConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :down_rule, as: 'downRule', class: Google::Apis::TestingV1::TrafficRule, decorator: Google::Apis::TestingV1::TrafficRule::Representation
      
          property :id, as: 'id'
          property :up_rule, as: 'upRule', class: Google::Apis::TestingV1::TrafficRule, decorator: Google::Apis::TestingV1::TrafficRule::Representation
      
        end
      end
      
      class NetworkConfigurationCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configurations, as: 'configurations', class: Google::Apis::TestingV1::NetworkConfiguration, decorator: Google::Apis::TestingV1::NetworkConfiguration::Representation
      
        end
      end
      
      class ObbFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :obb, as: 'obb', class: Google::Apis::TestingV1::FileReference, decorator: Google::Apis::TestingV1::FileReference::Representation
      
          property :obb_file_name, as: 'obbFileName'
        end
      end
      
      class Orientation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :tags, as: 'tags'
        end
      end
      
      class ResultStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_cloud_storage, as: 'googleCloudStorage', class: Google::Apis::TestingV1::GoogleCloudStorage, decorator: Google::Apis::TestingV1::GoogleCloudStorage::Representation
      
          property :tool_results_execution, as: 'toolResultsExecution', class: Google::Apis::TestingV1::ToolResultsExecution, decorator: Google::Apis::TestingV1::ToolResultsExecution::Representation
      
          property :tool_results_history, as: 'toolResultsHistory', class: Google::Apis::TestingV1::ToolResultsHistory, decorator: Google::Apis::TestingV1::ToolResultsHistory::Representation
      
        end
      end
      
      class RoboDirective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :input_text, as: 'inputText'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class TestDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          collection :progress_messages, as: 'progressMessages'
        end
      end
      
      class TestEnvironmentCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_device_catalog, as: 'androidDeviceCatalog', class: Google::Apis::TestingV1::AndroidDeviceCatalog, decorator: Google::Apis::TestingV1::AndroidDeviceCatalog::Representation
      
          property :network_configuration_catalog, as: 'networkConfigurationCatalog', class: Google::Apis::TestingV1::NetworkConfigurationCatalog, decorator: Google::Apis::TestingV1::NetworkConfigurationCatalog::Representation
      
        end
      end
      
      class TestExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment', class: Google::Apis::TestingV1::Environment, decorator: Google::Apis::TestingV1::Environment::Representation
      
          property :id, as: 'id'
          property :matrix_id, as: 'matrixId'
          property :project_id, as: 'projectId'
          property :state, as: 'state'
          property :test_details, as: 'testDetails', class: Google::Apis::TestingV1::TestDetails, decorator: Google::Apis::TestingV1::TestDetails::Representation
      
          property :test_specification, as: 'testSpecification', class: Google::Apis::TestingV1::TestSpecification, decorator: Google::Apis::TestingV1::TestSpecification::Representation
      
          property :timestamp, as: 'timestamp'
          property :tool_results_step, as: 'toolResultsStep', class: Google::Apis::TestingV1::ToolResultsStep, decorator: Google::Apis::TestingV1::ToolResultsStep::Representation
      
        end
      end
      
      class TestMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_info, as: 'clientInfo', class: Google::Apis::TestingV1::ClientInfo, decorator: Google::Apis::TestingV1::ClientInfo::Representation
      
          property :environment_matrix, as: 'environmentMatrix', class: Google::Apis::TestingV1::EnvironmentMatrix, decorator: Google::Apis::TestingV1::EnvironmentMatrix::Representation
      
          property :invalid_matrix_details, as: 'invalidMatrixDetails'
          property :project_id, as: 'projectId'
          property :result_storage, as: 'resultStorage', class: Google::Apis::TestingV1::ResultStorage, decorator: Google::Apis::TestingV1::ResultStorage::Representation
      
          property :state, as: 'state'
          collection :test_executions, as: 'testExecutions', class: Google::Apis::TestingV1::TestExecution, decorator: Google::Apis::TestingV1::TestExecution::Representation
      
          property :test_matrix_id, as: 'testMatrixId'
          property :test_specification, as: 'testSpecification', class: Google::Apis::TestingV1::TestSpecification, decorator: Google::Apis::TestingV1::TestSpecification::Representation
      
          property :timestamp, as: 'timestamp'
        end
      end
      
      class TestSetup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::TestingV1::Account, decorator: Google::Apis::TestingV1::Account::Representation
      
          collection :directories_to_pull, as: 'directoriesToPull'
          collection :environment_variables, as: 'environmentVariables', class: Google::Apis::TestingV1::EnvironmentVariable, decorator: Google::Apis::TestingV1::EnvironmentVariable::Representation
      
          collection :files_to_push, as: 'filesToPush', class: Google::Apis::TestingV1::DeviceFile, decorator: Google::Apis::TestingV1::DeviceFile::Representation
      
          property :network_profile, as: 'networkProfile'
        end
      end
      
      class TestSpecification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_instrumentation_test, as: 'androidInstrumentationTest', class: Google::Apis::TestingV1::AndroidInstrumentationTest, decorator: Google::Apis::TestingV1::AndroidInstrumentationTest::Representation
      
          property :android_robo_test, as: 'androidRoboTest', class: Google::Apis::TestingV1::AndroidRoboTest, decorator: Google::Apis::TestingV1::AndroidRoboTest::Representation
      
          property :android_test_loop, as: 'androidTestLoop', class: Google::Apis::TestingV1::AndroidTestLoop, decorator: Google::Apis::TestingV1::AndroidTestLoop::Representation
      
          property :auto_google_login, as: 'autoGoogleLogin'
          property :disable_performance_metrics, as: 'disablePerformanceMetrics'
          property :disable_video_recording, as: 'disableVideoRecording'
          property :test_setup, as: 'testSetup', class: Google::Apis::TestingV1::TestSetup, decorator: Google::Apis::TestingV1::TestSetup::Representation
      
          property :test_timeout, as: 'testTimeout'
        end
      end
      
      class ToolResultsExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_id, as: 'executionId'
          property :history_id, as: 'historyId'
          property :project_id, as: 'projectId'
        end
      end
      
      class ToolResultsHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :history_id, as: 'historyId'
          property :project_id, as: 'projectId'
        end
      end
      
      class ToolResultsStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_id, as: 'executionId'
          property :history_id, as: 'historyId'
          property :project_id, as: 'projectId'
          property :step_id, as: 'stepId'
        end
      end
      
      class TrafficRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth, as: 'bandwidth'
          property :burst, as: 'burst'
          property :delay, as: 'delay'
          property :packet_duplication_ratio, as: 'packetDuplicationRatio'
          property :packet_loss_ratio, as: 'packetLossRatio'
        end
      end
    end
  end
end
