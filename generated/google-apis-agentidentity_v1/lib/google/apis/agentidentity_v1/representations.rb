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
    module AgentidentityV1
      
      class AccessSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiKeyParams
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
      
      class AuthProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthProviderTypeParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableAuthProviderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableAuthProviderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeminiEnterpriseAuthProviderParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccessSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthorizationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
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
      
      class QueryAuthProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeAuthorizationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeAuthorizationResponse
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
      
      class ThreeLeggedOAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TwoLeggedOAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteAuthProviderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_provider, as: 'authProvider'
          property :auth_provider_type, as: 'authProviderType'
          property :first_access_time, as: 'firstAccessTime'
          hash :labels, as: 'labels'
          property :last_access_time, as: 'lastAccessTime'
          property :name, as: 'name'
          property :purge_time, as: 'purgeTime'
          collection :scopes, as: 'scopes'
          property :token_url, as: 'tokenUrl'
          property :user_id, as: 'userId'
          property :workload_id, as: 'workloadId'
        end
      end
      
      class ApiKeyParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::AgentidentityV1::AuditLogConfig, decorator: Google::Apis::AgentidentityV1::AuditLogConfig::Representation
      
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
      
      class AuthProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_scopes, as: 'allowedScopes'
          property :auth_provider_type_params, as: 'authProviderTypeParams', class: Google::Apis::AgentidentityV1::AuthProviderTypeParams, decorator: Google::Apis::AgentidentityV1::AuthProviderTypeParams::Representation
      
          collection :blocked_scopes, as: 'blockedScopes'
          property :create_time, as: 'createTime'
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          collection :workload_ids, as: 'workloadIds'
        end
      end
      
      class AuthProviderTypeParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey', class: Google::Apis::AgentidentityV1::ApiKeyParams, decorator: Google::Apis::AgentidentityV1::ApiKeyParams::Representation
      
          property :ge_auth_provider, as: 'geAuthProvider', class: Google::Apis::AgentidentityV1::GeminiEnterpriseAuthProviderParams, decorator: Google::Apis::AgentidentityV1::GeminiEnterpriseAuthProviderParams::Representation
      
          property :three_legged_oauth, as: 'threeLeggedOauth', class: Google::Apis::AgentidentityV1::ThreeLeggedOAuth, decorator: Google::Apis::AgentidentityV1::ThreeLeggedOAuth::Representation
      
          property :two_legged_oauth, as: 'twoLeggedOauth', class: Google::Apis::AgentidentityV1::TwoLeggedOAuth, decorator: Google::Apis::AgentidentityV1::TwoLeggedOAuth::Representation
      
        end
      end
      
      class Authorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_user_id, as: 'clientUserId'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::AgentidentityV1::Expr, decorator: Google::Apis::AgentidentityV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class DisableAuthProviderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableAuthProviderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
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
      
      class GeminiEnterpriseAuthProviderParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListAccessSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_summaries, as: 'accessSummaries', class: Google::Apis::AgentidentityV1::AccessSummary, decorator: Google::Apis::AgentidentityV1::AccessSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListAuthProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_providers, as: 'authProviders', class: Google::Apis::AgentidentityV1::AuthProvider, decorator: Google::Apis::AgentidentityV1::AuthProvider::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListAuthorizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorizations, as: 'authorizations', class: Google::Apis::AgentidentityV1::Authorization, decorator: Google::Apis::AgentidentityV1::Authorization::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AgentidentityV1::Location, decorator: Google::Apis::AgentidentityV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::AgentidentityV1::AuditConfig, decorator: Google::Apis::AgentidentityV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::AgentidentityV1::Binding, decorator: Google::Apis::AgentidentityV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class QueryAuthProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_provider_names, as: 'authProviderNames'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class QueryWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workload_ids, as: 'workloadIds'
        end
      end
      
      class RevokeAuthorizationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_id, as: 'userId'
        end
      end
      
      class RevokeAuthorizationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::AgentidentityV1::Policy, decorator: Google::Apis::AgentidentityV1::Policy::Representation
      
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
      
      class ThreeLeggedOAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_url, as: 'authorizationUrl'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :default_continue_uri, as: 'defaultContinueUri'
          property :enable_pkce, as: 'enablePkce'
          property :redirect_url, as: 'redirectUrl'
          property :token_url, as: 'tokenUrl'
        end
      end
      
      class TwoLeggedOAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :token_url, as: 'tokenUrl'
        end
      end
      
      class UndeleteAuthProviderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
    end
  end
end
