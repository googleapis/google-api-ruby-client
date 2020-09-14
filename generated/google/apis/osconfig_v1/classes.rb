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
      
      # Apt patching is completed by executing `apt-get update && apt-get upgrade`.
      # Additional options can be set to control how this is executed.
      class AptSettings
        include Google::Apis::Core::Hashable
      
        # List of packages to exclude from update. These packages will be excluded
        # Corresponds to the JSON property `excludes`
        # @return [Array<String>]
        attr_accessor :excludes
      
        # An exclusive list of packages to be updated. These are the only packages that
        # will be updated. If these packages are not installed, they will be ignored.
        # This field cannot be specified with any other patch configuration fields.
        # Corresponds to the JSON property `exclusivePackages`
        # @return [Array<String>]
        attr_accessor :exclusive_packages
      
        # By changing the type to DIST, the patching is performed using `apt-get dist-
        # upgrade` instead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excludes = args[:excludes] if args.key?(:excludes)
          @exclusive_packages = args[:exclusive_packages] if args.key?(:exclusive_packages)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message for canceling a patch job.
      class CancelPatchJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A step that runs an executable for a PatchJob.
      class ExecStep
        include Google::Apis::Core::Hashable
      
        # Common configurations for an ExecStep.
        # Corresponds to the JSON property `linuxExecStepConfig`
        # @return [Google::Apis::OsconfigV1::ExecStepConfig]
        attr_accessor :linux_exec_step_config
      
        # Common configurations for an ExecStep.
        # Corresponds to the JSON property `windowsExecStepConfig`
        # @return [Google::Apis::OsconfigV1::ExecStepConfig]
        attr_accessor :windows_exec_step_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linux_exec_step_config = args[:linux_exec_step_config] if args.key?(:linux_exec_step_config)
          @windows_exec_step_config = args[:windows_exec_step_config] if args.key?(:windows_exec_step_config)
        end
      end
      
      # Common configurations for an ExecStep.
      class ExecStepConfig
        include Google::Apis::Core::Hashable
      
        # Defaults to [0]. A list of possible return values that the execution can
        # return to indicate a success.
        # Corresponds to the JSON property `allowedSuccessCodes`
        # @return [Array<Fixnum>]
        attr_accessor :allowed_success_codes
      
        # Cloud Storage object representation.
        # Corresponds to the JSON property `gcsObject`
        # @return [Google::Apis::OsconfigV1::GcsObject]
        attr_accessor :gcs_object
      
        # The script interpreter to use to run the script. If no interpreter is
        # specified the script will be executed directly, which will likely only succeed
        # for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\
        # )).
        # Corresponds to the JSON property `interpreter`
        # @return [String]
        attr_accessor :interpreter
      
        # An absolute path to the executable on the VM.
        # Corresponds to the JSON property `localPath`
        # @return [String]
        attr_accessor :local_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_success_codes = args[:allowed_success_codes] if args.key?(:allowed_success_codes)
          @gcs_object = args[:gcs_object] if args.key?(:gcs_object)
          @interpreter = args[:interpreter] if args.key?(:interpreter)
          @local_path = args[:local_path] if args.key?(:local_path)
        end
      end
      
      # A request message to initiate patching across Compute Engine instances.
      class ExecutePatchJobRequest
        include Google::Apis::Core::Hashable
      
        # Description of the patch job. Length of the description is limited to 1024
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for this patch job. This does not have to be unique.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # If this patch is a dry-run only, instances are contacted but will do nothing.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Duration of the patch job. After the duration ends, the patch job times out.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # A filter to target VM instances for patching. The targeted VMs must meet all
        # criteria specified. So if both labels and zones are specified, the patch job
        # targets only VMs with those labels and in those zones.
        # Corresponds to the JSON property `instanceFilter`
        # @return [Google::Apis::OsconfigV1::PatchInstanceFilter]
        attr_accessor :instance_filter
      
        # Patch configuration specifications. Contains details on how to apply the patch(
        # es) to a VM instance.
        # Corresponds to the JSON property `patchConfig`
        # @return [Google::Apis::OsconfigV1::PatchConfig]
        attr_accessor :patch_config
      
        # Patch rollout configuration specifications. Contains details on the
        # concurrency control when applying patch(es) to all targeted VMs.
        # Corresponds to the JSON property `rollout`
        # @return [Google::Apis::OsconfigV1::PatchRollout]
        attr_accessor :rollout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @duration = args[:duration] if args.key?(:duration)
          @instance_filter = args[:instance_filter] if args.key?(:instance_filter)
          @patch_config = args[:patch_config] if args.key?(:patch_config)
          @rollout = args[:rollout] if args.key?(:rollout)
        end
      end
      
      # Message encapsulating a value that can be either absolute ("fixed") or
      # relative ("percent") to a value.
      class FixedOrPercent
        include Google::Apis::Core::Hashable
      
        # Specifies a fixed value.
        # Corresponds to the JSON property `fixed`
        # @return [Fixnum]
        attr_accessor :fixed
      
        # Specifies the relative value defined as a percentage, which will be multiplied
        # by a reference value.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed = args[:fixed] if args.key?(:fixed)
          @percent = args[:percent] if args.key?(:percent)
        end
      end
      
      # Cloud Storage object representation.
      class GcsObject
        include Google::Apis::Core::Hashable
      
        # Required. Bucket of the Cloud Storage object.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Required. Generation number of the Cloud Storage object. This is used to
        # ensure that the ExecStep specified by this PatchJob does not change.
        # Corresponds to the JSON property `generationNumber`
        # @return [Fixnum]
        attr_accessor :generation_number
      
        # Required. Name of the Cloud Storage object.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation_number = args[:generation_number] if args.key?(:generation_number)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Googet patching is performed by running `googet update`.
      class GooSettings
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response message for listing patch deployments.
      class ListPatchDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token that can be used to get the next page of patch deployments.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of patch deployments.
        # Corresponds to the JSON property `patchDeployments`
        # @return [Array<Google::Apis::OsconfigV1::PatchDeployment>]
        attr_accessor :patch_deployments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @patch_deployments = args[:patch_deployments] if args.key?(:patch_deployments)
        end
      end
      
      # A response message for listing the instances details for a patch job.
      class ListPatchJobInstanceDetailsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token that can be used to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of instance status.
        # Corresponds to the JSON property `patchJobInstanceDetails`
        # @return [Array<Google::Apis::OsconfigV1::PatchJobInstanceDetails>]
        attr_accessor :patch_job_instance_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @patch_job_instance_details = args[:patch_job_instance_details] if args.key?(:patch_job_instance_details)
        end
      end
      
      # A response message for listing patch jobs.
      class ListPatchJobsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token that can be used to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of patch jobs.
        # Corresponds to the JSON property `patchJobs`
        # @return [Array<Google::Apis::OsconfigV1::PatchJob>]
        attr_accessor :patch_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @patch_jobs = args[:patch_jobs] if args.key?(:patch_jobs)
        end
      end
      
      # Represents a monthly schedule. An example of a valid monthly schedule is "on
      # the third Tuesday of the month" or "on the 15th of the month".
      class MonthlySchedule
        include Google::Apis::Core::Hashable
      
        # Required. One day of the month. 1-31 indicates the 1st to the 31st day. -1
        # indicates the last day of the month. Months without the target day will be
        # skipped. For example, a schedule to run "every month on the 31st" will not run
        # in February, April, June, etc.
        # Corresponds to the JSON property `monthDay`
        # @return [Fixnum]
        attr_accessor :month_day
      
        # Represents one week day in a month. An example is "the 4th Sunday".
        # Corresponds to the JSON property `weekDayOfMonth`
        # @return [Google::Apis::OsconfigV1::WeekDayOfMonth]
        attr_accessor :week_day_of_month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @month_day = args[:month_day] if args.key?(:month_day)
          @week_day_of_month = args[:week_day_of_month] if args.key?(:week_day_of_month)
        end
      end
      
      # Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https:
      # //www.ietf.org/rfc/rfc3339.txt) text format.
      class OneTimeSchedule
        include Google::Apis::Core::Hashable
      
        # Required. The desired patch job execution time.
        # Corresponds to the JSON property `executeTime`
        # @return [String]
        attr_accessor :execute_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execute_time = args[:execute_time] if args.key?(:execute_time)
        end
      end
      
      # Patch configuration specifications. Contains details on how to apply the patch(
      # es) to a VM instance.
      class PatchConfig
        include Google::Apis::Core::Hashable
      
        # Apt patching is completed by executing `apt-get update && apt-get upgrade`.
        # Additional options can be set to control how this is executed.
        # Corresponds to the JSON property `apt`
        # @return [Google::Apis::OsconfigV1::AptSettings]
        attr_accessor :apt
      
        # Googet patching is performed by running `googet update`.
        # Corresponds to the JSON property `goo`
        # @return [Google::Apis::OsconfigV1::GooSettings]
        attr_accessor :goo
      
        # A step that runs an executable for a PatchJob.
        # Corresponds to the JSON property `postStep`
        # @return [Google::Apis::OsconfigV1::ExecStep]
        attr_accessor :post_step
      
        # A step that runs an executable for a PatchJob.
        # Corresponds to the JSON property `preStep`
        # @return [Google::Apis::OsconfigV1::ExecStep]
        attr_accessor :pre_step
      
        # Post-patch reboot settings.
        # Corresponds to the JSON property `rebootConfig`
        # @return [String]
        attr_accessor :reboot_config
      
        # Windows patching is performed using the Windows Update Agent.
        # Corresponds to the JSON property `windowsUpdate`
        # @return [Google::Apis::OsconfigV1::WindowsUpdateSettings]
        attr_accessor :windows_update
      
        # Yum patching is performed by executing `yum update`. Additional options can be
        # set to control how this is executed. Note that not all settings are supported
        # on all platforms.
        # Corresponds to the JSON property `yum`
        # @return [Google::Apis::OsconfigV1::YumSettings]
        attr_accessor :yum
      
        # Zypper patching is performed by running `zypper patch`. See also https://en.
        # opensuse.org/SDB:Zypper_manual.
        # Corresponds to the JSON property `zypper`
        # @return [Google::Apis::OsconfigV1::ZypperSettings]
        attr_accessor :zypper
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt = args[:apt] if args.key?(:apt)
          @goo = args[:goo] if args.key?(:goo)
          @post_step = args[:post_step] if args.key?(:post_step)
          @pre_step = args[:pre_step] if args.key?(:pre_step)
          @reboot_config = args[:reboot_config] if args.key?(:reboot_config)
          @windows_update = args[:windows_update] if args.key?(:windows_update)
          @yum = args[:yum] if args.key?(:yum)
          @zypper = args[:zypper] if args.key?(:zypper)
        end
      end
      
      # Patch deployments are configurations that individual patch jobs use to
      # complete a patch. These configurations include instance filter, package
      # repository settings, and a schedule. For more information about creating and
      # managing patch deployments, see [Scheduling patch jobs](https://cloud.google.
      # com/compute/docs/os-patch-management/schedule-patch-jobs).
      class PatchDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. Time the patch deployment was created. Timestamp is in [RFC3339](
        # https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the patch deployment. Length of the description is
        # limited to 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Duration of the patch. After the duration ends, the patch times out.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # A filter to target VM instances for patching. The targeted VMs must meet all
        # criteria specified. So if both labels and zones are specified, the patch job
        # targets only VMs with those labels and in those zones.
        # Corresponds to the JSON property `instanceFilter`
        # @return [Google::Apis::OsconfigV1::PatchInstanceFilter]
        attr_accessor :instance_filter
      
        # Output only. The last time a patch job was started by this deployment.
        # Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `lastExecuteTime`
        # @return [String]
        attr_accessor :last_execute_time
      
        # Unique name for the patch deployment resource in a project. The patch
        # deployment name is in the form: `projects/`project_id`/patchDeployments/`
        # patch_deployment_id``. This field is ignored when you create a new patch
        # deployment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https:
        # //www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `oneTimeSchedule`
        # @return [Google::Apis::OsconfigV1::OneTimeSchedule]
        attr_accessor :one_time_schedule
      
        # Patch configuration specifications. Contains details on how to apply the patch(
        # es) to a VM instance.
        # Corresponds to the JSON property `patchConfig`
        # @return [Google::Apis::OsconfigV1::PatchConfig]
        attr_accessor :patch_config
      
        # Sets the time for recurring patch deployments.
        # Corresponds to the JSON property `recurringSchedule`
        # @return [Google::Apis::OsconfigV1::RecurringSchedule]
        attr_accessor :recurring_schedule
      
        # Patch rollout configuration specifications. Contains details on the
        # concurrency control when applying patch(es) to all targeted VMs.
        # Corresponds to the JSON property `rollout`
        # @return [Google::Apis::OsconfigV1::PatchRollout]
        attr_accessor :rollout
      
        # Output only. Time the patch deployment was last updated. Timestamp is in [
        # RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @duration = args[:duration] if args.key?(:duration)
          @instance_filter = args[:instance_filter] if args.key?(:instance_filter)
          @last_execute_time = args[:last_execute_time] if args.key?(:last_execute_time)
          @name = args[:name] if args.key?(:name)
          @one_time_schedule = args[:one_time_schedule] if args.key?(:one_time_schedule)
          @patch_config = args[:patch_config] if args.key?(:patch_config)
          @recurring_schedule = args[:recurring_schedule] if args.key?(:recurring_schedule)
          @rollout = args[:rollout] if args.key?(:rollout)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A filter to target VM instances for patching. The targeted VMs must meet all
      # criteria specified. So if both labels and zones are specified, the patch job
      # targets only VMs with those labels and in those zones.
      class PatchInstanceFilter
        include Google::Apis::Core::Hashable
      
        # Target all VM instances in the project. If true, no other criteria is
        # permitted.
        # Corresponds to the JSON property `all`
        # @return [Boolean]
        attr_accessor :all
        alias_method :all?, :all
      
        # Targets VM instances matching ANY of these GroupLabels. This allows targeting
        # of disparate groups of VM instances.
        # Corresponds to the JSON property `groupLabels`
        # @return [Array<Google::Apis::OsconfigV1::PatchInstanceFilterGroupLabel>]
        attr_accessor :group_labels
      
        # Targets VMs whose name starts with one of these prefixes. Similar to labels,
        # this is another way to group VMs when targeting configs, for example prefix="
        # prod-".
        # Corresponds to the JSON property `instanceNamePrefixes`
        # @return [Array<String>]
        attr_accessor :instance_name_prefixes
      
        # Targets any of the VM instances specified. Instances are specified by their
        # URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[
        # PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.
        # googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[
        # INSTANCE_NAME]`
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        # Targets VM instances in ANY of these zones. Leave empty to target VM instances
        # in any zone.
        # Corresponds to the JSON property `zones`
        # @return [Array<String>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @group_labels = args[:group_labels] if args.key?(:group_labels)
          @instance_name_prefixes = args[:instance_name_prefixes] if args.key?(:instance_name_prefixes)
          @instances = args[:instances] if args.key?(:instances)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # Targets a group of VM instances by using their [assigned labels](https://cloud.
      # google.com/compute/docs/labeling-resources). Labels are key-value pairs. A `
      # GroupLabel` is a combination of labels that is used to target VMs for a patch
      # job. For example, a patch job can target VMs that have the following `
      # GroupLabel`: ``"env":"test", "app":"web"``. This means that the patch job is
      # applied to VMs that have both the labels `env=test` and `app=web`.
      class PatchInstanceFilterGroupLabel
        include Google::Apis::Core::Hashable
      
        # Compute Engine instance labels that must be present for a VM instance to be
        # targeted by this filter.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # A high level representation of a patch job that is either in progress or has
      # completed. Instance details are not included in the job. To paginate through
      # instance details, use ListPatchJobInstanceDetails. For more information about
      # patch jobs, see [Creating patch jobs](https://cloud.google.com/compute/docs/os-
      # patch-management/create-patch-job).
      class PatchJob
        include Google::Apis::Core::Hashable
      
        # Time this patch job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the patch job. Length of the description is limited to 1024
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for this patch job. This is not a unique identifier.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # If this patch job is a dry run, the agent reports that it has finished without
        # running any updates on the VM instance.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Duration of the patch job. After the duration ends, the patch job times out.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # If this patch job failed, this message provides information about the failure.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # A summary of the current patch state across all instances that this patch job
        # affects. Contains counts of instances in different states. These states map to
        # `InstancePatchState`. List patch job instance details to see the specific
        # states of each instance.
        # Corresponds to the JSON property `instanceDetailsSummary`
        # @return [Google::Apis::OsconfigV1::PatchJobInstanceDetailsSummary]
        attr_accessor :instance_details_summary
      
        # A filter to target VM instances for patching. The targeted VMs must meet all
        # criteria specified. So if both labels and zones are specified, the patch job
        # targets only VMs with those labels and in those zones.
        # Corresponds to the JSON property `instanceFilter`
        # @return [Google::Apis::OsconfigV1::PatchInstanceFilter]
        attr_accessor :instance_filter
      
        # Unique identifier for this patch job in the form `projects/*/patchJobs/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Patch configuration specifications. Contains details on how to apply the patch(
        # es) to a VM instance.
        # Corresponds to the JSON property `patchConfig`
        # @return [Google::Apis::OsconfigV1::PatchConfig]
        attr_accessor :patch_config
      
        # Output only. Name of the patch deployment that created this patch job.
        # Corresponds to the JSON property `patchDeployment`
        # @return [String]
        attr_accessor :patch_deployment
      
        # Reflects the overall progress of the patch job in the range of 0.0 being no
        # progress to 100.0 being complete.
        # Corresponds to the JSON property `percentComplete`
        # @return [Float]
        attr_accessor :percent_complete
      
        # Patch rollout configuration specifications. Contains details on the
        # concurrency control when applying patch(es) to all targeted VMs.
        # Corresponds to the JSON property `rollout`
        # @return [Google::Apis::OsconfigV1::PatchRollout]
        attr_accessor :rollout
      
        # The current state of the PatchJob.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last time this patch job was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @duration = args[:duration] if args.key?(:duration)
          @error_message = args[:error_message] if args.key?(:error_message)
          @instance_details_summary = args[:instance_details_summary] if args.key?(:instance_details_summary)
          @instance_filter = args[:instance_filter] if args.key?(:instance_filter)
          @name = args[:name] if args.key?(:name)
          @patch_config = args[:patch_config] if args.key?(:patch_config)
          @patch_deployment = args[:patch_deployment] if args.key?(:patch_deployment)
          @percent_complete = args[:percent_complete] if args.key?(:percent_complete)
          @rollout = args[:rollout] if args.key?(:rollout)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Patch details for a VM instance. For more information about reviewing VM
      # instance details, see [Listing all VM instance details for a specific patch
      # job](https://cloud.google.com/compute/docs/os-patch-management/manage-patch-
      # jobs#list-instance-details).
      class PatchJobInstanceDetails
        include Google::Apis::Core::Hashable
      
        # The number of times the agent that the agent attempts to apply the patch.
        # Corresponds to the JSON property `attemptCount`
        # @return [Fixnum]
        attr_accessor :attempt_count
      
        # If the patch fails, this field provides the reason.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # The unique identifier for the instance. This identifier is defined by the
        # server.
        # Corresponds to the JSON property `instanceSystemId`
        # @return [String]
        attr_accessor :instance_system_id
      
        # The instance name in the form `projects/*/zones/*/instances/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Current state of instance patch.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attempt_count = args[:attempt_count] if args.key?(:attempt_count)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @instance_system_id = args[:instance_system_id] if args.key?(:instance_system_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A summary of the current patch state across all instances that this patch job
      # affects. Contains counts of instances in different states. These states map to
      # `InstancePatchState`. List patch job instance details to see the specific
      # states of each instance.
      class PatchJobInstanceDetailsSummary
        include Google::Apis::Core::Hashable
      
        # Number of instances that have acked and will start shortly.
        # Corresponds to the JSON property `ackedInstanceCount`
        # @return [Fixnum]
        attr_accessor :acked_instance_count
      
        # Number of instances that are applying patches.
        # Corresponds to the JSON property `applyingPatchesInstanceCount`
        # @return [Fixnum]
        attr_accessor :applying_patches_instance_count
      
        # Number of instances that are downloading patches.
        # Corresponds to the JSON property `downloadingPatchesInstanceCount`
        # @return [Fixnum]
        attr_accessor :downloading_patches_instance_count
      
        # Number of instances that failed.
        # Corresponds to the JSON property `failedInstanceCount`
        # @return [Fixnum]
        attr_accessor :failed_instance_count
      
        # Number of instances that are inactive.
        # Corresponds to the JSON property `inactiveInstanceCount`
        # @return [Fixnum]
        attr_accessor :inactive_instance_count
      
        # Number of instances that do not appear to be running the agent. Check to
        # ensure that the agent is installed, running, and able to communicate with the
        # service.
        # Corresponds to the JSON property `noAgentDetectedInstanceCount`
        # @return [Fixnum]
        attr_accessor :no_agent_detected_instance_count
      
        # Number of instances notified about patch job.
        # Corresponds to the JSON property `notifiedInstanceCount`
        # @return [Fixnum]
        attr_accessor :notified_instance_count
      
        # Number of instances pending patch job.
        # Corresponds to the JSON property `pendingInstanceCount`
        # @return [Fixnum]
        attr_accessor :pending_instance_count
      
        # Number of instances that are running the post-patch step.
        # Corresponds to the JSON property `postPatchStepInstanceCount`
        # @return [Fixnum]
        attr_accessor :post_patch_step_instance_count
      
        # Number of instances that are running the pre-patch step.
        # Corresponds to the JSON property `prePatchStepInstanceCount`
        # @return [Fixnum]
        attr_accessor :pre_patch_step_instance_count
      
        # Number of instances rebooting.
        # Corresponds to the JSON property `rebootingInstanceCount`
        # @return [Fixnum]
        attr_accessor :rebooting_instance_count
      
        # Number of instances that have started.
        # Corresponds to the JSON property `startedInstanceCount`
        # @return [Fixnum]
        attr_accessor :started_instance_count
      
        # Number of instances that have completed successfully.
        # Corresponds to the JSON property `succeededInstanceCount`
        # @return [Fixnum]
        attr_accessor :succeeded_instance_count
      
        # Number of instances that require reboot.
        # Corresponds to the JSON property `succeededRebootRequiredInstanceCount`
        # @return [Fixnum]
        attr_accessor :succeeded_reboot_required_instance_count
      
        # Number of instances that exceeded the time out while applying the patch.
        # Corresponds to the JSON property `timedOutInstanceCount`
        # @return [Fixnum]
        attr_accessor :timed_out_instance_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acked_instance_count = args[:acked_instance_count] if args.key?(:acked_instance_count)
          @applying_patches_instance_count = args[:applying_patches_instance_count] if args.key?(:applying_patches_instance_count)
          @downloading_patches_instance_count = args[:downloading_patches_instance_count] if args.key?(:downloading_patches_instance_count)
          @failed_instance_count = args[:failed_instance_count] if args.key?(:failed_instance_count)
          @inactive_instance_count = args[:inactive_instance_count] if args.key?(:inactive_instance_count)
          @no_agent_detected_instance_count = args[:no_agent_detected_instance_count] if args.key?(:no_agent_detected_instance_count)
          @notified_instance_count = args[:notified_instance_count] if args.key?(:notified_instance_count)
          @pending_instance_count = args[:pending_instance_count] if args.key?(:pending_instance_count)
          @post_patch_step_instance_count = args[:post_patch_step_instance_count] if args.key?(:post_patch_step_instance_count)
          @pre_patch_step_instance_count = args[:pre_patch_step_instance_count] if args.key?(:pre_patch_step_instance_count)
          @rebooting_instance_count = args[:rebooting_instance_count] if args.key?(:rebooting_instance_count)
          @started_instance_count = args[:started_instance_count] if args.key?(:started_instance_count)
          @succeeded_instance_count = args[:succeeded_instance_count] if args.key?(:succeeded_instance_count)
          @succeeded_reboot_required_instance_count = args[:succeeded_reboot_required_instance_count] if args.key?(:succeeded_reboot_required_instance_count)
          @timed_out_instance_count = args[:timed_out_instance_count] if args.key?(:timed_out_instance_count)
        end
      end
      
      # Patch rollout configuration specifications. Contains details on the
      # concurrency control when applying patch(es) to all targeted VMs.
      class PatchRollout
        include Google::Apis::Core::Hashable
      
        # Message encapsulating a value that can be either absolute ("fixed") or
        # relative ("percent") to a value.
        # Corresponds to the JSON property `disruptionBudget`
        # @return [Google::Apis::OsconfigV1::FixedOrPercent]
        attr_accessor :disruption_budget
      
        # Mode of the patch rollout.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disruption_budget = args[:disruption_budget] if args.key?(:disruption_budget)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Sets the time for recurring patch deployments.
      class RecurringSchedule
        include Google::Apis::Core::Hashable
      
        # Optional. The end time at which a recurring patch deployment schedule is no
        # longer active.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The frequency unit of this recurring schedule.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Output only. The time the last patch job ran successfully.
        # Corresponds to the JSON property `lastExecuteTime`
        # @return [String]
        attr_accessor :last_execute_time
      
        # Represents a monthly schedule. An example of a valid monthly schedule is "on
        # the third Tuesday of the month" or "on the 15th of the month".
        # Corresponds to the JSON property `monthly`
        # @return [Google::Apis::OsconfigV1::MonthlySchedule]
        attr_accessor :monthly
      
        # Output only. The time the next patch job is scheduled to run.
        # Corresponds to the JSON property `nextExecuteTime`
        # @return [String]
        attr_accessor :next_execute_time
      
        # Optional. The time that the recurring schedule becomes effective. Defaults to `
        # create_time` of the patch deployment.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeOfDay`
        # @return [Google::Apis::OsconfigV1::TimeOfDay]
        attr_accessor :time_of_day
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::OsconfigV1::TimeZone]
        attr_accessor :time_zone
      
        # Represents a weekly schedule.
        # Corresponds to the JSON property `weekly`
        # @return [Google::Apis::OsconfigV1::WeeklySchedule]
        attr_accessor :weekly
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @frequency = args[:frequency] if args.key?(:frequency)
          @last_execute_time = args[:last_execute_time] if args.key?(:last_execute_time)
          @monthly = args[:monthly] if args.key?(:monthly)
          @next_execute_time = args[:next_execute_time] if args.key?(:next_execute_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @time_of_day = args[:time_of_day] if args.key?(:time_of_day)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @weekly = args[:weekly] if args.key?(:weekly)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents one week day in a month. An example is "the 4th Sunday".
      class WeekDayOfMonth
        include Google::Apis::Core::Hashable
      
        # Required. A day of the week.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Required. Week number in a month. 1-4 indicates the 1st to 4th week of the
        # month. -1 indicates the last week of the month.
        # Corresponds to the JSON property `weekOrdinal`
        # @return [Fixnum]
        attr_accessor :week_ordinal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @week_ordinal = args[:week_ordinal] if args.key?(:week_ordinal)
        end
      end
      
      # Represents a weekly schedule.
      class WeeklySchedule
        include Google::Apis::Core::Hashable
      
        # Required. Day of the week.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
        end
      end
      
      # Windows patching is performed using the Windows Update Agent.
      class WindowsUpdateSettings
        include Google::Apis::Core::Hashable
      
        # Only apply updates of these windows update classifications. If empty, all
        # updates are applied.
        # Corresponds to the JSON property `classifications`
        # @return [Array<String>]
        attr_accessor :classifications
      
        # List of KBs to exclude from update.
        # Corresponds to the JSON property `excludes`
        # @return [Array<String>]
        attr_accessor :excludes
      
        # An exclusive list of kbs to be updated. These are the only patches that will
        # be updated. This field must not be used with other patch configurations.
        # Corresponds to the JSON property `exclusivePatches`
        # @return [Array<String>]
        attr_accessor :exclusive_patches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classifications = args[:classifications] if args.key?(:classifications)
          @excludes = args[:excludes] if args.key?(:excludes)
          @exclusive_patches = args[:exclusive_patches] if args.key?(:exclusive_patches)
        end
      end
      
      # Yum patching is performed by executing `yum update`. Additional options can be
      # set to control how this is executed. Note that not all settings are supported
      # on all platforms.
      class YumSettings
        include Google::Apis::Core::Hashable
      
        # List of packages to exclude from update. These packages are excluded by using
        # the yum `--exclude` flag.
        # Corresponds to the JSON property `excludes`
        # @return [Array<String>]
        attr_accessor :excludes
      
        # An exclusive list of packages to be updated. These are the only packages that
        # will be updated. If these packages are not installed, they will be ignored.
        # This field must not be specified with any other patch configuration fields.
        # Corresponds to the JSON property `exclusivePackages`
        # @return [Array<String>]
        attr_accessor :exclusive_packages
      
        # Will cause patch to run `yum update-minimal` instead.
        # Corresponds to the JSON property `minimal`
        # @return [Boolean]
        attr_accessor :minimal
        alias_method :minimal?, :minimal
      
        # Adds the `--security` flag to `yum update`. Not supported on all platforms.
        # Corresponds to the JSON property `security`
        # @return [Boolean]
        attr_accessor :security
        alias_method :security?, :security
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excludes = args[:excludes] if args.key?(:excludes)
          @exclusive_packages = args[:exclusive_packages] if args.key?(:exclusive_packages)
          @minimal = args[:minimal] if args.key?(:minimal)
          @security = args[:security] if args.key?(:security)
        end
      end
      
      # Zypper patching is performed by running `zypper patch`. See also https://en.
      # opensuse.org/SDB:Zypper_manual.
      class ZypperSettings
        include Google::Apis::Core::Hashable
      
        # Install only patches with these categories. Common categories include security,
        # recommended, and feature.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # List of patches to exclude from update.
        # Corresponds to the JSON property `excludes`
        # @return [Array<String>]
        attr_accessor :excludes
      
        # An exclusive list of patches to be updated. These are the only patches that
        # will be installed using 'zypper patch patch:' command. This field must not be
        # used with any other patch configuration fields.
        # Corresponds to the JSON property `exclusivePatches`
        # @return [Array<String>]
        attr_accessor :exclusive_patches
      
        # Install only patches with these severities. Common severities include critical,
        # important, moderate, and low.
        # Corresponds to the JSON property `severities`
        # @return [Array<String>]
        attr_accessor :severities
      
        # Adds the `--with-optional` flag to `zypper patch`.
        # Corresponds to the JSON property `withOptional`
        # @return [Boolean]
        attr_accessor :with_optional
        alias_method :with_optional?, :with_optional
      
        # Adds the `--with-update` flag, to `zypper patch`.
        # Corresponds to the JSON property `withUpdate`
        # @return [Boolean]
        attr_accessor :with_update
        alias_method :with_update?, :with_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @excludes = args[:excludes] if args.key?(:excludes)
          @exclusive_patches = args[:exclusive_patches] if args.key?(:exclusive_patches)
          @severities = args[:severities] if args.key?(:severities)
          @with_optional = args[:with_optional] if args.key?(:with_optional)
          @with_update = args[:with_update] if args.key?(:with_update)
        end
      end
    end
  end
end
