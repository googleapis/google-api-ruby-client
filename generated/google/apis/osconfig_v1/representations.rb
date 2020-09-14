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
    module OsconfigV1
      
      class AptSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelPatchJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecStepConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutePatchJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedOrPercent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchJobInstanceDetailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPatchJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonthlySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OneTimeSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchInstanceFilterGroupLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJobInstanceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchJobInstanceDetailsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatchRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeekDayOfMonth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YumSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZypperSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AptSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excludes, as: 'excludes'
          collection :exclusive_packages, as: 'exclusivePackages'
          property :type, as: 'type'
        end
      end
      
      class CancelPatchJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linux_exec_step_config, as: 'linuxExecStepConfig', class: Google::Apis::OsconfigV1::ExecStepConfig, decorator: Google::Apis::OsconfigV1::ExecStepConfig::Representation
      
          property :windows_exec_step_config, as: 'windowsExecStepConfig', class: Google::Apis::OsconfigV1::ExecStepConfig, decorator: Google::Apis::OsconfigV1::ExecStepConfig::Representation
      
        end
      end
      
      class ExecStepConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_success_codes, as: 'allowedSuccessCodes'
          property :gcs_object, as: 'gcsObject', class: Google::Apis::OsconfigV1::GcsObject, decorator: Google::Apis::OsconfigV1::GcsObject::Representation
      
          property :interpreter, as: 'interpreter'
          property :local_path, as: 'localPath'
        end
      end
      
      class ExecutePatchJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :dry_run, as: 'dryRun'
          property :duration, as: 'duration'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
        end
      end
      
      class FixedOrPercent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed'
          property :percent, as: 'percent'
        end
      end
      
      class GcsObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation_number, :numeric_string => true, as: 'generationNumber'
          property :object, as: 'object'
        end
      end
      
      class GooSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListPatchDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_deployments, as: 'patchDeployments', class: Google::Apis::OsconfigV1::PatchDeployment, decorator: Google::Apis::OsconfigV1::PatchDeployment::Representation
      
        end
      end
      
      class ListPatchJobInstanceDetailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_job_instance_details, as: 'patchJobInstanceDetails', class: Google::Apis::OsconfigV1::PatchJobInstanceDetails, decorator: Google::Apis::OsconfigV1::PatchJobInstanceDetails::Representation
      
        end
      end
      
      class ListPatchJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_jobs, as: 'patchJobs', class: Google::Apis::OsconfigV1::PatchJob, decorator: Google::Apis::OsconfigV1::PatchJob::Representation
      
        end
      end
      
      class MonthlySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :month_day, as: 'monthDay'
          property :week_day_of_month, as: 'weekDayOfMonth', class: Google::Apis::OsconfigV1::WeekDayOfMonth, decorator: Google::Apis::OsconfigV1::WeekDayOfMonth::Representation
      
        end
      end
      
      class OneTimeSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execute_time, as: 'executeTime'
        end
      end
      
      class PatchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1::AptSettings, decorator: Google::Apis::OsconfigV1::AptSettings::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1::GooSettings, decorator: Google::Apis::OsconfigV1::GooSettings::Representation
      
          property :post_step, as: 'postStep', class: Google::Apis::OsconfigV1::ExecStep, decorator: Google::Apis::OsconfigV1::ExecStep::Representation
      
          property :pre_step, as: 'preStep', class: Google::Apis::OsconfigV1::ExecStep, decorator: Google::Apis::OsconfigV1::ExecStep::Representation
      
          property :reboot_config, as: 'rebootConfig'
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::OsconfigV1::WindowsUpdateSettings, decorator: Google::Apis::OsconfigV1::WindowsUpdateSettings::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1::YumSettings, decorator: Google::Apis::OsconfigV1::YumSettings::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1::ZypperSettings, decorator: Google::Apis::OsconfigV1::ZypperSettings::Representation
      
        end
      end
      
      class PatchDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :duration, as: 'duration'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :last_execute_time, as: 'lastExecuteTime'
          property :name, as: 'name'
          property :one_time_schedule, as: 'oneTimeSchedule', class: Google::Apis::OsconfigV1::OneTimeSchedule, decorator: Google::Apis::OsconfigV1::OneTimeSchedule::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :recurring_schedule, as: 'recurringSchedule', class: Google::Apis::OsconfigV1::RecurringSchedule, decorator: Google::Apis::OsconfigV1::RecurringSchedule::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class PatchInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :group_labels, as: 'groupLabels', class: Google::Apis::OsconfigV1::PatchInstanceFilterGroupLabel, decorator: Google::Apis::OsconfigV1::PatchInstanceFilterGroupLabel::Representation
      
          collection :instance_name_prefixes, as: 'instanceNamePrefixes'
          collection :instances, as: 'instances'
          collection :zones, as: 'zones'
        end
      end
      
      class PatchInstanceFilterGroupLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class PatchJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :dry_run, as: 'dryRun'
          property :duration, as: 'duration'
          property :error_message, as: 'errorMessage'
          property :instance_details_summary, as: 'instanceDetailsSummary', class: Google::Apis::OsconfigV1::PatchJobInstanceDetailsSummary, decorator: Google::Apis::OsconfigV1::PatchJobInstanceDetailsSummary::Representation
      
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1::PatchInstanceFilter::Representation
      
          property :name, as: 'name'
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1::PatchConfig, decorator: Google::Apis::OsconfigV1::PatchConfig::Representation
      
          property :patch_deployment, as: 'patchDeployment'
          property :percent_complete, as: 'percentComplete'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1::PatchRollout, decorator: Google::Apis::OsconfigV1::PatchRollout::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class PatchJobInstanceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attempt_count, :numeric_string => true, as: 'attemptCount'
          property :failure_reason, as: 'failureReason'
          property :instance_system_id, as: 'instanceSystemId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class PatchJobInstanceDetailsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acked_instance_count, :numeric_string => true, as: 'ackedInstanceCount'
          property :applying_patches_instance_count, :numeric_string => true, as: 'applyingPatchesInstanceCount'
          property :downloading_patches_instance_count, :numeric_string => true, as: 'downloadingPatchesInstanceCount'
          property :failed_instance_count, :numeric_string => true, as: 'failedInstanceCount'
          property :inactive_instance_count, :numeric_string => true, as: 'inactiveInstanceCount'
          property :no_agent_detected_instance_count, :numeric_string => true, as: 'noAgentDetectedInstanceCount'
          property :notified_instance_count, :numeric_string => true, as: 'notifiedInstanceCount'
          property :pending_instance_count, :numeric_string => true, as: 'pendingInstanceCount'
          property :post_patch_step_instance_count, :numeric_string => true, as: 'postPatchStepInstanceCount'
          property :pre_patch_step_instance_count, :numeric_string => true, as: 'prePatchStepInstanceCount'
          property :rebooting_instance_count, :numeric_string => true, as: 'rebootingInstanceCount'
          property :started_instance_count, :numeric_string => true, as: 'startedInstanceCount'
          property :succeeded_instance_count, :numeric_string => true, as: 'succeededInstanceCount'
          property :succeeded_reboot_required_instance_count, :numeric_string => true, as: 'succeededRebootRequiredInstanceCount'
          property :timed_out_instance_count, :numeric_string => true, as: 'timedOutInstanceCount'
        end
      end
      
      class PatchRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV1::FixedOrPercent, decorator: Google::Apis::OsconfigV1::FixedOrPercent::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class RecurringSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :frequency, as: 'frequency'
          property :last_execute_time, as: 'lastExecuteTime'
          property :monthly, as: 'monthly', class: Google::Apis::OsconfigV1::MonthlySchedule, decorator: Google::Apis::OsconfigV1::MonthlySchedule::Representation
      
          property :next_execute_time, as: 'nextExecuteTime'
          property :start_time, as: 'startTime'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::OsconfigV1::TimeOfDay, decorator: Google::Apis::OsconfigV1::TimeOfDay::Representation
      
          property :time_zone, as: 'timeZone', class: Google::Apis::OsconfigV1::TimeZone, decorator: Google::Apis::OsconfigV1::TimeZone::Representation
      
          property :weekly, as: 'weekly', class: Google::Apis::OsconfigV1::WeeklySchedule, decorator: Google::Apis::OsconfigV1::WeeklySchedule::Representation
      
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class WeekDayOfMonth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :week_ordinal, as: 'weekOrdinal'
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
        end
      end
      
      class WindowsUpdateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classifications, as: 'classifications'
          collection :excludes, as: 'excludes'
          collection :exclusive_patches, as: 'exclusivePatches'
        end
      end
      
      class YumSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excludes, as: 'excludes'
          collection :exclusive_packages, as: 'exclusivePackages'
          property :minimal, as: 'minimal'
          property :security, as: 'security'
        end
      end
      
      class ZypperSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :excludes, as: 'excludes'
          collection :exclusive_patches, as: 'exclusivePatches'
          collection :severities, as: 'severities'
          property :with_optional, as: 'withOptional'
          property :with_update, as: 'withUpdate'
        end
      end
    end
  end
end
