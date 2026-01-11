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
      
      class AccessReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdaptiveProtection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AffectedResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AiModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Allowed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactGuardPolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactGuardPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttackExposure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsOrganization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsOrganizationalUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureManagementGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureTenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDisasterRecovery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Chokepoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudArmor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudDlpDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudDlpInspection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudLoggingEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Compliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
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
      
      class ContainerThreatDetectionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Control
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
      
      class Cwe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataAccessEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataFlowEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataRetentionDeletionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Denied
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Details
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Detection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicMuteRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventThreatDetectionSettings
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
      
      class ExportFindingsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportFindingsResponse
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
      
      class FileOperation
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
      
      class Framework
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Geolocation
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
      
      class GoogleCloudSecuritycenterV1CustomConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1CustomOutputSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
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
      
      class GoogleCloudSecuritycenterV1Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1ResourceSelector
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
      
      class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
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
      
      class GoogleCloudSecuritycenterV2Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AccessReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AdaptiveProtection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AffectedResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AiModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Allowed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Attack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AttackExposure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AwsAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AwsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AwsOrganization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AwsOrganizationalUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AzureManagementGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AzureMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AzureResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AzureSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2AzureTenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2BackupDisasterRecovery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2BigQueryExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2BulkMuteFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Chokepoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2CloudArmor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2CloudControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2CloudDlpDataProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2CloudDlpInspection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2CloudLoggingEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Compliance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ComplianceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Contact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ContactDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Cve
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Cvssv3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Cwe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2DataAccessEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2DataFlowEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2DataRetentionDeletionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Denied
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Detection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2DiskPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2DynamicMuteRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2EnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ExfilResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Exfiltration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ExternalSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2FileOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Folder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Framework
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Geolocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2GroupMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IamBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Indicator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IpRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IpRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueDomain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueFindingCve
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueMute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContextContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2KernelRootkit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Kubernetes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2LoadBalancer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2MemoryHashSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2MitreAttack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2MuteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2MuteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Notebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2NotificationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Object
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2OrgPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Pipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Pod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2PolicyDriftDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2PortRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Process
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ProcessSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Requests
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourcePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourcePathNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ResourceValueConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Role
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecretEnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecretFilePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecretStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecurityBulletin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecurityMarks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecurityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SecurityPosture
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2SensitivityScore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2StaticMute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2TicketInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2ToxicCombination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2VertexAi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2Vulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSecuritycenterV2YaraRuleSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Indicator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KernelRootkit
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
      
      class LoadBalancer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
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
      
      class MuteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
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
      
      class Notebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Object
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrgPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDriftDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PortRange
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
      
      class RapidVulnerabilityDetectionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Requests
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePathNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Role
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretEnvironmentVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretFilePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityBulletin
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
      
      class SecurityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPosture
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SensitivityScore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountDelegationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticMute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToxicCombination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VertexAi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineThreatDetectionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityCountBySeverity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilitySnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebSecurityScannerSettings
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
          property :caller_ip_geo, as: 'callerIpGeo', class: Google::Apis::SecuritycenterV1beta2::Geolocation, decorator: Google::Apis::SecuritycenterV1beta2::Geolocation::Representation
      
          property :method_name, as: 'methodName'
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
          collection :service_account_delegation_info, as: 'serviceAccountDelegationInfo', class: Google::Apis::SecuritycenterV1beta2::ServiceAccountDelegationInfo, decorator: Google::Apis::SecuritycenterV1beta2::ServiceAccountDelegationInfo::Representation
      
          property :service_account_key_name, as: 'serviceAccountKeyName'
          property :service_name, as: 'serviceName'
          property :user_agent, as: 'userAgent'
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
      
      class AdaptiveProtection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
        end
      end
      
      class AffectedResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class AiModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_platform, as: 'deploymentPlatform'
          property :display_name, as: 'displayName'
          property :domain, as: 'domain'
          property :library, as: 'library'
          property :location, as: 'location'
          property :name, as: 'name'
          property :publisher, as: 'publisher'
          property :usage_category, as: 'usageCategory'
        end
      end
      
      class Allowed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::IpRule, decorator: Google::Apis::SecuritycenterV1beta2::IpRule::Representation
      
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_uri, as: 'baseUri'
          property :full_uri, as: 'fullUri'
        end
      end
      
      class ArtifactGuardPolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failing_policies, as: 'failingPolicies', class: Google::Apis::SecuritycenterV1beta2::ArtifactGuardPolicy, decorator: Google::Apis::SecuritycenterV1beta2::ArtifactGuardPolicy::Representation
      
          property :resource_id, as: 'resourceId'
        end
      end
      
      class ArtifactGuardPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
          property :policy_id, as: 'policyId'
          property :type, as: 'type'
        end
      end
      
      class Attack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification'
          property :volume_bps, as: 'volumeBps'
          property :volume_bps_long, :numeric_string => true, as: 'volumeBpsLong'
          property :volume_pps, as: 'volumePps'
          property :volume_pps_long, :numeric_string => true, as: 'volumePpsLong'
        end
      end
      
      class AttackExposure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_exposure_result, as: 'attackExposureResult'
          property :exposed_high_value_resources_count, as: 'exposedHighValueResourcesCount'
          property :exposed_low_value_resources_count, as: 'exposedLowValueResourcesCount'
          property :exposed_medium_value_resources_count, as: 'exposedMediumValueResourcesCount'
          property :latest_calculation_time, as: 'latestCalculationTime'
          property :score, as: 'score'
          property :state, as: 'state'
        end
      end
      
      class AwsAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class AwsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::SecuritycenterV1beta2::AwsAccount, decorator: Google::Apis::SecuritycenterV1beta2::AwsAccount::Representation
      
          property :organization, as: 'organization', class: Google::Apis::SecuritycenterV1beta2::AwsOrganization, decorator: Google::Apis::SecuritycenterV1beta2::AwsOrganization::Representation
      
          collection :organizational_units, as: 'organizationalUnits', class: Google::Apis::SecuritycenterV1beta2::AwsOrganizationalUnit, decorator: Google::Apis::SecuritycenterV1beta2::AwsOrganizationalUnit::Representation
      
        end
      end
      
      class AwsOrganization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class AwsOrganizationalUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class AzureManagementGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class AzureMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :management_groups, as: 'managementGroups', class: Google::Apis::SecuritycenterV1beta2::AzureManagementGroup, decorator: Google::Apis::SecuritycenterV1beta2::AzureManagementGroup::Representation
      
          property :resource_group, as: 'resourceGroup', class: Google::Apis::SecuritycenterV1beta2::AzureResourceGroup, decorator: Google::Apis::SecuritycenterV1beta2::AzureResourceGroup::Representation
      
          property :subscription, as: 'subscription', class: Google::Apis::SecuritycenterV1beta2::AzureSubscription, decorator: Google::Apis::SecuritycenterV1beta2::AzureSubscription::Representation
      
          property :tenant, as: 'tenant', class: Google::Apis::SecuritycenterV1beta2::AzureTenant, decorator: Google::Apis::SecuritycenterV1beta2::AzureTenant::Representation
      
        end
      end
      
      class AzureResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class AzureSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class AzureTenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class BackupDisasterRecovery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance, as: 'appliance'
          collection :applications, as: 'applications'
          property :backup_create_time, as: 'backupCreateTime'
          property :backup_template, as: 'backupTemplate'
          property :backup_type, as: 'backupType'
          property :host, as: 'host'
          collection :policies, as: 'policies'
          collection :policy_options, as: 'policyOptions'
          property :profile, as: 'profile'
          property :storage_pool, as: 'storagePool'
        end
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
        end
      end
      
      class Chokepoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :related_findings, as: 'relatedFindings'
        end
      end
      
      class CloudArmor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adaptive_protection, as: 'adaptiveProtection', class: Google::Apis::SecuritycenterV1beta2::AdaptiveProtection, decorator: Google::Apis::SecuritycenterV1beta2::AdaptiveProtection::Representation
      
          property :attack, as: 'attack', class: Google::Apis::SecuritycenterV1beta2::Attack, decorator: Google::Apis::SecuritycenterV1beta2::Attack::Representation
      
          property :duration, as: 'duration'
          property :requests, as: 'requests', class: Google::Apis::SecuritycenterV1beta2::Requests, decorator: Google::Apis::SecuritycenterV1beta2::Requests::Representation
      
          property :security_policy, as: 'securityPolicy', class: Google::Apis::SecuritycenterV1beta2::SecurityPolicy, decorator: Google::Apis::SecuritycenterV1beta2::SecurityPolicy::Representation
      
          property :threat_vector, as: 'threatVector'
        end
      end
      
      class CloudControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_control_name, as: 'cloudControlName'
          property :policy_type, as: 'policyType'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class CloudDlpDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_profile, as: 'dataProfile'
          collection :info_types, as: 'infoTypes', class: Google::Apis::SecuritycenterV1beta2::InfoType, decorator: Google::Apis::SecuritycenterV1beta2::InfoType::Representation
      
          property :parent_type, as: 'parentType'
        end
      end
      
      class CloudDlpInspection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_scan, as: 'fullScan'
          property :info_type, as: 'infoType'
          property :info_type_count, :numeric_string => true, as: 'infoTypeCount'
          property :inspect_job, as: 'inspectJob'
        end
      end
      
      class CloudLoggingEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insert_id, as: 'insertId'
          property :log_id, as: 'logId'
          property :resource_container, as: 'resourceContainer'
          property :timestamp, as: 'timestamp'
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
      
      class ComplianceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_control, as: 'cloudControl', class: Google::Apis::SecuritycenterV1beta2::CloudControl, decorator: Google::Apis::SecuritycenterV1beta2::CloudControl::Representation
      
          collection :cloud_control_deployment_names, as: 'cloudControlDeploymentNames'
          collection :frameworks, as: 'frameworks', class: Google::Apis::SecuritycenterV1beta2::Framework, decorator: Google::Apis::SecuritycenterV1beta2::Framework::Representation
      
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module_enablement_state, as: 'moduleEnablementState'
          hash :value, as: 'value'
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
          collection :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1beta2::Contact, decorator: Google::Apis::SecuritycenterV1beta2::Contact::Representation
      
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :image_id, as: 'imageId'
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1beta2::Label, decorator: Google::Apis::SecuritycenterV1beta2::Label::Representation
      
          property :name, as: 'name'
          property :uri, as: 'uri'
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
      
      class Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_name, as: 'controlName'
          property :display_name, as: 'displayName'
        end
      end
      
      class Cve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvssv3, as: 'cvssv3', class: Google::Apis::SecuritycenterV1beta2::Cvssv3, decorator: Google::Apis::SecuritycenterV1beta2::Cvssv3::Representation
      
          property :exploit_release_date, as: 'exploitReleaseDate'
          property :exploitation_activity, as: 'exploitationActivity'
          property :first_exploitation_date, as: 'firstExploitationDate'
          property :id, as: 'id'
          property :impact, as: 'impact'
          property :observed_in_the_wild, as: 'observedInTheWild'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1beta2::Reference, decorator: Google::Apis::SecuritycenterV1beta2::Reference::Representation
      
          property :upstream_fix_available, as: 'upstreamFixAvailable'
          property :zero_day, as: 'zeroDay'
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
      
      class Cwe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1beta2::Reference, decorator: Google::Apis::SecuritycenterV1beta2::Reference::Representation
      
        end
      end
      
      class DataAccessEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
          property :operation, as: 'operation'
          property :principal_email, as: 'principalEmail'
        end
      end
      
      class DataFlowEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
          property :operation, as: 'operation'
          property :principal_email, as: 'principalEmail'
          property :violated_location, as: 'violatedLocation'
        end
      end
      
      class DataRetentionDeletionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_object_count, :numeric_string => true, as: 'dataObjectCount'
          property :event_detection_time, as: 'eventDetectionTime'
          property :event_type, as: 'eventType'
          property :max_retention_allowed, as: 'maxRetentionAllowed'
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
          property :version, as: 'version'
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :source, as: 'source'
        end
      end
      
      class Denied
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::IpRule, decorator: Google::Apis::SecuritycenterV1beta2::IpRule::Representation
      
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
      
      class Detection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary, as: 'binary'
          property :percent_pages_matched, as: 'percentPagesMatched'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class DiskPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_uuid, as: 'partitionUuid'
          property :relative_path, as: 'relativePath'
        end
      end
      
      class DynamicMuteRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_time, as: 'matchTime'
          property :mute_config, as: 'muteConfig'
        end
      end
      
      class EnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :val, as: 'val'
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
          collection :sources, as: 'sources', class: Google::Apis::SecuritycenterV1beta2::ExfilResource, decorator: Google::Apis::SecuritycenterV1beta2::ExfilResource::Representation
      
          collection :targets, as: 'targets', class: Google::Apis::SecuritycenterV1beta2::ExfilResource, decorator: Google::Apis::SecuritycenterV1beta2::ExfilResource::Representation
      
          property :total_exfiltrated_bytes, :numeric_string => true, as: 'totalExfiltratedBytes'
        end
      end
      
      class ExportFindingsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::SecuritycenterV1beta2::BigQueryDestination, decorator: Google::Apis::SecuritycenterV1beta2::BigQueryDestination::Representation
      
          property :export_start_time, as: 'exportStartTime'
        end
      end
      
      class ExportFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :disk_path, as: 'diskPath', class: Google::Apis::SecuritycenterV1beta2::DiskPath, decorator: Google::Apis::SecuritycenterV1beta2::DiskPath::Representation
      
          property :file_load_state, as: 'fileLoadState'
          property :hashed_size, :numeric_string => true, as: 'hashedSize'
          collection :operations, as: 'operations', class: Google::Apis::SecuritycenterV1beta2::FileOperation, decorator: Google::Apis::SecuritycenterV1beta2::FileOperation::Representation
      
          property :partially_hashed, as: 'partiallyHashed'
          property :path, as: 'path'
          property :sha256, as: 'sha256'
          property :size, :numeric_string => true, as: 'size'
        end
      end
      
      class FileOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::SecuritycenterV1beta2::Access, decorator: Google::Apis::SecuritycenterV1beta2::Access::Representation
      
          property :affected_resources, as: 'affectedResources', class: Google::Apis::SecuritycenterV1beta2::AffectedResources, decorator: Google::Apis::SecuritycenterV1beta2::AffectedResources::Representation
      
          property :ai_model, as: 'aiModel', class: Google::Apis::SecuritycenterV1beta2::AiModel, decorator: Google::Apis::SecuritycenterV1beta2::AiModel::Representation
      
          property :application, as: 'application', class: Google::Apis::SecuritycenterV1beta2::Application, decorator: Google::Apis::SecuritycenterV1beta2::Application::Representation
      
          property :artifact_guard_policies, as: 'artifactGuardPolicies', class: Google::Apis::SecuritycenterV1beta2::ArtifactGuardPolicies, decorator: Google::Apis::SecuritycenterV1beta2::ArtifactGuardPolicies::Representation
      
          property :attack_exposure, as: 'attackExposure', class: Google::Apis::SecuritycenterV1beta2::AttackExposure, decorator: Google::Apis::SecuritycenterV1beta2::AttackExposure::Representation
      
          property :backup_disaster_recovery, as: 'backupDisasterRecovery', class: Google::Apis::SecuritycenterV1beta2::BackupDisasterRecovery, decorator: Google::Apis::SecuritycenterV1beta2::BackupDisasterRecovery::Representation
      
          property :canonical_name, as: 'canonicalName'
          property :category, as: 'category'
          property :chokepoint, as: 'chokepoint', class: Google::Apis::SecuritycenterV1beta2::Chokepoint, decorator: Google::Apis::SecuritycenterV1beta2::Chokepoint::Representation
      
          property :cloud_armor, as: 'cloudArmor', class: Google::Apis::SecuritycenterV1beta2::CloudArmor, decorator: Google::Apis::SecuritycenterV1beta2::CloudArmor::Representation
      
          property :cloud_dlp_data_profile, as: 'cloudDlpDataProfile', class: Google::Apis::SecuritycenterV1beta2::CloudDlpDataProfile, decorator: Google::Apis::SecuritycenterV1beta2::CloudDlpDataProfile::Representation
      
          property :cloud_dlp_inspection, as: 'cloudDlpInspection', class: Google::Apis::SecuritycenterV1beta2::CloudDlpInspection, decorator: Google::Apis::SecuritycenterV1beta2::CloudDlpInspection::Representation
      
          property :compliance_details, as: 'complianceDetails', class: Google::Apis::SecuritycenterV1beta2::ComplianceDetails, decorator: Google::Apis::SecuritycenterV1beta2::ComplianceDetails::Representation
      
          collection :compliances, as: 'compliances', class: Google::Apis::SecuritycenterV1beta2::Compliance, decorator: Google::Apis::SecuritycenterV1beta2::Compliance::Representation
      
          collection :connections, as: 'connections', class: Google::Apis::SecuritycenterV1beta2::Connection, decorator: Google::Apis::SecuritycenterV1beta2::Connection::Representation
      
          hash :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1beta2::ContactDetails, decorator: Google::Apis::SecuritycenterV1beta2::ContactDetails::Representation
      
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::Container, decorator: Google::Apis::SecuritycenterV1beta2::Container::Representation
      
          property :create_time, as: 'createTime'
          collection :data_access_events, as: 'dataAccessEvents', class: Google::Apis::SecuritycenterV1beta2::DataAccessEvent, decorator: Google::Apis::SecuritycenterV1beta2::DataAccessEvent::Representation
      
          collection :data_flow_events, as: 'dataFlowEvents', class: Google::Apis::SecuritycenterV1beta2::DataFlowEvent, decorator: Google::Apis::SecuritycenterV1beta2::DataFlowEvent::Representation
      
          collection :data_retention_deletion_events, as: 'dataRetentionDeletionEvents', class: Google::Apis::SecuritycenterV1beta2::DataRetentionDeletionEvent, decorator: Google::Apis::SecuritycenterV1beta2::DataRetentionDeletionEvent::Representation
      
          property :database, as: 'database', class: Google::Apis::SecuritycenterV1beta2::Database, decorator: Google::Apis::SecuritycenterV1beta2::Database::Representation
      
          property :description, as: 'description'
          property :disk, as: 'disk', class: Google::Apis::SecuritycenterV1beta2::Disk, decorator: Google::Apis::SecuritycenterV1beta2::Disk::Representation
      
          property :event_time, as: 'eventTime'
          property :exfiltration, as: 'exfiltration', class: Google::Apis::SecuritycenterV1beta2::Exfiltration, decorator: Google::Apis::SecuritycenterV1beta2::Exfiltration::Representation
      
          hash :external_systems, as: 'externalSystems', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExternalSystem, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ExternalSystem::Representation
      
          property :external_uri, as: 'externalUri'
          collection :files, as: 'files', class: Google::Apis::SecuritycenterV1beta2::File, decorator: Google::Apis::SecuritycenterV1beta2::File::Representation
      
          property :finding_class, as: 'findingClass'
          collection :group_memberships, as: 'groupMemberships', class: Google::Apis::SecuritycenterV1beta2::GroupMembership, decorator: Google::Apis::SecuritycenterV1beta2::GroupMembership::Representation
      
          collection :iam_bindings, as: 'iamBindings', class: Google::Apis::SecuritycenterV1beta2::IamBinding, decorator: Google::Apis::SecuritycenterV1beta2::IamBinding::Representation
      
          property :indicator, as: 'indicator', class: Google::Apis::SecuritycenterV1beta2::Indicator, decorator: Google::Apis::SecuritycenterV1beta2::Indicator::Representation
      
          property :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::IpRules, decorator: Google::Apis::SecuritycenterV1beta2::IpRules::Representation
      
          property :job, as: 'job', class: Google::Apis::SecuritycenterV1beta2::Job, decorator: Google::Apis::SecuritycenterV1beta2::Job::Representation
      
          property :kernel_rootkit, as: 'kernelRootkit', class: Google::Apis::SecuritycenterV1beta2::KernelRootkit, decorator: Google::Apis::SecuritycenterV1beta2::KernelRootkit::Representation
      
          property :kubernetes, as: 'kubernetes', class: Google::Apis::SecuritycenterV1beta2::Kubernetes, decorator: Google::Apis::SecuritycenterV1beta2::Kubernetes::Representation
      
          collection :load_balancers, as: 'loadBalancers', class: Google::Apis::SecuritycenterV1beta2::LoadBalancer, decorator: Google::Apis::SecuritycenterV1beta2::LoadBalancer::Representation
      
          collection :log_entries, as: 'logEntries', class: Google::Apis::SecuritycenterV1beta2::LogEntry, decorator: Google::Apis::SecuritycenterV1beta2::LogEntry::Representation
      
          property :mitre_attack, as: 'mitreAttack', class: Google::Apis::SecuritycenterV1beta2::MitreAttack, decorator: Google::Apis::SecuritycenterV1beta2::MitreAttack::Representation
      
          property :module_name, as: 'moduleName'
          property :mute, as: 'mute'
          property :mute_info, as: 'muteInfo', class: Google::Apis::SecuritycenterV1beta2::MuteInfo, decorator: Google::Apis::SecuritycenterV1beta2::MuteInfo::Representation
      
          property :mute_initiator, as: 'muteInitiator'
          property :mute_update_time, as: 'muteUpdateTime'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::SecuritycenterV1beta2::Network, decorator: Google::Apis::SecuritycenterV1beta2::Network::Representation
      
          property :next_steps, as: 'nextSteps'
          property :notebook, as: 'notebook', class: Google::Apis::SecuritycenterV1beta2::Notebook, decorator: Google::Apis::SecuritycenterV1beta2::Notebook::Representation
      
          collection :org_policies, as: 'orgPolicies', class: Google::Apis::SecuritycenterV1beta2::OrgPolicy, decorator: Google::Apis::SecuritycenterV1beta2::OrgPolicy::Representation
      
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          collection :processes, as: 'processes', class: Google::Apis::SecuritycenterV1beta2::Process, decorator: Google::Apis::SecuritycenterV1beta2::Process::Representation
      
          property :resource_name, as: 'resourceName'
          property :secret, as: 'secret', class: Google::Apis::SecuritycenterV1beta2::Secret, decorator: Google::Apis::SecuritycenterV1beta2::Secret::Representation
      
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1beta2::SecurityMarks, decorator: Google::Apis::SecuritycenterV1beta2::SecurityMarks::Representation
      
          property :security_posture, as: 'securityPosture', class: Google::Apis::SecuritycenterV1beta2::SecurityPosture, decorator: Google::Apis::SecuritycenterV1beta2::SecurityPosture::Representation
      
          property :severity, as: 'severity'
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
          property :toxic_combination, as: 'toxicCombination', class: Google::Apis::SecuritycenterV1beta2::ToxicCombination, decorator: Google::Apis::SecuritycenterV1beta2::ToxicCombination::Representation
      
          property :vertex_ai, as: 'vertexAi', class: Google::Apis::SecuritycenterV1beta2::VertexAi, decorator: Google::Apis::SecuritycenterV1beta2::VertexAi::Representation
      
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
      
      class Framework
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category, as: 'category'
          collection :controls, as: 'controls', class: Google::Apis::SecuritycenterV1beta2::Control, decorator: Google::Apis::SecuritycenterV1beta2::Control::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GcpMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Folder, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Folder::Representation
      
          property :organization, as: 'organization'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
        end
      end
      
      class Geolocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
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
          property :role, as: 'role', class: Google::Apis::SecuritycenterV1beta2::Role, decorator: Google::Apis::SecuritycenterV1beta2::Role::Representation
      
          collection :subjects, as: 'subjects', class: Google::Apis::SecuritycenterV1beta2::Subject, decorator: Google::Apis::SecuritycenterV1beta2::Subject::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1BulkMuteFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudSecuritycenterV1CustomConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_output, as: 'customOutput', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomOutputSpec, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomOutputSpec::Representation
      
          property :description, as: 'description'
          property :predicate, as: 'predicate', class: Google::Apis::SecuritycenterV1beta2::Expr, decorator: Google::Apis::SecuritycenterV1beta2::Expr::Representation
      
          property :recommendation, as: 'recommendation'
          property :resource_selector, as: 'resourceSelector', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceSelector, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceSelector::Representation
      
          property :severity, as: 'severity'
        end
      end
      
      class GoogleCloudSecuritycenterV1CustomOutputSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Property, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Property::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_provider, as: 'cloudProvider'
          property :custom_config, as: 'customConfig', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig::Representation
      
          property :display_name, as: 'displayName'
          property :enablement_state, as: 'enablementState'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV1ExternalSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignees, as: 'assignees'
          property :case_close_time, as: 'caseCloseTime'
          property :case_create_time, as: 'caseCreateTime'
          property :case_priority, as: 'casePriority'
          property :case_sla, as: 'caseSla'
          property :case_uri, as: 'caseUri'
          property :external_system_update_time, as: 'externalSystemUpdateTime'
          property :external_uid, as: 'externalUid'
          property :name, as: 'name'
          property :status, as: 'status'
          property :ticket_info, as: 'ticketInfo', class: Google::Apis::SecuritycenterV1beta2::TicketInfo, decorator: Google::Apis::SecuritycenterV1beta2::TicketInfo::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1MuteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :expiry_time, as: 'expiryTime'
          property :filter, as: 'filter'
          property :most_recent_editor, as: 'mostRecentEditor'
          property :name, as: 'name'
          property :type, as: 'type'
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
      
      class GoogleCloudSecuritycenterV1Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value_expression, as: 'valueExpression', class: Google::Apis::SecuritycenterV1beta2::Expr, decorator: Google::Apis::SecuritycenterV1beta2::Expr::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplication, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplication::Representation
      
          property :aws_metadata, as: 'awsMetadata', class: Google::Apis::SecuritycenterV1beta2::AwsMetadata, decorator: Google::Apis::SecuritycenterV1beta2::AwsMetadata::Representation
      
          property :azure_metadata, as: 'azureMetadata', class: Google::Apis::SecuritycenterV1beta2::AzureMetadata, decorator: Google::Apis::SecuritycenterV1beta2::AzureMetadata::Representation
      
          property :cloud_provider, as: 'cloudProvider'
          property :display_name, as: 'displayName'
          collection :folders, as: 'folders', class: Google::Apis::SecuritycenterV1beta2::Folder, decorator: Google::Apis::SecuritycenterV1beta2::Folder::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :organization, as: 'organization'
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          property :project, as: 'project'
          property :project_display_name, as: 'projectDisplayName'
          property :resource_path, as: 'resourcePath', class: Google::Apis::SecuritycenterV1beta2::ResourcePath, decorator: Google::Apis::SecuritycenterV1beta2::ResourcePath::Representation
      
          property :resource_path_string, as: 'resourcePathString'
          property :service, as: 'service'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributes, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributes::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_owners, as: 'businessOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo::Representation
      
          property :criticality, as: 'criticality', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality::Representation
      
          collection :developer_owners, as: 'developerOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo::Representation
      
          property :environment, as: 'environment', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment::Representation
      
          collection :operator_owners, as: 'operatorOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_types, as: 'resourceTypes'
        end
      end
      
      class GoogleCloudSecuritycenterV1ResourceValueConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_provider, as: 'cloudProvider'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          hash :resource_labels_selector, as: 'resourceLabelsSelector'
          property :resource_type, as: 'resourceType'
          property :resource_value, as: 'resourceValue'
          property :scope, as: 'scope'
          property :sensitive_data_protection_mapping, as: 'sensitiveDataProtectionMapping', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping::Representation
      
          collection :tag_values, as: 'tagValues'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ancestor_module, as: 'ancestorModule'
          property :cloud_provider, as: 'cloudProvider'
          property :custom_config, as: 'customConfig', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1CustomConfig::Representation
      
          property :display_name, as: 'displayName'
          property :enablement_state, as: 'enablementState'
          property :last_editor, as: 'lastEditor'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_sensitivity_mapping, as: 'highSensitivityMapping'
          property :medium_sensitivity_mapping, as: 'mediumSensitivityMapping'
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
      
      class GoogleCloudSecuritycenterV2Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_ip, as: 'callerIp'
          property :caller_ip_geo, as: 'callerIpGeo', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Geolocation, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Geolocation::Representation
      
          property :method_name, as: 'methodName'
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
          collection :service_account_delegation_info, as: 'serviceAccountDelegationInfo', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo::Representation
      
          property :service_account_key_name, as: 'serviceAccountKeyName'
          property :service_name, as: 'serviceName'
          property :user_agent, as: 'userAgent'
          property :user_agent_family, as: 'userAgentFamily'
          property :user_name, as: 'userName'
        end
      end
      
      class GoogleCloudSecuritycenterV2AccessReview
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
      
      class GoogleCloudSecuritycenterV2AdaptiveProtection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
        end
      end
      
      class GoogleCloudSecuritycenterV2AffectedResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class GoogleCloudSecuritycenterV2AiModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_platform, as: 'deploymentPlatform'
          property :display_name, as: 'displayName'
          property :domain, as: 'domain'
          property :library, as: 'library'
          property :location, as: 'location'
          property :name, as: 'name'
          property :publisher, as: 'publisher'
          property :usage_category, as: 'usageCategory'
        end
      end
      
      class GoogleCloudSecuritycenterV2Allowed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRule, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRule::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_uri, as: 'baseUri'
          property :full_uri, as: 'fullUri'
        end
      end
      
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failing_policies, as: 'failingPolicies', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ArtifactGuardPolicy, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ArtifactGuardPolicy::Representation
      
          property :resource_id, as: 'resourceId'
        end
      end
      
      class GoogleCloudSecuritycenterV2ArtifactGuardPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason'
          property :policy_id, as: 'policyId'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2Attack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification'
          property :volume_bps, as: 'volumeBps'
          property :volume_bps_long, :numeric_string => true, as: 'volumeBpsLong'
          property :volume_pps, as: 'volumePps'
          property :volume_pps_long, :numeric_string => true, as: 'volumePpsLong'
        end
      end
      
      class GoogleCloudSecuritycenterV2AttackExposure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_exposure_result, as: 'attackExposureResult'
          property :exposed_high_value_resources_count, as: 'exposedHighValueResourcesCount'
          property :exposed_low_value_resources_count, as: 'exposedLowValueResourcesCount'
          property :exposed_medium_value_resources_count, as: 'exposedMediumValueResourcesCount'
          property :latest_calculation_time, as: 'latestCalculationTime'
          property :score, as: 'score'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV2AwsAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2AwsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsAccount, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsAccount::Representation
      
          property :organization, as: 'organization', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganization, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganization::Representation
      
          collection :organizational_units, as: 'organizationalUnits', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganizationalUnit, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsOrganizationalUnit::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2AwsOrganization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudSecuritycenterV2AwsOrganizationalUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2AzureManagementGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudSecuritycenterV2AzureMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :management_groups, as: 'managementGroups', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureManagementGroup, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureManagementGroup::Representation
      
          property :resource_group, as: 'resourceGroup', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureResourceGroup, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureResourceGroup::Representation
      
          property :subscription, as: 'subscription', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureSubscription, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureSubscription::Representation
      
          property :tenant, as: 'tenant', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureTenant, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureTenant::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2AzureResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2AzureSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudSecuritycenterV2AzureTenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudSecuritycenterV2BackupDisasterRecovery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance, as: 'appliance'
          collection :applications, as: 'applications'
          property :backup_create_time, as: 'backupCreateTime'
          property :backup_template, as: 'backupTemplate'
          property :backup_type, as: 'backupType'
          property :host, as: 'host'
          collection :policies, as: 'policies'
          collection :policy_options, as: 'policyOptions'
          property :profile, as: 'profile'
          property :storage_pool, as: 'storagePool'
        end
      end
      
      class GoogleCloudSecuritycenterV2BigQueryExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          property :dataset, as: 'dataset'
          property :description, as: 'description'
          property :filter, as: 'filter'
          property :most_recent_editor, as: 'mostRecentEditor'
          property :name, as: 'name'
          property :principal, as: 'principal'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV2Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :ns, as: 'ns'
          property :role, as: 'role', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role::Representation
      
          collection :subjects, as: 'subjects', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Subject, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Subject::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2BulkMuteFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudSecuritycenterV2Chokepoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :related_findings, as: 'relatedFindings'
        end
      end
      
      class GoogleCloudSecuritycenterV2CloudArmor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adaptive_protection, as: 'adaptiveProtection', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AdaptiveProtection, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AdaptiveProtection::Representation
      
          property :attack, as: 'attack', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Attack, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Attack::Representation
      
          property :duration, as: 'duration'
          property :requests, as: 'requests', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Requests, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Requests::Representation
      
          property :security_policy, as: 'securityPolicy', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPolicy, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPolicy::Representation
      
          property :threat_vector, as: 'threatVector'
        end
      end
      
      class GoogleCloudSecuritycenterV2CloudControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_control_name, as: 'cloudControlName'
          property :policy_type, as: 'policyType'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudSecuritycenterV2CloudDlpDataProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_profile, as: 'dataProfile'
          collection :info_types, as: 'infoTypes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2InfoType, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2InfoType::Representation
      
          property :parent_type, as: 'parentType'
        end
      end
      
      class GoogleCloudSecuritycenterV2CloudDlpInspection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_scan, as: 'fullScan'
          property :info_type, as: 'infoType'
          property :info_type_count, :numeric_string => true, as: 'infoTypeCount'
          property :inspect_job, as: 'inspectJob'
        end
      end
      
      class GoogleCloudSecuritycenterV2CloudLoggingEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insert_id, as: 'insertId'
          property :log_id, as: 'logId'
          property :resource_container, as: 'resourceContainer'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class GoogleCloudSecuritycenterV2Compliance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
          property :standard, as: 'standard'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudSecuritycenterV2ComplianceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_control, as: 'cloudControl', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudControl, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudControl::Representation
      
          collection :cloud_control_deployment_names, as: 'cloudControlDeploymentNames'
          collection :frameworks, as: 'frameworks', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Framework, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Framework::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_ip, as: 'destinationIp'
          property :destination_port, as: 'destinationPort'
          property :protocol, as: 'protocol'
          property :source_ip, as: 'sourceIp'
          property :source_port, as: 'sourcePort'
        end
      end
      
      class GoogleCloudSecuritycenterV2Contact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudSecuritycenterV2ContactDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Contact, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Contact::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :image_id, as: 'imageId'
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label::Representation
      
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudSecuritycenterV2Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_name, as: 'controlName'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudSecuritycenterV2Cve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvssv3, as: 'cvssv3', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cvssv3, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cvssv3::Representation
      
          property :exploit_release_date, as: 'exploitReleaseDate'
          property :exploitation_activity, as: 'exploitationActivity'
          property :first_exploitation_date, as: 'firstExploitationDate'
          property :id, as: 'id'
          property :impact, as: 'impact'
          property :observed_in_the_wild, as: 'observedInTheWild'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Reference, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Reference::Representation
      
          property :upstream_fix_available, as: 'upstreamFixAvailable'
          property :zero_day, as: 'zeroDay'
        end
      end
      
      class GoogleCloudSecuritycenterV2Cvssv3
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
      
      class GoogleCloudSecuritycenterV2Cwe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :references, as: 'references', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Reference, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Reference::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2DataAccessEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
          property :operation, as: 'operation'
          property :principal_email, as: 'principalEmail'
        end
      end
      
      class GoogleCloudSecuritycenterV2DataFlowEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
          property :operation, as: 'operation'
          property :principal_email, as: 'principalEmail'
          property :violated_location, as: 'violatedLocation'
        end
      end
      
      class GoogleCloudSecuritycenterV2DataRetentionDeletionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_object_count, :numeric_string => true, as: 'dataObjectCount'
          property :event_detection_time, as: 'eventDetectionTime'
          property :event_type, as: 'eventType'
          property :max_retention_allowed, as: 'maxRetentionAllowed'
        end
      end
      
      class GoogleCloudSecuritycenterV2Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :grantees, as: 'grantees'
          property :name, as: 'name'
          property :query, as: 'query'
          property :user_name, as: 'userName'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudSecuritycenterV2Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudSecuritycenterV2Denied
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRule, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRule::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Detection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary, as: 'binary'
          property :percent_pages_matched, as: 'percentPagesMatched'
        end
      end
      
      class GoogleCloudSecuritycenterV2Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2DiskPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_uuid, as: 'partitionUuid'
          property :relative_path, as: 'relativePath'
        end
      end
      
      class GoogleCloudSecuritycenterV2DynamicMuteRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_time, as: 'matchTime'
          property :mute_config, as: 'muteConfig'
        end
      end
      
      class GoogleCloudSecuritycenterV2EnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :val, as: 'val'
        end
      end
      
      class GoogleCloudSecuritycenterV2ExfilResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :components, as: 'components'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2Exfiltration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sources, as: 'sources', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource::Representation
      
          collection :targets, as: 'targets', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExfilResource::Representation
      
          property :total_exfiltrated_bytes, :numeric_string => true, as: 'totalExfiltratedBytes'
        end
      end
      
      class GoogleCloudSecuritycenterV2ExternalSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignees, as: 'assignees'
          property :case_close_time, as: 'caseCloseTime'
          property :case_create_time, as: 'caseCreateTime'
          property :case_priority, as: 'casePriority'
          property :case_sla, as: 'caseSla'
          property :case_uri, as: 'caseUri'
          property :external_system_update_time, as: 'externalSystemUpdateTime'
          property :external_uid, as: 'externalUid'
          property :name, as: 'name'
          property :status, as: 'status'
          property :ticket_info, as: 'ticketInfo', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2TicketInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2TicketInfo::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :disk_path, as: 'diskPath', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DiskPath, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DiskPath::Representation
      
          property :file_load_state, as: 'fileLoadState'
          property :hashed_size, :numeric_string => true, as: 'hashedSize'
          collection :operations, as: 'operations', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2FileOperation, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2FileOperation::Representation
      
          property :partially_hashed, as: 'partiallyHashed'
          property :path, as: 'path'
          property :sha256, as: 'sha256'
          property :size, :numeric_string => true, as: 'size'
        end
      end
      
      class GoogleCloudSecuritycenterV2FileOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Access, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Access::Representation
      
          property :affected_resources, as: 'affectedResources', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AffectedResources, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AffectedResources::Representation
      
          property :ai_model, as: 'aiModel', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AiModel, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AiModel::Representation
      
          property :application, as: 'application', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Application, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Application::Representation
      
          property :artifact_guard_policies, as: 'artifactGuardPolicies', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ArtifactGuardPolicies, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ArtifactGuardPolicies::Representation
      
          property :attack_exposure, as: 'attackExposure', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AttackExposure, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AttackExposure::Representation
      
          property :backup_disaster_recovery, as: 'backupDisasterRecovery', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2BackupDisasterRecovery, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2BackupDisasterRecovery::Representation
      
          property :canonical_name, as: 'canonicalName'
          property :category, as: 'category'
          property :chokepoint, as: 'chokepoint', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Chokepoint, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Chokepoint::Representation
      
          property :cloud_armor, as: 'cloudArmor', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudArmor, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudArmor::Representation
      
          property :cloud_dlp_data_profile, as: 'cloudDlpDataProfile', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpDataProfile, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpDataProfile::Representation
      
          property :cloud_dlp_inspection, as: 'cloudDlpInspection', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpInspection, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudDlpInspection::Representation
      
          property :compliance_details, as: 'complianceDetails', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ComplianceDetails, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ComplianceDetails::Representation
      
          collection :compliances, as: 'compliances', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Compliance, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Compliance::Representation
      
          collection :connections, as: 'connections', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Connection, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Connection::Representation
      
          hash :contacts, as: 'contacts', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ContactDetails, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ContactDetails::Representation
      
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container::Representation
      
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          collection :data_access_events, as: 'dataAccessEvents', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataAccessEvent, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataAccessEvent::Representation
      
          collection :data_flow_events, as: 'dataFlowEvents', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataFlowEvent, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataFlowEvent::Representation
      
          collection :data_retention_deletion_events, as: 'dataRetentionDeletionEvents', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataRetentionDeletionEvent, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DataRetentionDeletionEvent::Representation
      
          property :database, as: 'database', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Database, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Database::Representation
      
          property :description, as: 'description'
          property :disk, as: 'disk', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Disk, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Disk::Representation
      
          property :event_time, as: 'eventTime'
          property :exfiltration, as: 'exfiltration', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Exfiltration, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Exfiltration::Representation
      
          hash :external_systems, as: 'externalSystems', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExternalSystem, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ExternalSystem::Representation
      
          property :external_uri, as: 'externalUri'
          collection :files, as: 'files', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File::Representation
      
          property :finding_class, as: 'findingClass'
          collection :group_memberships, as: 'groupMemberships', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2GroupMembership, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2GroupMembership::Representation
      
          collection :iam_bindings, as: 'iamBindings', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IamBinding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IamBinding::Representation
      
          property :indicator, as: 'indicator', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Indicator, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Indicator::Representation
      
          property :ip_rules, as: 'ipRules', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRules, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IpRules::Representation
      
          property :job, as: 'job', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Job, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Job::Representation
      
          property :kernel_rootkit, as: 'kernelRootkit', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2KernelRootkit, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2KernelRootkit::Representation
      
          property :kubernetes, as: 'kubernetes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Kubernetes, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Kubernetes::Representation
      
          collection :load_balancers, as: 'loadBalancers', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LoadBalancer, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LoadBalancer::Representation
      
          collection :log_entries, as: 'logEntries', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LogEntry, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2LogEntry::Representation
      
          property :mitre_attack, as: 'mitreAttack', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MitreAttack, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MitreAttack::Representation
      
          property :module_name, as: 'moduleName'
          property :mute, as: 'mute'
          property :mute_info, as: 'muteInfo', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MuteInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MuteInfo::Representation
      
          property :mute_initiator, as: 'muteInitiator'
          property :mute_update_time, as: 'muteUpdateTime'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Network, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Network::Representation
      
          property :next_steps, as: 'nextSteps'
          property :notebook, as: 'notebook', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Notebook, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Notebook::Representation
      
          collection :org_policies, as: 'orgPolicies', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2OrgPolicy, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2OrgPolicy::Representation
      
          property :parent, as: 'parent'
          property :parent_display_name, as: 'parentDisplayName'
          collection :processes, as: 'processes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Process, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Process::Representation
      
          property :resource_name, as: 'resourceName'
          property :secret, as: 'secret', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Secret, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Secret::Representation
      
          property :security_marks, as: 'securityMarks', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityMarks, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityMarks::Representation
      
          property :security_posture, as: 'securityPosture', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPosture, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityPosture::Representation
      
          property :severity, as: 'severity'
          hash :source_properties, as: 'sourceProperties'
          property :state, as: 'state'
          property :toxic_combination, as: 'toxicCombination', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ToxicCombination, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ToxicCombination::Representation
      
          property :vertex_ai, as: 'vertexAi', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2VertexAi, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2VertexAi::Representation
      
          property :vulnerability, as: 'vulnerability', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Vulnerability, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Vulnerability::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Folder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_folder, as: 'resourceFolder'
          property :resource_folder_display_name, as: 'resourceFolderDisplayName'
        end
      end
      
      class GoogleCloudSecuritycenterV2Framework
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category, as: 'category'
          collection :controls, as: 'controls', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Control, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Control::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2Geolocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudSecuritycenterV2GroupMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, as: 'groupId'
          property :group_type, as: 'groupType'
        end
      end
      
      class GoogleCloudSecuritycenterV2IamBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :member, as: 'member'
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudSecuritycenterV2Indicator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains'
          collection :ip_addresses, as: 'ipAddresses'
          collection :signatures, as: 'signatures', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ProcessSignature, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ProcessSignature::Representation
      
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudSecuritycenterV2InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SensitivityScore, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SensitivityScore::Representation
      
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudSecuritycenterV2IpRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :port_ranges, as: 'portRanges', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2PortRange, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2PortRange::Representation
      
          property :protocol, as: 'protocol'
        end
      end
      
      class GoogleCloudSecuritycenterV2IpRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed, as: 'allowed', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Allowed, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Allowed::Representation
      
          property :denied, as: 'denied', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Denied, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Denied::Representation
      
          collection :destination_ip_ranges, as: 'destinationIpRanges'
          property :direction, as: 'direction'
          collection :exposed_services, as: 'exposedServices'
          collection :source_ip_ranges, as: 'sourceIpRanges'
        end
      end
      
      class GoogleCloudSecuritycenterV2Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :detection, as: 'detection'
          collection :domains, as: 'domains', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueDomain, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueDomain::Representation
      
          property :exposure_score, as: 'exposureScore'
          property :issue_type, as: 'issueType'
          property :last_observation_time, as: 'lastObservationTime'
          property :mute, as: 'mute', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueMute, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueMute::Representation
      
          property :name, as: 'name'
          property :primary_resource, as: 'primaryResource', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResource::Representation
      
          collection :related_findings, as: 'relatedFindings', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFinding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFinding::Representation
      
          collection :remediations, as: 'remediations'
          collection :secondary_resources, as: 'secondaryResources', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResource::Representation
      
          collection :security_contexts, as: 'securityContexts', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContext, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContext::Representation
      
          property :severity, as: 'severity'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_category, as: 'domainCategory'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFindingCve, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFindingCve::Representation
      
          property :name, as: 'name'
          property :security_bulletin, as: 'securityBulletin', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueFindingCve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueFindingSecurityBulletin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueMute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mute_initiator, as: 'muteInitiator'
          property :mute_reason, as: 'muteReason'
          property :mute_state, as: 'muteState'
          property :mute_update_time, as: 'muteUpdateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplication, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplication::Representation
      
          property :aws_metadata, as: 'awsMetadata', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAwsMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAwsMetadata::Representation
      
          property :azure_metadata, as: 'azureMetadata', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAzureMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAzureMetadata::Representation
      
          property :cloud_provider, as: 'cloudProvider'
          property :display_name, as: 'displayName'
          property :google_cloud_metadata, as: 'googleCloudMetadata', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_owners, as: 'businessOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo::Representation
      
          property :criticality, as: 'criticality', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality::Representation
      
          collection :developer_owners, as: 'developerOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo::Representation
      
          property :environment, as: 'environment', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment::Representation
      
          collection :operator_owners, as: 'operatorOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesCriticality
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceApplicationAttributesEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAwsMetadataAwsAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceAzureMetadataAzureSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueResourceGoogleCloudMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_count, as: 'aggregatedCount', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount::Representation
      
          property :context, as: 'context', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContextContext, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2IssueSecurityContextContext::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContextAggregatedCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudSecuritycenterV2IssueSecurityContextContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudSecuritycenterV2Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :location, as: 'location'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV2KernelRootkit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :unexpected_code_modification, as: 'unexpectedCodeModification'
          property :unexpected_ftrace_handler, as: 'unexpectedFtraceHandler'
          property :unexpected_interrupt_handler, as: 'unexpectedInterruptHandler'
          property :unexpected_kernel_code_pages, as: 'unexpectedKernelCodePages'
          property :unexpected_kprobe_handler, as: 'unexpectedKprobeHandler'
          property :unexpected_processes_in_runqueue, as: 'unexpectedProcessesInRunqueue'
          property :unexpected_read_only_data_modification, as: 'unexpectedReadOnlyDataModification'
          property :unexpected_system_call_handler, as: 'unexpectedSystemCallHandler'
        end
      end
      
      class GoogleCloudSecuritycenterV2Kubernetes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_reviews, as: 'accessReviews', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AccessReview, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AccessReview::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Binding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Binding::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2NodePool, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2NodePool::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node::Representation
      
          collection :objects, as: 'objects', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Object, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Object::Representation
      
          collection :pods, as: 'pods', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Pod, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Pod::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Role::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudSecuritycenterV2LoadBalancer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_entry, as: 'cloudLoggingEntry', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudLoggingEntry, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2CloudLoggingEntry::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2MemoryHashSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_family, as: 'binaryFamily'
          collection :detections, as: 'detections', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Detection, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Detection::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2MitreAttack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_tactics, as: 'additionalTactics'
          collection :additional_techniques, as: 'additionalTechniques'
          property :primary_tactic, as: 'primaryTactic'
          collection :primary_techniques, as: 'primaryTechniques'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudSecuritycenterV2MuteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          property :description, as: 'description'
          property :expiry_time, as: 'expiryTime'
          property :filter, as: 'filter'
          property :most_recent_editor, as: 'mostRecentEditor'
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV2MuteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_mute_records, as: 'dynamicMuteRecords', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DynamicMuteRecord, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2DynamicMuteRecord::Representation
      
          property :static_mute, as: 'staticMute', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2StaticMute, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2StaticMute::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Node::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Notebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_author, as: 'lastAuthor'
          property :name, as: 'name'
          property :notebook_update_time, as: 'notebookUpdateTime'
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudSecuritycenterV2NotificationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finding, as: 'finding', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Finding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Finding::Representation
      
          property :notification_config_name, as: 'notificationConfigName'
          property :resource, as: 'resource', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Resource, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Resource::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Object
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container::Representation
      
          property :group, as: 'group'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class GoogleCloudSecuritycenterV2OrgPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :package_name, as: 'packageName'
          property :package_type, as: 'packageType'
          property :package_version, as: 'packageVersion'
        end
      end
      
      class GoogleCloudSecuritycenterV2Pipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2Pod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Container::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Label::Representation
      
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class GoogleCloudSecuritycenterV2PolicyDriftDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_value, as: 'detectedValue'
          property :expected_value, as: 'expectedValue'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudSecuritycenterV2PortRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, :numeric_string => true, as: 'max'
          property :min, :numeric_string => true, as: 'min'
        end
      end
      
      class GoogleCloudSecuritycenterV2Process
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :arguments_truncated, as: 'argumentsTruncated'
          property :binary, as: 'binary', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File::Representation
      
          collection :env_variables, as: 'envVariables', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2EnvironmentVariable, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2EnvironmentVariable::Representation
      
          property :env_variables_truncated, as: 'envVariablesTruncated'
          collection :libraries, as: 'libraries', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File::Representation
      
          property :name, as: 'name'
          property :parent_pid, :numeric_string => true, as: 'parentPid'
          property :pid, :numeric_string => true, as: 'pid'
          property :script, as: 'script', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2File::Representation
      
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class GoogleCloudSecuritycenterV2ProcessSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memory_hash_signature, as: 'memoryHashSignature', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MemoryHashSignature, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2MemoryHashSignature::Representation
      
          property :signature_type, as: 'signatureType'
          property :yara_rule_signature, as: 'yaraRuleSignature', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2YaraRuleSignature, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2YaraRuleSignature::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudSecuritycenterV2Requests
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :long_term_allowed, as: 'longTermAllowed'
          property :long_term_denied, as: 'longTermDenied'
          property :ratio, as: 'ratio'
          property :short_term_allowed, as: 'shortTermAllowed'
        end
      end
      
      class GoogleCloudSecuritycenterV2Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplication, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplication::Representation
      
          property :aws_metadata, as: 'awsMetadata', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AwsMetadata::Representation
      
          property :azure_metadata, as: 'azureMetadata', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2AzureMetadata::Representation
      
          property :cloud_provider, as: 'cloudProvider'
          property :display_name, as: 'displayName'
          property :gcp_metadata, as: 'gcpMetadata', class: Google::Apis::SecuritycenterV1beta2::GcpMetadata, decorator: Google::Apis::SecuritycenterV1beta2::GcpMetadata::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          property :resource_path, as: 'resourcePath', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePath, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePath::Representation
      
          property :resource_path_string, as: 'resourcePathString'
          property :service, as: 'service'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributes, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributes::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :business_owners, as: 'businessOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo::Representation
      
          property :criticality, as: 'criticality', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality::Representation
      
          collection :developer_owners, as: 'developerOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo::Representation
      
          property :environment, as: 'environment', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment::Representation
      
          collection :operator_owners, as: 'operatorOwners', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesCriticality
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceApplicationAttributesEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourcePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePathNode, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2ResourcePathNode::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourcePathNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :node_type, as: 'nodeType'
        end
      end
      
      class GoogleCloudSecuritycenterV2ResourceValueConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_provider, as: 'cloudProvider'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          hash :resource_labels_selector, as: 'resourceLabelsSelector'
          property :resource_type, as: 'resourceType'
          property :resource_value, as: 'resourceValue'
          property :scope, as: 'scope'
          property :sensitive_data_protection_mapping, as: 'sensitiveDataProtectionMapping', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping::Representation
      
          collection :tag_values, as: 'tagValues'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSecuritycenterV2Role
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class GoogleCloudSecuritycenterV2Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment_variable, as: 'environmentVariable', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretEnvironmentVariable, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretEnvironmentVariable::Representation
      
          property :file_path, as: 'filePath', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretFilePath, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretFilePath::Representation
      
          property :status, as: 'status', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretStatus, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecretStatus::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecretEnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecretFilePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecretStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated_time, as: 'lastUpdatedTime'
          property :validity, as: 'validity'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecurityBulletin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bulletin_id, as: 'bulletinId'
          property :submission_time, as: 'submissionTime'
          property :suggested_upgrade_version, as: 'suggestedUpgradeVersion'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecurityMarks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          hash :marks, as: 'marks'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecurityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :preview, as: 'preview'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudSecuritycenterV2SecurityPosture
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_policy, as: 'changedPolicy'
          property :name, as: 'name'
          property :policy, as: 'policy'
          collection :policy_drift_details, as: 'policyDriftDetails', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2PolicyDriftDetails, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2PolicyDriftDetails::Representation
      
          property :policy_set, as: 'policySet'
          property :posture_deployment, as: 'postureDeployment'
          property :posture_deployment_resource, as: 'postureDeploymentResource'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_sensitivity_mapping, as: 'highSensitivityMapping'
          property :medium_sensitivity_mapping, as: 'mediumSensitivityMapping'
        end
      end
      
      class GoogleCloudSecuritycenterV2SensitivityScore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudSecuritycenterV2ServiceAccountDelegationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
        end
      end
      
      class GoogleCloudSecuritycenterV2StaticMute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_time, as: 'applyTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudSecuritycenterV2Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class GoogleCloudSecuritycenterV2TicketInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee, as: 'assignee'
          property :description, as: 'description'
          property :id, as: 'id'
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudSecuritycenterV2ToxicCombination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_exposure_score, as: 'attackExposureScore'
          collection :related_findings, as: 'relatedFindings'
        end
      end
      
      class GoogleCloudSecuritycenterV2VertexAi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Dataset, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Dataset::Representation
      
          collection :pipelines, as: 'pipelines', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Pipeline, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Pipeline::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2Vulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cve, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cve::Representation
      
          collection :cwes, as: 'cwes', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cwe, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Cwe::Representation
      
          property :fixed_package, as: 'fixedPackage', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package::Representation
      
          property :offending_package, as: 'offendingPackage', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2Package::Representation
      
          property :provider_risk_score, :numeric_string => true, as: 'providerRiskScore'
          property :reachable, as: 'reachable'
          property :security_bulletin, as: 'securityBulletin', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityBulletin, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV2SecurityBulletin::Representation
      
        end
      end
      
      class GoogleCloudSecuritycenterV2YaraRuleSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :yara_rule, as: 'yaraRule'
        end
      end
      
      class GroupMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, as: 'groupId'
          property :group_type, as: 'groupType'
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
      
      class Indicator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains'
          collection :ip_addresses, as: 'ipAddresses'
          collection :signatures, as: 'signatures', class: Google::Apis::SecuritycenterV1beta2::ProcessSignature, decorator: Google::Apis::SecuritycenterV1beta2::ProcessSignature::Representation
      
          collection :uris, as: 'uris'
        end
      end
      
      class InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sensitivity_score, as: 'sensitivityScore', class: Google::Apis::SecuritycenterV1beta2::SensitivityScore, decorator: Google::Apis::SecuritycenterV1beta2::SensitivityScore::Representation
      
          property :version, as: 'version'
        end
      end
      
      class IpRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :port_ranges, as: 'portRanges', class: Google::Apis::SecuritycenterV1beta2::PortRange, decorator: Google::Apis::SecuritycenterV1beta2::PortRange::Representation
      
          property :protocol, as: 'protocol'
        end
      end
      
      class IpRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed, as: 'allowed', class: Google::Apis::SecuritycenterV1beta2::Allowed, decorator: Google::Apis::SecuritycenterV1beta2::Allowed::Representation
      
          property :denied, as: 'denied', class: Google::Apis::SecuritycenterV1beta2::Denied, decorator: Google::Apis::SecuritycenterV1beta2::Denied::Representation
      
          collection :destination_ip_ranges, as: 'destinationIpRanges'
          property :direction, as: 'direction'
          collection :exposed_services, as: 'exposedServices'
          collection :source_ip_ranges, as: 'sourceIpRanges'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :location, as: 'location'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class KernelRootkit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :unexpected_code_modification, as: 'unexpectedCodeModification'
          property :unexpected_ftrace_handler, as: 'unexpectedFtraceHandler'
          property :unexpected_interrupt_handler, as: 'unexpectedInterruptHandler'
          property :unexpected_kernel_code_pages, as: 'unexpectedKernelCodePages'
          property :unexpected_kprobe_handler, as: 'unexpectedKprobeHandler'
          property :unexpected_processes_in_runqueue, as: 'unexpectedProcessesInRunqueue'
          property :unexpected_read_only_data_modification, as: 'unexpectedReadOnlyDataModification'
          property :unexpected_system_call_handler, as: 'unexpectedSystemCallHandler'
        end
      end
      
      class Kubernetes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_reviews, as: 'accessReviews', class: Google::Apis::SecuritycenterV1beta2::AccessReview, decorator: Google::Apis::SecuritycenterV1beta2::AccessReview::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Binding, decorator: Google::Apis::SecuritycenterV1beta2::GoogleCloudSecuritycenterV1Binding::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::SecuritycenterV1beta2::NodePool, decorator: Google::Apis::SecuritycenterV1beta2::NodePool::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::Node, decorator: Google::Apis::SecuritycenterV1beta2::Node::Representation
      
          collection :objects, as: 'objects', class: Google::Apis::SecuritycenterV1beta2::Object, decorator: Google::Apis::SecuritycenterV1beta2::Object::Representation
      
          collection :pods, as: 'pods', class: Google::Apis::SecuritycenterV1beta2::Pod, decorator: Google::Apis::SecuritycenterV1beta2::Pod::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::SecuritycenterV1beta2::Role, decorator: Google::Apis::SecuritycenterV1beta2::Role::Representation
      
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class LoadBalancer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_entry, as: 'cloudLoggingEntry', class: Google::Apis::SecuritycenterV1beta2::CloudLoggingEntry, decorator: Google::Apis::SecuritycenterV1beta2::CloudLoggingEntry::Representation
      
        end
      end
      
      class MemoryHashSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_family, as: 'binaryFamily'
          collection :detections, as: 'detections', class: Google::Apis::SecuritycenterV1beta2::Detection, decorator: Google::Apis::SecuritycenterV1beta2::Detection::Representation
      
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
      
      class MuteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_mute_records, as: 'dynamicMuteRecords', class: Google::Apis::SecuritycenterV1beta2::DynamicMuteRecord, decorator: Google::Apis::SecuritycenterV1beta2::DynamicMuteRecord::Representation
      
          property :static_mute, as: 'staticMute', class: Google::Apis::SecuritycenterV1beta2::StaticMute, decorator: Google::Apis::SecuritycenterV1beta2::StaticMute::Representation
      
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
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
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::Node, decorator: Google::Apis::SecuritycenterV1beta2::Node::Representation
      
        end
      end
      
      class Notebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_author, as: 'lastAuthor'
          property :name, as: 'name'
          property :notebook_update_time, as: 'notebookUpdateTime'
          property :service, as: 'service'
        end
      end
      
      class Object
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::Container, decorator: Google::Apis::SecuritycenterV1beta2::Container::Representation
      
          property :group, as: 'group'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class OrgPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :package_name, as: 'packageName'
          property :package_type, as: 'packageType'
          property :package_version, as: 'packageVersion'
        end
      end
      
      class Pipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class Pod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::SecuritycenterV1beta2::Container, decorator: Google::Apis::SecuritycenterV1beta2::Container::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::SecuritycenterV1beta2::Label, decorator: Google::Apis::SecuritycenterV1beta2::Label::Representation
      
          property :name, as: 'name'
          property :ns, as: 'ns'
        end
      end
      
      class PolicyDriftDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_value, as: 'detectedValue'
          property :expected_value, as: 'expectedValue'
          property :field, as: 'field'
        end
      end
      
      class PortRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, :numeric_string => true, as: 'max'
          property :min, :numeric_string => true, as: 'min'
        end
      end
      
      class Process
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :arguments_truncated, as: 'argumentsTruncated'
          property :binary, as: 'binary', class: Google::Apis::SecuritycenterV1beta2::File, decorator: Google::Apis::SecuritycenterV1beta2::File::Representation
      
          collection :env_variables, as: 'envVariables', class: Google::Apis::SecuritycenterV1beta2::EnvironmentVariable, decorator: Google::Apis::SecuritycenterV1beta2::EnvironmentVariable::Representation
      
          property :env_variables_truncated, as: 'envVariablesTruncated'
          collection :libraries, as: 'libraries', class: Google::Apis::SecuritycenterV1beta2::File, decorator: Google::Apis::SecuritycenterV1beta2::File::Representation
      
          property :name, as: 'name'
          property :parent_pid, :numeric_string => true, as: 'parentPid'
          property :pid, :numeric_string => true, as: 'pid'
          property :script, as: 'script', class: Google::Apis::SecuritycenterV1beta2::File, decorator: Google::Apis::SecuritycenterV1beta2::File::Representation
      
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class ProcessSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memory_hash_signature, as: 'memoryHashSignature', class: Google::Apis::SecuritycenterV1beta2::MemoryHashSignature, decorator: Google::Apis::SecuritycenterV1beta2::MemoryHashSignature::Representation
      
          property :signature_type, as: 'signatureType'
          property :yara_rule_signature, as: 'yaraRuleSignature', class: Google::Apis::SecuritycenterV1beta2::YaraRuleSignature, decorator: Google::Apis::SecuritycenterV1beta2::YaraRuleSignature::Representation
      
        end
      end
      
      class RapidVulnerabilityDetectionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
          property :uri, as: 'uri'
        end
      end
      
      class Requests
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :long_term_allowed, as: 'longTermAllowed'
          property :long_term_denied, as: 'longTermDenied'
          property :ratio, as: 'ratio'
          property :short_term_allowed, as: 'shortTermAllowed'
        end
      end
      
      class ResourcePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::SecuritycenterV1beta2::ResourcePathNode, decorator: Google::Apis::SecuritycenterV1beta2::ResourcePathNode::Representation
      
        end
      end
      
      class ResourcePathNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :node_type, as: 'nodeType'
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
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment_variable, as: 'environmentVariable', class: Google::Apis::SecuritycenterV1beta2::SecretEnvironmentVariable, decorator: Google::Apis::SecuritycenterV1beta2::SecretEnvironmentVariable::Representation
      
          property :file_path, as: 'filePath', class: Google::Apis::SecuritycenterV1beta2::SecretFilePath, decorator: Google::Apis::SecuritycenterV1beta2::SecretFilePath::Representation
      
          property :status, as: 'status', class: Google::Apis::SecuritycenterV1beta2::SecretStatus, decorator: Google::Apis::SecuritycenterV1beta2::SecretStatus::Representation
      
          property :type, as: 'type'
        end
      end
      
      class SecretEnvironmentVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class SecretFilePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class SecretStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated_time, as: 'lastUpdatedTime'
          property :validity, as: 'validity'
        end
      end
      
      class SecurityBulletin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bulletin_id, as: 'bulletinId'
          property :submission_time, as: 'submissionTime'
          property :suggested_upgrade_version, as: 'suggestedUpgradeVersion'
        end
      end
      
      class SecurityCenterSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key_name, as: 'cryptoKeyName'
          property :log_sink_project, as: 'logSinkProject'
          property :name, as: 'name'
          property :onboarding_time, as: 'onboardingTime'
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
      
      class SecurityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :preview, as: 'preview'
          property :type, as: 'type'
        end
      end
      
      class SecurityPosture
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_policy, as: 'changedPolicy'
          property :name, as: 'name'
          property :policy, as: 'policy'
          collection :policy_drift_details, as: 'policyDriftDetails', class: Google::Apis::SecuritycenterV1beta2::PolicyDriftDetails, decorator: Google::Apis::SecuritycenterV1beta2::PolicyDriftDetails::Representation
      
          property :policy_set, as: 'policySet'
          property :posture_deployment, as: 'postureDeployment'
          property :posture_deployment_resource, as: 'postureDeploymentResource'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class SensitivityScore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class ServiceAccountDelegationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
        end
      end
      
      class StaticMute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_time, as: 'applyTime'
          property :state, as: 'state'
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
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::SecuritycenterV1beta2::Details, decorator: Google::Apis::SecuritycenterV1beta2::Details::Representation
      
          property :name, as: 'name'
          property :tier, as: 'tier'
        end
      end
      
      class TicketInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee, as: 'assignee'
          property :description, as: 'description'
          property :id, as: 'id'
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class ToxicCombination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_exposure_score, as: 'attackExposureScore'
          collection :related_findings, as: 'relatedFindings'
        end
      end
      
      class VertexAi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::SecuritycenterV1beta2::Dataset, decorator: Google::Apis::SecuritycenterV1beta2::Dataset::Representation
      
          collection :pipelines, as: 'pipelines', class: Google::Apis::SecuritycenterV1beta2::Pipeline, decorator: Google::Apis::SecuritycenterV1beta2::Pipeline::Representation
      
        end
      end
      
      class VirtualMachineThreatDetectionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :modules, as: 'modules', class: Google::Apis::SecuritycenterV1beta2::Config, decorator: Google::Apis::SecuritycenterV1beta2::Config::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :service_enablement_state, as: 'serviceEnablementState'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Vulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve', class: Google::Apis::SecuritycenterV1beta2::Cve, decorator: Google::Apis::SecuritycenterV1beta2::Cve::Representation
      
          collection :cwes, as: 'cwes', class: Google::Apis::SecuritycenterV1beta2::Cwe, decorator: Google::Apis::SecuritycenterV1beta2::Cwe::Representation
      
          property :fixed_package, as: 'fixedPackage', class: Google::Apis::SecuritycenterV1beta2::Package, decorator: Google::Apis::SecuritycenterV1beta2::Package::Representation
      
          property :offending_package, as: 'offendingPackage', class: Google::Apis::SecuritycenterV1beta2::Package, decorator: Google::Apis::SecuritycenterV1beta2::Package::Representation
      
          property :provider_risk_score, :numeric_string => true, as: 'providerRiskScore'
          property :reachable, as: 'reachable'
          property :security_bulletin, as: 'securityBulletin', class: Google::Apis::SecuritycenterV1beta2::SecurityBulletin, decorator: Google::Apis::SecuritycenterV1beta2::SecurityBulletin::Representation
      
        end
      end
      
      class VulnerabilityCountBySeverity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :severity_to_finding_count, as: 'severityToFindingCount'
        end
      end
      
      class VulnerabilitySnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_provider, as: 'cloudProvider'
          property :finding_count, as: 'findingCount', class: Google::Apis::SecuritycenterV1beta2::VulnerabilityCountBySeverity, decorator: Google::Apis::SecuritycenterV1beta2::VulnerabilityCountBySeverity::Representation
      
          property :name, as: 'name'
          property :snapshot_time, as: 'snapshotTime'
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
      
      class YaraRuleSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :yara_rule, as: 'yaraRule'
        end
      end
    end
  end
end
