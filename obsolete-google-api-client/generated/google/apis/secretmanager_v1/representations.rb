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
    module SecretmanagerV1
      
      class AccessSecretVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddSecretVersionRequest
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
      
      class Automatic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomaticStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerManagedEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerManagedEncryptionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestroySecretVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableSecretVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableSecretVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSecretVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Replica
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Replication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
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
      
      class UserManaged
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserManagedStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSecretVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :payload, as: 'payload', class: Google::Apis::SecretmanagerV1::SecretPayload, decorator: Google::Apis::SecretmanagerV1::SecretPayload::Representation
      
        end
      end
      
      class AddSecretVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload', class: Google::Apis::SecretmanagerV1::SecretPayload, decorator: Google::Apis::SecretmanagerV1::SecretPayload::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::SecretmanagerV1::AuditLogConfig, decorator: Google::Apis::SecretmanagerV1::AuditLogConfig::Representation
      
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
      
      class Automatic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_managed_encryption, as: 'customerManagedEncryption', class: Google::Apis::SecretmanagerV1::CustomerManagedEncryption, decorator: Google::Apis::SecretmanagerV1::CustomerManagedEncryption::Representation
      
        end
      end
      
      class AutomaticStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_managed_encryption, as: 'customerManagedEncryption', class: Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus, decorator: Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SecretmanagerV1::Expr, decorator: Google::Apis::SecretmanagerV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CustomerManagedEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class CustomerManagedEncryptionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_version_name, as: 'kmsKeyVersionName'
        end
      end
      
      class DestroySecretVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisableSecretVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableSecretVersionRequest
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
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::SecretmanagerV1::Location, decorator: Google::Apis::SecretmanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSecretVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          collection :versions, as: 'versions', class: Google::Apis::SecretmanagerV1::SecretVersion, decorator: Google::Apis::SecretmanagerV1::SecretVersion::Representation
      
        end
      end
      
      class ListSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :secrets, as: 'secrets', class: Google::Apis::SecretmanagerV1::Secret, decorator: Google::Apis::SecretmanagerV1::Secret::Representation
      
          property :total_size, as: 'totalSize'
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::SecretmanagerV1::AuditConfig, decorator: Google::Apis::SecretmanagerV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::SecretmanagerV1::Binding, decorator: Google::Apis::SecretmanagerV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Replica
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_managed_encryption, as: 'customerManagedEncryption', class: Google::Apis::SecretmanagerV1::CustomerManagedEncryption, decorator: Google::Apis::SecretmanagerV1::CustomerManagedEncryption::Representation
      
          property :location, as: 'location'
        end
      end
      
      class ReplicaStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_managed_encryption, as: 'customerManagedEncryption', class: Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus, decorator: Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus::Representation
      
          property :location, as: 'location'
        end
      end
      
      class Replication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic, as: 'automatic', class: Google::Apis::SecretmanagerV1::Automatic, decorator: Google::Apis::SecretmanagerV1::Automatic::Representation
      
          property :user_managed, as: 'userManaged', class: Google::Apis::SecretmanagerV1::UserManaged, decorator: Google::Apis::SecretmanagerV1::UserManaged::Representation
      
        end
      end
      
      class ReplicationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic, as: 'automatic', class: Google::Apis::SecretmanagerV1::AutomaticStatus, decorator: Google::Apis::SecretmanagerV1::AutomaticStatus::Representation
      
          property :user_managed, as: 'userManaged', class: Google::Apis::SecretmanagerV1::UserManagedStatus, decorator: Google::Apis::SecretmanagerV1::UserManagedStatus::Representation
      
        end
      end
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :replication, as: 'replication', class: Google::Apis::SecretmanagerV1::Replication, decorator: Google::Apis::SecretmanagerV1::Replication::Representation
      
        end
      end
      
      class SecretPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
        end
      end
      
      class SecretVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destroy_time, as: 'destroyTime'
          property :name, as: 'name'
          property :replication_status, as: 'replicationStatus', class: Google::Apis::SecretmanagerV1::ReplicationStatus, decorator: Google::Apis::SecretmanagerV1::ReplicationStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::SecretmanagerV1::Policy, decorator: Google::Apis::SecretmanagerV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class UserManaged
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :replicas, as: 'replicas', class: Google::Apis::SecretmanagerV1::Replica, decorator: Google::Apis::SecretmanagerV1::Replica::Representation
      
        end
      end
      
      class UserManagedStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :replicas, as: 'replicas', class: Google::Apis::SecretmanagerV1::ReplicaStatus, decorator: Google::Apis::SecretmanagerV1::ReplicaStatus::Representation
      
        end
      end
    end
  end
end
