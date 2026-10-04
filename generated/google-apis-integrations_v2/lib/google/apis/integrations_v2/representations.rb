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
    module IntegrationsV2
      
      class EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBaseFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBaseValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBooleanArrayFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBooleanFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBooleanParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoBuganizerNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoCloudKmsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoConnectorsConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoCustomSuspensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoDoubleArrayFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoDoubleFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoDoubleParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoEventParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoExecutionTraceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoExternalTraffic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoFieldMappingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoFunctionType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoIntArrayFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoIntFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoIntParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoJsonFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoLoopMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoMappedField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoParameterEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoParameterMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoParameterMapEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoParameterMapField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoParameterValueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoProtoArrayFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoProtoFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoProtoParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoScatterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSerializedObjectParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoStringArrayFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoStringFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoStringParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionExpiration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusProtoTransformExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoIntParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMapEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMapField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterValueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmFrontendsEventbusProtoStringParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2AttemptStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2CloudLoggingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetBooleanParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetCloudSchedulerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetDoubleParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetErrorCatcherConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetEventParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationBranch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationConfigParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationSkeleton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetJavascriptRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetJavascriptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetNextTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetRecommendTasksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetRecommendTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetReplaceTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetStringParameterArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetTaskResponseStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetTriggerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetTriggerConfigVariables
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2DuetValueType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2ExecutionReplayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2TaskExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2TaskExecutionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_credential_types, as: 'allowedCredentialTypes'
          property :allowed_service_account_in_context, as: 'allowedServiceAccountInContext'
          property :auth_config_id, as: 'authConfigId'
          property :scope, as: 'scope'
          property :use_service_account_in_context, as: 'useServiceAccountInContext'
        end
      end
      
      class EnterpriseCrmEventbusProtoAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :name, as: 'name'
          collection :tokens, as: 'tokens', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoToken, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoToken::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoBaseFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoBaseValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_function, as: 'baseFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction::Representation
      
          property :literal_value, as: 'literalValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType::Representation
      
          property :reference_value, as: 'referenceValue'
        end
      end
      
      class EnterpriseCrmEventbusProtoBooleanArrayFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoBooleanFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoBooleanParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boolean_values, as: 'booleanValues'
        end
      end
      
      class EnterpriseCrmEventbusProtoBuganizerNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee_email_address, as: 'assigneeEmailAddress'
          property :component_id, :numeric_string => true, as: 'componentId'
          property :template_id, :numeric_string => true, as: 'templateId'
          property :title, as: 'title'
        end
      end
      
      class EnterpriseCrmEventbusProtoCloudKmsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_project_id, as: 'gcpProjectId'
          property :key_name, as: 'keyName'
          property :key_ring_name, as: 'keyRingName'
          property :key_version_name, as: 'keyVersionName'
          property :location_name, as: 'locationName'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class EnterpriseCrmEventbusProtoConnectorsConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_name, as: 'connectionName'
          property :connector_version, as: 'connectorVersion'
          property :host, as: 'host'
          property :service_name, as: 'serviceName'
        end
      end
      
      class EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoConnectorsConnection, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoConnectorsConnection::Representation
      
          property :operation, as: 'operation'
        end
      end
      
      class EnterpriseCrmEventbusProtoCustomSuspensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :post_to_queue_with_trigger_id_request, as: 'postToQueueWithTriggerIdRequest', class: Google::Apis::IntegrationsV2::GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest, decorator: Google::Apis::IntegrationsV2::GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest::Representation
      
          property :suspension_info_event_parameter_key, as: 'suspensionInfoEventParameterKey'
        end
      end
      
      class EnterpriseCrmEventbusProtoDoubleArrayFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoDoubleFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoDoubleParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :double_values, as: 'doubleValues'
        end
      end
      
      class EnterpriseCrmEventbusProtoEventParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoExecutionTraceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent_event_execution_info_id, as: 'parentEventExecutionInfoId'
          property :trace_id, as: 'traceId'
        end
      end
      
      class EnterpriseCrmEventbusProtoExternalTraffic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_internal_ip, as: 'enableInternalIp'
          property :gcp_project_id, as: 'gcpProjectId'
          property :gcp_project_number, as: 'gcpProjectNumber'
          property :location, as: 'location'
          property :retry_request_for_quota, as: 'retryRequestForQuota'
          property :source, as: 'source'
        end
      end
      
      class EnterpriseCrmEventbusProtoField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardinality, as: 'cardinality'
          property :default_value, as: 'defaultValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType::Representation
      
          property :field_type, as: 'fieldType'
          property :proto_def_path, as: 'protoDefPath'
          property :reference_key, as: 'referenceKey'
          property :transform_expression, as: 'transformExpression', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoFieldMappingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mapped_fields, as: 'mappedFields', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoMappedField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoMappedField::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_type, as: 'functionType', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunctionType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunctionType::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoFunctionType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_function, as: 'baseFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseFunction::Representation
      
          property :boolean_array_function, as: 'booleanArrayFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanArrayFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanArrayFunction::Representation
      
          property :boolean_function, as: 'booleanFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanFunction::Representation
      
          property :double_array_function, as: 'doubleArrayFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleArrayFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleArrayFunction::Representation
      
          property :double_function, as: 'doubleFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleFunction::Representation
      
          property :int_array_function, as: 'intArrayFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntArrayFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntArrayFunction::Representation
      
          property :int_function, as: 'intFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntFunction::Representation
      
          property :json_function, as: 'jsonFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoJsonFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoJsonFunction::Representation
      
          property :proto_array_function, as: 'protoArrayFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoArrayFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoArrayFunction::Representation
      
          property :proto_function, as: 'protoFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoFunction::Representation
      
          property :string_array_function, as: 'stringArrayFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringArrayFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringArrayFunction::Representation
      
          property :string_function, as: 'stringFunction', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringFunction::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoIntArrayFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoIntFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoIntParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :int_values, as: 'intValues'
        end
      end
      
      class EnterpriseCrmEventbusProtoJsonFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoLoopMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_iteration_count, :numeric_string => true, as: 'currentIterationCount'
          property :current_iteration_detail, as: 'currentIterationDetail'
          property :error_msg, as: 'errorMsg'
          property :failure_location, as: 'failureLocation'
        end
      end
      
      class EnterpriseCrmEventbusProtoMappedField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_field, as: 'inputField', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField::Representation
      
          property :output_field, as: 'outputField', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :buganizer_notification, as: 'buganizerNotification', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBuganizerNotification, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBuganizerNotification::Representation
      
          property :email_address, as: 'emailAddress', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoAddress, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoAddress::Representation
      
          property :escalator_queue, as: 'escalatorQueue'
          property :pubsub_topic, as: 'pubsubTopic'
          property :request, as: 'request', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCustomSuspensionRequest, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCustomSuspensionRequest::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoParameterEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :masked, as: 'masked'
          property :value, as: 'value', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoParameterMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapEntry, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapEntry::Representation
      
          property :key_type, as: 'keyType'
          property :value_type, as: 'valueType'
        end
      end
      
      class EnterpriseCrmEventbusProtoParameterMapEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField::Representation
      
          property :value, as: 'value', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoParameterMapField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :literal_value, as: 'literalValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType::Representation
      
          property :reference_key, as: 'referenceKey'
        end
      end
      
      class EnterpriseCrmEventbusProtoParameterValueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_array, as: 'booleanArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanParameterArray::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :double_array, as: 'doubleArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleParameterArray::Representation
      
          property :double_value, as: 'doubleValue'
          property :int_array, as: 'intArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntParameterArray::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :proto_array, as: 'protoArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoParameterArray::Representation
      
          hash :proto_value, as: 'protoValue'
          property :serialized_object_value, as: 'serializedObjectValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSerializedObjectParameter, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSerializedObjectParameter::Representation
      
          property :string_array, as: 'stringArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringParameterArray::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class EnterpriseCrmEventbusProtoProtoArrayFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoProtoFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoProtoParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :proto_values, as: 'protoValues'
        end
      end
      
      class EnterpriseCrmEventbusProtoScatterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_msg, as: 'errorMsg'
          collection :execution_ids, as: 'executionIds'
          property :is_successful, as: 'isSuccessful'
          collection :response_params, as: 'responseParams', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry::Representation
      
          property :scatter_element, as: 'scatterElement', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoSerializedObjectParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_value, :base64 => true, as: 'objectValue'
        end
      end
      
      class EnterpriseCrmEventbusProtoStringArrayFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoStringFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class EnterpriseCrmEventbusProtoStringParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :string_values, as: 'stringValues'
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gaia_identity, as: 'gaiaIdentity', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity::Representation
      
          property :google_group, as: 'googleGroup', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity::Representation
      
          property :loas_role, as: 'loasRole'
          property :mdb_group, as: 'mdbGroup'
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :gaia_id, :numeric_string => true, as: 'gaiaId'
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_message, as: 'customMessage'
          collection :notifications, as: 'notifications', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoNotification, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoNotification::Representation
      
          property :suspension_expiration, as: 'suspensionExpiration', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionExpiration, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionExpiration::Representation
      
          collection :who_may_resolve, as: 'whoMayResolve', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissions, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissions::Representation
      
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionExpiration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_after_ms, as: 'expireAfterMs'
          property :lift_when_expired, as: 'liftWhenExpired'
          property :remind_after_ms, as: 'remindAfterMs'
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit, as: 'audit', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit::Representation
      
          property :client_id, as: 'clientId'
          property :cloud_kms_config, as: 'cloudKmsConfig', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCloudKmsConfig, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCloudKmsConfig::Representation
      
          property :created_timestamp, as: 'createdTimestamp'
          property :encrypted_suspension_resolution_info, :base64 => true, as: 'encryptedSuspensionResolutionInfo'
          property :event_execution_info_id, as: 'eventExecutionInfoId'
          property :external_traffic, as: 'externalTraffic', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoExternalTraffic, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoExternalTraffic::Representation
      
          property :last_modified_timestamp, as: 'lastModifiedTimestamp'
          property :product, as: 'product'
          property :status, as: 'status'
          property :suspension_config, as: 'suspensionConfig', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionConfig, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionConfig::Representation
      
          property :suspension_id, as: 'suspensionId'
          property :task_number, as: 'taskNumber'
          property :workflow_name, as: 'workflowName'
          property :wrapped_dek, :base64 => true, as: 'wrappedDek'
        end
      end
      
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resolved_by, as: 'resolvedBy'
          property :resolved_by_cpi, as: 'resolvedByCpi'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class EnterpriseCrmEventbusProtoToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class EnterpriseCrmEventbusProtoTransformExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_value, as: 'initialValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseValue, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseValue::Representation
      
          collection :transformation_functions, as: 'transformationFunctions', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction::Representation
      
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boolean_values, as: 'booleanValues'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :double_values, as: 'doubleValues'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoIntParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :int_values, as: 'intValues'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapEntry, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapEntry::Representation
      
          property :key_type, as: 'keyType'
          property :value_type, as: 'valueType'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMapEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField::Representation
      
          property :value, as: 'value', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField::Representation
      
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterMapField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :literal_value, as: 'literalValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterValueType, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterValueType::Representation
      
          property :reference_key, as: 'referenceKey'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoParameterValueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_array, as: 'booleanArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :double_array, as: 'doubleArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray::Representation
      
          property :double_value, as: 'doubleValue'
          property :int_array, as: 'intArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoIntParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoIntParameterArray::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :json_value, as: 'jsonValue'
          property :proto_array, as: 'protoArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoProtoParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoProtoParameterArray::Representation
      
          hash :proto_value, as: 'protoValue'
          property :serialized_object_value, as: 'serializedObjectValue', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter::Representation
      
          property :string_array, as: 'stringArray', class: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoStringParameterArray, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoStringParameterArray::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :proto_values, as: 'protoValues'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_value, :base64 => true, as: 'objectValue'
        end
      end
      
      class EnterpriseCrmFrontendsEventbusProtoStringParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :string_values, as: 'stringValues'
        end
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudIntegrationsV2AttemptStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudIntegrationsV2CloudLoggingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_severity, as: 'cloudLoggingSeverity'
          property :enable_cloud_logging, as: 'enableCloudLogging'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetBooleanParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :boolean_values, as: 'booleanValues'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetCloudSchedulerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron_tab, as: 'cronTab'
          property :error_message, as: 'errorMessage'
          property :location, as: 'location'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetDoubleParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :double_values, as: 'doubleValues'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetErrorCatcherConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :error_catcher_id, as: 'errorCatcherId'
          property :error_catcher_number, as: 'errorCatcherNumber'
          property :label, as: 'label'
          collection :start_error_tasks, as: 'startErrorTasks', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetEventParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration_branch_request, as: 'integrationBranchRequest', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranchRequest, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranchRequest::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration_branch, as: 'integrationBranch', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranch, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranch::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration_document_request, as: 'integrationDocumentRequest', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copilot_enabled, as: 'copilotEnabled'
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :skeleton_integrations, as: 'skeletonIntegrations', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationSkeleton, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationSkeleton::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :javascript_request, as: 'javascriptRequest', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRequest, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRequest::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :recommendations, as: 'recommendations', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRecommendation, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRecommendation::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :int_values, as: 'intValues'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationBranch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_condition, as: 'branchCondition'
          property :explanation, as: 'explanation'
          collection :integration_parameters, as: 'integrationParameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter::Representation
      
          collection :task_configs, as: 'taskConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_condition, as: 'branchCondition'
          collection :integration_parameters, as: 'integrationParameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter::Representation
      
          collection :task_configs, as: 'taskConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationConfigParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter, as: 'parameter', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter::Representation
      
          property :value, as: 'value', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration_version, as: 'integrationVersion', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :input_output_type, as: 'inputOutputType'
          property :is_transient, as: 'isTransient'
          property :json_schema, as: 'jsonSchema'
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationSkeleton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation, as: 'explanation'
          property :integration_version, as: 'integrationVersion', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion::Representation
      
          property :name, as: 'name'
          property :tag, as: 'tag'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetIntegrationVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :error_catcher_configs, as: 'errorCatcherConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetErrorCatcherConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetErrorCatcherConfig::Representation
      
          collection :integration_config_parameters, as: 'integrationConfigParameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationConfigParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationConfigParameter::Representation
      
          collection :integration_parameters, as: 'integrationParameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter::Representation
      
          property :name, as: 'name'
          property :snapshot_number, :numeric_string => true, as: 'snapshotNumber'
          property :state, as: 'state'
          collection :task_configs, as: 'taskConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
          collection :trigger_configs, as: 'triggerConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfig::Representation
      
          property :user_label, as: 'userLabel'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetJavascriptRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation, as: 'explanation'
          collection :integration_parameters, as: 'integrationParameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter::Representation
      
          property :task_config, as: 'taskConfig', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetJavascriptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copilot_enabled, as: 'copilotEnabled'
          property :integration_version, as: 'integrationVersion', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion::Representation
      
          property :task_id, as: 'taskId'
          property :use_current_script, as: 'useCurrentScript'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetNextTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :task_config_id, as: 'taskConfigId'
          property :task_id, as: 'taskId'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetRecommendTasksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prompt, as: 'prompt'
          property :replace_task_request, as: 'replaceTaskRequest', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetReplaceTaskRequest, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetReplaceTaskRequest::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetRecommendTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :task_configs, as: 'taskConfigs', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
          collection :task_response_statuses, as: 'taskResponseStatuses', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskResponseStatus, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskResponseStatus::Representation
      
        end
      end
      
      class GoogleCloudIntegrationsV2DuetReplaceTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copilot_enabled, as: 'copilotEnabled'
          property :task_config, as: 'taskConfig', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig::Representation
      
          collection :task_types, as: 'taskTypes'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetStringParameterArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :string_values, as: 'stringValues'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error_catcher_id, as: 'errorCatcherId'
          property :external_task_type, as: 'externalTaskType'
          collection :next_tasks, as: 'nextTasks', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask::Representation
      
          hash :parameters, as: 'parameters', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetEventParameter, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetEventParameter::Representation
      
          property :task, as: 'task'
          property :task_id, as: 'taskId'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetTaskResponseStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :http_code, as: 'httpCode'
          property :task_type, as: 'taskType'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetTriggerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_scheduler_config, as: 'cloudSchedulerConfig', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetCloudSchedulerConfig, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetCloudSchedulerConfig::Representation
      
          property :description, as: 'description'
          property :error_catcher_id, as: 'errorCatcherId'
          property :input_variables, as: 'inputVariables', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables::Representation
      
          property :label, as: 'label'
          property :output_variables, as: 'outputVariables', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables::Representation
      
          hash :properties, as: 'properties'
          collection :start_tasks, as: 'startTasks', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask::Representation
      
          property :trigger, as: 'trigger'
          property :trigger_id, as: 'triggerId'
          property :trigger_number, as: 'triggerNumber'
          property :trigger_type, as: 'triggerType'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetTriggerConfigVariables
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detailed_explanation, as: 'detailedExplanation'
          property :display_message, as: 'displayMessage'
          property :error_message, as: 'errorMessage'
          property :execution_id, as: 'executionId'
          property :root_cause, as: 'rootCause'
        end
      end
      
      class GoogleCloudIntegrationsV2DuetValueType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_array, as: 'booleanArray', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetBooleanParameterArray, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetBooleanParameterArray::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :double_array, as: 'doubleArray', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetDoubleParameterArray, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetDoubleParameterArray::Representation
      
          property :double_value, as: 'doubleValue'
          property :int_array, as: 'intArray', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntParameterArray, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntParameterArray::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :json_value, as: 'jsonValue'
          property :string_array, as: 'stringArray', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetStringParameterArray, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetStringParameterArray::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudIntegrationsV2Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_details, as: 'cloudLoggingDetails', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2CloudLoggingDetails, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2CloudLoggingDetails::Representation
      
          property :contain_task_variables, as: 'containTaskVariables'
          property :create_time, as: 'createTime'
          collection :execution_attempt_stats, as: 'executionAttemptStats', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats::Representation
      
          property :integration_version_number, :numeric_string => true, as: 'integrationVersionNumber'
          property :integration_version_user_label, as: 'integrationVersionUserLabel'
          property :name, as: 'name'
          property :replay_info, as: 'replayInfo', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ExecutionReplayInfo, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ExecutionReplayInfo::Representation
      
          hash :request_variables, as: 'requestVariables'
          hash :response_variables, as: 'responseVariables'
          property :state, as: 'state'
          collection :task_executions, as: 'taskExecutions', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution::Representation
      
          property :trigger_id, as: 'triggerId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudIntegrationsV2ExecutionReplayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_execution_id, as: 'originalExecutionId'
          property :replay_mode, as: 'replayMode'
          property :replay_reason, as: 'replayReason'
          collection :replayed_execution_ids, as: 'replayedExecutionIds'
        end
      end
      
      class GoogleCloudIntegrationsV2ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2Execution, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudIntegrationsV2TaskExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :task_execution_details, as: 'taskExecutionDetails', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionDetails, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionDetails::Representation
      
          property :task_execution_metadata, as: 'taskExecutionMetadata', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata::Representation
      
          hash :variables, as: 'variables'
        end
      end
      
      class GoogleCloudIntegrationsV2TaskExecutionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :task_attempt_stats, as: 'taskAttemptStats', class: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats, decorator: Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats::Representation
      
          property :task_execution_state, as: 'taskExecutionState'
          property :task_number, as: 'taskNumber'
        end
      end
      
      class GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ancestor_iteration_numbers, as: 'ancestorIterationNumbers'
          collection :ancestor_task_numbers, as: 'ancestorTaskNumbers'
          property :execution_attempt, as: 'executionAttempt'
          property :private_integration_name, as: 'privateIntegrationName'
          property :task, as: 'task'
          property :task_attempt, as: 'taskAttempt'
          property :task_label, as: 'taskLabel'
          property :task_number, as: 'taskNumber'
        end
      end
      
      class GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :ignore_error_if_no_active_workflow, as: 'ignoreErrorIfNoActiveWorkflow'
          property :parameters, as: 'parameters', class: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoEventParameters, decorator: Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoEventParameters::Representation
      
          property :priority, as: 'priority'
          property :quota_retry_count, as: 'quotaRetryCount'
          property :request_id, as: 'requestId'
          property :resource_name, as: 'resourceName'
          property :scheduled_time, :numeric_string => true, as: 'scheduledTime'
          property :test_mode, as: 'testMode'
          property :trigger_id, as: 'triggerId'
          property :user_generated_execution_id, as: 'userGeneratedExecutionId'
          property :workflow_name, as: 'workflowName'
        end
      end
    end
  end
end
