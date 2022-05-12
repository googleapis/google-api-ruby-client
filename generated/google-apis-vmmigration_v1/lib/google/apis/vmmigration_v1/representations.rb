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
    module VmmigrationV1
      
      class AddGroupMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplianceVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppliedLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsSourceVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelCloneJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelCutoverJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineTargetDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineTargetDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeScheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutoverJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatacenterConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinalizeMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloneJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCutoverJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatacenterConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMigratingVmsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTargetProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUtilizationReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigratingVm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveGroupMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationSync
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingNodeAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeApplianceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UtilizationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmUtilizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmUtilizationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVmDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareVmsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddGroupMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrating_vm, as: 'migratingVm'
        end
      end
      
      class ApplianceVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :critical, as: 'critical'
          property :release_notes_uri, as: 'releaseNotesUri'
          property :uri, as: 'uri'
          property :version, as: 'version'
        end
      end
      
      class AppliedLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_license, as: 'osLicense'
          property :type, as: 'type'
        end
      end
      
      class AvailableUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :in_place_update, as: 'inPlaceUpdate', class: Google::Apis::VmmigrationV1::ApplianceVersion, decorator: Google::Apis::VmmigrationV1::ApplianceVersion::Representation
      
          property :new_deployable_appliance, as: 'newDeployableAppliance', class: Google::Apis::VmmigrationV1::ApplianceVersion, decorator: Google::Apis::VmmigrationV1::ApplianceVersion::Representation
      
        end
      end
      
      class AwsSourceVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firmware, as: 'firmware'
        end
      end
      
      class CancelCloneJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelCutoverJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloneJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine_target_details, as: 'computeEngineTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
        end
      end
      
      class ComputeEngineTargetDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :applied_license, as: 'appliedLicense', class: Google::Apis::VmmigrationV1::AppliedLicense, decorator: Google::Apis::VmmigrationV1::AppliedLicense::Representation
      
          property :boot_option, as: 'bootOption'
          property :compute_scheduling, as: 'computeScheduling', class: Google::Apis::VmmigrationV1::ComputeScheduling, decorator: Google::Apis::VmmigrationV1::ComputeScheduling::Representation
      
          property :disk_type, as: 'diskType'
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :license_type, as: 'licenseType'
          property :machine_type, as: 'machineType'
          property :machine_type_series, as: 'machineTypeSeries'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          collection :network_tags, as: 'networkTags'
          property :secure_boot, as: 'secureBoot'
          property :service_account, as: 'serviceAccount'
          property :target_project, as: 'targetProject'
          property :vm_name, as: 'vmName'
          property :zone, as: 'zone'
        end
      end
      
      class ComputeEngineTargetDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_licenses, as: 'additionalLicenses'
          property :applied_license, as: 'appliedLicense', class: Google::Apis::VmmigrationV1::AppliedLicense, decorator: Google::Apis::VmmigrationV1::AppliedLicense::Representation
      
          property :boot_option, as: 'bootOption'
          property :compute_scheduling, as: 'computeScheduling', class: Google::Apis::VmmigrationV1::ComputeScheduling, decorator: Google::Apis::VmmigrationV1::ComputeScheduling::Representation
      
          property :disk_type, as: 'diskType'
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :license_type, as: 'licenseType'
          property :machine_type, as: 'machineType'
          property :machine_type_series, as: 'machineTypeSeries'
          hash :metadata, as: 'metadata'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::VmmigrationV1::NetworkInterface, decorator: Google::Apis::VmmigrationV1::NetworkInterface::Representation
      
          collection :network_tags, as: 'networkTags'
          property :project, as: 'project'
          property :secure_boot, as: 'secureBoot'
          property :service_account, as: 'serviceAccount'
          property :vm_name, as: 'vmName'
          property :zone, as: 'zone'
        end
      end
      
      class ComputeScheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::VmmigrationV1::SchedulingNodeAffinity, decorator: Google::Apis::VmmigrationV1::SchedulingNodeAffinity::Representation
      
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :restart_type, as: 'restartType'
        end
      end
      
      class CutoverJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine_target_details, as: 'computeEngineTargetDetails', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDetails::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :progress_percent, as: 'progressPercent'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :state_time, as: 'stateTime'
        end
      end
      
      class DatacenterConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance_infrastructure_version, as: 'applianceInfrastructureVersion'
          property :appliance_software_version, as: 'applianceSoftwareVersion'
          property :available_versions, as: 'availableVersions', class: Google::Apis::VmmigrationV1::AvailableUpdates, decorator: Google::Apis::VmmigrationV1::AvailableUpdates::Representation
      
          property :bucket, as: 'bucket'
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :name, as: 'name'
          property :registration_id, as: 'registrationId'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :update_time, as: 'updateTime'
          property :upgrade_status, as: 'upgradeStatus', class: Google::Apis::VmmigrationV1::UpgradeStatus, decorator: Google::Apis::VmmigrationV1::UpgradeStatus::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          property :vmware_vms, as: 'vmwareVms', class: Google::Apis::VmmigrationV1::VmwareVmsDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmsDetails::Representation
      
        end
      end
      
      class FinalizeMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :url, as: 'url'
        end
      end
      
      class ListCloneJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clone_jobs, as: 'cloneJobs', class: Google::Apis::VmmigrationV1::CloneJob, decorator: Google::Apis::VmmigrationV1::CloneJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCutoverJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cutover_jobs, as: 'cutoverJobs', class: Google::Apis::VmmigrationV1::CutoverJob, decorator: Google::Apis::VmmigrationV1::CutoverJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDatacenterConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datacenter_connectors, as: 'datacenterConnectors', class: Google::Apis::VmmigrationV1::DatacenterConnector, decorator: Google::Apis::VmmigrationV1::DatacenterConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::VmmigrationV1::Group, decorator: Google::Apis::VmmigrationV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::VmmigrationV1::Location, decorator: Google::Apis::VmmigrationV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMigratingVmsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migrating_vms, as: 'migratingVms', class: Google::Apis::VmmigrationV1::MigratingVm, decorator: Google::Apis::VmmigrationV1::MigratingVm::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::VmmigrationV1::Operation, decorator: Google::Apis::VmmigrationV1::Operation::Representation
      
        end
      end
      
      class ListSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::VmmigrationV1::Source, decorator: Google::Apis::VmmigrationV1::Source::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTargetProjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_projects, as: 'targetProjects', class: Google::Apis::VmmigrationV1::TargetProject, decorator: Google::Apis::VmmigrationV1::TargetProject::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUtilizationReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :utilization_reports, as: 'utilizationReports', class: Google::Apis::VmmigrationV1::UtilizationReport, decorator: Google::Apis::VmmigrationV1::UtilizationReport::Representation
      
        end
      end
      
      class LocalizedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :message, as: 'message'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MigratingVm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_source_vm_details, as: 'awsSourceVmDetails', class: Google::Apis::VmmigrationV1::AwsSourceVmDetails, decorator: Google::Apis::VmmigrationV1::AwsSourceVmDetails::Representation
      
          property :compute_engine_target_defaults, as: 'computeEngineTargetDefaults', class: Google::Apis::VmmigrationV1::ComputeEngineTargetDefaults, decorator: Google::Apis::VmmigrationV1::ComputeEngineTargetDefaults::Representation
      
          property :create_time, as: 'createTime'
          property :current_sync_info, as: 'currentSyncInfo', class: Google::Apis::VmmigrationV1::ReplicationCycle, decorator: Google::Apis::VmmigrationV1::ReplicationCycle::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :group, as: 'group'
          hash :labels, as: 'labels'
          property :last_sync, as: 'lastSync', class: Google::Apis::VmmigrationV1::ReplicationSync, decorator: Google::Apis::VmmigrationV1::ReplicationSync::Representation
      
          property :name, as: 'name'
          property :policy, as: 'policy', class: Google::Apis::VmmigrationV1::SchedulePolicy, decorator: Google::Apis::VmmigrationV1::SchedulePolicy::Representation
      
          collection :recent_clone_jobs, as: 'recentCloneJobs', class: Google::Apis::VmmigrationV1::CloneJob, decorator: Google::Apis::VmmigrationV1::CloneJob::Representation
      
          collection :recent_cutover_jobs, as: 'recentCutoverJobs', class: Google::Apis::VmmigrationV1::CutoverJob, decorator: Google::Apis::VmmigrationV1::CutoverJob::Representation
      
          property :source_vm_id, as: 'sourceVmId'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MigrationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_item, as: 'actionItem', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :code, as: 'code'
          property :error_message, as: 'errorMessage', class: Google::Apis::VmmigrationV1::LocalizedMessage, decorator: Google::Apis::VmmigrationV1::LocalizedMessage::Representation
      
          property :error_time, as: 'errorTime'
          collection :help_links, as: 'helpLinks', class: Google::Apis::VmmigrationV1::Link, decorator: Google::Apis::VmmigrationV1::Link::Representation
      
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ip, as: 'externalIp'
          property :internal_ip, as: 'internalIp'
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PauseMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RemoveGroupMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrating_vm, as: 'migratingVm'
        end
      end
      
      class ReplicationCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class ReplicationSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_sync_time, as: 'lastSyncTime'
        end
      end
      
      class ResumeMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idle_duration, as: 'idleDuration'
          property :skip_os_adaptation, as: 'skipOsAdaptation'
        end
      end
      
      class SchedulingNodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :vmware, as: 'vmware', class: Google::Apis::VmmigrationV1::VmwareSourceDetails, decorator: Google::Apis::VmmigrationV1::VmwareSourceDetails::Representation
      
        end
      end
      
      class StartMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TargetProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :project, as: 'project'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UpgradeApplianceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class UpgradeStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :previous_version, as: 'previousVersion'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class UtilizationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::VmmigrationV1::Status, decorator: Google::Apis::VmmigrationV1::Status::Representation
      
          property :frame_end_time, as: 'frameEndTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_time, as: 'stateTime'
          property :time_frame, as: 'timeFrame'
          property :vm_count, as: 'vmCount'
          collection :vms, as: 'vms', class: Google::Apis::VmmigrationV1::VmUtilizationInfo, decorator: Google::Apis::VmmigrationV1::VmUtilizationInfo::Representation
      
        end
      end
      
      class VmUtilizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization, as: 'utilization', class: Google::Apis::VmmigrationV1::VmUtilizationMetrics, decorator: Google::Apis::VmmigrationV1::VmUtilizationMetrics::Representation
      
          property :vm_id, as: 'vmId'
          property :vmware_vm_details, as: 'vmwareVmDetails', class: Google::Apis::VmmigrationV1::VmwareVmDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmDetails::Representation
      
        end
      end
      
      class VmUtilizationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_average_percent, as: 'cpuAveragePercent'
          property :cpu_max_percent, as: 'cpuMaxPercent'
          property :disk_io_rate_average_kbps, :numeric_string => true, as: 'diskIoRateAverageKbps'
          property :disk_io_rate_max_kbps, :numeric_string => true, as: 'diskIoRateMaxKbps'
          property :memory_average_percent, as: 'memoryAveragePercent'
          property :memory_max_percent, as: 'memoryMaxPercent'
          property :network_throughput_average_kbps, :numeric_string => true, as: 'networkThroughputAverageKbps'
          property :network_throughput_max_kbps, :numeric_string => true, as: 'networkThroughputMaxKbps'
        end
      end
      
      class VmwareSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :thumbprint, as: 'thumbprint'
          property :username, as: 'username'
          property :vcenter_ip, as: 'vcenterIp'
        end
      end
      
      class VmwareVmDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_option, as: 'bootOption'
          property :committed_storage_mb, :numeric_string => true, as: 'committedStorageMb'
          property :cpu_count, as: 'cpuCount'
          property :datacenter_description, as: 'datacenterDescription'
          property :datacenter_id, as: 'datacenterId'
          property :disk_count, as: 'diskCount'
          property :display_name, as: 'displayName'
          property :guest_description, as: 'guestDescription'
          property :memory_mb, as: 'memoryMb'
          property :power_state, as: 'powerState'
          property :uuid, as: 'uuid'
          property :vm_id, as: 'vmId'
        end
      end
      
      class VmwareVmsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::VmmigrationV1::VmwareVmDetails, decorator: Google::Apis::VmmigrationV1::VmwareVmDetails::Representation
      
        end
      end
    end
  end
end
