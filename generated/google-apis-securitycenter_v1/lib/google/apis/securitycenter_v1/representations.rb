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
    module SecuritycenterV1
      
      class Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetDiscoveryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssociatedFinding
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
      
      class BulkMuteFindingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Compliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Contact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cve
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cvssv3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Detection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Edge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExfilResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exfiltration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Folder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Geolocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1BigQueryExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ExposedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ExposurePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ExternalSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1MuteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1NotificationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Folder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupFindingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Indicator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Kubernetes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBigQueryExportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFindingsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMuteConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotificationConfigsResponse
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
      
      class MemoryHashSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MitreAttack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Process
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Role
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunAssetDiscoveryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityCenterProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityMarks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountDelegationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetFindingStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMuteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
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
      
      class Vulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YaraRuleSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_ip, as: 'callerIp'
          property :caller_ip_geo, as: 'callerIpGeo', class: Google::Apis::SecuritycenterV1::Geolocation, decorator: Google::Apis::SecuritycenterV1::Geolocation::Representation
      
          property :method_name, as: 'methodName'
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
          collection :service_account_delegation_info, as: 'serviceAccountDelegationInfo', class: Google::Apis::SecuritycenterV1::ServiceAccountDelegationInfo, decorator: Google::Apis::SecuritycenterV1::ServiceAccountDelegationInfo::Representation
      
          property :service_account_key_name, as: 'serviceAccountKeyName'
          property :service_name, as: 'serviceName'
          property :user_agent_family, as: 'userAgentFamily'
          property :user_name, as: 'userName'
        end
      end
      
      class AccessReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
          property :name, as: 'name'
          property :ns, as: 'ns'
          property :resource, as: 'resource'
          property :subresource, as: 'subresource'
          property :verb, as: 'verb'
          property :version, as: 'version'
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          property :create_time, as: 'createTime'
          property :iam_policy, as: 'iamPolicy', class: Google::Apis::SecuritycenterV1::IamPolicy, decorator: Google::Apis::SecuritycenterV1::IamPolicy::Representation
      
          property :name, as: 'name'
          hash :resource_properties, as: 'resourceProperties'
          property :security_center_properties, as: 'securityCenterProperties', class: Google::Apis::SecuritycenterV1::SecurityCenterProperties, decorator: Google::Apis::SecuritycenterV1::SecurityCenterProperties::Representation
      
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1::SecurityMarks, decorator: Google::Apis::SecuritycenterV1::SecurityMarks::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AssetDiscoveryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folder_ids, as: 'folderIds'
          property :inclusion_mode, as: 'inclusionMode'
          collection :project_ids, as: 'projectIds'
        end
      end
      
      class AssociatedFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_finding_name, as: 'canonicalFindingName'
          property :finding_category, as: 'findingCategory'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::SecuritycenterV1::AuditLogConfig, decorator: Google::Apis::SecuritycenterV1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::SecuritycenterV1::Expr, decorator: Google::Apis::SecuritycenterV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BulkMuteFindingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :mute_annotation, as: 'muteAnnotation'
        end
      end
      
      class Compliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
          property :standard, as: 'standard'
          property :version, as: 'version'
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_ip, as: 'destinationIp'
          property :destination_port, as: 'destinationPort'
          property :protocol, as: 'protocol'
          property :source_ip, as: 'sourceIp'
          property :source_port, as: 'sourcePort'
        end
      end
      
      class Contact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class ContactDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1::Contact, decorator: Google::Apis::SecuritycenterV1::Contact::Representation
      
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_id, as: 'imageId'
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1::Label, decorator: Google::Apis::SecuritycenterV1::Label::Representation
      
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class Cve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvssv3, as: 'cvssv3', class: Google::Apis::SecuritycenterV1::Cvssv3, decorator: Google::Apis::SecuritycenterV1::Cvssv3::Representation
      
          property :id, as: 'id'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1::Reference, decorator: Google::Apis::SecuritycenterV1::Reference::Representation
      
          property :upstream_fix_available, as: 'upstreamFixAvailable'
        end
      end
      
      class Cvssv3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :grantees, as: 'grantees'
          property :name, as: 'name'
          property :query, as: 'query'
          property :user_name, as: 'userName'
        end
      end
      
      class Detection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary, as: 'binary'
          property :percent_pages_matched, as: 'percentPagesMatched'
        end
      end
      
      class Edge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :source, as: 'source'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :val, as: 'val'
        end
      end
      
      class ExfilResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :components, as: 'components'
          property :name, as: 'name'
        end
      end
      
      class Exfiltration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sources, as: 'sources', class: Google::Apis::SecuritycenterV1::ExfilResource, decorator: Google::Apis::SecuritycenterV1::ExfilResource::Representation
      
          collection :targets, as: 'targets', class: Google::Apis::SecuritycenterV1::ExfilResource, decorator: Google::Apis::SecuritycenterV1::ExfilResource::Representation
      
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
      
      class File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :hashed_size, :numeric_string => true, as: 'hashedSize'
          property :partially_hashed, as: 'partiallyHashed'
          property :path, as: 'path'
          property :sha256, as: 'sha256'
          property :size, :numeric_string => true, as: 'size'
        end
      end
      
      class Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::SecuritycenterV1::Access, decorator: Google::Apis::SecuritycenterV1::Access::Representation
      
          property :canonical_name, as: 'canonicalName'
          property :category, as: 'category'
          collection :compliances, as: 'compliances', class: Google::Apis::SecuritycenterV1::Compliance, decorator: Google::Apis::SecuritycenterV1::Compliance::Representation
      
          collection :connections, as: 'connections', class: Google::Apis::SecuritycenterV1::Connection, decorator: Google::Apis::SecuritycenterV1::Connection::Representation
      
          hash :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1::ContactDetails, decorator: Google::Apis::SecuritycenterV1::ContactDetails::Representation
      
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1::Container, decorator: Google::Apis::SecuritycenterV1::Container::Representation
      
          property :create_time, as: 'createTime'
          property :database, as: 'database', class: Google::Apis::SecuritycenterV1::Database, decorator: Google::Apis::SecuritycenterV1::Database::Representation
      
          property :description, as: 'description'
          property :event_time, as: 'eventTime'
          property :exfiltration, as: 'exfiltration', class: Google::Apis::SecuritycenterV1::Exfiltration, decorator: Google::Apis::SecuritycenterV1::Exfiltration::Representation
      
          hash :external_systems, as: 'externalSystems', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExternalSystem::Representation
      
          property :external_uri, as: 'externalUri'
          collection :files, as: 'files', class: Google::Apis::SecuritycenterV1::File, decorator: Google::Apis::SecuritycenterV1::File::Representation
      
          property :finding_class, as: 'findingClass'
          collection :iam_bindings, as: 'iamBindings', class: Google::Apis::SecuritycenterV1::IamBinding, decorator: Google::Apis::SecuritycenterV1::IamBinding::Representation
      
          property :indicator, as: 'indicator', class: Google::Apis::SecuritycenterV1::Indicator, decorator: Google::Apis::SecuritycenterV1::Indicator::Representation
      
          property :kubernetes, as: 'kubernetes', class: Google::Apis::SecuritycenterV1::Kubernetes, decorator: Google::Apis::SecuritycenterV1::Kubernetes::Representation
      
          property :mitre_attack, as: 'mitreAttack', class: Google::Apis::SecuritycenterV1::MitreAttack, decorator: Google::Apis::SecuritycenterV1::MitreAttack::Representation
      
          property :mute, as: 'mute'
          property :mute_initiator, as: 'muteInitiator'
          property :mute_update_time, as: 'muteUpdateTime'
          property :name, as: 'name'
          property :next_steps, as: 'nextSteps'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          collection :processes, as: 'processes', class: Google::Apis::SecuritycenterV1::Process, decorator: Google::Apis::SecuritycenterV1::Process::Representation
      
          property :resource_name, as: 'resourceName'
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1::SecurityMarks, decorator: Google::Apis::SecuritycenterV1::SecurityMarks::Representation
      
          property :severity, as: 'severity'
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
          property :vulnerability, as: 'vulnerability', class: Google::Apis::SecuritycenterV1::Vulnerability, decorator: Google::Apis::SecuritycenterV1::Vulnerability::Representation
      
        end
      end
      
      class Folder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_folder, as: 'resourceFolder'
          property :resource_folder_display_name, as: 'resourceFolderDisplayName'
        end
      end
      
      class Geolocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::SecuritycenterV1::GetPolicyOptions, decorator: Google::Apis::SecuritycenterV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleCloudSecuritycenterV1BigQueryExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :description, as: 'description'
          property :filter, as: 'filter'
          property :most_recent_editor, as: 'mostRecentEditor'
          property :name, as: 'name'
          property :principal, as: 'principal'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :ns, as: 'ns'
          property :role, as: 'role', class: Google::Apis::SecuritycenterV1::Role, decorator: Google::Apis::SecuritycenterV1::Role::Representation
      
          collection :subjects, as: 'subjects', class: Google::Apis::SecuritycenterV1::Subject, decorator: Google::Apis::SecuritycenterV1::Subject::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudSecuritycenterV1ExposedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :methods_prop, as: 'methods'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :resource_value, as: 'resourceValue'
        end
      end
      
      class GoogleCloudSecuritycenterV1ExposurePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :edges, as: 'edges', class: Google::Apis::SecuritycenterV1::Edge, decorator: Google::Apis::SecuritycenterV1::Edge::Representation
      
          property :exposed_resource, as: 'exposedResource', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExposedResource, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1ExposedResource::Representation
      
          property :name, as: 'name'
          collection :path_nodes, as: 'pathNodes', class: Google::Apis::SecuritycenterV1::PathNode, decorator: Google::Apis::SecuritycenterV1::PathNode::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1ExternalSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignees, as: 'assignees'
          property :external_system_update_time, as: 'externalSystemUpdateTime'
          property :external_uid, as: 'externalUid'
          property :name, as: 'name'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudSecuritycenterV1MuteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :filter, as: 'filter'
          property :most_recent_editor, as: 'mostRecentEditor'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV1NotificationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1::Finding, decorator: Google::Apis::SecuritycenterV1::Finding::Representation
      
          property :notification_config_name, as: 'notificationConfigName'
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Resource, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Resource::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1::Folder, decorator: Google::Apis::SecuritycenterV1::Folder::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :resource_type, as: 'resourceType'
          property :resource_value, as: 'resourceValue'
          property :scope, as: 'scope'
          collection :tag_values, as: 'tagValues'
        end
      end
      
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          property :category, as: 'category'
          property :create_time, as: 'createTime'
          property :event_time, as: 'eventTime'
          property :external_uri, as: 'externalUri'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :resource_name, as: 'resourceName'
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks::Representation
      
          property :severity, as: 'severity'
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Folder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_folder, as: 'resourceFolder'
          property :resource_folder_display_name, as: 'resourceFolderDisplayName'
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Finding, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Finding::Representation
      
          property :notification_config_name, as: 'notificationConfigName'
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Resource, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Resource::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Folder, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Folder::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          hash :marks, as: 'marks'
          property :name, as: 'name'
        end
      end
      
      class GroupAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compare_duration, as: 'compareDuration'
          property :filter, as: 'filter'
          property :group_by, as: 'groupBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :read_time, as: 'readTime'
        end
      end
      
      class GroupAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_by_results, as: 'groupByResults', class: Google::Apis::SecuritycenterV1::GroupResult, decorator: Google::Apis::SecuritycenterV1::GroupResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :read_time, as: 'readTime'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GroupFindingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compare_duration, as: 'compareDuration'
          property :filter, as: 'filter'
          property :group_by, as: 'groupBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :read_time, as: 'readTime'
        end
      end
      
      class GroupFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_by_results, as: 'groupByResults', class: Google::Apis::SecuritycenterV1::GroupResult, decorator: Google::Apis::SecuritycenterV1::GroupResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :read_time, as: 'readTime'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GroupResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          hash :properties, as: 'properties'
        end
      end
      
      class IamBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :member, as: 'member'
          property :role, as: 'role'
        end
      end
      
      class IamPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_blob, as: 'policyBlob'
        end
      end
      
      class Indicator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains'
          collection :ip_addresses, as: 'ipAddresses'
          collection :signatures, as: 'signatures', class: Google::Apis::SecuritycenterV1::ProcessSignature, decorator: Google::Apis::SecuritycenterV1::ProcessSignature::Representation
      
          collection :uris, as: 'uris'
        end
      end
      
      class Kubernetes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_reviews, as: 'accessReviews', class: Google::Apis::SecuritycenterV1::AccessReview, decorator: Google::Apis::SecuritycenterV1::AccessReview::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Binding, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Binding::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::SecuritycenterV1::NodePool, decorator: Google::Apis::SecuritycenterV1::NodePool::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1::Node, decorator: Google::Apis::SecuritycenterV1::Node::Representation
      
          collection :pods, as: 'pods', class: Google::Apis::SecuritycenterV1::Pod, decorator: Google::Apis::SecuritycenterV1::Pod::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::SecuritycenterV1::Role, decorator: Google::Apis::SecuritycenterV1::Role::Representation
      
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list_assets_results, as: 'listAssetsResults', class: Google::Apis::SecuritycenterV1::ListAssetsResult, decorator: Google::Apis::SecuritycenterV1::ListAssetsResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :read_time, as: 'readTime'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListAssetsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::SecuritycenterV1::Asset, decorator: Google::Apis::SecuritycenterV1::Asset::Representation
      
          property :state_change, as: 'stateChange'
        end
      end
      
      class ListBigQueryExportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :big_query_exports, as: 'bigQueryExports', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1BigQueryExport::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list_findings_results, as: 'listFindingsResults', class: Google::Apis::SecuritycenterV1::ListFindingsResult, decorator: Google::Apis::SecuritycenterV1::ListFindingsResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :read_time, as: 'readTime'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListFindingsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1::Finding, decorator: Google::Apis::SecuritycenterV1::Finding::Representation
      
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1::Resource, decorator: Google::Apis::SecuritycenterV1::Resource::Representation
      
          property :state_change, as: 'stateChange'
        end
      end
      
      class ListMuteConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mute_configs, as: 'muteConfigs', class: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig, decorator: Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1MuteConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNotificationConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notification_configs, as: 'notificationConfigs', class: Google::Apis::SecuritycenterV1::NotificationConfig, decorator: Google::Apis::SecuritycenterV1::NotificationConfig::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SecuritycenterV1::Operation, decorator: Google::Apis::SecuritycenterV1::Operation::Representation
      
        end
      end
      
      class ListSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::SecuritycenterV1::Source, decorator: Google::Apis::SecuritycenterV1::Source::Representation
      
        end
      end
      
      class MemoryHashSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_family, as: 'binaryFamily'
          collection :detections, as: 'detections', class: Google::Apis::SecuritycenterV1::Detection, decorator: Google::Apis::SecuritycenterV1::Detection::Representation
      
        end
      end
      
      class MitreAttack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_tactics, as: 'additionalTactics'
          collection :additional_techniques, as: 'additionalTechniques'
          property :primary_tactic, as: 'primaryTactic'
          collection :primary_techniques, as: 'primaryTechniques'
          property :version, as: 'version'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1::Node, decorator: Google::Apis::SecuritycenterV1::Node::Representation
      
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :pubsub_topic, as: 'pubsubTopic'
          property :service_account, as: 'serviceAccount'
          property :streaming_config, as: 'streamingConfig', class: Google::Apis::SecuritycenterV1::StreamingConfig, decorator: Google::Apis::SecuritycenterV1::StreamingConfig::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SecuritycenterV1::Status, decorator: Google::Apis::SecuritycenterV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OrganizationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_discovery_config, as: 'assetDiscoveryConfig', class: Google::Apis::SecuritycenterV1::AssetDiscoveryConfig, decorator: Google::Apis::SecuritycenterV1::AssetDiscoveryConfig::Representation
      
          property :enable_asset_discovery, as: 'enableAssetDiscovery'
          property :name, as: 'name'
        end
      end
      
      class PathNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_findings, as: 'associatedFindings', class: Google::Apis::SecuritycenterV1::AssociatedFinding, decorator: Google::Apis::SecuritycenterV1::AssociatedFinding::Representation
      
          property :display_name, as: 'displayName'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class Pod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1::Container, decorator: Google::Apis::SecuritycenterV1::Container::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1::Label, decorator: Google::Apis::SecuritycenterV1::Label::Representation
      
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::SecuritycenterV1::AuditConfig, decorator: Google::Apis::SecuritycenterV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecuritycenterV1::Binding, decorator: Google::Apis::SecuritycenterV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Process
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :arguments_truncated, as: 'argumentsTruncated'
          property :binary, as: 'binary', class: Google::Apis::SecuritycenterV1::File, decorator: Google::Apis::SecuritycenterV1::File::Representation
      
          collection :env_variables, as: 'envVariables', class: Google::Apis::SecuritycenterV1::EnvironmentVariable, decorator: Google::Apis::SecuritycenterV1::EnvironmentVariable::Representation
      
          property :env_variables_truncated, as: 'envVariablesTruncated'
          collection :libraries, as: 'libraries', class: Google::Apis::SecuritycenterV1::File, decorator: Google::Apis::SecuritycenterV1::File::Representation
      
          property :name, as: 'name'
          property :parent_pid, :numeric_string => true, as: 'parentPid'
          property :pid, :numeric_string => true, as: 'pid'
          property :script, as: 'script', class: Google::Apis::SecuritycenterV1::File, decorator: Google::Apis::SecuritycenterV1::File::Representation
      
        end
      end
      
      class ProcessSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memory_hash_signature, as: 'memoryHashSignature', class: Google::Apis::SecuritycenterV1::MemoryHashSignature, decorator: Google::Apis::SecuritycenterV1::MemoryHashSignature::Representation
      
          property :yara_rule_signature, as: 'yaraRuleSignature', class: Google::Apis::SecuritycenterV1::YaraRuleSignature, decorator: Google::Apis::SecuritycenterV1::YaraRuleSignature::Representation
      
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :uri, as: 'uri'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1::Folder, decorator: Google::Apis::SecuritycenterV1::Folder::Representation
      
          property :name, as: 'name'
          property :parent_display_name, as: 'parentDisplayName'
          property :parent_name, as: 'parentName'
          property :project_display_name, as: 'projectDisplayName'
          property :project_name, as: 'projectName'
          property :type, as: 'type'
        end
      end
      
      class Role
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class RunAssetDiscoveryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SecurityCenterProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1::Folder, decorator: Google::Apis::SecuritycenterV1::Folder::Representation
      
          property :resource_display_name, as: 'resourceDisplayName'
          property :resource_name, as: 'resourceName'
          collection :resource_owners, as: 'resourceOwners'
          property :resource_parent, as: 'resourceParent'
          property :resource_parent_display_name, as: 'resourceParentDisplayName'
          property :resource_project, as: 'resourceProject'
          property :resource_project_display_name, as: 'resourceProjectDisplayName'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class SecurityMarks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          hash :marks, as: 'marks'
          property :name, as: 'name'
        end
      end
      
      class ServiceAccountDelegationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
        end
      end
      
      class SetFindingStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::SecuritycenterV1::Policy, decorator: Google::Apis::SecuritycenterV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SetMuteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mute, as: 'mute'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
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
      
      class StreamingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
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
      
      class Vulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve', class: Google::Apis::SecuritycenterV1::Cve, decorator: Google::Apis::SecuritycenterV1::Cve::Representation
      
        end
      end
      
      class YaraRuleSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :yara_rule, as: 'yaraRule'
        end
      end
    end
  end
end
