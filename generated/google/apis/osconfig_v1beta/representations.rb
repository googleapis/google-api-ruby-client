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
    module OsconfigV1beta
      
      class AptRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AptSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignmentGroupLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignmentOsType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelPatchJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EffectiveGuestPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EffectiveGuestPolicySourcedPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EffectiveGuestPolicySourcedPackageRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EffectiveGuestPolicySourcedSoftwareRecipe
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
      
      class GooRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuestPoliciesResponse
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
      
      class LookupEffectiveGuestPolicyRequest
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
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageRepository
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
      
      class SoftwareRecipe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeArtifactGcs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeArtifactRemote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepCopyFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepExecFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepExtractArchive
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepInstallDpkg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepInstallMsi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepInstallRpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareRecipeStepRunScript
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
      
      class YumRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YumSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZypperRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZypperSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AptRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_type, as: 'archiveType'
          collection :components, as: 'components'
          property :distribution, as: 'distribution'
          property :gpg_key, as: 'gpgKey'
          property :uri, as: 'uri'
        end
      end
      
      class AptSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excludes, as: 'excludes'
          collection :exclusive_packages, as: 'exclusivePackages'
          property :type, as: 'type'
        end
      end
      
      class Assignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_labels, as: 'groupLabels', class: Google::Apis::OsconfigV1beta::AssignmentGroupLabel, decorator: Google::Apis::OsconfigV1beta::AssignmentGroupLabel::Representation
      
          collection :instance_name_prefixes, as: 'instanceNamePrefixes'
          collection :instances, as: 'instances'
          collection :os_types, as: 'osTypes', class: Google::Apis::OsconfigV1beta::AssignmentOsType, decorator: Google::Apis::OsconfigV1beta::AssignmentOsType::Representation
      
          collection :zones, as: 'zones'
        end
      end
      
      class AssignmentGroupLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class AssignmentOsType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_architecture, as: 'osArchitecture'
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class CancelPatchJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EffectiveGuestPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :package_repositories, as: 'packageRepositories', class: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedPackageRepository, decorator: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedPackageRepository::Representation
      
          collection :packages, as: 'packages', class: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedPackage, decorator: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedPackage::Representation
      
          collection :software_recipes, as: 'softwareRecipes', class: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedSoftwareRecipe, decorator: Google::Apis::OsconfigV1beta::EffectiveGuestPolicySourcedSoftwareRecipe::Representation
      
        end
      end
      
      class EffectiveGuestPolicySourcedPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package, as: 'package', class: Google::Apis::OsconfigV1beta::Package, decorator: Google::Apis::OsconfigV1beta::Package::Representation
      
          property :source, as: 'source'
        end
      end
      
      class EffectiveGuestPolicySourcedPackageRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_repository, as: 'packageRepository', class: Google::Apis::OsconfigV1beta::PackageRepository, decorator: Google::Apis::OsconfigV1beta::PackageRepository::Representation
      
          property :source, as: 'source'
        end
      end
      
      class EffectiveGuestPolicySourcedSoftwareRecipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :software_recipe, as: 'softwareRecipe', class: Google::Apis::OsconfigV1beta::SoftwareRecipe, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipe::Representation
      
          property :source, as: 'source'
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
          property :linux_exec_step_config, as: 'linuxExecStepConfig', class: Google::Apis::OsconfigV1beta::ExecStepConfig, decorator: Google::Apis::OsconfigV1beta::ExecStepConfig::Representation
      
          property :windows_exec_step_config, as: 'windowsExecStepConfig', class: Google::Apis::OsconfigV1beta::ExecStepConfig, decorator: Google::Apis::OsconfigV1beta::ExecStepConfig::Representation
      
        end
      end
      
      class ExecStepConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_success_codes, as: 'allowedSuccessCodes'
          property :gcs_object, as: 'gcsObject', class: Google::Apis::OsconfigV1beta::GcsObject, decorator: Google::Apis::OsconfigV1beta::GcsObject::Representation
      
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
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1beta::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1beta::PatchInstanceFilter::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1beta::PatchConfig, decorator: Google::Apis::OsconfigV1beta::PatchConfig::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1beta::PatchRollout, decorator: Google::Apis::OsconfigV1beta::PatchRollout::Representation
      
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
      
      class GooRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class GooSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GuestPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignment, as: 'assignment', class: Google::Apis::OsconfigV1beta::Assignment, decorator: Google::Apis::OsconfigV1beta::Assignment::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :name, as: 'name'
          collection :package_repositories, as: 'packageRepositories', class: Google::Apis::OsconfigV1beta::PackageRepository, decorator: Google::Apis::OsconfigV1beta::PackageRepository::Representation
      
          collection :packages, as: 'packages', class: Google::Apis::OsconfigV1beta::Package, decorator: Google::Apis::OsconfigV1beta::Package::Representation
      
          collection :recipes, as: 'recipes', class: Google::Apis::OsconfigV1beta::SoftwareRecipe, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipe::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListGuestPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guest_policies, as: 'guestPolicies', class: Google::Apis::OsconfigV1beta::GuestPolicy, decorator: Google::Apis::OsconfigV1beta::GuestPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPatchDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_deployments, as: 'patchDeployments', class: Google::Apis::OsconfigV1beta::PatchDeployment, decorator: Google::Apis::OsconfigV1beta::PatchDeployment::Representation
      
        end
      end
      
      class ListPatchJobInstanceDetailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_job_instance_details, as: 'patchJobInstanceDetails', class: Google::Apis::OsconfigV1beta::PatchJobInstanceDetails, decorator: Google::Apis::OsconfigV1beta::PatchJobInstanceDetails::Representation
      
        end
      end
      
      class ListPatchJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :patch_jobs, as: 'patchJobs', class: Google::Apis::OsconfigV1beta::PatchJob, decorator: Google::Apis::OsconfigV1beta::PatchJob::Representation
      
        end
      end
      
      class LookupEffectiveGuestPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_architecture, as: 'osArchitecture'
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class MonthlySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :month_day, as: 'monthDay'
          property :week_day_of_month, as: 'weekDayOfMonth', class: Google::Apis::OsconfigV1beta::WeekDayOfMonth, decorator: Google::Apis::OsconfigV1beta::WeekDayOfMonth::Representation
      
        end
      end
      
      class OneTimeSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execute_time, as: 'executeTime'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_state, as: 'desiredState'
          property :manager, as: 'manager'
          property :name, as: 'name'
        end
      end
      
      class PackageRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1beta::AptRepository, decorator: Google::Apis::OsconfigV1beta::AptRepository::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1beta::GooRepository, decorator: Google::Apis::OsconfigV1beta::GooRepository::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1beta::YumRepository, decorator: Google::Apis::OsconfigV1beta::YumRepository::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1beta::ZypperRepository, decorator: Google::Apis::OsconfigV1beta::ZypperRepository::Representation
      
        end
      end
      
      class PatchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV1beta::AptSettings, decorator: Google::Apis::OsconfigV1beta::AptSettings::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV1beta::GooSettings, decorator: Google::Apis::OsconfigV1beta::GooSettings::Representation
      
          property :post_step, as: 'postStep', class: Google::Apis::OsconfigV1beta::ExecStep, decorator: Google::Apis::OsconfigV1beta::ExecStep::Representation
      
          property :pre_step, as: 'preStep', class: Google::Apis::OsconfigV1beta::ExecStep, decorator: Google::Apis::OsconfigV1beta::ExecStep::Representation
      
          property :reboot_config, as: 'rebootConfig'
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::OsconfigV1beta::WindowsUpdateSettings, decorator: Google::Apis::OsconfigV1beta::WindowsUpdateSettings::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV1beta::YumSettings, decorator: Google::Apis::OsconfigV1beta::YumSettings::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV1beta::ZypperSettings, decorator: Google::Apis::OsconfigV1beta::ZypperSettings::Representation
      
        end
      end
      
      class PatchDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :duration, as: 'duration'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1beta::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1beta::PatchInstanceFilter::Representation
      
          property :last_execute_time, as: 'lastExecuteTime'
          property :name, as: 'name'
          property :one_time_schedule, as: 'oneTimeSchedule', class: Google::Apis::OsconfigV1beta::OneTimeSchedule, decorator: Google::Apis::OsconfigV1beta::OneTimeSchedule::Representation
      
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1beta::PatchConfig, decorator: Google::Apis::OsconfigV1beta::PatchConfig::Representation
      
          property :recurring_schedule, as: 'recurringSchedule', class: Google::Apis::OsconfigV1beta::RecurringSchedule, decorator: Google::Apis::OsconfigV1beta::RecurringSchedule::Representation
      
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1beta::PatchRollout, decorator: Google::Apis::OsconfigV1beta::PatchRollout::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class PatchInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :group_labels, as: 'groupLabels', class: Google::Apis::OsconfigV1beta::PatchInstanceFilterGroupLabel, decorator: Google::Apis::OsconfigV1beta::PatchInstanceFilterGroupLabel::Representation
      
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
          property :instance_details_summary, as: 'instanceDetailsSummary', class: Google::Apis::OsconfigV1beta::PatchJobInstanceDetailsSummary, decorator: Google::Apis::OsconfigV1beta::PatchJobInstanceDetailsSummary::Representation
      
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV1beta::PatchInstanceFilter, decorator: Google::Apis::OsconfigV1beta::PatchInstanceFilter::Representation
      
          property :name, as: 'name'
          property :patch_config, as: 'patchConfig', class: Google::Apis::OsconfigV1beta::PatchConfig, decorator: Google::Apis::OsconfigV1beta::PatchConfig::Representation
      
          property :patch_deployment, as: 'patchDeployment'
          property :percent_complete, as: 'percentComplete'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV1beta::PatchRollout, decorator: Google::Apis::OsconfigV1beta::PatchRollout::Representation
      
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
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV1beta::FixedOrPercent, decorator: Google::Apis::OsconfigV1beta::FixedOrPercent::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class RecurringSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :frequency, as: 'frequency'
          property :last_execute_time, as: 'lastExecuteTime'
          property :monthly, as: 'monthly', class: Google::Apis::OsconfigV1beta::MonthlySchedule, decorator: Google::Apis::OsconfigV1beta::MonthlySchedule::Representation
      
          property :next_execute_time, as: 'nextExecuteTime'
          property :start_time, as: 'startTime'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::OsconfigV1beta::TimeOfDay, decorator: Google::Apis::OsconfigV1beta::TimeOfDay::Representation
      
          property :time_zone, as: 'timeZone', class: Google::Apis::OsconfigV1beta::TimeZone, decorator: Google::Apis::OsconfigV1beta::TimeZone::Representation
      
          property :weekly, as: 'weekly', class: Google::Apis::OsconfigV1beta::WeeklySchedule, decorator: Google::Apis::OsconfigV1beta::WeeklySchedule::Representation
      
        end
      end
      
      class SoftwareRecipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifact, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifact::Representation
      
          property :desired_state, as: 'desiredState'
          collection :install_steps, as: 'installSteps', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStep, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStep::Representation
      
          property :name, as: 'name'
          collection :update_steps, as: 'updateSteps', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStep, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStep::Representation
      
          property :version, as: 'version'
        end
      end
      
      class SoftwareRecipeArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_insecure, as: 'allowInsecure'
          property :gcs, as: 'gcs', class: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifactGcs, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifactGcs::Representation
      
          property :id, as: 'id'
          property :remote, as: 'remote', class: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifactRemote, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeArtifactRemote::Representation
      
        end
      end
      
      class SoftwareRecipeArtifactGcs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class SoftwareRecipeArtifactRemote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksum, as: 'checksum'
          property :uri, as: 'uri'
        end
      end
      
      class SoftwareRecipeStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_extraction, as: 'archiveExtraction', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepExtractArchive, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepExtractArchive::Representation
      
          property :dpkg_installation, as: 'dpkgInstallation', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallDpkg, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallDpkg::Representation
      
          property :file_copy, as: 'fileCopy', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepCopyFile, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepCopyFile::Representation
      
          property :file_exec, as: 'fileExec', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepExecFile, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepExecFile::Representation
      
          property :msi_installation, as: 'msiInstallation', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallMsi, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallMsi::Representation
      
          property :rpm_installation, as: 'rpmInstallation', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallRpm, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepInstallRpm::Representation
      
          property :script_run, as: 'scriptRun', class: Google::Apis::OsconfigV1beta::SoftwareRecipeStepRunScript, decorator: Google::Apis::OsconfigV1beta::SoftwareRecipeStepRunScript::Representation
      
        end
      end
      
      class SoftwareRecipeStepCopyFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :destination, as: 'destination'
          property :overwrite, as: 'overwrite'
          property :permissions, as: 'permissions'
        end
      end
      
      class SoftwareRecipeStepExecFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_exit_codes, as: 'allowedExitCodes'
          collection :args, as: 'args'
          property :artifact_id, as: 'artifactId'
          property :local_path, as: 'localPath'
        end
      end
      
      class SoftwareRecipeStepExtractArchive
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :destination, as: 'destination'
          property :type, as: 'type'
        end
      end
      
      class SoftwareRecipeStepInstallDpkg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
        end
      end
      
      class SoftwareRecipeStepInstallMsi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_exit_codes, as: 'allowedExitCodes'
          property :artifact_id, as: 'artifactId'
          collection :flags, as: 'flags'
        end
      end
      
      class SoftwareRecipeStepInstallRpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
        end
      end
      
      class SoftwareRecipeStepRunScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_exit_codes, as: 'allowedExitCodes'
          property :interpreter, as: 'interpreter'
          property :script, as: 'script'
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
      
      class YumRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
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
      
      class ZypperRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
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
