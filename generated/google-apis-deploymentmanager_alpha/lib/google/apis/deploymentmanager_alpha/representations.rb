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
    module DeploymentmanagerAlpha
      
      class AsyncOptions
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
      
      class BaseType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertOperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectionOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeTypeLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeTypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Credential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentOutputEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentUpdateLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentsCancelPreviewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentsStopRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Diagnostic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesBulkInsertOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManifestsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceAccessControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetCommonInstanceMetadataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TemplateContents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeInfoSchemaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeProviderLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeProvidersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeProvidersListTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsyncOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_match, as: 'methodMatch'
          property :polling_options, as: 'pollingOptions', class: Google::Apis::DeploymentmanagerAlpha::PollingOptions, decorator: Google::Apis::DeploymentmanagerAlpha::PollingOptions::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DeploymentmanagerAlpha::AuditLogConfig, decorator: Google::Apis::DeploymentmanagerAlpha::AuditLogConfig::Representation
      
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
      
      class BaseType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_overrides, as: 'collectionOverrides', class: Google::Apis::DeploymentmanagerAlpha::CollectionOverride, decorator: Google::Apis::DeploymentmanagerAlpha::CollectionOverride::Representation
      
          property :credential, as: 'credential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          property :descriptor_url, as: 'descriptorUrl'
          property :options, as: 'options', class: Google::Apis::DeploymentmanagerAlpha::Options, decorator: Google::Apis::DeploymentmanagerAlpha::Options::Representation
      
        end
      end
      
      class BasicAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :user, as: 'user'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DeploymentmanagerAlpha::Expr, decorator: Google::Apis::DeploymentmanagerAlpha::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BulkInsertOperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_vm_count, as: 'createdVmCount'
          property :deleted_vm_count, as: 'deletedVmCount'
          property :failed_to_create_vm_count, as: 'failedToCreateVmCount'
          property :status, as: 'status'
          property :target_vm_count, as: 'targetVmCount'
        end
      end
      
      class CollectionOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection'
          property :method_map, as: 'methodMap', class: Google::Apis::DeploymentmanagerAlpha::MethodMap, decorator: Google::Apis::DeploymentmanagerAlpha::MethodMap::Representation
      
          property :options, as: 'options', class: Google::Apis::DeploymentmanagerAlpha::Options, decorator: Google::Apis::DeploymentmanagerAlpha::Options::Representation
      
        end
      end
      
      class CompositeType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerAlpha::CompositeTypeLabelEntry, decorator: Google::Apis::DeploymentmanagerAlpha::CompositeTypeLabelEntry::Representation
      
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerAlpha::Operation, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :template_contents, as: 'templateContents', class: Google::Apis::DeploymentmanagerAlpha::TemplateContents, decorator: Google::Apis::DeploymentmanagerAlpha::TemplateContents::Representation
      
        end
      end
      
      class CompositeTypeLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class CompositeTypesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :composite_types, as: 'compositeTypes', class: Google::Apis::DeploymentmanagerAlpha::CompositeType, decorator: Google::Apis::DeploymentmanagerAlpha::CompositeType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ConfigFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
        end
      end
      
      class Credential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_auth, as: 'basicAuth', class: Google::Apis::DeploymentmanagerAlpha::BasicAuth, decorator: Google::Apis::DeploymentmanagerAlpha::BasicAuth::Representation
      
          property :service_account, as: 'serviceAccount', class: Google::Apis::DeploymentmanagerAlpha::ServiceAccount, decorator: Google::Apis::DeploymentmanagerAlpha::ServiceAccount::Representation
      
          property :use_project_default, as: 'useProjectDefault'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential, as: 'credential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerAlpha::DeploymentLabelEntry, decorator: Google::Apis::DeploymentmanagerAlpha::DeploymentLabelEntry::Representation
      
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerAlpha::Operation, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Representation
      
          collection :outputs, as: 'outputs', class: Google::Apis::DeploymentmanagerAlpha::DeploymentOutputEntry, decorator: Google::Apis::DeploymentmanagerAlpha::DeploymentOutputEntry::Representation
      
          property :self_link, as: 'selfLink'
          property :target, as: 'target', class: Google::Apis::DeploymentmanagerAlpha::TargetConfiguration, decorator: Google::Apis::DeploymentmanagerAlpha::TargetConfiguration::Representation
      
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerAlpha::DeploymentUpdate, decorator: Google::Apis::DeploymentmanagerAlpha::DeploymentUpdate::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeploymentLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class DeploymentOutputEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class DeploymentUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential, as: 'credential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          property :description, as: 'description'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerAlpha::DeploymentUpdateLabelEntry, decorator: Google::Apis::DeploymentmanagerAlpha::DeploymentUpdateLabelEntry::Representation
      
          property :manifest, as: 'manifest'
        end
      end
      
      class DeploymentUpdateLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class DeploymentsCancelPreviewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
        end
      end
      
      class DeploymentsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DeploymentmanagerAlpha::Deployment, decorator: Google::Apis::DeploymentmanagerAlpha::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DeploymentsStopRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
        end
      end
      
      class Diagnostic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :level, as: 'level'
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
      
      class GlobalSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DeploymentmanagerAlpha::Binding, decorator: Google::Apis::DeploymentmanagerAlpha::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::DeploymentmanagerAlpha::Policy, decorator: Google::Apis::DeploymentmanagerAlpha::Policy::Representation
      
        end
      end
      
      class ImportFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :name, as: 'name'
        end
      end
      
      class InputMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :location, as: 'location'
          property :method_match, as: 'methodMatch'
          property :value, as: 'value'
        end
      end
      
      class InstancesBulkInsertOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :per_location_status, as: 'perLocationStatus', class: Google::Apis::DeploymentmanagerAlpha::BulkInsertOperationStatus, decorator: Google::Apis::DeploymentmanagerAlpha::BulkInsertOperationStatus::Representation
      
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DeploymentmanagerAlpha::ConfigFile, decorator: Google::Apis::DeploymentmanagerAlpha::ConfigFile::Representation
      
          property :expanded_config, as: 'expandedConfig'
          property :id, :numeric_string => true, as: 'id'
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerAlpha::ImportFile, decorator: Google::Apis::DeploymentmanagerAlpha::ImportFile::Representation
      
          property :insert_time, as: 'insertTime'
          property :layout, as: 'layout'
          property :manifest_size_bytes, :numeric_string => true, as: 'manifestSizeBytes'
          property :manifest_size_limit_bytes, :numeric_string => true, as: 'manifestSizeLimitBytes'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ManifestsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifests, as: 'manifests', class: Google::Apis::DeploymentmanagerAlpha::Manifest, decorator: Google::Apis::DeploymentmanagerAlpha::Manifest::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MethodMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create, as: 'create'
          property :delete, as: 'delete'
          property :get, as: 'get'
          property :set_iam_policy, as: 'setIamPolicy'
          property :update, as: 'update'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerAlpha::Operation::Error, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :instances_bulk_insert_operation_metadata, as: 'instancesBulkInsertOperationMetadata', class: Google::Apis::DeploymentmanagerAlpha::InstancesBulkInsertOperationMetadata, decorator: Google::Apis::DeploymentmanagerAlpha::InstancesBulkInsertOperationMetadata::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_group_id, as: 'operationGroupId'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :set_common_instance_metadata_operation_metadata, as: 'setCommonInstanceMetadataOperationMetadata', class: Google::Apis::DeploymentmanagerAlpha::SetCommonInstanceMetadataOperationMetadata, decorator: Google::Apis::DeploymentmanagerAlpha::SetCommonInstanceMetadataOperationMetadata::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, :numeric_string => true, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerAlpha::Operation::Warning, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerAlpha::Operation::Error::Error, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerAlpha::Operation::Warning::Datum, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class OperationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeploymentmanagerAlpha::Operation, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Representation
      
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :async_options, as: 'asyncOptions', class: Google::Apis::DeploymentmanagerAlpha::AsyncOptions, decorator: Google::Apis::DeploymentmanagerAlpha::AsyncOptions::Representation
      
          collection :input_mappings, as: 'inputMappings', class: Google::Apis::DeploymentmanagerAlpha::InputMapping, decorator: Google::Apis::DeploymentmanagerAlpha::InputMapping::Representation
      
          property :name_property, as: 'nameProperty'
          property :validation_options, as: 'validationOptions', class: Google::Apis::DeploymentmanagerAlpha::ValidationOptions, decorator: Google::Apis::DeploymentmanagerAlpha::ValidationOptions::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DeploymentmanagerAlpha::AuditConfig, decorator: Google::Apis::DeploymentmanagerAlpha::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DeploymentmanagerAlpha::Binding, decorator: Google::Apis::DeploymentmanagerAlpha::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PollingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :diagnostics, as: 'diagnostics', class: Google::Apis::DeploymentmanagerAlpha::Diagnostic, decorator: Google::Apis::DeploymentmanagerAlpha::Diagnostic::Representation
      
          property :fail_condition, as: 'failCondition'
          property :finish_condition, as: 'finishCondition'
          property :polling_link, as: 'pollingLink'
          property :target_link, as: 'targetLink'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_control, as: 'accessControl', class: Google::Apis::DeploymentmanagerAlpha::ResourceAccessControl, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceAccessControl::Representation
      
          property :final_properties, as: 'finalProperties'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :last_used_credential, as: 'lastUsedCredential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :properties, as: 'properties'
          collection :runtime_policies, as: 'runtimePolicies'
          property :type, as: 'type'
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Representation
      
          property :update_time, as: 'updateTime'
          property :url, as: 'url'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerAlpha::Resource::Warning, decorator: Google::Apis::DeploymentmanagerAlpha::Resource::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerAlpha::Resource::Warning::Datum, decorator: Google::Apis::DeploymentmanagerAlpha::Resource::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ResourceAccessControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_iam_policy, as: 'gcpIamPolicy'
        end
      end
      
      class ResourceUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_control, as: 'accessControl', class: Google::Apis::DeploymentmanagerAlpha::ResourceAccessControl, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceAccessControl::Representation
      
          property :credential, as: 'credential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Error, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Error::Representation
      
          property :final_properties, as: 'finalProperties'
          property :intent, as: 'intent'
          property :manifest, as: 'manifest'
          property :properties, as: 'properties'
          collection :runtime_policies, as: 'runtimePolicies'
          property :state, as: 'state'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Warning, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Warning::Representation
      
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Error::Error, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Warning::Datum, decorator: Google::Apis::DeploymentmanagerAlpha::ResourceUpdate::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ResourcesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::DeploymentmanagerAlpha::Resource, decorator: Google::Apis::DeploymentmanagerAlpha::Resource::Representation
      
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class SetCommonInstanceMetadataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          hash :per_location_operations, as: 'perLocationOperations', class: Google::Apis::DeploymentmanagerAlpha::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo, decorator: Google::Apis::DeploymentmanagerAlpha::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo::Representation
      
        end
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerAlpha::Status, decorator: Google::Apis::DeploymentmanagerAlpha::Status::Representation
      
          property :state, as: 'state'
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
      
      class TargetConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DeploymentmanagerAlpha::ConfigFile, decorator: Google::Apis::DeploymentmanagerAlpha::ConfigFile::Representation
      
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerAlpha::ImportFile, decorator: Google::Apis::DeploymentmanagerAlpha::ImportFile::Representation
      
        end
      end
      
      class TemplateContents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerAlpha::ImportFile, decorator: Google::Apis::DeploymentmanagerAlpha::ImportFile::Representation
      
          property :interpreter, as: 'interpreter'
          property :main_template, as: 'mainTemplate'
          property :schema, as: 'schema'
          property :template, as: 'template'
        end
      end
      
      class TestPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base, as: 'base', class: Google::Apis::DeploymentmanagerAlpha::BaseType, decorator: Google::Apis::DeploymentmanagerAlpha::BaseType::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerAlpha::TypeLabelEntry, decorator: Google::Apis::DeploymentmanagerAlpha::TypeLabelEntry::Representation
      
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerAlpha::Operation, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class TypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :documentation_link, as: 'documentationLink'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::DeploymentmanagerAlpha::TypeInfoSchemaInfo, decorator: Google::Apis::DeploymentmanagerAlpha::TypeInfoSchemaInfo::Representation
      
          property :self_link, as: 'selfLink'
          property :title, as: 'title'
        end
      end
      
      class TypeInfoSchemaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, as: 'input'
          property :output, as: 'output'
        end
      end
      
      class TypeLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class TypeProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_overrides, as: 'collectionOverrides', class: Google::Apis::DeploymentmanagerAlpha::CollectionOverride, decorator: Google::Apis::DeploymentmanagerAlpha::CollectionOverride::Representation
      
          property :credential, as: 'credential', class: Google::Apis::DeploymentmanagerAlpha::Credential, decorator: Google::Apis::DeploymentmanagerAlpha::Credential::Representation
      
          collection :custom_certificate_authority_roots, as: 'customCertificateAuthorityRoots'
          property :description, as: 'description'
          property :descriptor_url, as: 'descriptorUrl'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerAlpha::TypeProviderLabelEntry, decorator: Google::Apis::DeploymentmanagerAlpha::TypeProviderLabelEntry::Representation
      
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerAlpha::Operation, decorator: Google::Apis::DeploymentmanagerAlpha::Operation::Representation
      
          property :options, as: 'options', class: Google::Apis::DeploymentmanagerAlpha::Options, decorator: Google::Apis::DeploymentmanagerAlpha::Options::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class TypeProviderLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class TypeProvidersListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :type_providers, as: 'typeProviders', class: Google::Apis::DeploymentmanagerAlpha::TypeProvider, decorator: Google::Apis::DeploymentmanagerAlpha::TypeProvider::Representation
      
        end
      end
      
      class TypeProvidersListTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::DeploymentmanagerAlpha::TypeInfo, decorator: Google::Apis::DeploymentmanagerAlpha::TypeInfo::Representation
      
        end
      end
      
      class TypesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::DeploymentmanagerAlpha::Type, decorator: Google::Apis::DeploymentmanagerAlpha::Type::Representation
      
        end
      end
      
      class ValidationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema_validation, as: 'schemaValidation'
          property :undeclared_properties, as: 'undeclaredProperties'
        end
      end
    end
  end
end
