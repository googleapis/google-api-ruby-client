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
    module SecuritycenterV1beta2
      
      class Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerThreatDetectionSettings
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
      
      class Details
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventThreatDetectionSettings
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
      
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
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
      
      class Indicator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MitreAttack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityCenterSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityHealthAnalyticsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityMarks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebSecurityScannerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_ip, as: 'callerIp'
          property :caller_ip_geo, as: 'callerIpGeo', class: Google::Apis::SecuritycenterV1beta2::Geolocation, decorator: Google::Apis::SecuritycenterV1beta2::Geolocation::Representation
      
          property :method_name, as: 'methodName'
          property :principal_email, as: 'principalEmail'
          property :service_name, as: 'serviceName'
          property :user_agent_family, as: 'userAgentFamily'
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module_enablement_state, as: 'moduleEnablementState'
          hash :value, as: 'value'
        end
      end
      
      class ContainerThreatDetectionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Cve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvssv3, as: 'cvssv3', class: Google::Apis::SecuritycenterV1beta2::Cvssv3, decorator: Google::Apis::SecuritycenterV1beta2::Cvssv3::Representation
      
          property :id, as: 'id'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1beta2::Reference, decorator: Google::Apis::SecuritycenterV1beta2::Reference::Representation
      
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
      
      class Details
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
        end
      end
      
      class EventThreatDetectionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::SecuritycenterV1beta2::Access, decorator: Google::Apis::SecuritycenterV1beta2::Access::Representation
      
          property :canonical_name, as: 'canonicalName'
          property :category, as: 'category'
          property :create_time, as: 'createTime'
          property :event_time, as: 'eventTime'
          hash :external_systems, as: 'externalSystems', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExternalSystem, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExternalSystem::Representation
      
          property :external_uri, as: 'externalUri'
          property :finding_class, as: 'findingClass'
          property :indicator, as: 'indicator', class: Google::Apis::SecuritycenterV1beta2::Indicator, decorator: Google::Apis::SecuritycenterV1beta2::Indicator::Representation
      
          property :mitre_attack, as: 'mitreAttack', class: Google::Apis::SecuritycenterV1beta2::MitreAttack, decorator: Google::Apis::SecuritycenterV1beta2::MitreAttack::Representation
      
          property :mute, as: 'mute'
          property :mute_initiator, as: 'muteInitiator'
          property :mute_update_time, as: 'muteUpdateTime'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :resource_name, as: 'resourceName'
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1beta2::SecurityMarks, decorator: Google::Apis::SecuritycenterV1beta2::SecurityMarks::Representation
      
          property :severity, as: 'severity'
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
          property :vulnerability, as: 'vulnerability', class: Google::Apis::SecuritycenterV1beta2::Vulnerability, decorator: Google::Apis::SecuritycenterV1beta2::Vulnerability::Representation
      
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
      
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1beta2::Finding, decorator: Google::Apis::SecuritycenterV1beta2::Finding::Representation
      
          property :notification_config_name, as: 'notificationConfigName'
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Resource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Resource::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1beta2::Folder, decorator: Google::Apis::SecuritycenterV1beta2::Folder::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
          property :type, as: 'type'
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
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1SecurityMarks, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1SecurityMarks::Representation
      
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
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Finding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Finding::Representation
      
          property :notification_config_name, as: 'notificationConfigName'
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Resource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Resource::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1p1beta1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Folder, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1p1beta1Folder::Representation
      
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
      
      class Indicator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains'
          collection :ip_addresses, as: 'ipAddresses'
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
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :uri, as: 'uri'
        end
      end
      
      class SecurityCenterSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_sink_project, as: 'logSinkProject'
          property :name, as: 'name'
          property :org_service_account, as: 'orgServiceAccount'
        end
      end
      
      class SecurityHealthAnalyticsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
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
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::SecuritycenterV1beta2::Details, decorator: Google::Apis::SecuritycenterV1beta2::Details::Representation
      
          property :name, as: 'name'
          property :tier, as: 'tier'
        end
      end
      
      class Vulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve', class: Google::Apis::SecuritycenterV1beta2::Cve, decorator: Google::Apis::SecuritycenterV1beta2::Cve::Representation
      
        end
      end
      
      class WebSecurityScannerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
