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
    module ManagedidentitiesV1alpha1
      
      class AttachTrustRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckMigrationPermissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckMigrationPermissionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachTrustRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Domain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainJoinMachineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainJoinMachineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableMigrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudManagedidentitiesV1OpMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudManagedidentitiesV1alpha1OpMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudManagedidentitiesV1beta1OpMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LdapsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPeeringsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSqlIntegrationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremDomainDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremDomainSidDetails
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
      
      class Peering
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReconfigureTrustRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetAdminPasswordRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetAdminPasswordResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreDomainRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlIntegration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrustProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateTrustRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachTrustRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trust_prop, as: 'trust', class: Google::Apis::ManagedidentitiesV1alpha1::TrustProp, decorator: Google::Apis::ManagedidentitiesV1alpha1::TrustProp::Representation
      
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ManagedidentitiesV1alpha1::Expr, decorator: Google::Apis::ManagedidentitiesV1alpha1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Certificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :issuing_certificate, as: 'issuingCertificate', class: Google::Apis::ManagedidentitiesV1alpha1::Certificate, decorator: Google::Apis::ManagedidentitiesV1alpha1::Certificate::Representation
      
          property :subject, as: 'subject'
          collection :subject_alternative_name, as: 'subjectAlternativeName'
          property :thumbprint, as: 'thumbprint'
        end
      end
      
      class CheckMigrationPermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckMigrationPermissionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :onprem_domains, as: 'onpremDomains', class: Google::Apis::ManagedidentitiesV1alpha1::OnPremDomainSidDetails, decorator: Google::Apis::ManagedidentitiesV1alpha1::OnPremDomainSidDetails::Representation
      
          property :state, as: 'state'
        end
      end
      
      class DailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay, decorator: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay::Representation
      
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
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::ManagedidentitiesV1alpha1::Date, decorator: Google::Apis::ManagedidentitiesV1alpha1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::ManagedidentitiesV1alpha1::Date, decorator: Google::Apis::ManagedidentitiesV1alpha1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay, decorator: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay::Representation
      
        end
      end
      
      class DetachTrustRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trust_prop, as: 'trust', class: Google::Apis::ManagedidentitiesV1alpha1::TrustProp, decorator: Google::Apis::ManagedidentitiesV1alpha1::TrustProp::Representation
      
        end
      end
      
      class DisableMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_logs_enabled, as: 'auditLogsEnabled'
          collection :authorized_networks, as: 'authorizedNetworks'
          property :create_time, as: 'createTime'
          property :fqdn, as: 'fqdn'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations'
          property :managed_identities_admin_name, as: 'managedIdentitiesAdminName'
          property :name, as: 'name'
          property :reserved_ip_range, as: 'reservedIpRange'
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          collection :trusts, as: 'trusts', class: Google::Apis::ManagedidentitiesV1alpha1::TrustProp, decorator: Google::Apis::ManagedidentitiesV1alpha1::TrustProp::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DomainJoinMachineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ou_name, as: 'ouName'
          property :vm_id_token, as: 'vmIdToken'
        end
      end
      
      class DomainJoinMachineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_join_blob, as: 'domainJoinBlob'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableMigrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migrating_domains, as: 'migratingDomains', class: Google::Apis::ManagedidentitiesV1alpha1::OnPremDomainDetails, decorator: Google::Apis::ManagedidentitiesV1alpha1::OnPremDomainDetails::Representation
      
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ExtendSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :file_contents, :base64 => true, as: 'fileContents'
          property :gcs_path, as: 'gcsPath'
        end
      end
      
      class GoogleCloudManagedidentitiesV1OpMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudManagedidentitiesV1alpha1OpMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudManagedidentitiesV1beta1OpMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :create_time, as: 'createTime'
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :notification_parameters, as: 'notificationParameters', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter::Representation
      
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          property :is_rollback, as: 'isRollback'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::ManagedidentitiesV1alpha1::MaintenancePolicy, decorator: Google::Apis::ManagedidentitiesV1alpha1::MaintenancePolicy::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :eligibilities, as: 'eligibilities', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata::Representation
      
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::ManagedidentitiesV1alpha1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class LdapsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate', class: Google::Apis::ManagedidentitiesV1alpha1::Certificate, decorator: Google::Apis::ManagedidentitiesV1alpha1::Certificate::Representation
      
          property :certificate_password, as: 'certificatePassword'
          property :certificate_pfx, :base64 => true, as: 'certificatePfx'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::ManagedidentitiesV1alpha1::Backup, decorator: Google::Apis::ManagedidentitiesV1alpha1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::ManagedidentitiesV1alpha1::Domain, decorator: Google::Apis::ManagedidentitiesV1alpha1::Domain::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ManagedidentitiesV1alpha1::Location, decorator: Google::Apis::ManagedidentitiesV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ManagedidentitiesV1alpha1::Operation, decorator: Google::Apis::ManagedidentitiesV1alpha1::Operation::Representation
      
        end
      end
      
      class ListPeeringsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :peerings, as: 'peerings', class: Google::Apis::ManagedidentitiesV1alpha1::Peering, decorator: Google::Apis::ManagedidentitiesV1alpha1::Peering::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSqlIntegrationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sql_integrations, as: 'sqlIntegrations', class: Google::Apis::ManagedidentitiesV1alpha1::SqlIntegration, decorator: Google::Apis::ManagedidentitiesV1alpha1::SqlIntegration::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::ManagedidentitiesV1alpha1::UpdatePolicy, decorator: Google::Apis::ManagedidentitiesV1alpha1::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::ManagedidentitiesV1alpha1::DailyCycle, decorator: Google::Apis::ManagedidentitiesV1alpha1::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::ManagedidentitiesV1alpha1::WeeklyCycle, decorator: Google::Apis::ManagedidentitiesV1alpha1::WeeklyCycle::Representation
      
        end
      end
      
      class OnPremDomainDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_sid_filtering, as: 'disableSidFiltering'
          property :domain_name, as: 'domainName'
        end
      end
      
      class OnPremDomainSidDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sid_filtering_state, as: 'sidFilteringState'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ManagedidentitiesV1alpha1::Status, decorator: Google::Apis::ManagedidentitiesV1alpha1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Peering
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_network, as: 'authorizedNetwork'
          property :create_time, as: 'createTime'
          property :domain_resource, as: 'domainResource'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ManagedidentitiesV1alpha1::Binding, decorator: Google::Apis::ManagedidentitiesV1alpha1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReconfigureTrustRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trust_prop, as: 'trust', class: Google::Apis::ManagedidentitiesV1alpha1::TrustProp, decorator: Google::Apis::ManagedidentitiesV1alpha1::TrustProp::Representation
      
        end
      end
      
      class ResetAdminPasswordRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResetAdminPasswordResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
        end
      end
      
      class RestoreDomainRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
        end
      end
      
      class SqlIntegration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :sql_instance, as: 'sqlInstance'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay, decorator: Google::Apis::ManagedidentitiesV1alpha1::TimeOfDay::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ManagedidentitiesV1alpha1::Policy, decorator: Google::Apis::ManagedidentitiesV1alpha1::Policy::Representation
      
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
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
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
      
      class TrustProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_known_trust_connected_heartbeat_time, as: 'lastKnownTrustConnectedHeartbeatTime'
          property :selective_authentication, as: 'selectiveAuthentication'
          property :state, as: 'state'
          property :state_description, as: 'stateDescription'
          collection :target_dns_ip_addresses, as: 'targetDnsIpAddresses'
          property :target_domain_name, as: 'targetDomainName'
          property :trust_direction, as: 'trustDirection'
          property :trust_handshake_secret, as: 'trustHandshakeSecret'
          property :trust_type, as: 'trustType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::ManagedidentitiesV1alpha1::DenyMaintenancePeriod, decorator: Google::Apis::ManagedidentitiesV1alpha1::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::ManagedidentitiesV1alpha1::MaintenanceWindow, decorator: Google::Apis::ManagedidentitiesV1alpha1::MaintenanceWindow::Representation
      
        end
      end
      
      class ValidateTrustRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trust_prop, as: 'trust', class: Google::Apis::ManagedidentitiesV1alpha1::TrustProp, decorator: Google::Apis::ManagedidentitiesV1alpha1::TrustProp::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::ManagedidentitiesV1alpha1::Schedule, decorator: Google::Apis::ManagedidentitiesV1alpha1::Schedule::Representation
      
        end
      end
    end
  end
end
