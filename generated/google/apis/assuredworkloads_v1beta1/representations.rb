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
    module AssuredworkloadsV1beta1
      
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadCjisSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadIl4Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account, as: 'billingAccount'
          property :cjis_settings, as: 'cjisSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadCjisSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadCjisSettings::Representation
      
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :fedramp_high_settings, as: 'fedrampHighSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings::Representation
      
          property :fedramp_moderate_settings, as: 'fedrampModerateSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings::Representation
      
          property :il4_settings, as: 'il4Settings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadIl4Settings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadIl4Settings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :provisioned_resources_parent, as: 'provisionedResourcesParent'
          collection :resources, as: 'resources', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadCjisSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadIl4Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_rotation_time, as: 'nextRotationTime'
          property :rotation_period, as: 'rotationPeriod'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, :numeric_string => true, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workloads, as: 'workloads', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account, as: 'billingAccount'
          property :cjis_settings, as: 'cjisSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings::Representation
      
          property :compliance_regime, as: 'complianceRegime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :fedramp_high_settings, as: 'fedrampHighSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings::Representation
      
          property :fedramp_moderate_settings, as: 'fedrampModerateSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings::Representation
      
          property :il4_settings, as: 'il4Settings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :provisioned_resources_parent, as: 'provisionedResourcesParent'
          collection :resources, as: 'resources', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_settings, as: 'kmsSettings', class: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings::Representation
      
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_rotation_time, as: 'nextRotationTime'
          property :rotation_period, as: 'rotationPeriod'
        end
      end
      
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, :numeric_string => true, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus, decorator: Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
