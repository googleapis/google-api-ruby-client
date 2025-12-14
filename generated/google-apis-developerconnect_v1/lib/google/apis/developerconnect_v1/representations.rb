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
    module DeveloperconnectV1
      
      class AccountConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHubService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHubWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketCloudConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BitbucketDataCenterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangeError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchAccessTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchAccessTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitHubInstallationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchGitRefsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchLinkableGitRepositoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReadWriteTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinishOAuthResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitHubEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitLabEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitProxyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitRepositoryLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleArtifactAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleArtifactRegistry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsightsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Installation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstallationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkableGitRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeploymentEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGitRepositoryLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInsightsConfigsResponse
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
      
      class ListUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthCredential
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
      
      class ProcessBitbucketCloudWebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessBitbucketDataCenterWebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessGitHubEnterpriseWebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessGitLabEnterpriseWebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessGitLabWebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Projects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProviderOAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartOAuthResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :oauth_start_uri, as: 'oauthStartUri'
          property :provider_oauth_config, as: 'providerOauthConfig', class: Google::Apis::DeveloperconnectV1::ProviderOAuthConfig, decorator: Google::Apis::DeveloperconnectV1::ProviderOAuthConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AppHubService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apphub_service, as: 'apphubService'
          property :criticality, as: 'criticality'
          property :environment, as: 'environment'
        end
      end
      
      class AppHubWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :criticality, as: 'criticality'
          property :environment, as: 'environment'
          property :workload, as: 'workload'
        end
      end
      
      class ArtifactConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_artifact_analysis, as: 'googleArtifactAnalysis', class: Google::Apis::DeveloperconnectV1::GoogleArtifactAnalysis, decorator: Google::Apis::DeveloperconnectV1::GoogleArtifactAnalysis::Representation
      
          property :google_artifact_registry, as: 'googleArtifactRegistry', class: Google::Apis::DeveloperconnectV1::GoogleArtifactRegistry, decorator: Google::Apis::DeveloperconnectV1::GoogleArtifactRegistry::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class ArtifactDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_alias, as: 'artifactAlias'
          property :artifact_reference, as: 'artifactReference'
          property :container_status_summary, as: 'containerStatusSummary'
          property :deploy_time, as: 'deployTime'
          property :id, as: 'id'
          collection :source_commit_uris, as: 'sourceCommitUris'
          property :undeploy_time, as: 'undeployTime'
        end
      end
      
      class BitbucketCloudConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :read_authorizer_credential, as: 'readAuthorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
          property :workspace, as: 'workspace'
        end
      end
      
      class BitbucketDataCenterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :host_uri, as: 'hostUri'
          property :read_authorizer_credential, as: 'readAuthorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :server_version, as: 'serverVersion'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig, decorator: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig::Representation
      
          property :ssl_ca_certificate, as: 'sslCaCertificate'
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :bitbucket_cloud_config, as: 'bitbucketCloudConfig', class: Google::Apis::DeveloperconnectV1::BitbucketCloudConfig, decorator: Google::Apis::DeveloperconnectV1::BitbucketCloudConfig::Representation
      
          property :bitbucket_data_center_config, as: 'bitbucketDataCenterConfig', class: Google::Apis::DeveloperconnectV1::BitbucketDataCenterConfig, decorator: Google::Apis::DeveloperconnectV1::BitbucketDataCenterConfig::Representation
      
          property :create_time, as: 'createTime'
          property :crypto_key_config, as: 'cryptoKeyConfig', class: Google::Apis::DeveloperconnectV1::CryptoKeyConfig, decorator: Google::Apis::DeveloperconnectV1::CryptoKeyConfig::Representation
      
          property :delete_time, as: 'deleteTime'
          property :disabled, as: 'disabled'
          property :etag, as: 'etag'
          property :git_proxy_config, as: 'gitProxyConfig', class: Google::Apis::DeveloperconnectV1::GitProxyConfig, decorator: Google::Apis::DeveloperconnectV1::GitProxyConfig::Representation
      
          property :github_config, as: 'githubConfig', class: Google::Apis::DeveloperconnectV1::GitHubConfig, decorator: Google::Apis::DeveloperconnectV1::GitHubConfig::Representation
      
          property :github_enterprise_config, as: 'githubEnterpriseConfig', class: Google::Apis::DeveloperconnectV1::GitHubEnterpriseConfig, decorator: Google::Apis::DeveloperconnectV1::GitHubEnterpriseConfig::Representation
      
          property :gitlab_config, as: 'gitlabConfig', class: Google::Apis::DeveloperconnectV1::GitLabConfig, decorator: Google::Apis::DeveloperconnectV1::GitLabConfig::Representation
      
          property :gitlab_enterprise_config, as: 'gitlabEnterpriseConfig', class: Google::Apis::DeveloperconnectV1::GitLabEnterpriseConfig, decorator: Google::Apis::DeveloperconnectV1::GitLabEnterpriseConfig::Representation
      
          property :installation_state, as: 'installationState', class: Google::Apis::DeveloperconnectV1::InstallationState, decorator: Google::Apis::DeveloperconnectV1::InstallationState::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CryptoKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_reference, as: 'keyReference'
        end
      end
      
      class DeploymentEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifact_deployments, as: 'artifactDeployments', class: Google::Apis::DeveloperconnectV1::ArtifactDeployment, decorator: Google::Apis::DeveloperconnectV1::ArtifactDeployment::Representation
      
          property :create_time, as: 'createTime'
          property :deploy_time, as: 'deployTime'
          property :name, as: 'name'
          property :runtime_config, as: 'runtimeConfig', class: Google::Apis::DeveloperconnectV1::RuntimeConfig, decorator: Google::Apis::DeveloperconnectV1::RuntimeConfig::Representation
      
          property :runtime_deployment_uri, as: 'runtimeDeploymentUri'
          property :state, as: 'state'
          property :undeploy_time, as: 'undeployTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExchangeError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
        end
      end
      
      class FetchAccessTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchAccessTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange_error, as: 'exchangeError', class: Google::Apis::DeveloperconnectV1::ExchangeError, decorator: Google::Apis::DeveloperconnectV1::ExchangeError::Representation
      
          property :expiration_time, as: 'expirationTime'
          collection :scopes, as: 'scopes'
          property :token, as: 'token'
        end
      end
      
      class FetchGitHubInstallationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :installations, as: 'installations', class: Google::Apis::DeveloperconnectV1::Installation, decorator: Google::Apis::DeveloperconnectV1::Installation::Representation
      
        end
      end
      
      class FetchGitRefsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ref_names, as: 'refNames'
        end
      end
      
      class FetchLinkableGitRepositoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :linkable_git_repositories, as: 'linkableGitRepositories', class: Google::Apis::DeveloperconnectV1::LinkableGitRepository, decorator: Google::Apis::DeveloperconnectV1::LinkableGitRepository::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FetchReadTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :git_username, as: 'gitUsername'
          property :token, as: 'token'
        end
      end
      
      class FetchReadWriteTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReadWriteTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :git_username, as: 'gitUsername'
          property :token, as: 'token'
        end
      end
      
      class FinishOAuthResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exchange_error, as: 'exchangeError', class: Google::Apis::DeveloperconnectV1::ExchangeError, decorator: Google::Apis::DeveloperconnectV1::ExchangeError::Representation
      
        end
      end
      
      class GkeWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :deployment, as: 'deployment'
        end
      end
      
      class GitHubConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_installation_id, :numeric_string => true, as: 'appInstallationId'
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::OAuthCredential, decorator: Google::Apis::DeveloperconnectV1::OAuthCredential::Representation
      
          property :github_app, as: 'githubApp'
          property :installation_uri, as: 'installationUri'
        end
      end
      
      class GitHubEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, :numeric_string => true, as: 'appId'
          property :app_installation_id, :numeric_string => true, as: 'appInstallationId'
          property :app_slug, as: 'appSlug'
          property :host_uri, as: 'hostUri'
          property :installation_uri, as: 'installationUri'
          property :private_key_secret_version, as: 'privateKeySecretVersion'
          property :server_version, as: 'serverVersion'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig, decorator: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig::Representation
      
          property :ssl_ca_certificate, as: 'sslCaCertificate'
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class GitLabConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :read_authorizer_credential, as: 'readAuthorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class GitLabEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorizer_credential, as: 'authorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :host_uri, as: 'hostUri'
          property :read_authorizer_credential, as: 'readAuthorizerCredential', class: Google::Apis::DeveloperconnectV1::UserCredential, decorator: Google::Apis::DeveloperconnectV1::UserCredential::Representation
      
          property :server_version, as: 'serverVersion'
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig, decorator: Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig::Representation
      
          property :ssl_ca_certificate, as: 'sslCaCertificate'
          property :webhook_secret_secret_version, as: 'webhookSecretSecretVersion'
        end
      end
      
      class GitProxyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GitRepositoryLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :clone_uri, as: 'cloneUri'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          property :git_proxy_uri, as: 'gitProxyUri'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :webhook_id, as: 'webhookId'
        end
      end
      
      class GoogleArtifactAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleArtifactRegistry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_registry_package, as: 'artifactRegistryPackage'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_uri, as: 'serviceUri'
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class InsightsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :app_hub_application, as: 'appHubApplication'
          collection :artifact_configs, as: 'artifactConfigs', class: Google::Apis::DeveloperconnectV1::ArtifactConfig, decorator: Google::Apis::DeveloperconnectV1::ArtifactConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :errors, as: 'errors', class: Google::Apis::DeveloperconnectV1::Status, decorator: Google::Apis::DeveloperconnectV1::Status::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :projects, as: 'projects', class: Google::Apis::DeveloperconnectV1::Projects, decorator: Google::Apis::DeveloperconnectV1::Projects::Representation
      
          property :reconciling, as: 'reconciling'
          collection :runtime_configs, as: 'runtimeConfigs', class: Google::Apis::DeveloperconnectV1::RuntimeConfig, decorator: Google::Apis::DeveloperconnectV1::RuntimeConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Installation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class InstallationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_uri, as: 'actionUri'
          property :message, as: 'message'
          property :stage, as: 'stage'
        end
      end
      
      class LinkableGitRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clone_uri, as: 'cloneUri'
        end
      end
      
      class ListAccountConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_connectors, as: 'accountConnectors', class: Google::Apis::DeveloperconnectV1::AccountConnector, decorator: Google::Apis::DeveloperconnectV1::AccountConnector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::DeveloperconnectV1::Connection, decorator: Google::Apis::DeveloperconnectV1::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDeploymentEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployment_events, as: 'deploymentEvents', class: Google::Apis::DeveloperconnectV1::DeploymentEvent, decorator: Google::Apis::DeveloperconnectV1::DeploymentEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGitRepositoryLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :git_repository_links, as: 'gitRepositoryLinks', class: Google::Apis::DeveloperconnectV1::GitRepositoryLink, decorator: Google::Apis::DeveloperconnectV1::GitRepositoryLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInsightsConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insights_configs, as: 'insightsConfigs', class: Google::Apis::DeveloperconnectV1::InsightsConfig, decorator: Google::Apis::DeveloperconnectV1::InsightsConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DeveloperconnectV1::Location, decorator: Google::Apis::DeveloperconnectV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeveloperconnectV1::Operation, decorator: Google::Apis::DeveloperconnectV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :users, as: 'users', class: Google::Apis::DeveloperconnectV1::User, decorator: Google::Apis::DeveloperconnectV1::User::Representation
      
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
      
      class OAuthCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth_token_secret_version, as: 'oauthTokenSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DeveloperconnectV1::Status, decorator: Google::Apis::DeveloperconnectV1::Status::Representation
      
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
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class ProcessBitbucketCloudWebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::DeveloperconnectV1::HttpBody, decorator: Google::Apis::DeveloperconnectV1::HttpBody::Representation
      
        end
      end
      
      class ProcessBitbucketDataCenterWebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::DeveloperconnectV1::HttpBody, decorator: Google::Apis::DeveloperconnectV1::HttpBody::Representation
      
        end
      end
      
      class ProcessGitHubEnterpriseWebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::DeveloperconnectV1::HttpBody, decorator: Google::Apis::DeveloperconnectV1::HttpBody::Representation
      
        end
      end
      
      class ProcessGitLabEnterpriseWebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::DeveloperconnectV1::HttpBody, decorator: Google::Apis::DeveloperconnectV1::HttpBody::Representation
      
        end
      end
      
      class ProcessGitLabWebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::DeveloperconnectV1::HttpBody, decorator: Google::Apis::DeveloperconnectV1::HttpBody::Representation
      
        end
      end
      
      class Projects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :project_ids, as: 'projectIds'
        end
      end
      
      class ProviderOAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :scopes, as: 'scopes'
          property :system_provider_id, as: 'systemProviderId'
        end
      end
      
      class RuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_hub_service, as: 'appHubService', class: Google::Apis::DeveloperconnectV1::AppHubService, decorator: Google::Apis::DeveloperconnectV1::AppHubService::Representation
      
          property :app_hub_workload, as: 'appHubWorkload', class: Google::Apis::DeveloperconnectV1::AppHubWorkload, decorator: Google::Apis::DeveloperconnectV1::AppHubWorkload::Representation
      
          property :gke_workload, as: 'gkeWorkload', class: Google::Apis::DeveloperconnectV1::GkeWorkload, decorator: Google::Apis::DeveloperconnectV1::GkeWorkload::Representation
      
          property :google_cloud_run, as: 'googleCloudRun', class: Google::Apis::DeveloperconnectV1::GoogleCloudRun, decorator: Google::Apis::DeveloperconnectV1::GoogleCloudRun::Representation
      
          property :state, as: 'state'
          property :uri, as: 'uri'
        end
      end
      
      class ServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class StartOAuthResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_uri, as: 'authUri'
          property :client_id, as: 'clientId'
          property :code_challenge, as: 'codeChallenge'
          property :code_challenge_method, as: 'codeChallengeMethod'
          collection :scopes, as: 'scopes'
          property :system_provider_id, as: 'systemProviderId'
          property :ticket, as: 'ticket'
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
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :last_token_request_time, as: 'lastTokenRequestTime'
          property :name, as: 'name'
        end
      end
      
      class UserCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_token_secret_version, as: 'userTokenSecretVersion'
          property :username, as: 'username'
        end
      end
    end
  end
end
