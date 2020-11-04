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
    module ApigatewayV1beta
      
      class ApigatewayApi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayApiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayApiConfigFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayApiConfigGrpcServiceDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayApiConfigOpenApiDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayAuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayAuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayBackendConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayGatewayConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayListApiConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayListApisResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayListGatewaysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayOperationMetadataDiagnostic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewaySetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayTestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayTestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApigatewayApi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :managed_service, as: 'managedService'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApigatewayApiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :gateway_config, as: 'gatewayConfig', class: Google::Apis::ApigatewayV1beta::ApigatewayGatewayConfig, decorator: Google::Apis::ApigatewayV1beta::ApigatewayGatewayConfig::Representation
      
          collection :grpc_services, as: 'grpcServices', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigGrpcServiceDefinition, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigGrpcServiceDefinition::Representation
      
          hash :labels, as: 'labels'
          collection :managed_service_configs, as: 'managedServiceConfigs', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile::Representation
      
          property :name, as: 'name'
          collection :openapi_documents, as: 'openapiDocuments', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigOpenApiDocument, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigOpenApiDocument::Representation
      
          property :service_config_id, as: 'serviceConfigId'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApigatewayApiConfigFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :path, as: 'path'
        end
      end
      
      class ApigatewayApiConfigGrpcServiceDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_descriptor_set, as: 'fileDescriptorSet', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile::Representation
      
          collection :source, as: 'source', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile::Representation
      
        end
      end
      
      class ApigatewayApiConfigOpenApiDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfigFile::Representation
      
        end
      end
      
      class ApigatewayAuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ApigatewayV1beta::ApigatewayAuditLogConfig, decorator: Google::Apis::ApigatewayV1beta::ApigatewayAuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class ApigatewayAuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class ApigatewayBackendConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_service_account, as: 'googleServiceAccount'
        end
      end
      
      class ApigatewayBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::ApigatewayV1beta::ApigatewayExpr, decorator: Google::Apis::ApigatewayV1beta::ApigatewayExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ApigatewayCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ApigatewayExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ApigatewayGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_config, as: 'apiConfig'
          property :create_time, as: 'createTime'
          property :default_hostname, as: 'defaultHostname'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApigatewayGatewayConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_config, as: 'backendConfig', class: Google::Apis::ApigatewayV1beta::ApigatewayBackendConfig, decorator: Google::Apis::ApigatewayV1beta::ApigatewayBackendConfig::Representation
      
        end
      end
      
      class ApigatewayListApiConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_configs, as: 'apiConfigs', class: Google::Apis::ApigatewayV1beta::ApigatewayApiConfig, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApiConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class ApigatewayListApisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis', class: Google::Apis::ApigatewayV1beta::ApigatewayApi, decorator: Google::Apis::ApigatewayV1beta::ApigatewayApi::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class ApigatewayListGatewaysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateways, as: 'gateways', class: Google::Apis::ApigatewayV1beta::ApigatewayGateway, decorator: Google::Apis::ApigatewayV1beta::ApigatewayGateway::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class ApigatewayListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ApigatewayV1beta::ApigatewayLocation, decorator: Google::Apis::ApigatewayV1beta::ApigatewayLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ApigatewayListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ApigatewayV1beta::ApigatewayOperation, decorator: Google::Apis::ApigatewayV1beta::ApigatewayOperation::Representation
      
        end
      end
      
      class ApigatewayLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class ApigatewayOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ApigatewayV1beta::ApigatewayStatus, decorator: Google::Apis::ApigatewayV1beta::ApigatewayStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class ApigatewayOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          collection :diagnostics, as: 'diagnostics', class: Google::Apis::ApigatewayV1beta::ApigatewayOperationMetadataDiagnostic, decorator: Google::Apis::ApigatewayV1beta::ApigatewayOperationMetadataDiagnostic::Representation
      
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class ApigatewayOperationMetadataDiagnostic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :message, as: 'message'
        end
      end
      
      class ApigatewayPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ApigatewayV1beta::ApigatewayAuditConfig, decorator: Google::Apis::ApigatewayV1beta::ApigatewayAuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ApigatewayV1beta::ApigatewayBinding, decorator: Google::Apis::ApigatewayV1beta::ApigatewayBinding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ApigatewaySetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ApigatewayV1beta::ApigatewayPolicy, decorator: Google::Apis::ApigatewayV1beta::ApigatewayPolicy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ApigatewayStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class ApigatewayTestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class ApigatewayTestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
