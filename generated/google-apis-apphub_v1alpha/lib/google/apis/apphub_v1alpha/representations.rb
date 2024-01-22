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
    module ApphubV1alpha
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
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
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Criticality
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachServiceProjectAttachmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachServiceProjectAttachmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveredService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveredWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindUnregisteredServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindUnregisteredWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListApplicationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiscoveredServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiscoveredWorkloadsResponse
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
      
      class ListServiceProjectAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupServiceProjectAttachmentResponse
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceProjectAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceReference
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
      
      class Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::ApphubV1alpha::Attributes, decorator: Google::Apis::ApphubV1alpha::Attributes::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :scope, as: 'scope', class: Google::Apis::ApphubV1alpha::Scope, decorator: Google::Apis::ApphubV1alpha::Scope::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_owners, as: 'businessOwners', class: Google::Apis::ApphubV1alpha::ContactInfo, decorator: Google::Apis::ApphubV1alpha::ContactInfo::Representation
      
          property :criticality, as: 'criticality', class: Google::Apis::ApphubV1alpha::Criticality, decorator: Google::Apis::ApphubV1alpha::Criticality::Representation
      
          collection :developer_owners, as: 'developerOwners', class: Google::Apis::ApphubV1alpha::ContactInfo, decorator: Google::Apis::ApphubV1alpha::ContactInfo::Representation
      
          property :environment, as: 'environment', class: Google::Apis::ApphubV1alpha::Environment, decorator: Google::Apis::ApphubV1alpha::Environment::Representation
      
          collection :operator_owners, as: 'operatorOwners', class: Google::Apis::ApphubV1alpha::ContactInfo, decorator: Google::Apis::ApphubV1alpha::ContactInfo::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ApphubV1alpha::AuditLogConfig, decorator: Google::Apis::ApphubV1alpha::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ApphubV1alpha::Expr, decorator: Google::Apis::ApphubV1alpha::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class ContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel', class: Google::Apis::ApphubV1alpha::Channel, decorator: Google::Apis::ApphubV1alpha::Channel::Representation
      
          property :display_name, as: 'displayName'
          property :email, as: 'email'
        end
      end
      
      class Criticality
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :level, as: 'level'
          property :mission_critical, as: 'missionCritical'
        end
      end
      
      class DetachServiceProjectAttachmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DetachServiceProjectAttachmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DiscoveredService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :service_properties, as: 'serviceProperties', class: Google::Apis::ApphubV1alpha::ServiceProperties, decorator: Google::Apis::ApphubV1alpha::ServiceProperties::Representation
      
          property :service_reference, as: 'serviceReference', class: Google::Apis::ApphubV1alpha::ServiceReference, decorator: Google::Apis::ApphubV1alpha::ServiceReference::Representation
      
        end
      end
      
      class DiscoveredWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :workload_properties, as: 'workloadProperties', class: Google::Apis::ApphubV1alpha::WorkloadProperties, decorator: Google::Apis::ApphubV1alpha::WorkloadProperties::Representation
      
          property :workload_reference, as: 'workloadReference', class: Google::Apis::ApphubV1alpha::WorkloadReference, decorator: Google::Apis::ApphubV1alpha::WorkloadReference::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
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
      
      class FindUnregisteredServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovered_services, as: 'discoveredServices', class: Google::Apis::ApphubV1alpha::DiscoveredService, decorator: Google::Apis::ApphubV1alpha::DiscoveredService::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class FindUnregisteredWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovered_workloads, as: 'discoveredWorkloads', class: Google::Apis::ApphubV1alpha::DiscoveredWorkload, decorator: Google::Apis::ApphubV1alpha::DiscoveredWorkload::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListApplicationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applications, as: 'applications', class: Google::Apis::ApphubV1alpha::Application, decorator: Google::Apis::ApphubV1alpha::Application::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDiscoveredServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovered_services, as: 'discoveredServices', class: Google::Apis::ApphubV1alpha::DiscoveredService, decorator: Google::Apis::ApphubV1alpha::DiscoveredService::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDiscoveredWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovered_workloads, as: 'discoveredWorkloads', class: Google::Apis::ApphubV1alpha::DiscoveredWorkload, decorator: Google::Apis::ApphubV1alpha::DiscoveredWorkload::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ApphubV1alpha::Location, decorator: Google::Apis::ApphubV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ApphubV1alpha::Operation, decorator: Google::Apis::ApphubV1alpha::Operation::Representation
      
        end
      end
      
      class ListServiceProjectAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_project_attachments, as: 'serviceProjectAttachments', class: Google::Apis::ApphubV1alpha::ServiceProjectAttachment, decorator: Google::Apis::ApphubV1alpha::ServiceProjectAttachment::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::ApphubV1alpha::Service, decorator: Google::Apis::ApphubV1alpha::Service::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workloads, as: 'workloads', class: Google::Apis::ApphubV1alpha::Workload, decorator: Google::Apis::ApphubV1alpha::Workload::Representation
      
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
      
      class LookupServiceProjectAttachmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_project_attachment, as: 'serviceProjectAttachment', class: Google::Apis::ApphubV1alpha::ServiceProjectAttachment, decorator: Google::Apis::ApphubV1alpha::ServiceProjectAttachment::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ApphubV1alpha::Status, decorator: Google::Apis::ApphubV1alpha::Status::Representation
      
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ApphubV1alpha::AuditConfig, decorator: Google::Apis::ApphubV1alpha::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ApphubV1alpha::Binding, decorator: Google::Apis::ApphubV1alpha::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Scope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::ApphubV1alpha::Attributes, decorator: Google::Apis::ApphubV1alpha::Attributes::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovered_service, as: 'discoveredService'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :service_properties, as: 'serviceProperties', class: Google::Apis::ApphubV1alpha::ServiceProperties, decorator: Google::Apis::ApphubV1alpha::ServiceProperties::Representation
      
          property :service_reference, as: 'serviceReference', class: Google::Apis::ApphubV1alpha::ServiceReference, decorator: Google::Apis::ApphubV1alpha::ServiceReference::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ServiceProjectAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :service_project, as: 'serviceProject'
          property :state, as: 'state'
          property :uid, as: 'uid'
        end
      end
      
      class ServiceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_project, as: 'gcpProject'
          property :location, as: 'location'
          property :zone, as: 'zone'
        end
      end
      
      class ServiceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :uri, as: 'uri'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ApphubV1alpha::Policy, decorator: Google::Apis::ApphubV1alpha::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::ApphubV1alpha::Attributes, decorator: Google::Apis::ApphubV1alpha::Attributes::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovered_workload, as: 'discoveredWorkload'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :workload_properties, as: 'workloadProperties', class: Google::Apis::ApphubV1alpha::WorkloadProperties, decorator: Google::Apis::ApphubV1alpha::WorkloadProperties::Representation
      
          property :workload_reference, as: 'workloadReference', class: Google::Apis::ApphubV1alpha::WorkloadReference, decorator: Google::Apis::ApphubV1alpha::WorkloadReference::Representation
      
        end
      end
      
      class WorkloadProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_project, as: 'gcpProject'
          property :location, as: 'location'
          property :zone, as: 'zone'
        end
      end
      
      class WorkloadReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
    end
  end
end
