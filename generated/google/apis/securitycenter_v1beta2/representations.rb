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
    module SecuritycenterV1beta2
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerThreatDetectionSettings
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
      
      class WebSecurityScannerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
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
          property :category, as: 'category'
          property :create_time, as: 'createTime'
          property :event_time, as: 'eventTime'
          property :external_uri, as: 'externalUri'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :resource_name, as: 'resourceName'
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1beta2::SecurityMarks, decorator: Google::Apis::SecuritycenterV1beta2::SecurityMarks::Representation
      
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
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
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
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
          hash :marks, as: 'marks'
          property :name, as: 'name'
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
