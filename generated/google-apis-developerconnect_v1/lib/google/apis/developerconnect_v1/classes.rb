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
      
      # AccountConnector encapsulates what a platform administrator needs to configure
      # for users to connect to the service providers, which includes, among other
      # fields, the OAuth client ID, client secret, and authorization and token
      # endpoints.
      class AccountConnector
        include Google::Apis::Core::Hashable
      
        # Optional. Allows users to store small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The timestamp when the accountConnector was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the accountConnector, in the format `projects/
        # `project`/locations/`location`/accountConnectors/`account_connector_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Start OAuth flow by clicking on this URL.
        # Corresponds to the JSON property `oauthStartUri`
        # @return [String]
        attr_accessor :oauth_start_uri
      
        # ProviderOAuthConfig is the OAuth config for a provider.
        # Corresponds to the JSON property `providerOauthConfig`
        # @return [Google::Apis::DeveloperconnectV1::ProviderOAuthConfig]
        attr_accessor :provider_oauth_config
      
        # Output only. The timestamp when the accountConnector was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @oauth_start_uri = args[:oauth_start_uri] if args.key?(:oauth_start_uri)
          @provider_oauth_config = args[:provider_oauth_config] if args.key?(:provider_oauth_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # AppHubService represents the App Hub Service.
      class AppHubService
        include Google::Apis::Core::Hashable
      
        # Required. Output only. Immutable. The name of the App Hub Service. Format: `
        # projects/`project`/locations/`location`/applications/`application`/services/`
        # service``.
        # Corresponds to the JSON property `apphubService`
        # @return [String]
        attr_accessor :apphub_service
      
        # Output only. The criticality of the App Hub Service.
        # Corresponds to the JSON property `criticality`
        # @return [String]
        attr_accessor :criticality
      
        # Output only. The environment of the App Hub Service.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apphub_service = args[:apphub_service] if args.key?(:apphub_service)
          @criticality = args[:criticality] if args.key?(:criticality)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # AppHubWorkload represents the App Hub Workload.
      class AppHubWorkload
        include Google::Apis::Core::Hashable
      
        # Output only. The criticality of the App Hub Workload.
        # Corresponds to the JSON property `criticality`
        # @return [String]
        attr_accessor :criticality
      
        # Output only. The environment of the App Hub Workload.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Required. Output only. Immutable. The name of the App Hub Workload. Format: `
        # projects/`project`/locations/`location`/applications/`application`/workloads/`
        # workload``.
        # Corresponds to the JSON property `workload`
        # @return [String]
        attr_accessor :workload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @criticality = args[:criticality] if args.key?(:criticality)
          @environment = args[:environment] if args.key?(:environment)
          @workload = args[:workload] if args.key?(:workload)
        end
      end
      
      # The artifact config of the artifact that is deployed.
      class ArtifactConfig
        include Google::Apis::Core::Hashable
      
        # Google Artifact Analysis configurations.
        # Corresponds to the JSON property `googleArtifactAnalysis`
        # @return [Google::Apis::DeveloperconnectV1::GoogleArtifactAnalysis]
        attr_accessor :google_artifact_analysis
      
        # Google Artifact Registry configurations.
        # Corresponds to the JSON property `googleArtifactRegistry`
        # @return [Google::Apis::DeveloperconnectV1::GoogleArtifactRegistry]
        attr_accessor :google_artifact_registry
      
        # Required. Immutable. The URI of the artifact that is deployed. e.g. `us-docker.
        # pkg.dev/my-project/my-repo/image`. The URI does not include the tag / digest
        # because it captures a lineage of artifacts.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_artifact_analysis = args[:google_artifact_analysis] if args.key?(:google_artifact_analysis)
          @google_artifact_registry = args[:google_artifact_registry] if args.key?(:google_artifact_registry)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The ArtifactDeployment resource represents the deployment of the artifact
      # within the InsightsConfig resource.
      class ArtifactDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The artifact alias in the deployment spec, with Tag/SHA. e.g. us-
        # docker.pkg.dev/my-project/my-repo/image:1.0.0
        # Corresponds to the JSON property `artifactAlias`
        # @return [String]
        attr_accessor :artifact_alias
      
        # Output only. The artifact that is deployed.
        # Corresponds to the JSON property `artifactReference`
        # @return [String]
        attr_accessor :artifact_reference
      
        # Output only. The summary of container status of the artifact deployment.
        # Format as `ContainerStatusState-Reason : restartCount` e.g. "Waiting-
        # ImagePullBackOff : 3"
        # Corresponds to the JSON property `containerStatusSummary`
        # @return [String]
        attr_accessor :container_status_summary
      
        # Output only. The time at which the deployment was deployed.
        # Corresponds to the JSON property `deployTime`
        # @return [String]
        attr_accessor :deploy_time
      
        # Output only. Unique identifier of `ArtifactDeployment`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The source commits at which this artifact was built. Extracted
        # from provenance.
        # Corresponds to the JSON property `sourceCommitUris`
        # @return [Array<String>]
        attr_accessor :source_commit_uris
      
        # Output only. The time at which the deployment was undeployed, all artifacts
        # are considered undeployed once this time is set.
        # Corresponds to the JSON property `undeployTime`
        # @return [String]
        attr_accessor :undeploy_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_alias = args[:artifact_alias] if args.key?(:artifact_alias)
          @artifact_reference = args[:artifact_reference] if args.key?(:artifact_reference)
          @container_status_summary = args[:container_status_summary] if args.key?(:container_status_summary)
          @deploy_time = args[:deploy_time] if args.key?(:deploy_time)
          @id = args[:id] if args.key?(:id)
          @source_commit_uris = args[:source_commit_uris] if args.key?(:source_commit_uris)
          @undeploy_time = args[:undeploy_time] if args.key?(:undeploy_time)
        end
      end
      
      # Configuration for connections to an instance of Bitbucket Cloud.
      class BitbucketCloudConfig
        include Google::Apis::Core::Hashable
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :authorizer_credential
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `readAuthorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :read_authorizer_credential
      
        # Required. Immutable. SecretManager resource containing the webhook secret used
        # to verify webhook events, formatted as `projects/*/secrets/*/versions/*` or `
        # projects/*/locations/*/secrets/*/versions/*` (if regional secrets are
        # supported in that location). This is used to validate and create webhooks.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        # Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud
        # Platform.
        # Corresponds to the JSON property `workspace`
        # @return [String]
        attr_accessor :workspace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @read_authorizer_credential = args[:read_authorizer_credential] if args.key?(:read_authorizer_credential)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
          @workspace = args[:workspace] if args.key?(:workspace)
        end
      end
      
      # Configuration for connections to an instance of Bitbucket Data Center.
      class BitbucketDataCenterConfig
        include Google::Apis::Core::Hashable
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :authorizer_credential
      
        # Required. The URI of the Bitbucket Data Center host this connection is for.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `readAuthorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :read_authorizer_credential
      
        # Output only. Version of the Bitbucket Data Center server running on the `
        # host_uri`.
        # Corresponds to the JSON property `serverVersion`
        # @return [String]
        attr_accessor :server_version
      
        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # Optional. SSL certificate authority to trust when making requests to Bitbucket
        # Data Center.
        # Corresponds to the JSON property `sslCaCertificate`
        # @return [String]
        attr_accessor :ssl_ca_certificate
      
        # Required. Immutable. SecretManager resource containing the webhook secret used
        # to verify webhook events, formatted as `projects/*/secrets/*/versions/*` or `
        # projects/*/locations/*/secrets/*/versions/*` (if regional secrets are
        # supported in that location). This is used to validate webhooks.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @read_authorizer_credential = args[:read_authorizer_credential] if args.key?(:read_authorizer_credential)
          @server_version = args[:server_version] if args.key?(:server_version)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca_certificate = args[:ssl_ca_certificate] if args.key?(:ssl_ca_certificate)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message describing Connection object
      class Connection
        include Google::Apis::Core::Hashable
      
        # Optional. Allows clients to store small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Configuration for connections to an instance of Bitbucket Cloud.
        # Corresponds to the JSON property `bitbucketCloudConfig`
        # @return [Google::Apis::DeveloperconnectV1::BitbucketCloudConfig]
        attr_accessor :bitbucket_cloud_config
      
        # Configuration for connections to an instance of Bitbucket Data Center.
        # Corresponds to the JSON property `bitbucketDataCenterConfig`
        # @return [Google::Apis::DeveloperconnectV1::BitbucketDataCenterConfig]
        attr_accessor :bitbucket_data_center_config
      
        # Output only. [Output only] Create timestamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The crypto key configuration. This field is used by the Customer-managed
        # encryption keys (CMEK) feature.
        # Corresponds to the JSON property `cryptoKeyConfig`
        # @return [Google::Apis::DeveloperconnectV1::CryptoKeyConfig]
        attr_accessor :crypto_key_config
      
        # Output only. [Output only] Delete timestamp
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. If disabled is set to true, functionality is disabled for this
        # connection. Repository based API methods and webhooks processing for
        # repositories in this connection will be disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The git proxy configuration.
        # Corresponds to the JSON property `gitProxyConfig`
        # @return [Google::Apis::DeveloperconnectV1::GitProxyConfig]
        attr_accessor :git_proxy_config
      
        # Configuration for connections to github.com.
        # Corresponds to the JSON property `githubConfig`
        # @return [Google::Apis::DeveloperconnectV1::GitHubConfig]
        attr_accessor :github_config
      
        # Configuration for connections to an instance of GitHub Enterprise.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [Google::Apis::DeveloperconnectV1::GitHubEnterpriseConfig]
        attr_accessor :github_enterprise_config
      
        # Configuration for connections to gitlab.com.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [Google::Apis::DeveloperconnectV1::GitLabConfig]
        attr_accessor :gitlab_config
      
        # Configuration for connections to an instance of GitLab Enterprise.
        # Corresponds to the JSON property `gitlabEnterpriseConfig`
        # @return [Google::Apis::DeveloperconnectV1::GitLabEnterpriseConfig]
        attr_accessor :gitlab_enterprise_config
      
        # Describes stage and necessary actions to be taken by the user to complete the
        # installation. Used for GitHub and GitHub Enterprise based connections.
        # Corresponds to the JSON property `installationState`
        # @return [Google::Apis::DeveloperconnectV1::InstallationState]
        attr_accessor :installation_state
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the connection, in the format `projects/`
        # project`/locations/`location`/connections/`connection_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Set to true when the connection is being set up or updated in the
        # background.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. A system-assigned unique identifier for the Connection.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. [Output only] Update timestamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @bitbucket_cloud_config = args[:bitbucket_cloud_config] if args.key?(:bitbucket_cloud_config)
          @bitbucket_data_center_config = args[:bitbucket_data_center_config] if args.key?(:bitbucket_data_center_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_config = args[:crypto_key_config] if args.key?(:crypto_key_config)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @etag = args[:etag] if args.key?(:etag)
          @git_proxy_config = args[:git_proxy_config] if args.key?(:git_proxy_config)
          @github_config = args[:github_config] if args.key?(:github_config)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
          @gitlab_enterprise_config = args[:gitlab_enterprise_config] if args.key?(:gitlab_enterprise_config)
          @installation_state = args[:installation_state] if args.key?(:installation_state)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The crypto key configuration. This field is used by the Customer-managed
      # encryption keys (CMEK) feature.
      class CryptoKeyConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the key which is used to encrypt/decrypt customer data.
        # For key in Cloud KMS, the key should be in the format of `projects/*/locations/
        # */keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `keyReference`
        # @return [String]
        attr_accessor :key_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_reference = args[:key_reference] if args.key?(:key_reference)
        end
      end
      
      # The DeploymentEvent resource represents the deployment of the artifact within
      # the InsightsConfig resource.
      class DeploymentEvent
        include Google::Apis::Core::Hashable
      
        # Output only. The artifact deployments of the DeploymentEvent. Each artifact
        # deployment contains the artifact uri and the runtime configuration uri. For
        # GKE, this would be all the containers images that are deployed in the pod.
        # Corresponds to the JSON property `artifactDeployments`
        # @return [Array<Google::Apis::DeveloperconnectV1::ArtifactDeployment>]
        attr_accessor :artifact_deployments
      
        # Output only. The create time of the DeploymentEvent.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which the DeploymentEvent was deployed. This would be
        # the min of all ArtifactDeployment deploy_times.
        # Corresponds to the JSON property `deployTime`
        # @return [String]
        attr_accessor :deploy_time
      
        # Identifier. The name of the DeploymentEvent. This name is provided by DCI.
        # Format: projects/`project`/locations/`location`/insightsConfigs/`
        # insights_config`/deploymentEvents/`uuid`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # RuntimeConfig represents the runtimes where the application is deployed.
        # Corresponds to the JSON property `runtimeConfig`
        # @return [Google::Apis::DeveloperconnectV1::RuntimeConfig]
        attr_accessor :runtime_config
      
        # Output only. The runtime assigned URI of the DeploymentEvent. For GKE, this is
        # the fully qualified replica set uri. e.g. container.googleapis.com/projects/`
        # project`/locations/`location`/clusters/`cluster`/k8s/namespaces/`namespace`/
        # apps/replicasets/`replica-set-id` For Cloud Run, this is the revision name.
        # Corresponds to the JSON property `runtimeDeploymentUri`
        # @return [String]
        attr_accessor :runtime_deployment_uri
      
        # Output only. The state of the DeploymentEvent.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the DeploymentEvent was undeployed, all
        # artifacts are considered undeployed once this time is set. This would be the
        # max of all ArtifactDeployment undeploy_times. If any ArtifactDeployment is
        # still active (i.e. does not have an undeploy_time), this field will be empty.
        # Corresponds to the JSON property `undeployTime`
        # @return [String]
        attr_accessor :undeploy_time
      
        # Output only. The update time of the DeploymentEvent.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_deployments = args[:artifact_deployments] if args.key?(:artifact_deployments)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deploy_time = args[:deploy_time] if args.key?(:deploy_time)
          @name = args[:name] if args.key?(:name)
          @runtime_config = args[:runtime_config] if args.key?(:runtime_config)
          @runtime_deployment_uri = args[:runtime_deployment_uri] if args.key?(:runtime_deployment_uri)
          @state = args[:state] if args.key?(:state)
          @undeploy_time = args[:undeploy_time] if args.key?(:undeploy_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for representing an error from exchanging OAuth tokens.
      class ExchangeError
        include Google::Apis::Core::Hashable
      
        # https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 - error
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 - error_description
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Message for fetching an OAuth access token.
      class FetchAccessTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for responding to getting an OAuth access token.
      class FetchAccessTokenResponse
        include Google::Apis::Core::Hashable
      
        # Message for representing an error from exchanging OAuth tokens.
        # Corresponds to the JSON property `exchangeError`
        # @return [Google::Apis::DeveloperconnectV1::ExchangeError]
        attr_accessor :exchange_error
      
        # Expiration timestamp. Can be empty if unknown or non-expiring.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The scopes of the access token.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # The token content.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange_error = args[:exchange_error] if args.key?(:exchange_error)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @scopes = args[:scopes] if args.key?(:scopes)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Response of fetching github installations.
      class FetchGitHubInstallationsResponse
        include Google::Apis::Core::Hashable
      
        # List of installations available to the OAuth user (for github.com) or all the
        # installations (for GitHub enterprise).
        # Corresponds to the JSON property `installations`
        # @return [Array<Google::Apis::DeveloperconnectV1::Installation>]
        attr_accessor :installations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @installations = args[:installations] if args.key?(:installations)
        end
      end
      
      # Response for fetching git refs.
      class FetchGitRefsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Name of the refs fetched.
        # Corresponds to the JSON property `refNames`
        # @return [Array<String>]
        attr_accessor :ref_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @ref_names = args[:ref_names] if args.key?(:ref_names)
        end
      end
      
      # Response message for FetchLinkableGitRepositories.
      class FetchLinkableGitRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # The git repositories that can be linked to the connection.
        # Corresponds to the JSON property `linkableGitRepositories`
        # @return [Array<Google::Apis::DeveloperconnectV1::LinkableGitRepository>]
        attr_accessor :linkable_git_repositories
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linkable_git_repositories = args[:linkable_git_repositories] if args.key?(:linkable_git_repositories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for fetching SCM read token.
      class FetchReadTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for responding to get read token.
      class FetchReadTokenResponse
        include Google::Apis::Core::Hashable
      
        # Expiration timestamp. Can be empty if unknown or non-expiring.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The git_username to specify when making a git clone with the token. For
        # example, for GitHub GitRepositoryLinks, this would be "x-access-token"
        # Corresponds to the JSON property `gitUsername`
        # @return [String]
        attr_accessor :git_username
      
        # The token content.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @git_username = args[:git_username] if args.key?(:git_username)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Message for fetching SCM read/write token.
      class FetchReadWriteTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for responding to get read/write token.
      class FetchReadWriteTokenResponse
        include Google::Apis::Core::Hashable
      
        # Expiration timestamp. Can be empty if unknown or non-expiring.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The git_username to specify when making a git clone with the token. For
        # example, for GitHub GitRepositoryLinks, this would be "x-access-token"
        # Corresponds to the JSON property `gitUsername`
        # @return [String]
        attr_accessor :git_username
      
        # The token content.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @git_username = args[:git_username] if args.key?(:git_username)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Message for responding to finishing an OAuth flow.
      class FinishOAuthResponse
        include Google::Apis::Core::Hashable
      
        # Message for representing an error from exchanging OAuth tokens.
        # Corresponds to the JSON property `exchangeError`
        # @return [Google::Apis::DeveloperconnectV1::ExchangeError]
        attr_accessor :exchange_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exchange_error = args[:exchange_error] if args.key?(:exchange_error)
        end
      end
      
      # GKEWorkload represents the Google Kubernetes Engine runtime.
      class GkeWorkload
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The name of the GKE cluster. Format: `projects/`project`/
        # locations/`location`/clusters/`cluster``.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The name of the GKE deployment. Format: `projects/`project`/
        # locations/`location`/clusters/`cluster`/namespaces/`namespace`/deployments/`
        # deployment``.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @deployment = args[:deployment] if args.key?(:deployment)
        end
      end
      
      # Configuration for connections to github.com.
      class GitHubConfig
        include Google::Apis::Core::Hashable
      
        # Optional. GitHub App installation id.
        # Corresponds to the JSON property `appInstallationId`
        # @return [Fixnum]
        attr_accessor :app_installation_id
      
        # Represents an OAuth token of the account that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::OAuthCredential]
        attr_accessor :authorizer_credential
      
        # Required. Immutable. The GitHub Application that was installed to the GitHub
        # user or organization.
        # Corresponds to the JSON property `githubApp`
        # @return [String]
        attr_accessor :github_app
      
        # Output only. The URI to navigate to in order to manage the installation
        # associated with this GitHubConfig.
        # Corresponds to the JSON property `installationUri`
        # @return [String]
        attr_accessor :installation_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_installation_id = args[:app_installation_id] if args.key?(:app_installation_id)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @github_app = args[:github_app] if args.key?(:github_app)
          @installation_uri = args[:installation_uri] if args.key?(:installation_uri)
        end
      end
      
      # Configuration for connections to an instance of GitHub Enterprise.
      class GitHubEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Optional. ID of the GitHub App created from the manifest.
        # Corresponds to the JSON property `appId`
        # @return [Fixnum]
        attr_accessor :app_id
      
        # Optional. ID of the installation of the GitHub App.
        # Corresponds to the JSON property `appInstallationId`
        # @return [Fixnum]
        attr_accessor :app_installation_id
      
        # Output only. The URL-friendly name of the GitHub App.
        # Corresponds to the JSON property `appSlug`
        # @return [String]
        attr_accessor :app_slug
      
        # Required. The URI of the GitHub Enterprise host this connection is for.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # Output only. The URI to navigate to in order to manage the installation
        # associated with this GitHubEnterpriseConfig.
        # Corresponds to the JSON property `installationUri`
        # @return [String]
        attr_accessor :installation_uri
      
        # Optional. SecretManager resource containing the private key of the GitHub App,
        # formatted as `projects/*/secrets/*/versions/*` or `projects/*/locations/*/
        # secrets/*/versions/*` (if regional secrets are supported in that location).
        # Corresponds to the JSON property `privateKeySecretVersion`
        # @return [String]
        attr_accessor :private_key_secret_version
      
        # Output only. GitHub Enterprise version installed at the host_uri.
        # Corresponds to the JSON property `serverVersion`
        # @return [String]
        attr_accessor :server_version
      
        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # Optional. SSL certificate to use for requests to GitHub Enterprise.
        # Corresponds to the JSON property `sslCaCertificate`
        # @return [String]
        attr_accessor :ssl_ca_certificate
      
        # Optional. SecretManager resource containing the webhook secret of the GitHub
        # App, formatted as `projects/*/secrets/*/versions/*` or `projects/*/locations/*/
        # secrets/*/versions/*` (if regional secrets are supported in that location).
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_installation_id = args[:app_installation_id] if args.key?(:app_installation_id)
          @app_slug = args[:app_slug] if args.key?(:app_slug)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @installation_uri = args[:installation_uri] if args.key?(:installation_uri)
          @private_key_secret_version = args[:private_key_secret_version] if args.key?(:private_key_secret_version)
          @server_version = args[:server_version] if args.key?(:server_version)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca_certificate = args[:ssl_ca_certificate] if args.key?(:ssl_ca_certificate)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # Configuration for connections to gitlab.com.
      class GitLabConfig
        include Google::Apis::Core::Hashable
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :authorizer_credential
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `readAuthorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :read_authorizer_credential
      
        # Required. Immutable. SecretManager resource containing the webhook secret of a
        # GitLab project, formatted as `projects/*/secrets/*/versions/*` or `projects/*/
        # locations/*/secrets/*/versions/*` (if regional secrets are supported in that
        # location). This is used to validate webhooks.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @read_authorizer_credential = args[:read_authorizer_credential] if args.key?(:read_authorizer_credential)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # Configuration for connections to an instance of GitLab Enterprise.
      class GitLabEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `authorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :authorizer_credential
      
        # Required. The URI of the GitLab Enterprise host this connection is for.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # Represents a personal access token that authorized the Connection, and
        # associated metadata.
        # Corresponds to the JSON property `readAuthorizerCredential`
        # @return [Google::Apis::DeveloperconnectV1::UserCredential]
        attr_accessor :read_authorizer_credential
      
        # Output only. Version of the GitLab Enterprise server running on the `host_uri`.
        # Corresponds to the JSON property `serverVersion`
        # @return [String]
        attr_accessor :server_version
      
        # ServiceDirectoryConfig represents Service Directory configuration for a
        # connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DeveloperconnectV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # Optional. SSL Certificate Authority certificate to use for requests to GitLab
        # Enterprise instance.
        # Corresponds to the JSON property `sslCaCertificate`
        # @return [String]
        attr_accessor :ssl_ca_certificate
      
        # Required. Immutable. SecretManager resource containing the webhook secret of a
        # GitLab project, formatted as `projects/*/secrets/*/versions/*` or `projects/*/
        # locations/*/secrets/*/versions/*` (if regional secrets are supported in that
        # location). This is used to validate webhooks.
        # Corresponds to the JSON property `webhookSecretSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorizer_credential = args[:authorizer_credential] if args.key?(:authorizer_credential)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @read_authorizer_credential = args[:read_authorizer_credential] if args.key?(:read_authorizer_credential)
          @server_version = args[:server_version] if args.key?(:server_version)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca_certificate = args[:ssl_ca_certificate] if args.key?(:ssl_ca_certificate)
          @webhook_secret_secret_version = args[:webhook_secret_secret_version] if args.key?(:webhook_secret_secret_version)
        end
      end
      
      # The git proxy configuration.
      class GitProxyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Setting this to true allows the git proxy to be used for performing
        # git operations on the repositories linked in the connection.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Message describing the GitRepositoryLink object
      class GitRepositoryLink
        include Google::Apis::Core::Hashable
      
        # Optional. Allows clients to store small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Required. Git Clone URI.
        # Corresponds to the JSON property `cloneUri`
        # @return [String]
        attr_accessor :clone_uri
      
        # Output only. [Output only] Create timestamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. [Output only] Delete timestamp
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. URI to access the linked repository through the Git Proxy. This
        # field is only populated if the git proxy is enabled for the connection.
        # Corresponds to the JSON property `gitProxyUri`
        # @return [String]
        attr_accessor :git_proxy_uri
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Resource name of the repository, in the format `projects/*/
        # locations/*/connections/*/gitRepositoryLinks/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Set to true when the connection is being set up or updated in the
        # background.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. A system-assigned unique identifier for the GitRepositoryLink.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. [Output only] Update timestamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. External ID of the webhook created for the repository.
        # Corresponds to the JSON property `webhookId`
        # @return [String]
        attr_accessor :webhook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @clone_uri = args[:clone_uri] if args.key?(:clone_uri)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @etag = args[:etag] if args.key?(:etag)
          @git_proxy_uri = args[:git_proxy_uri] if args.key?(:git_proxy_uri)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @webhook_id = args[:webhook_id] if args.key?(:webhook_id)
        end
      end
      
      # Google Artifact Analysis configurations.
      class GoogleArtifactAnalysis
        include Google::Apis::Core::Hashable
      
        # Required. The project id of the project where the provenance is stored.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Google Artifact Registry configurations.
      class GoogleArtifactRegistry
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The name of the artifact registry package.
        # Corresponds to the JSON property `artifactRegistryPackage`
        # @return [String]
        attr_accessor :artifact_registry_package
      
        # Required. The host project of Artifact Registry.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_registry_package = args[:artifact_registry_package] if args.key?(:artifact_registry_package)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # GoogleCloudRun represents the Cloud Run runtime.
      class GoogleCloudRun
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The name of the Cloud Run service. Format: `projects/`
        # project`/locations/`location`/services/`service``.
        # Corresponds to the JSON property `serviceUri`
        # @return [String]
        attr_accessor :service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_uri = args[:service_uri] if args.key?(:service_uri)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # The InsightsConfig resource is the core configuration object to capture events
      # from your Software Development Lifecycle. It acts as the central hub for
      # managing how Developer connect understands your application, its runtime
      # environments, and the artifacts deployed within them.
      class InsightsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. User specified annotations. See https://google.aip.dev/148#
        # annotations for more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. The name of the App Hub Application. Format: projects/`project`/
        # locations/`location`/applications/`application`
        # Corresponds to the JSON property `appHubApplication`
        # @return [String]
        attr_accessor :app_hub_application
      
        # Optional. The artifact configurations of the artifacts that are deployed.
        # Corresponds to the JSON property `artifactConfigs`
        # @return [Array<Google::Apis::DeveloperconnectV1::ArtifactConfig>]
        attr_accessor :artifact_configs
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Any errors that occurred while setting up the InsightsConfig.
        # Each error will be in the format: `field_name: error_message`, e.g.
        # GetAppHubApplication: Permission denied while getting App Hub application.
        # Please grant permissions to the P4SA.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DeveloperconnectV1::Status>]
        attr_accessor :errors
      
        # Optional. Set of labels associated with an InsightsConfig.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The name of the InsightsConfig. Format: projects/`project`/
        # locations/`location`/insightsConfigs/`insightsConfig`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Projects represents the projects to track with the InsightsConfig.
        # Corresponds to the JSON property `projects`
        # @return [Google::Apis::DeveloperconnectV1::Projects]
        attr_accessor :projects
      
        # Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to
        # true if the current state of InsightsConfig does not match the user's intended
        # state, and the service is actively updating the resource to reconcile them.
        # This can happen due to user-triggered updates or system actions like failover
        # or maintenance.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The runtime configurations where the application is deployed.
        # Corresponds to the JSON property `runtimeConfigs`
        # @return [Array<Google::Apis::DeveloperconnectV1::RuntimeConfig>]
        attr_accessor :runtime_configs
      
        # Optional. Output only. The state of the InsightsConfig.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @app_hub_application = args[:app_hub_application] if args.key?(:app_hub_application)
          @artifact_configs = args[:artifact_configs] if args.key?(:artifact_configs)
          @create_time = args[:create_time] if args.key?(:create_time)
          @errors = args[:errors] if args.key?(:errors)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @projects = args[:projects] if args.key?(:projects)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @runtime_configs = args[:runtime_configs] if args.key?(:runtime_configs)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents an installation of the GitHub App.
      class Installation
        include Google::Apis::Core::Hashable
      
        # ID of the installation in GitHub.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Name of the GitHub user or organization that owns this installation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Either "user" or "organization".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Describes stage and necessary actions to be taken by the user to complete the
      # installation. Used for GitHub and GitHub Enterprise based connections.
      class InstallationState
        include Google::Apis::Core::Hashable
      
        # Output only. Link to follow for next action. Empty string if the installation
        # is already complete.
        # Corresponds to the JSON property `actionUri`
        # @return [String]
        attr_accessor :action_uri
      
        # Output only. Message of what the user should do next to continue the
        # installation. Empty string if the installation is already complete.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Current step of the installation process.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_uri = args[:action_uri] if args.key?(:action_uri)
          @message = args[:message] if args.key?(:message)
          @stage = args[:stage] if args.key?(:stage)
        end
      end
      
      # LinkableGitRepository represents a git repository that can be linked to a
      # connection.
      class LinkableGitRepository
        include Google::Apis::Core::Hashable
      
        # The clone uri of the repository.
        # Corresponds to the JSON property `cloneUri`
        # @return [String]
        attr_accessor :clone_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clone_uri = args[:clone_uri] if args.key?(:clone_uri)
        end
      end
      
      # Message for response to listing AccountConnectors
      class ListAccountConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of AccountConnectors
        # Corresponds to the JSON property `accountConnectors`
        # @return [Array<Google::Apis::DeveloperconnectV1::AccountConnector>]
        attr_accessor :account_connectors
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_connectors = args[:account_connectors] if args.key?(:account_connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Connections
      class ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Connection
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::DeveloperconnectV1::Connection>]
        attr_accessor :connections
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response to listing DeploymentEvents.
      class ListDeploymentEventsResponse
        include Google::Apis::Core::Hashable
      
        # The list of DeploymentEvents.
        # Corresponds to the JSON property `deploymentEvents`
        # @return [Array<Google::Apis::DeveloperconnectV1::DeploymentEvent>]
        attr_accessor :deployment_events
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment_events = args[:deployment_events] if args.key?(:deployment_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing GitRepositoryLinks
      class ListGitRepositoryLinksResponse
        include Google::Apis::Core::Hashable
      
        # The list of GitRepositoryLinks
        # Corresponds to the JSON property `gitRepositoryLinks`
        # @return [Array<Google::Apis::DeveloperconnectV1::GitRepositoryLink>]
        attr_accessor :git_repository_links
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @git_repository_links = args[:git_repository_links] if args.key?(:git_repository_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Request for response to listing InsightsConfigs.
      class ListInsightsConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of InsightsConfigs.
        # Corresponds to the JSON property `insightsConfigs`
        # @return [Array<Google::Apis::DeveloperconnectV1::InsightsConfig>]
        attr_accessor :insights_configs
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insights_configs = args[:insights_configs] if args.key?(:insights_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DeveloperconnectV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DeveloperconnectV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Users
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of Users
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::DeveloperconnectV1::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents an OAuth token of the account that authorized the Connection, and
      # associated metadata.
      class OAuthCredential
        include Google::Apis::Core::Hashable
      
        # Required. A SecretManager resource containing the OAuth token that authorizes
        # the connection. Format: `projects/*/secrets/*/versions/*` or `projects/*/
        # locations/*/secrets/*/versions/*` (if regional secrets are supported in that
        # location).
        # Corresponds to the JSON property `oauthTokenSecretVersion`
        # @return [String]
        attr_accessor :oauth_token_secret_version
      
        # Output only. The username associated with this token.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth_token_secret_version = args[:oauth_token_secret_version] if args.key?(:oauth_token_secret_version)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeveloperconnectV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # RPC request object accepted by the ProcessBitbucketCloudWebhook RPC method.
      class ProcessBitbucketCloudWebhookRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or an
        # HTML page. This message can be used both in streaming and non-streaming API
        # methods in the request as well as the response. It can be used as a top-level
        # request field, which is convenient if one wants to extract parameters from
        # either the URL or HTTP template into the request fields and also want access
        # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
        # request id. string request_id = 1; // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
        # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
        # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
        # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
        # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
        # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
        # only changes how the request and response bodies are handled, all other
        # features will continue to work unchanged.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::DeveloperconnectV1::HttpBody]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # RPC request object accepted by the ProcessBitbucketDataCenterWebhook RPC
      # method.
      class ProcessBitbucketDataCenterWebhookRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or an
        # HTML page. This message can be used both in streaming and non-streaming API
        # methods in the request as well as the response. It can be used as a top-level
        # request field, which is convenient if one wants to extract parameters from
        # either the URL or HTTP template into the request fields and also want access
        # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
        # request id. string request_id = 1; // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
        # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
        # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
        # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
        # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
        # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
        # only changes how the request and response bodies are handled, all other
        # features will continue to work unchanged.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::DeveloperconnectV1::HttpBody]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # RPC request object accepted by the ProcessGitHubEnterpriseWebhook RPC method.
      class ProcessGitHubEnterpriseWebhookRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or an
        # HTML page. This message can be used both in streaming and non-streaming API
        # methods in the request as well as the response. It can be used as a top-level
        # request field, which is convenient if one wants to extract parameters from
        # either the URL or HTTP template into the request fields and also want access
        # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
        # request id. string request_id = 1; // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
        # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
        # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
        # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
        # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
        # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
        # only changes how the request and response bodies are handled, all other
        # features will continue to work unchanged.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::DeveloperconnectV1::HttpBody]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # RPC request object accepted by the ProcessGitLabEnterpriseWebhook RPC method.
      class ProcessGitLabEnterpriseWebhookRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or an
        # HTML page. This message can be used both in streaming and non-streaming API
        # methods in the request as well as the response. It can be used as a top-level
        # request field, which is convenient if one wants to extract parameters from
        # either the URL or HTTP template into the request fields and also want access
        # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
        # request id. string request_id = 1; // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
        # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
        # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
        # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
        # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
        # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
        # only changes how the request and response bodies are handled, all other
        # features will continue to work unchanged.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::DeveloperconnectV1::HttpBody]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # RPC request object accepted by the ProcessGitLabWebhook RPC method.
      class ProcessGitLabWebhookRequest
        include Google::Apis::Core::Hashable
      
        # Message that represents an arbitrary HTTP body. It should only be used for
        # payload formats that can't be represented as JSON, such as raw binary or an
        # HTML page. This message can be used both in streaming and non-streaming API
        # methods in the request as well as the response. It can be used as a top-level
        # request field, which is convenient if one wants to extract parameters from
        # either the URL or HTTP template into the request fields and also want access
        # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
        # request id. string request_id = 1; // The raw HTTP body is bound to this field.
        # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
        # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
        # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
        # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
        # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
        # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
        # only changes how the request and response bodies are handled, all other
        # features will continue to work unchanged.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::DeveloperconnectV1::HttpBody]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # Projects represents the projects to track with the InsightsConfig.
      class Projects
        include Google::Apis::Core::Hashable
      
        # Optional. The GCP Project IDs. Format: projects/`project`
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # ProviderOAuthConfig is the OAuth config for a provider.
      class ProviderOAuthConfig
        include Google::Apis::Core::Hashable
      
        # Required. User selected scopes to apply to the Oauth config In the event of
        # changing scopes, user records under AccountConnector will be deleted and users
        # will re-auth again.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Immutable. Developer Connect provided OAuth.
        # Corresponds to the JSON property `systemProviderId`
        # @return [String]
        attr_accessor :system_provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scopes = args[:scopes] if args.key?(:scopes)
          @system_provider_id = args[:system_provider_id] if args.key?(:system_provider_id)
        end
      end
      
      # RuntimeConfig represents the runtimes where the application is deployed.
      class RuntimeConfig
        include Google::Apis::Core::Hashable
      
        # AppHubService represents the App Hub Service.
        # Corresponds to the JSON property `appHubService`
        # @return [Google::Apis::DeveloperconnectV1::AppHubService]
        attr_accessor :app_hub_service
      
        # AppHubWorkload represents the App Hub Workload.
        # Corresponds to the JSON property `appHubWorkload`
        # @return [Google::Apis::DeveloperconnectV1::AppHubWorkload]
        attr_accessor :app_hub_workload
      
        # GKEWorkload represents the Google Kubernetes Engine runtime.
        # Corresponds to the JSON property `gkeWorkload`
        # @return [Google::Apis::DeveloperconnectV1::GkeWorkload]
        attr_accessor :gke_workload
      
        # GoogleCloudRun represents the Cloud Run runtime.
        # Corresponds to the JSON property `googleCloudRun`
        # @return [Google::Apis::DeveloperconnectV1::GoogleCloudRun]
        attr_accessor :google_cloud_run
      
        # Output only. The state of the Runtime.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Immutable. The URI of the runtime configuration. For GKE, this is
        # the cluster name. For Cloud Run, this is the service name.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_hub_service = args[:app_hub_service] if args.key?(:app_hub_service)
          @app_hub_workload = args[:app_hub_workload] if args.key?(:app_hub_workload)
          @gke_workload = args[:gke_workload] if args.key?(:gke_workload)
          @google_cloud_run = args[:google_cloud_run] if args.key?(:google_cloud_run)
          @state = args[:state] if args.key?(:state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # ServiceDirectoryConfig represents Service Directory configuration for a
      # connection.
      class ServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Required. The Service Directory service name. Format: projects/`project`/
        # locations/`location`/namespaces/`namespace`/services/`service`.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Message for responding to starting an OAuth flow.
      class StartOAuthResponse
        include Google::Apis::Core::Hashable
      
        # The authorization server URL to the OAuth flow of the service provider.
        # Corresponds to the JSON property `authUri`
        # @return [String]
        attr_accessor :auth_uri
      
        # The client ID to the OAuth App of the service provider.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # https://datatracker.ietf.org/doc/html/rfc7636#section-4.1 Follow http://shortn/
        # _WFYl6U0NyC to include it in the AutoCodeURL.
        # Corresponds to the JSON property `codeChallenge`
        # @return [String]
        attr_accessor :code_challenge
      
        # https://datatracker.ietf.org/doc/html/rfc7636#section-4.2
        # Corresponds to the JSON property `codeChallengeMethod`
        # @return [String]
        attr_accessor :code_challenge_method
      
        # The list of scopes requested by the application.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # The ID of the system provider.
        # Corresponds to the JSON property `systemProviderId`
        # @return [String]
        attr_accessor :system_provider_id
      
        # The ticket to be used for post processing the callback from the service
        # provider.
        # Corresponds to the JSON property `ticket`
        # @return [String]
        attr_accessor :ticket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_uri = args[:auth_uri] if args.key?(:auth_uri)
          @client_id = args[:client_id] if args.key?(:client_id)
          @code_challenge = args[:code_challenge] if args.key?(:code_challenge)
          @code_challenge_method = args[:code_challenge_method] if args.key?(:code_challenge_method)
          @scopes = args[:scopes] if args.key?(:scopes)
          @system_provider_id = args[:system_provider_id] if args.key?(:system_provider_id)
          @ticket = args[:ticket] if args.key?(:ticket)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # User represents a user connected to the service providers through a
      # AccountConnector.
      class User
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the user was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Developer Connect automatically converts user identity to some
        # human readable description, e.g., email address.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The timestamp when the token was last requested.
        # Corresponds to the JSON property `lastTokenRequestTime`
        # @return [String]
        attr_accessor :last_token_request_time
      
        # Identifier. Resource name of the user, in the format `projects/*/locations/*/
        # accountConnectors/*/users/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_token_request_time = args[:last_token_request_time] if args.key?(:last_token_request_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a personal access token that authorized the Connection, and
      # associated metadata.
      class UserCredential
        include Google::Apis::Core::Hashable
      
        # Required. A SecretManager resource containing the user token that authorizes
        # the Developer Connect connection. Format: `projects/*/secrets/*/versions/*` or
        # `projects/*/locations/*/secrets/*/versions/*` (if regional secrets are
        # supported in that location).
        # Corresponds to the JSON property `userTokenSecretVersion`
        # @return [String]
        attr_accessor :user_token_secret_version
      
        # Output only. The username associated with this token.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_token_secret_version = args[:user_token_secret_version] if args.key?(:user_token_secret_version)
          @username = args[:username] if args.key?(:username)
        end
      end
    end
  end
end
