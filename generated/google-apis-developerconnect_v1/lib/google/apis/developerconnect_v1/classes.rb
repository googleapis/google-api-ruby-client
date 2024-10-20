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
      
        # Output only. A system-assigned unique identifier for a the GitRepositoryLink.
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_config = args[:crypto_key_config] if args.key?(:crypto_key_config)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @etag = args[:etag] if args.key?(:etag)
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
        # formatted as `projects/*/secrets/*/versions/*`.
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
        # App, formatted as `projects/*/secrets/*/versions/*`.
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
        # GitLab project, formatted as `projects/*/secrets/*/versions/*`. This is used
        # to validate webhooks.
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
        # GitLab project, formatted as `projects/*/secrets/*/versions/*`. This is used
        # to validate webhooks.
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
      
        # Output only. A system-assigned unique identifier for a the GitRepositoryLink.
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
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @webhook_id = args[:webhook_id] if args.key?(:webhook_id)
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
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
        # the connection. Format: `projects/*/secrets/*/versions/*`.
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
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
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
      
      # Represents a personal access token that authorized the Connection, and
      # associated metadata.
      class UserCredential
        include Google::Apis::Core::Hashable
      
        # Required. A SecretManager resource containing the user token that authorizes
        # the Developer Connect connection. Format: `projects/*/secrets/*/versions/*`.
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
