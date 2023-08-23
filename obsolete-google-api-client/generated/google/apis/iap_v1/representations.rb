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
    module IapV1
      
      class AccessDeniedPageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Brand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CorsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsmSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcipSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IapSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityAwareProxyClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBrandsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIdentityAwareProxyClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDelegationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetIdentityAwareProxyClientSecretRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
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
      
      class AccessDeniedPageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_denied_page_uri, as: 'accessDeniedPageUri'
        end
      end
      
      class AccessSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cors_settings, as: 'corsSettings', class: Google::Apis::IapV1::CorsSettings, decorator: Google::Apis::IapV1::CorsSettings::Representation
      
          property :gcip_settings, as: 'gcipSettings', class: Google::Apis::IapV1::GcipSettings, decorator: Google::Apis::IapV1::GcipSettings::Representation
      
          property :oauth_settings, as: 'oauthSettings', class: Google::Apis::IapV1::OAuthSettings, decorator: Google::Apis::IapV1::OAuthSettings::Representation
      
          property :policy_delegation_settings, as: 'policyDelegationSettings', class: Google::Apis::IapV1::PolicyDelegationSettings, decorator: Google::Apis::IapV1::PolicyDelegationSettings::Representation
      
        end
      end
      
      class ApplicationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_denied_page_settings, as: 'accessDeniedPageSettings', class: Google::Apis::IapV1::AccessDeniedPageSettings, decorator: Google::Apis::IapV1::AccessDeniedPageSettings::Representation
      
          property :cookie_domain, as: 'cookieDomain'
          property :csm_settings, as: 'csmSettings', class: Google::Apis::IapV1::CsmSettings, decorator: Google::Apis::IapV1::CsmSettings::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::IapV1::Expr, decorator: Google::Apis::IapV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Brand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_title, as: 'applicationTitle'
          property :name, as: 'name'
          property :org_internal_only, as: 'orgInternalOnly'
          property :support_email, as: 'supportEmail'
        end
      end
      
      class CorsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_http_options, as: 'allowHttpOptions'
        end
      end
      
      class CsmSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rctoken_aud, as: 'rctokenAud'
        end
      end
      
      class Empty
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
      
      class GcipSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :login_page_uri, as: 'loginPageUri'
          collection :tenant_ids, as: 'tenantIds'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::IapV1::GetPolicyOptions, decorator: Google::Apis::IapV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class IapSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_settings, as: 'accessSettings', class: Google::Apis::IapV1::AccessSettings, decorator: Google::Apis::IapV1::AccessSettings::Representation
      
          property :application_settings, as: 'applicationSettings', class: Google::Apis::IapV1::ApplicationSettings, decorator: Google::Apis::IapV1::ApplicationSettings::Representation
      
          property :name, as: 'name'
        end
      end
      
      class IdentityAwareProxyClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :secret, as: 'secret'
        end
      end
      
      class ListBrandsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :brands, as: 'brands', class: Google::Apis::IapV1::Brand, decorator: Google::Apis::IapV1::Brand::Representation
      
        end
      end
      
      class ListIdentityAwareProxyClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_aware_proxy_clients, as: 'identityAwareProxyClients', class: Google::Apis::IapV1::IdentityAwareProxyClient, decorator: Google::Apis::IapV1::IdentityAwareProxyClient::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class OAuthSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :login_hint, as: 'loginHint'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::IapV1::Binding, decorator: Google::Apis::IapV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PolicyDelegationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam_permission, as: 'iamPermission'
          property :iam_service_name, as: 'iamServiceName'
          property :policy_name, as: 'policyName', class: Google::Apis::IapV1::PolicyName, decorator: Google::Apis::IapV1::PolicyName::Representation
      
          property :resource, as: 'resource', class: Google::Apis::IapV1::Resource, decorator: Google::Apis::IapV1::Resource::Representation
      
        end
      end
      
      class PolicyName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :region, as: 'region'
          property :type, as: 'type'
        end
      end
      
      class ResetIdentityAwareProxyClientSecretRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service, as: 'service'
          property :type, as: 'type'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::IapV1::Policy, decorator: Google::Apis::IapV1::Policy::Representation
      
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
