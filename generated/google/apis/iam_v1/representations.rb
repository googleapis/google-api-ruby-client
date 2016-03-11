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
    module IamV1
      
      class ListServiceAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceAccountKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateServiceAccountKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignBlobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignBlobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataAccessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAuditOptions
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
      
      class ListServiceAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :unique_id, as: 'uniqueId'
          property :email, as: 'email'
          property :display_name, as: 'displayName'
          property :etag, :base64 => true, as: 'etag'
          property :oauth2_client_id, as: 'oauth2ClientId'
        end
      end
      
      class CreateServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :service_account, as: 'serviceAccount', class: Google::Apis::IamV1::ServiceAccount, decorator: Google::Apis::IamV1::ServiceAccount::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListServiceAccountKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::IamV1::ServiceAccountKey, decorator: Google::Apis::IamV1::ServiceAccountKey::Representation
      
        end
      end
      
      class ServiceAccountKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :private_key_type, as: 'privateKeyType'
          property :private_key_data, :base64 => true, as: 'privateKeyData'
          property :valid_after_time, as: 'validAfterTime'
          property :valid_before_time, as: 'validBeforeTime'
        end
      end
      
      class CreateServiceAccountKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_key_type, as: 'privateKeyType'
        end
      end
      
      class SignBlobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_to_sign, :base64 => true, as: 'bytesToSign'
        end
      end
      
      class SignBlobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
          collection :bindings, as: 'bindings', class: Google::Apis::IamV1::Binding, decorator: Google::Apis::IamV1::Binding::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::IamV1::Rule, decorator: Google::Apis::IamV1::Rule::Representation
      
          property :etag, :base64 => true, as: 'etag'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role'
          collection :members, as: 'members'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :permissions, as: 'permissions'
          property :action, as: 'action'
          collection :in, as: 'in'
          collection :not_in, as: 'notIn'
          collection :conditions, as: 'conditions', class: Google::Apis::IamV1::Condition, decorator: Google::Apis::IamV1::Condition::Representation
      
          collection :log_config, as: 'logConfig', class: Google::Apis::IamV1::LogConfig, decorator: Google::Apis::IamV1::LogConfig::Representation
      
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          property :sys, as: 'sys'
          property :svc, as: 'svc'
          property :op, as: 'op'
          property :value, as: 'value'
          collection :values, as: 'values'
        end
      end
      
      class LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :counter, as: 'counter', class: Google::Apis::IamV1::CounterOptions, decorator: Google::Apis::IamV1::CounterOptions::Representation
      
          property :data_access, as: 'dataAccess', class: Google::Apis::IamV1::DataAccessOptions, decorator: Google::Apis::IamV1::DataAccessOptions::Representation
      
          property :cloud_audit, as: 'cloudAudit', class: Google::Apis::IamV1::CloudAuditOptions, decorator: Google::Apis::IamV1::CloudAuditOptions::Representation
      
        end
      end
      
      class CounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          property :field, as: 'field'
        end
      end
      
      class DataAccessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAuditOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::IamV1::Policy, decorator: Google::Apis::IamV1::Policy::Representation
      
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
