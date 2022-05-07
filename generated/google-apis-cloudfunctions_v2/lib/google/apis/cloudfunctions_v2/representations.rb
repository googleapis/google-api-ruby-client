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
    module CloudfunctionsV2
      
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
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaStateMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaStateMessage
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
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
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudfunctionsV2::AuditLogConfig, decorator: Google::Apis::CloudfunctionsV2::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::CloudfunctionsV2::Expr, decorator: Google::Apis::CloudfunctionsV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
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
      
      class GoogleCloudFunctionsV2alphaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          hash :request_resource, as: 'requestResource'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2alphaStage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2alphaStage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2alphaStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2alphaStateMessage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2alphaStateMessage::Representation
      
        end
      end
      
      class GoogleCloudFunctionsV2alphaStateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudFunctionsV2betaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          hash :request_resource, as: 'requestResource'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2betaStage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2betaStage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2betaStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2betaStateMessage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2betaStateMessage::Representation
      
        end
      end
      
      class GoogleCloudFunctionsV2betaStateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudfunctionsV2::Location, decorator: Google::Apis::CloudfunctionsV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudfunctionsV2::Operation, decorator: Google::Apis::CloudfunctionsV2::Operation::Representation
      
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudfunctionsV2::Status, decorator: Google::Apis::CloudfunctionsV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadataV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_id, as: 'buildId'
          property :build_name, as: 'buildName'
          hash :request, as: 'request'
          property :source_token, as: 'sourceToken'
          property :target, as: 'target'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version_id, :numeric_string => true, as: 'versionId'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudfunctionsV2::AuditConfig, decorator: Google::Apis::CloudfunctionsV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudfunctionsV2::Binding, decorator: Google::Apis::CloudfunctionsV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudfunctionsV2::Policy, decorator: Google::Apis::CloudfunctionsV2::Policy::Representation
      
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
    end
  end
end
