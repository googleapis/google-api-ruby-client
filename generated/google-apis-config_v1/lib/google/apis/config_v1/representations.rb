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
    module ConfigV1
      
      class ApplyResults
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
      
      class DeleteStatefileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDeploymentStatefileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportPreviewResultRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportPreviewResultResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportRevisionStatefileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportStatefileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeploymentsResponse
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
      
      class ListPreviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTerraformVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LockDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LockInfo
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
      
      class Preview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewArtifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceCaiInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceTerraformInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Revision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Statefile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformBlueprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformVersion
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
      
      class UnlockDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifacts, as: 'artifacts'
          property :content, as: 'content'
          hash :outputs, as: 'outputs', class: Google::Apis::ConfigV1::TerraformOutput, decorator: Google::Apis::ConfigV1::TerraformOutput::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ConfigV1::AuditLogConfig, decorator: Google::Apis::ConfigV1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::ConfigV1::Expr, decorator: Google::Apis::ConfigV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteStatefileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lock_id, :numeric_string => true, as: 'lockId'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :artifacts_gcs_bucket, as: 'artifactsGcsBucket'
          property :create_time, as: 'createTime'
          property :delete_build, as: 'deleteBuild'
          property :delete_logs, as: 'deleteLogs'
          property :delete_results, as: 'deleteResults', class: Google::Apis::ConfigV1::ApplyResults, decorator: Google::Apis::ConfigV1::ApplyResults::Representation
      
          property :error_code, as: 'errorCode'
          property :error_logs, as: 'errorLogs'
          property :import_existing_resources, as: 'importExistingResources'
          hash :labels, as: 'labels'
          property :latest_revision, as: 'latestRevision'
          property :lock_state, as: 'lockState'
          property :name, as: 'name'
          property :quota_validation, as: 'quotaValidation'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :state_detail, as: 'stateDetail'
          property :terraform_blueprint, as: 'terraformBlueprint', class: Google::Apis::ConfigV1::TerraformBlueprint, decorator: Google::Apis::ConfigV1::TerraformBlueprint::Representation
      
          collection :tf_errors, as: 'tfErrors', class: Google::Apis::ConfigV1::TerraformError, decorator: Google::Apis::ConfigV1::TerraformError::Representation
      
          property :tf_version, as: 'tfVersion'
          property :tf_version_constraint, as: 'tfVersionConstraint'
          property :update_time, as: 'updateTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class DeploymentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_results, as: 'applyResults', class: Google::Apis::ConfigV1::ApplyResults, decorator: Google::Apis::ConfigV1::ApplyResults::Representation
      
          property :build, as: 'build'
          property :logs, as: 'logs'
          property :step, as: 'step'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportDeploymentStatefileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draft, as: 'draft'
        end
      end
      
      class ExportPreviewResultRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportPreviewResultResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::ConfigV1::PreviewResult, decorator: Google::Apis::ConfigV1::PreviewResult::Representation
      
        end
      end
      
      class ExportRevisionStatefileRequest
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
      
      class GitSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory, as: 'directory'
          property :ref, as: 'ref'
          property :repo, as: 'repo'
        end
      end
      
      class ImportStatefileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lock_id, :numeric_string => true, as: 'lockId'
        end
      end
      
      class ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::ConfigV1::Deployment, decorator: Google::Apis::ConfigV1::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ConfigV1::Location, decorator: Google::Apis::ConfigV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ConfigV1::Operation, decorator: Google::Apis::ConfigV1::Operation::Representation
      
        end
      end
      
      class ListPreviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :previews, as: 'previews', class: Google::Apis::ConfigV1::Preview, decorator: Google::Apis::ConfigV1::Preview::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ConfigV1::Resource, decorator: Google::Apis::ConfigV1::Resource::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::ConfigV1::Revision, decorator: Google::Apis::ConfigV1::Revision::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTerraformVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :terraform_versions, as: 'terraformVersions', class: Google::Apis::ConfigV1::TerraformVersion, decorator: Google::Apis::ConfigV1::TerraformVersion::Representation
      
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
      
      class LockDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LockInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :info, as: 'info'
          property :lock_id, :numeric_string => true, as: 'lockId'
          property :operation, as: 'operation'
          property :version, as: 'version'
          property :who, as: 'who'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ConfigV1::Status, decorator: Google::Apis::ConfigV1::Status::Representation
      
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
          property :deployment_metadata, as: 'deploymentMetadata', class: Google::Apis::ConfigV1::DeploymentOperationMetadata, decorator: Google::Apis::ConfigV1::DeploymentOperationMetadata::Representation
      
          property :end_time, as: 'endTime'
          property :preview_metadata, as: 'previewMetadata', class: Google::Apis::ConfigV1::PreviewOperationMetadata, decorator: Google::Apis::ConfigV1::PreviewOperationMetadata::Representation
      
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ConfigV1::AuditConfig, decorator: Google::Apis::ConfigV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ConfigV1::Binding, decorator: Google::Apis::ConfigV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Preview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifacts_gcs_bucket, as: 'artifactsGcsBucket'
          property :build, as: 'build'
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment'
          property :error_code, as: 'errorCode'
          property :error_logs, as: 'errorLogs'
          property :error_status, as: 'errorStatus', class: Google::Apis::ConfigV1::Status, decorator: Google::Apis::ConfigV1::Status::Representation
      
          hash :labels, as: 'labels'
          property :logs, as: 'logs'
          property :name, as: 'name'
          property :preview_artifacts, as: 'previewArtifacts', class: Google::Apis::ConfigV1::PreviewArtifacts, decorator: Google::Apis::ConfigV1::PreviewArtifacts::Representation
      
          property :preview_mode, as: 'previewMode'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :terraform_blueprint, as: 'terraformBlueprint', class: Google::Apis::ConfigV1::TerraformBlueprint, decorator: Google::Apis::ConfigV1::TerraformBlueprint::Representation
      
          collection :tf_errors, as: 'tfErrors', class: Google::Apis::ConfigV1::TerraformError, decorator: Google::Apis::ConfigV1::TerraformError::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class PreviewArtifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifacts, as: 'artifacts'
          property :content, as: 'content'
        end
      end
      
      class PreviewOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build'
          property :logs, as: 'logs'
          property :preview_artifacts, as: 'previewArtifacts', class: Google::Apis::ConfigV1::PreviewArtifacts, decorator: Google::Apis::ConfigV1::PreviewArtifacts::Representation
      
          property :step, as: 'step'
        end
      end
      
      class PreviewResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_signed_uri, as: 'binarySignedUri'
          property :json_signed_uri, as: 'jsonSignedUri'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :cai_assets, as: 'caiAssets', class: Google::Apis::ConfigV1::ResourceCaiInfo, decorator: Google::Apis::ConfigV1::ResourceCaiInfo::Representation
      
          property :intent, as: 'intent'
          property :name, as: 'name'
          property :state, as: 'state'
          property :terraform_info, as: 'terraformInfo', class: Google::Apis::ConfigV1::ResourceTerraformInfo, decorator: Google::Apis::ConfigV1::ResourceTerraformInfo::Representation
      
        end
      end
      
      class ResourceCaiInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
        end
      end
      
      class ResourceTerraformInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class Revision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :apply_results, as: 'applyResults', class: Google::Apis::ConfigV1::ApplyResults, decorator: Google::Apis::ConfigV1::ApplyResults::Representation
      
          property :build, as: 'build'
          property :create_time, as: 'createTime'
          property :error_code, as: 'errorCode'
          property :error_logs, as: 'errorLogs'
          property :import_existing_resources, as: 'importExistingResources'
          property :logs, as: 'logs'
          property :name, as: 'name'
          property :quota_validation, as: 'quotaValidation'
          property :quota_validation_results, as: 'quotaValidationResults'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :state_detail, as: 'stateDetail'
          property :terraform_blueprint, as: 'terraformBlueprint', class: Google::Apis::ConfigV1::TerraformBlueprint, decorator: Google::Apis::ConfigV1::TerraformBlueprint::Representation
      
          collection :tf_errors, as: 'tfErrors', class: Google::Apis::ConfigV1::TerraformError, decorator: Google::Apis::ConfigV1::TerraformError::Representation
      
          property :tf_version, as: 'tfVersion'
          property :tf_version_constraint, as: 'tfVersionConstraint'
          property :update_time, as: 'updateTime'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ConfigV1::Policy, decorator: Google::Apis::ConfigV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Statefile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signed_uri, as: 'signedUri'
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
      
      class TerraformBlueprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource'
          property :git_source, as: 'gitSource', class: Google::Apis::ConfigV1::GitSource, decorator: Google::Apis::ConfigV1::GitSource::Representation
      
          hash :input_values, as: 'inputValues', class: Google::Apis::ConfigV1::TerraformVariable, decorator: Google::Apis::ConfigV1::TerraformVariable::Representation
      
        end
      end
      
      class TerraformError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ConfigV1::Status, decorator: Google::Apis::ConfigV1::Status::Representation
      
          property :error_description, as: 'errorDescription'
          property :http_response_code, as: 'httpResponseCode'
          property :resource_address, as: 'resourceAddress'
        end
      end
      
      class TerraformOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sensitive, as: 'sensitive'
          property :value, as: 'value'
        end
      end
      
      class TerraformVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_value, as: 'inputValue'
        end
      end
      
      class TerraformVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecate_time, as: 'deprecateTime'
          property :name, as: 'name'
          property :obsolete_time, as: 'obsoleteTime'
          property :state, as: 'state'
          property :support_time, as: 'supportTime'
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
      
      class UnlockDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lock_id, :numeric_string => true, as: 'lockId'
        end
      end
    end
  end
end
