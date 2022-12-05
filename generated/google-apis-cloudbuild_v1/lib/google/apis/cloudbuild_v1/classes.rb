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
    module CloudbuildV1
      
      # ApprovalConfig describes configuration for manual approval of a build.
      class ApprovalConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not approval is needed. If this is set on a build, it will become
        # pending when created, and will need to be explicitly approved to start.
        # Corresponds to the JSON property `approvalRequired`
        # @return [Boolean]
        attr_accessor :approval_required
        alias_method :approval_required?, :approval_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_required = args[:approval_required] if args.key?(:approval_required)
        end
      end
      
      # ApprovalResult describes the decision and associated metadata of a manual
      # approval of a build.
      class ApprovalResult
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the approval decision was made.
        # Corresponds to the JSON property `approvalTime`
        # @return [String]
        attr_accessor :approval_time
      
        # Output only. Email of the user that called the ApproveBuild API to approve or
        # reject a build at the time that the API was called.
        # Corresponds to the JSON property `approverAccount`
        # @return [String]
        attr_accessor :approver_account
      
        # Optional. An optional comment for this manual approval result.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Required. The decision of this manual approval.
        # Corresponds to the JSON property `decision`
        # @return [String]
        attr_accessor :decision
      
        # Optional. An optional URL tied to this manual approval result. This field is
        # essentially the same as comment, except that it will be rendered by the UI
        # differently. An example use case is a link to an external job that approved
        # this Build.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_time = args[:approval_time] if args.key?(:approval_time)
          @approver_account = args[:approver_account] if args.key?(:approver_account)
          @comment = args[:comment] if args.key?(:comment)
          @decision = args[:decision] if args.key?(:decision)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Request to approve or reject a pending build.
      class ApproveBuildRequest
        include Google::Apis::Core::Hashable
      
        # ApprovalResult describes the decision and associated metadata of a manual
        # approval of a build.
        # Corresponds to the JSON property `approvalResult`
        # @return [Google::Apis::CloudbuildV1::ApprovalResult]
        attr_accessor :approval_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_result = args[:approval_result] if args.key?(:approval_result)
        end
      end
      
      # Files in the workspace to upload to Cloud Storage upon successful completion
      # of all build steps.
      class ArtifactObjects
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket and optional object path, in the form "gs://bucket/path/
        # to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/
        # storage/docs/bucket-naming#requirements)). Files in the workspace matching any
        # path pattern will be uploaded to Cloud Storage with this location as a prefix.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Path globs used to match files in the build's workspace.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :timing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @paths = args[:paths] if args.key?(:paths)
          @timing = args[:timing] if args.key?(:timing)
        end
      end
      
      # An artifact that was uploaded during a build. This is a single record in the
      # artifact manifest JSON file.
      class ArtifactResult
        include Google::Apis::Core::Hashable
      
        # The file hash of the artifact.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::CloudbuildV1::FileHashes>]
        attr_accessor :file_hash
      
        # The path of an artifact in a Google Cloud Storage bucket, with the generation
        # number. For example, `gs://mybucket/path/to/output.jar#generation`.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Artifacts produced by a build that should be uploaded upon successful
      # completion of all build steps.
      class Artifacts
        include Google::Apis::Core::Hashable
      
        # A list of images to be pushed upon the successful completion of all build
        # steps. The images will be pushed using the builder service account's
        # credentials. The digests of the pushed images will be stored in the Build
        # resource's results field. If any of the images fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # A list of Maven artifacts to be uploaded to Artifact Registry upon successful
        # completion of all build steps. Artifacts in the workspace matching specified
        # paths globs will be uploaded to the specified Artifact Registry repository
        # using the builder service account's credentials. If any artifacts fail to be
        # pushed, the build is marked FAILURE.
        # Corresponds to the JSON property `mavenArtifacts`
        # @return [Array<Google::Apis::CloudbuildV1::MavenArtifact>]
        attr_accessor :maven_artifacts
      
        # Files in the workspace to upload to Cloud Storage upon successful completion
        # of all build steps.
        # Corresponds to the JSON property `objects`
        # @return [Google::Apis::CloudbuildV1::ArtifactObjects]
        attr_accessor :objects
      
        # A list of Python packages to be uploaded to Artifact Registry upon successful
        # completion of all build steps. The build service account credentials will be
        # used to perform the upload. If any objects fail to be pushed, the build is
        # marked FAILURE.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::CloudbuildV1::PythonPackage>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
          @maven_artifacts = args[:maven_artifacts] if args.key?(:maven_artifacts)
          @objects = args[:objects] if args.key?(:objects)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # RPC request object accepted by BatchCreateBitbucketServerConnectedRepositories
      # RPC method.
      class BatchCreateBitbucketServerConnectedRepositoriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. Requests to connect Bitbucket Server repositories.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::CloudbuildV1::CreateBitbucketServerConnectedRepositoryRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response of BatchCreateBitbucketServerConnectedRepositories RPC method
      # including all successfully connected Bitbucket Server repositories.
      class BatchCreateBitbucketServerConnectedRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # The connected Bitbucket Server repositories.
        # Corresponds to the JSON property `bitbucketServerConnectedRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository>]
        attr_accessor :bitbucket_server_connected_repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_connected_repositories = args[:bitbucket_server_connected_repositories] if args.key?(:bitbucket_server_connected_repositories)
        end
      end
      
      # Metadata for `BatchCreateBitbucketServerConnectedRepositories` operation.
      class BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # The name of the `BitbucketServerConfig` that added connected repositories.
        # Format: `projects/`project`/locations/`location`/bitbucketServerConfigs/`
        # config``
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # RPC request object accepted by BatchCreateGitLabConnectedRepositories RPC
      # method.
      class BatchCreateGitLabConnectedRepositoriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. Requests to connect GitLab repositories.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::CloudbuildV1::CreateGitLabConnectedRepositoryRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response of BatchCreateGitLabConnectedRepositories RPC method.
      class BatchCreateGitLabConnectedRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # The GitLab connected repository requests' responses.
        # Corresponds to the JSON property `gitlabConnectedRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::GitLabConnectedRepository>]
        attr_accessor :gitlab_connected_repositories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gitlab_connected_repositories = args[:gitlab_connected_repositories] if args.key?(:gitlab_connected_repositories)
        end
      end
      
      # Metadata for `BatchCreateGitLabConnectedRepositories` operation.
      class BatchCreateGitLabConnectedRepositoriesResponseMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # The name of the `GitLabConfig` that added connected repositories. Format: `
        # projects/`project`/locations/`location`/gitLabConfigs/`config``
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # BitbucketServerConfig represents the configuration for a Bitbucket Server.
      class BitbucketServerConfig
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. API Key that will be attached to webhook. Once this field
        # has been set, it cannot be changed. If you need to change it, please create
        # another BitbucketServerConfig.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # Output only. Connected Bitbucket Server repositories for this config.
        # Corresponds to the JSON property `connectedRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::BitbucketServerRepositoryId>]
        attr_accessor :connected_repositories
      
        # Time when the config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. The URI of the Bitbucket Server host. Once this field has
        # been set, it cannot be changed. If you need to change it, please create
        # another BitbucketServerConfig.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # The resource name for the config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The network to be used when reaching out to the Bitbucket Server
        # instance. The VPC network must be enabled for private service connection. This
        # should be set if the Bitbucket Server instance is hosted on-premises and not
        # reachable by public internet. If this field is left empty, no network peering
        # will occur and calls to the Bitbucket Server instance will be made over the
        # public internet. Must be in the format `projects/`project`/global/networks/`
        # network``, where `project` is a project number or id and `network` is the name
        # of a VPC network in the project.
        # Corresponds to the JSON property `peeredNetwork`
        # @return [String]
        attr_accessor :peered_network
      
        # BitbucketServerSecrets represents the secrets in Secret Manager for a
        # Bitbucket Server.
        # Corresponds to the JSON property `secrets`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerSecrets]
        attr_accessor :secrets
      
        # Optional. SSL certificate to use for requests to Bitbucket Server. The format
        # should be PEM format but the extension can be one of .pem, .cer, or .crt.
        # Corresponds to the JSON property `sslCa`
        # @return [String]
        attr_accessor :ssl_ca
      
        # Username of the account Cloud Build will use on Bitbucket Server.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Output only. UUID included in webhook requests. The UUID is used to look up
        # the corresponding config.
        # Corresponds to the JSON property `webhookKey`
        # @return [String]
        attr_accessor :webhook_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @connected_repositories = args[:connected_repositories] if args.key?(:connected_repositories)
          @create_time = args[:create_time] if args.key?(:create_time)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @name = args[:name] if args.key?(:name)
          @peered_network = args[:peered_network] if args.key?(:peered_network)
          @secrets = args[:secrets] if args.key?(:secrets)
          @ssl_ca = args[:ssl_ca] if args.key?(:ssl_ca)
          @username = args[:username] if args.key?(:username)
          @webhook_key = args[:webhook_key] if args.key?(:webhook_key)
        end
      end
      
      # / BitbucketServerConnectedRepository represents a connected Bitbucket Server /
      # repository.
      class BitbucketServerConnectedRepository
        include Google::Apis::Core::Hashable
      
        # The name of the `BitbucketServerConfig` that added connected repository.
        # Format: `projects/`project`/locations/`location`/bitbucketServerConfigs/`
        # config``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # BitbucketServerRepositoryId identifies a specific repository hosted on a
        # Bitbucket Server.
        # Corresponds to the JSON property `repo`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerRepositoryId]
        attr_accessor :repo
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudbuildV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @repo = args[:repo] if args.key?(:repo)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # BitbucketServerRepository represents a repository hosted on a Bitbucket Server.
      class BitbucketServerRepository
        include Google::Apis::Core::Hashable
      
        # Link to the browse repo page on the Bitbucket Server instance.
        # Corresponds to the JSON property `browseUri`
        # @return [String]
        attr_accessor :browse_uri
      
        # Description of the repository.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of the repository.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the repository.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # BitbucketServerRepositoryId identifies a specific repository hosted on a
        # Bitbucket Server.
        # Corresponds to the JSON property `repoId`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerRepositoryId]
        attr_accessor :repo_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browse_uri = args[:browse_uri] if args.key?(:browse_uri)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @repo_id = args[:repo_id] if args.key?(:repo_id)
        end
      end
      
      # BitbucketServerRepositoryId identifies a specific repository hosted on a
      # Bitbucket Server.
      class BitbucketServerRepositoryId
        include Google::Apis::Core::Hashable
      
        # Required. Identifier for the project storing the repository.
        # Corresponds to the JSON property `projectKey`
        # @return [String]
        attr_accessor :project_key
      
        # Required. Identifier for the repository.
        # Corresponds to the JSON property `repoSlug`
        # @return [String]
        attr_accessor :repo_slug
      
        # Output only. The ID of the webhook that was created for receiving events from
        # this repo. We only create and manage a single webhook for each repo.
        # Corresponds to the JSON property `webhookId`
        # @return [Fixnum]
        attr_accessor :webhook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_key = args[:project_key] if args.key?(:project_key)
          @repo_slug = args[:repo_slug] if args.key?(:repo_slug)
          @webhook_id = args[:webhook_id] if args.key?(:webhook_id)
        end
      end
      
      # BitbucketServerSecrets represents the secrets in Secret Manager for a
      # Bitbucket Server.
      class BitbucketServerSecrets
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for the admin access token's secret version.
        # Corresponds to the JSON property `adminAccessTokenVersionName`
        # @return [String]
        attr_accessor :admin_access_token_version_name
      
        # Required. The resource name for the read access token's secret version.
        # Corresponds to the JSON property `readAccessTokenVersionName`
        # @return [String]
        attr_accessor :read_access_token_version_name
      
        # Required. Immutable. The resource name for the webhook secret's secret version.
        # Once this field has been set, it cannot be changed. If you need to change it,
        # please create another BitbucketServerConfig.
        # Corresponds to the JSON property `webhookSecretVersionName`
        # @return [String]
        attr_accessor :webhook_secret_version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_access_token_version_name = args[:admin_access_token_version_name] if args.key?(:admin_access_token_version_name)
          @read_access_token_version_name = args[:read_access_token_version_name] if args.key?(:read_access_token_version_name)
          @webhook_secret_version_name = args[:webhook_secret_version_name] if args.key?(:webhook_secret_version_name)
        end
      end
      
      # BitbucketServerTriggerConfig describes the configuration of a trigger that
      # creates a build whenever a Bitbucket Server event is received.
      class BitbucketServerTriggerConfig
        include Google::Apis::Core::Hashable
      
        # BitbucketServerConfig represents the configuration for a Bitbucket Server.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerConfig]
        attr_accessor :bitbucket_server_config
      
        # Required. The Bitbucket server config resource that this trigger config maps
        # to.
        # Corresponds to the JSON property `bitbucketServerConfigResource`
        # @return [String]
        attr_accessor :bitbucket_server_config_resource
      
        # Required. Key of the project that the repo is in. For example: The key for
        # https://mybitbucket.server/projects/TEST/repos/test-repo is "TEST".
        # Corresponds to the JSON property `projectKey`
        # @return [String]
        attr_accessor :project_key
      
        # PullRequestFilter contains filter properties for matching GitHub Pull Requests.
        # Corresponds to the JSON property `pullRequest`
        # @return [Google::Apis::CloudbuildV1::PullRequestFilter]
        attr_accessor :pull_request
      
        # Push contains filter properties for matching GitHub git pushes.
        # Corresponds to the JSON property `push`
        # @return [Google::Apis::CloudbuildV1::PushFilter]
        attr_accessor :push
      
        # Required. Slug of the repository. A repository slug is a URL-friendly version
        # of a repository name, automatically generated by Bitbucket for use in the URL.
        # For example, if the repository name is 'test repo', in the URL it would become
        # 'test-repo' as in https://mybitbucket.server/projects/TEST/repos/test-repo.
        # Corresponds to the JSON property `repoSlug`
        # @return [String]
        attr_accessor :repo_slug
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @bitbucket_server_config_resource = args[:bitbucket_server_config_resource] if args.key?(:bitbucket_server_config_resource)
          @project_key = args[:project_key] if args.key?(:project_key)
          @pull_request = args[:pull_request] if args.key?(:pull_request)
          @push = args[:push] if args.key?(:push)
          @repo_slug = args[:repo_slug] if args.key?(:repo_slug)
        end
      end
      
      # A build resource in the Cloud Build API. At a high level, a `Build` describes
      # where to find source code, how to build it (for example, the builder image to
      # run on the source), and where to store the built artifacts. Fields can include
      # the following variables, which will be expanded when the build is created: - $
      # PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number
      # of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the
      # autogenerated ID of the build. - $REPO_NAME: the source repository name
      # specified by RepoSource. - $BRANCH_NAME: the branch name specified by
      # RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID
      # or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the
      # specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $
      # COMMIT_SHA.
      class Build
        include Google::Apis::Core::Hashable
      
        # BuildApproval describes a build's approval configuration, state, and result.
        # Corresponds to the JSON property `approval`
        # @return [Google::Apis::CloudbuildV1::BuildApproval]
        attr_accessor :approval
      
        # Artifacts produced by a build that should be uploaded upon successful
        # completion of all build steps.
        # Corresponds to the JSON property `artifacts`
        # @return [Google::Apis::CloudbuildV1::Artifacts]
        attr_accessor :artifacts
      
        # Secrets and secret environment variables.
        # Corresponds to the JSON property `availableSecrets`
        # @return [Google::Apis::CloudbuildV1::Secrets]
        attr_accessor :available_secrets
      
        # Output only. The ID of the `BuildTrigger` that triggered this build, if it was
        # triggered automatically.
        # Corresponds to the JSON property `buildTriggerId`
        # @return [String]
        attr_accessor :build_trigger_id
      
        # Output only. Time at which the request to create the build was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A fatal problem encountered during the execution of the build.
        # Corresponds to the JSON property `failureInfo`
        # @return [Google::Apis::CloudbuildV1::FailureInfo]
        attr_accessor :failure_info
      
        # Output only. Time at which execution of the build was finished. The difference
        # between finish_time and start_time is the duration of the build's execution.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Output only. Unique identifier of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of images to be pushed upon the successful completion of all build
        # steps. The images are pushed using the builder service account's credentials.
        # The digests of the pushed images will be stored in the `Build` resource's
        # results field. If any of the images fail to be pushed, the build status is
        # marked `FAILURE`.
        # Corresponds to the JSON property `images`
        # @return [Array<String>]
        attr_accessor :images
      
        # Output only. URL to logs for this build in Google Cloud Console.
        # Corresponds to the JSON property `logUrl`
        # @return [String]
        attr_accessor :log_url
      
        # Google Cloud Storage bucket where logs should be written (see [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ). Logs file names will be of the format `$`logs_bucket`/log-$`build_id`.txt`.
        # Corresponds to the JSON property `logsBucket`
        # @return [String]
        attr_accessor :logs_bucket
      
        # Output only. The 'Build' name with format: `projects/`project`/locations/`
        # location`/builds/`build``, where `build` is a unique identifier generated by
        # the service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional arguments to enable specific features of builds.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudbuildV1::BuildOptions]
        attr_accessor :options
      
        # Output only. ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # TTL in queue for this build. If provided and the build is enqueued longer than
        # this value, the build will expire and the build status will be `EXPIRED`. The
        # TTL starts ticking from create_time.
        # Corresponds to the JSON property `queueTtl`
        # @return [String]
        attr_accessor :queue_ttl
      
        # Artifacts created by the build pipeline.
        # Corresponds to the JSON property `results`
        # @return [Google::Apis::CloudbuildV1::Results]
        attr_accessor :results
      
        # Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is
        # the recommended technique for managing sensitive data with Cloud Build. Use `
        # available_secrets` to configure builds to access secrets from Secret Manager.
        # For instructions, see: https://cloud.google.com/cloud-build/docs/securing-
        # builds/use-secrets
        # Corresponds to the JSON property `secrets`
        # @return [Array<Google::Apis::CloudbuildV1::Secret>]
        attr_accessor :secrets
      
        # IAM service account whose credentials will be used at build runtime. Must be
        # of the format `projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT``. ACCOUNT can
        # be email address or uniqueId of the service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Location of the source in a supported storage service.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudbuildV1::Source]
        attr_accessor :source
      
        # Provenance of the source. Ways to find the original source, or verify that
        # some source was used for this build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::CloudbuildV1::SourceProvenance]
        attr_accessor :source_provenance
      
        # Output only. Time at which execution of the build was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Status of the build.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. Customer-readable message about the current status.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Required. The operations to be performed on the workspace.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::CloudbuildV1::BuildStep>]
        attr_accessor :steps
      
        # Substitutions data for `Build` resource.
        # Corresponds to the JSON property `substitutions`
        # @return [Hash<String,String>]
        attr_accessor :substitutions
      
        # Tags for annotation of a `Build`. These are not docker tags.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Amount of time that this build should be allowed to run, to second granularity.
        # If this amount of time elapses, work on the build will cease and the build
        # status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default
        # time is ten minutes.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. Stores timing information for phases of the build. Valid keys are:
        # * BUILD: time to execute all build steps. * PUSH: time to push all artifacts
        # including docker images and non docker artifacts. * FETCHSOURCE: time to fetch
        # source. * SETUPBUILD: time to set up build. If the build does not specify
        # source or images, these keys will not be included.
        # Corresponds to the JSON property `timing`
        # @return [Hash<String,Google::Apis::CloudbuildV1::TimeSpan>]
        attr_accessor :timing
      
        # Output only. Non-fatal problems encountered during the execution of the build.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::CloudbuildV1::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval = args[:approval] if args.key?(:approval)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @available_secrets = args[:available_secrets] if args.key?(:available_secrets)
          @build_trigger_id = args[:build_trigger_id] if args.key?(:build_trigger_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_info = args[:failure_info] if args.key?(:failure_info)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @id = args[:id] if args.key?(:id)
          @images = args[:images] if args.key?(:images)
          @log_url = args[:log_url] if args.key?(:log_url)
          @logs_bucket = args[:logs_bucket] if args.key?(:logs_bucket)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @project_id = args[:project_id] if args.key?(:project_id)
          @queue_ttl = args[:queue_ttl] if args.key?(:queue_ttl)
          @results = args[:results] if args.key?(:results)
          @secrets = args[:secrets] if args.key?(:secrets)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source = args[:source] if args.key?(:source)
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @steps = args[:steps] if args.key?(:steps)
          @substitutions = args[:substitutions] if args.key?(:substitutions)
          @tags = args[:tags] if args.key?(:tags)
          @timeout = args[:timeout] if args.key?(:timeout)
          @timing = args[:timing] if args.key?(:timing)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # BuildApproval describes a build's approval configuration, state, and result.
      class BuildApproval
        include Google::Apis::Core::Hashable
      
        # ApprovalConfig describes configuration for manual approval of a build.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::CloudbuildV1::ApprovalConfig]
        attr_accessor :config
      
        # ApprovalResult describes the decision and associated metadata of a manual
        # approval of a build.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::CloudbuildV1::ApprovalResult]
        attr_accessor :result
      
        # Output only. The state of this build's approval.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @result = args[:result] if args.key?(:result)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for build operations.
      class BuildOperationMetadata
        include Google::Apis::Core::Hashable
      
        # A build resource in the Cloud Build API. At a high level, a `Build` describes
        # where to find source code, how to build it (for example, the builder image to
        # run on the source), and where to store the built artifacts. Fields can include
        # the following variables, which will be expanded when the build is created: - $
        # PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number
        # of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the
        # autogenerated ID of the build. - $REPO_NAME: the source repository name
        # specified by RepoSource. - $BRANCH_NAME: the branch name specified by
        # RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID
        # or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the
        # specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $
        # COMMIT_SHA.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::CloudbuildV1::Build]
        attr_accessor :build
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
        end
      end
      
      # Optional arguments to enable specific features of builds.
      class BuildOptions
        include Google::Apis::Core::Hashable
      
        # Requested disk size for the VM that runs the build. Note that this is *NOT* "
        # disk free"; some of the space will be used by the operating system and build
        # utilities. Also note that this is the minimum disk size that will be allocated
        # for the build -- the build may run with a larger disk than requested. At
        # present, the maximum disk size is 2000GB; builds that request more than the
        # maximum are rejected with an error.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Option to specify whether or not to apply bash style string operations to the
        # substitutions. NOTE: this is always enabled for triggered builds and cannot be
        # overridden in the build configuration file.
        # Corresponds to the JSON property `dynamicSubstitutions`
        # @return [Boolean]
        attr_accessor :dynamic_substitutions
        alias_method :dynamic_substitutions?, :dynamic_substitutions
      
        # A list of global environment variable definitions that will exist for all
        # build steps in this build. If a variable is defined in both globally and in a
        # build step, the variable will use the build step value. The elements are of
        # the form "KEY=VALUE" for the environment variable "KEY" being given the value "
        # VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Option to define build log streaming behavior to Google Cloud Storage.
        # Corresponds to the JSON property `logStreamingOption`
        # @return [String]
        attr_accessor :log_streaming_option
      
        # Option to specify the logging mode, which determines if and where build logs
        # are stored.
        # Corresponds to the JSON property `logging`
        # @return [String]
        attr_accessor :logging
      
        # Compute Engine machine type on which to run the build.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Details about how a build should be executed on a `WorkerPool`. See [running
        # builds in a private pool](https://cloud.google.com/build/docs/private-pools/
        # run-builds-in-private-pool) for more information.
        # Corresponds to the JSON property `pool`
        # @return [Google::Apis::CloudbuildV1::PoolOption]
        attr_accessor :pool
      
        # Requested verifiability options.
        # Corresponds to the JSON property `requestedVerifyOption`
        # @return [String]
        attr_accessor :requested_verify_option
      
        # A list of global environment variables, which are encrypted using a Cloud Key
        # Management Service crypto key. These values must be specified in the build's `
        # Secret`. These variables will be available to all build steps in this build.
        # Corresponds to the JSON property `secretEnv`
        # @return [Array<String>]
        attr_accessor :secret_env
      
        # Requested hash for SourceProvenance.
        # Corresponds to the JSON property `sourceProvenanceHash`
        # @return [Array<String>]
        attr_accessor :source_provenance_hash
      
        # Option to specify behavior when there is an error in the substitution checks.
        # NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be
        # overridden in the build configuration file.
        # Corresponds to the JSON property `substitutionOption`
        # @return [String]
        attr_accessor :substitution_option
      
        # Global list of volumes to mount for ALL build steps Each volume is created as
        # an empty volume prior to starting the build process. Upon completion of the
        # build, volumes and their contents are discarded. Global volume names and paths
        # cannot conflict with the volumes defined a build step. Using a global volume
        # in a build with only one step is not valid as it is indicative of a build
        # request with an incorrect configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::CloudbuildV1::Volume>]
        attr_accessor :volumes
      
        # This field deprecated; please use `pool.name` instead.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @dynamic_substitutions = args[:dynamic_substitutions] if args.key?(:dynamic_substitutions)
          @env = args[:env] if args.key?(:env)
          @log_streaming_option = args[:log_streaming_option] if args.key?(:log_streaming_option)
          @logging = args[:logging] if args.key?(:logging)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @pool = args[:pool] if args.key?(:pool)
          @requested_verify_option = args[:requested_verify_option] if args.key?(:requested_verify_option)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
          @source_provenance_hash = args[:source_provenance_hash] if args.key?(:source_provenance_hash)
          @substitution_option = args[:substitution_option] if args.key?(:substitution_option)
          @volumes = args[:volumes] if args.key?(:volumes)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # A step in the build pipeline.
      class BuildStep
        include Google::Apis::Core::Hashable
      
        # Allow this build step to fail without failing the entire build if and only if
        # the exit code is one of the specified codes. If allow_failure is also
        # specified, this field will take precedence.
        # Corresponds to the JSON property `allowExitCodes`
        # @return [Array<Fixnum>]
        attr_accessor :allow_exit_codes
      
        # Allow this build step to fail without failing the entire build. If false, the
        # entire build will fail if this step fails. Otherwise, the build will succeed,
        # but this step will still have a failure status. Error information will be
        # reported in the failure_detail field.
        # Corresponds to the JSON property `allowFailure`
        # @return [Boolean]
        attr_accessor :allow_failure
        alias_method :allow_failure?, :allow_failure
      
        # A list of arguments that will be presented to the step when it is started. If
        # the image used to run the step's container has an entrypoint, the `args` are
        # used as arguments to that entrypoint. If the image does not define an
        # entrypoint, the first element in args is used as the entrypoint, and the
        # remainder will be used as arguments.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory to use when running this step's container. If this value is
        # a relative path, it is relative to the build's working directory. If this
        # value is absolute, it may be outside the build's working directory, in which
        # case the contents of the path may not be persisted across build step
        # executions, unless a `volume` for that path is specified. If the build
        # specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies
        # an absolute path, the `RepoSource` `dir` is ignored for the step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Entrypoint to be used instead of the build step image's default entrypoint. If
        # unset, the image's default entrypoint is used.
        # Corresponds to the JSON property `entrypoint`
        # @return [String]
        attr_accessor :entrypoint
      
        # A list of environment variable definitions to be used when running a step. The
        # elements are of the form "KEY=VALUE" for the environment variable "KEY" being
        # given the value "VALUE".
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Output only. Return code from running the step.
        # Corresponds to the JSON property `exitCode`
        # @return [Fixnum]
        attr_accessor :exit_code
      
        # Unique identifier for this build step, used in `wait_for` to reference this
        # build step as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the container image that will run this particular build
        # step. If the image is available in the host's Docker daemon's cache, it will
        # be run directly. If not, the host will attempt to pull the image first, using
        # the builder service account's credentials if necessary. The Docker daemon's
        # cache will already have the latest versions of all of the officially supported
        # build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://
        # github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also
        # have cached many of the layers for some popular images, like "ubuntu", "debian"
        # , but they will be refreshed at the time you attempt to use them. If you built
        # an image in a previous build step, it will be stored in the host's Docker
        # daemon's cache and is available to use as the name for a later build step.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pullTiming`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :pull_timing
      
        # A shell script to be executed in the step. When script is provided, the user
        # cannot specify the entrypoint or args.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # A list of environment variables which are encrypted using a Cloud Key
        # Management Service crypto key. These values must be specified in the build's `
        # Secret`.
        # Corresponds to the JSON property `secretEnv`
        # @return [Array<String>]
        attr_accessor :secret_env
      
        # Output only. Status of the build step. At this time, build step status is only
        # updated on build completion; step status is not updated in real-time as the
        # build progresses.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Time limit for executing this build step. If not defined, the step has no time
        # limit and will be allowed to continue to run until either it completes or the
        # build itself times out.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `timing`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :timing
      
        # List of volumes to mount into the build step. Each volume is created as an
        # empty volume prior to execution of the build step. Upon completion of the
        # build, volumes and their contents are discarded. Using a named volume in only
        # one step is not valid as it is indicative of a build request with an incorrect
        # configuration.
        # Corresponds to the JSON property `volumes`
        # @return [Array<Google::Apis::CloudbuildV1::Volume>]
        attr_accessor :volumes
      
        # The ID(s) of the step(s) that this build step depends on. This build step will
        # not start until all the build steps in `wait_for` have completed successfully.
        # If `wait_for` is empty, this build step will start when all previous build
        # steps in the `Build.Steps` list have completed successfully.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_exit_codes = args[:allow_exit_codes] if args.key?(:allow_exit_codes)
          @allow_failure = args[:allow_failure] if args.key?(:allow_failure)
          @args = args[:args] if args.key?(:args)
          @dir = args[:dir] if args.key?(:dir)
          @entrypoint = args[:entrypoint] if args.key?(:entrypoint)
          @env = args[:env] if args.key?(:env)
          @exit_code = args[:exit_code] if args.key?(:exit_code)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @pull_timing = args[:pull_timing] if args.key?(:pull_timing)
          @script = args[:script] if args.key?(:script)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
          @status = args[:status] if args.key?(:status)
          @timeout = args[:timeout] if args.key?(:timeout)
          @timing = args[:timing] if args.key?(:timing)
          @volumes = args[:volumes] if args.key?(:volumes)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
        end
      end
      
      # Configuration for an automated build in response to source repository changes.
      class BuildTrigger
        include Google::Apis::Core::Hashable
      
        # ApprovalConfig describes configuration for manual approval of a build.
        # Corresponds to the JSON property `approvalConfig`
        # @return [Google::Apis::CloudbuildV1::ApprovalConfig]
        attr_accessor :approval_config
      
        # Autodetect build configuration. The following precedence is used (case
        # insensitive): 1. cloudbuild.yaml 2. cloudbuild.yml 3. cloudbuild.json 4.
        # Dockerfile Currently only available for GitHub App Triggers.
        # Corresponds to the JSON property `autodetect`
        # @return [Boolean]
        attr_accessor :autodetect
        alias_method :autodetect?, :autodetect
      
        # BitbucketServerTriggerConfig describes the configuration of a trigger that
        # creates a build whenever a Bitbucket Server event is received.
        # Corresponds to the JSON property `bitbucketServerTriggerConfig`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerTriggerConfig]
        attr_accessor :bitbucket_server_trigger_config
      
        # A build resource in the Cloud Build API. At a high level, a `Build` describes
        # where to find source code, how to build it (for example, the builder image to
        # run on the source), and where to store the built artifacts. Fields can include
        # the following variables, which will be expanded when the build is created: - $
        # PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number
        # of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the
        # autogenerated ID of the build. - $REPO_NAME: the source repository name
        # specified by RepoSource. - $BRANCH_NAME: the branch name specified by
        # RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID
        # or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the
        # specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $
        # COMMIT_SHA.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::CloudbuildV1::Build]
        attr_accessor :build
      
        # Output only. Time when the trigger was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable description of this trigger.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If true, the trigger will never automatically execute a build.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # EventType allows the user to explicitly set the type of event to which this
        # BuildTrigger should respond. This field will be validated against the rest of
        # the configuration if it is set.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Path, from the source root, to the build configuration file (i.e. cloudbuild.
        # yaml).
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # A Common Expression Language string.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # GitFileSource describes a file within a (possibly remote) code repository.
        # Corresponds to the JSON property `gitFileSource`
        # @return [Google::Apis::CloudbuildV1::GitFileSource]
        attr_accessor :git_file_source
      
        # GitHubEventsConfig describes the configuration of a trigger that creates a
        # build whenever a GitHub event is received.
        # Corresponds to the JSON property `github`
        # @return [Google::Apis::CloudbuildV1::GitHubEventsConfig]
        attr_accessor :github
      
        # GitLabEventsConfig describes the configuration of a trigger that creates a
        # build whenever a GitLab event is received.
        # Corresponds to the JSON property `gitlabEnterpriseEventsConfig`
        # @return [Google::Apis::CloudbuildV1::GitLabEventsConfig]
        attr_accessor :gitlab_enterprise_events_config
      
        # Output only. Unique identifier of the trigger.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # ignored_files and included_files are file glob matches using https://golang.
        # org/pkg/path/filepath/#Match extended with support for "**". If ignored_files
        # and changed files are both empty, then they are not used to determine whether
        # or not to trigger a build. If ignored_files is not empty, then we ignore any
        # files that match any of the ignored_file globs. If the change has no files
        # that are outside of the ignored_files globs, then we do not trigger a build.
        # Corresponds to the JSON property `ignoredFiles`
        # @return [Array<String>]
        attr_accessor :ignored_files
      
        # If set to INCLUDE_BUILD_LOGS_WITH_STATUS, log url will be shown on GitHub page
        # when build status is final. Setting this field to
        # INCLUDE_BUILD_LOGS_WITH_STATUS for non GitHub triggers results in
        # INVALID_ARGUMENT error.
        # Corresponds to the JSON property `includeBuildLogs`
        # @return [String]
        attr_accessor :include_build_logs
      
        # If any of the files altered in the commit pass the ignored_files filter and
        # included_files is empty, then as far as this filter is concerned, we should
        # trigger the build. If any of the files altered in the commit pass the
        # ignored_files filter and included_files is not empty, then we make sure that
        # at least one of those files matches a included_files glob. If not, then we do
        # not trigger a build.
        # Corresponds to the JSON property `includedFiles`
        # @return [Array<String>]
        attr_accessor :included_files
      
        # User-assigned name of the trigger. Must be unique within the project. Trigger
        # names must meet the following requirements: + They must contain only
        # alphanumeric characters and dashes. + They can be 1-64 characters long. + They
        # must begin and end with an alphanumeric character.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # PubsubConfig describes the configuration of a trigger that creates a build
        # whenever a Pub/Sub message is published.
        # Corresponds to the JSON property `pubsubConfig`
        # @return [Google::Apis::CloudbuildV1::PubsubConfig]
        attr_accessor :pubsub_config
      
        # The configuration of a trigger that creates a build whenever an event from
        # Repo API is received.
        # Corresponds to the JSON property `repositoryEventConfig`
        # @return [Google::Apis::CloudbuildV1::RepositoryEventConfig]
        attr_accessor :repository_event_config
      
        # The `Trigger` name with format: `projects/`project`/locations/`location`/
        # triggers/`trigger``, where `trigger` is a unique identifier generated by the
        # service.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The service account used for all user-controlled operations including
        # UpdateBuildTrigger, RunBuildTrigger, CreateBuild, and CancelBuild. If no
        # service account is set, then the standard Cloud Build service account ([
        # PROJECT_NUM]@system.gserviceaccount.com) will be used instead. Format: `
        # projects/`PROJECT_ID`/serviceAccounts/`ACCOUNT_ID_OR_EMAIL``
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # GitRepoSource describes a repo and ref of a code repository.
        # Corresponds to the JSON property `sourceToBuild`
        # @return [Google::Apis::CloudbuildV1::GitRepoSource]
        attr_accessor :source_to_build
      
        # Substitutions for Build resource. The keys must match the following regular
        # expression: `^_[A-Z0-9_]+$`.
        # Corresponds to the JSON property `substitutions`
        # @return [Hash<String,String>]
        attr_accessor :substitutions
      
        # Tags for annotation of a `BuildTrigger`
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `triggerTemplate`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :trigger_template
      
        # WebhookConfig describes the configuration of a trigger that creates a build
        # whenever a webhook is sent to a trigger's webhook URL.
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::CloudbuildV1::WebhookConfig]
        attr_accessor :webhook_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_config = args[:approval_config] if args.key?(:approval_config)
          @autodetect = args[:autodetect] if args.key?(:autodetect)
          @bitbucket_server_trigger_config = args[:bitbucket_server_trigger_config] if args.key?(:bitbucket_server_trigger_config)
          @build = args[:build] if args.key?(:build)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @event_type = args[:event_type] if args.key?(:event_type)
          @filename = args[:filename] if args.key?(:filename)
          @filter = args[:filter] if args.key?(:filter)
          @git_file_source = args[:git_file_source] if args.key?(:git_file_source)
          @github = args[:github] if args.key?(:github)
          @gitlab_enterprise_events_config = args[:gitlab_enterprise_events_config] if args.key?(:gitlab_enterprise_events_config)
          @id = args[:id] if args.key?(:id)
          @ignored_files = args[:ignored_files] if args.key?(:ignored_files)
          @include_build_logs = args[:include_build_logs] if args.key?(:include_build_logs)
          @included_files = args[:included_files] if args.key?(:included_files)
          @name = args[:name] if args.key?(:name)
          @pubsub_config = args[:pubsub_config] if args.key?(:pubsub_config)
          @repository_event_config = args[:repository_event_config] if args.key?(:repository_event_config)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source_to_build = args[:source_to_build] if args.key?(:source_to_build)
          @substitutions = args[:substitutions] if args.key?(:substitutions)
          @tags = args[:tags] if args.key?(:tags)
          @trigger_template = args[:trigger_template] if args.key?(:trigger_template)
          @webhook_config = args[:webhook_config] if args.key?(:webhook_config)
        end
      end
      
      # An image built by the pipeline.
      class BuiltImage
        include Google::Apis::Core::Hashable
      
        # Docker Registry 2.0 digest.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # Name used to push the container image to Google Container Registry, as
        # presented to `docker push`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :push_timing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @name = args[:name] if args.key?(:name)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
        end
      end
      
      # Request to cancel an ongoing build.
      class CancelBuildRequest
        include Google::Apis::Core::Hashable
      
        # Required. ID of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the `Build` to cancel. Format: `projects/`project`/locations/`
        # location`/builds/`build``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
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
      
      # Metadata for `CreateBitbucketServerConfig` operation.
      class CreateBitbucketServerConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the BitbucketServerConfig to be created. Format: `
        # projects/`project`/locations/`location`/bitbucketServerConfigs/`id``.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [String]
        attr_accessor :bitbucket_server_config
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # Request to connect a repository from a connected Bitbucket Server host.
      class CreateBitbucketServerConnectedRepositoryRequest
        include Google::Apis::Core::Hashable
      
        # / BitbucketServerConnectedRepository represents a connected Bitbucket Server /
        # repository.
        # Corresponds to the JSON property `bitbucketServerConnectedRepository`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerConnectedRepository]
        attr_accessor :bitbucket_server_connected_repository
      
        # Required. The name of the `BitbucketServerConfig` that added connected
        # repository. Format: `projects/`project`/locations/`location`/
        # bitbucketServerConfigs/`config``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_connected_repository = args[:bitbucket_server_connected_repository] if args.key?(:bitbucket_server_connected_repository)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Metadata for `CreateGithubEnterpriseConfig` operation.
      class CreateGitHubEnterpriseConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitHubEnterprise to be created. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
        end
      end
      
      # Metadata for `CreateGitLabConfig` operation.
      class CreateGitLabConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitLabConfig to be created. Format: `projects/`
        # project`/locations/`location`/gitlabConfigs/`id``.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [String]
        attr_accessor :gitlab_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
        end
      end
      
      # Request to connect a repository from a connected GitLab host.
      class CreateGitLabConnectedRepositoryRequest
        include Google::Apis::Core::Hashable
      
        # GitLabConnectedRepository represents a GitLab connected repository request
        # response.
        # Corresponds to the JSON property `gitlabConnectedRepository`
        # @return [Google::Apis::CloudbuildV1::GitLabConnectedRepository]
        attr_accessor :gitlab_connected_repository
      
        # Required. The name of the `GitLabConfig` that adds connected repository.
        # Format: `projects/`project`/locations/`location`/gitLabConfigs/`config``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gitlab_connected_repository = args[:gitlab_connected_repository] if args.key?(:gitlab_connected_repository)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Metadata for the `CreateWorkerPool` operation.
      class CreateWorkerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the `WorkerPool` to create. Format: `projects/`project`/
        # locations/`location`/workerPools/`worker_pool``.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # Metadata for `DeleteBitbucketServerConfig` operation.
      class DeleteBitbucketServerConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the BitbucketServerConfig to be deleted. Format: `
        # projects/`project`/locations/`location`/bitbucketServerConfigs/`id``.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [String]
        attr_accessor :bitbucket_server_config
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # Metadata for `DeleteGitHubEnterpriseConfig` operation.
      class DeleteGitHubEnterpriseConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitHubEnterprise to be deleted. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
        end
      end
      
      # Metadata for `DeleteGitLabConfig` operation.
      class DeleteGitLabConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitLabConfig to be created. Format: `projects/`
        # project`/locations/`location`/gitlabConfigs/`id``.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [String]
        attr_accessor :gitlab_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
        end
      end
      
      # Metadata for the `DeleteWorkerPool` operation.
      class DeleteWorkerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the `WorkerPool` being deleted. Format: `projects/`
        # project`/locations/`location`/workerPools/`worker_pool``.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
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
      
      # A fatal problem encountered during the execution of the build.
      class FailureInfo
        include Google::Apis::Core::Hashable
      
        # Explains the failure issue in more detail using hard-coded text.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The name of the failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Container message for hashes of byte content of files, used in
      # SourceProvenance messages to verify integrity of source input to the build.
      class FileHashes
        include Google::Apis::Core::Hashable
      
        # Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::CloudbuildV1::HashProp>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
        end
      end
      
      # GitFileSource describes a file within a (possibly remote) code repository.
      class GitFileSource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the bitbucket server config. Format: `projects/`
        # project`/locations/`location`/bitbucketServerConfigs/`id``.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [String]
        attr_accessor :bitbucket_server_config
      
        # The full resource name of the github enterprise config. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``. `projects/`
        # project`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        # The path of the file, with the repo root as the root of the path.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # See RepoType above.
        # Corresponds to the JSON property `repoType`
        # @return [String]
        attr_accessor :repo_type
      
        # The branch, tag, arbitrary ref, or SHA version of the repo to use when
        # resolving the filename (optional). This field respects the same syntax/
        # resolution as described here: https://git-scm.com/docs/gitrevisions If
        # unspecified, the revision from which the trigger invocation originated is
        # assumed to be the revision from which to read the specified path.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # The URI of the repo. Either uri or repository can be specified. If unspecified,
        # the repo from which the trigger invocation originated is assumed to be the
        # repo from which to read the specified path.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
          @path = args[:path] if args.key?(:path)
          @repo_type = args[:repo_type] if args.key?(:repo_type)
          @revision = args[:revision] if args.key?(:revision)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # GitHubEnterpriseConfig represents a configuration for a GitHub Enterprise
      # server.
      class GitHubEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Required. The GitHub app id of the Cloud Build app on the GitHub Enterprise
        # server.
        # Corresponds to the JSON property `appId`
        # @return [Fixnum]
        attr_accessor :app_id
      
        # Output only. Time when the installation was associated with the project.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Name to display for this config.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The URL of the github enterprise host the configuration is for.
        # Corresponds to the JSON property `hostUrl`
        # @return [String]
        attr_accessor :host_url
      
        # Optional. The full resource name for the GitHubEnterpriseConfig For example: "
        # projects/`$project_id`/locations/`$location_id`/githubEnterpriseConfigs/`$
        # config_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The network to be used when reaching out to the GitHub Enterprise
        # server. The VPC network must be enabled for private service connection. This
        # should be set if the GitHub Enterprise server is hosted on-premises and not
        # reachable by public internet. If this field is left empty, no network peering
        # will occur and calls to the GitHub Enterprise server will be made over the
        # public internet. Must be in the format `projects/`project`/global/networks/`
        # network``, where `project` is a project number or id and `network` is the name
        # of a VPC network in the project.
        # Corresponds to the JSON property `peeredNetwork`
        # @return [String]
        attr_accessor :peered_network
      
        # GitHubEnterpriseSecrets represents the names of all necessary secrets in
        # Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
        # Corresponds to the JSON property `secrets`
        # @return [Google::Apis::CloudbuildV1::GitHubEnterpriseSecrets]
        attr_accessor :secrets
      
        # Optional. SSL certificate to use for requests to GitHub Enterprise.
        # Corresponds to the JSON property `sslCa`
        # @return [String]
        attr_accessor :ssl_ca
      
        # The key that should be attached to webhook calls to the ReceiveWebhook
        # endpoint.
        # Corresponds to the JSON property `webhookKey`
        # @return [String]
        attr_accessor :webhook_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @host_url = args[:host_url] if args.key?(:host_url)
          @name = args[:name] if args.key?(:name)
          @peered_network = args[:peered_network] if args.key?(:peered_network)
          @secrets = args[:secrets] if args.key?(:secrets)
          @ssl_ca = args[:ssl_ca] if args.key?(:ssl_ca)
          @webhook_key = args[:webhook_key] if args.key?(:webhook_key)
        end
      end
      
      # GitHubEnterpriseSecrets represents the names of all necessary secrets in
      # Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
      class GitHubEnterpriseSecrets
        include Google::Apis::Core::Hashable
      
        # The resource name for the OAuth client ID secret in Secret Manager.
        # Corresponds to the JSON property `oauthClientIdName`
        # @return [String]
        attr_accessor :oauth_client_id_name
      
        # The resource name for the OAuth client ID secret version in Secret Manager.
        # Corresponds to the JSON property `oauthClientIdVersionName`
        # @return [String]
        attr_accessor :oauth_client_id_version_name
      
        # The resource name for the OAuth secret in Secret Manager.
        # Corresponds to the JSON property `oauthSecretName`
        # @return [String]
        attr_accessor :oauth_secret_name
      
        # The resource name for the OAuth secret secret version in Secret Manager.
        # Corresponds to the JSON property `oauthSecretVersionName`
        # @return [String]
        attr_accessor :oauth_secret_version_name
      
        # The resource name for the private key secret.
        # Corresponds to the JSON property `privateKeyName`
        # @return [String]
        attr_accessor :private_key_name
      
        # The resource name for the private key secret version.
        # Corresponds to the JSON property `privateKeyVersionName`
        # @return [String]
        attr_accessor :private_key_version_name
      
        # The resource name for the webhook secret in Secret Manager.
        # Corresponds to the JSON property `webhookSecretName`
        # @return [String]
        attr_accessor :webhook_secret_name
      
        # The resource name for the webhook secret secret version in Secret Manager.
        # Corresponds to the JSON property `webhookSecretVersionName`
        # @return [String]
        attr_accessor :webhook_secret_version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth_client_id_name = args[:oauth_client_id_name] if args.key?(:oauth_client_id_name)
          @oauth_client_id_version_name = args[:oauth_client_id_version_name] if args.key?(:oauth_client_id_version_name)
          @oauth_secret_name = args[:oauth_secret_name] if args.key?(:oauth_secret_name)
          @oauth_secret_version_name = args[:oauth_secret_version_name] if args.key?(:oauth_secret_version_name)
          @private_key_name = args[:private_key_name] if args.key?(:private_key_name)
          @private_key_version_name = args[:private_key_version_name] if args.key?(:private_key_version_name)
          @webhook_secret_name = args[:webhook_secret_name] if args.key?(:webhook_secret_name)
          @webhook_secret_version_name = args[:webhook_secret_version_name] if args.key?(:webhook_secret_version_name)
        end
      end
      
      # GitHubEventsConfig describes the configuration of a trigger that creates a
      # build whenever a GitHub event is received.
      class GitHubEventsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the github enterprise config that should be
        # applied to this installation. For example: "projects/`$project_id`/locations/`$
        # location_id`/githubEnterpriseConfigs/`$config_id`"
        # Corresponds to the JSON property `enterpriseConfigResourceName`
        # @return [String]
        attr_accessor :enterprise_config_resource_name
      
        # The installationID that emits the GitHub event.
        # Corresponds to the JSON property `installationId`
        # @return [Fixnum]
        attr_accessor :installation_id
      
        # Name of the repository. For example: The name for https://github.com/
        # googlecloudplatform/cloud-builders is "cloud-builders".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Owner of the repository. For example: The owner for https://github.com/
        # googlecloudplatform/cloud-builders is "googlecloudplatform".
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # PullRequestFilter contains filter properties for matching GitHub Pull Requests.
        # Corresponds to the JSON property `pullRequest`
        # @return [Google::Apis::CloudbuildV1::PullRequestFilter]
        attr_accessor :pull_request
      
        # Push contains filter properties for matching GitHub git pushes.
        # Corresponds to the JSON property `push`
        # @return [Google::Apis::CloudbuildV1::PushFilter]
        attr_accessor :push
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enterprise_config_resource_name = args[:enterprise_config_resource_name] if args.key?(:enterprise_config_resource_name)
          @installation_id = args[:installation_id] if args.key?(:installation_id)
          @name = args[:name] if args.key?(:name)
          @owner = args[:owner] if args.key?(:owner)
          @pull_request = args[:pull_request] if args.key?(:pull_request)
          @push = args[:push] if args.key?(:push)
        end
      end
      
      # GitLabConfig represents the configuration for a GitLab integration.
      class GitLabConfig
        include Google::Apis::Core::Hashable
      
        # Connected GitLab.com or GitLabEnterprise repositories for this config.
        # Corresponds to the JSON property `connectedRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::GitLabRepositoryId>]
        attr_accessor :connected_repositories
      
        # Output only. Time when the config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise
        # integration.
        # Corresponds to the JSON property `enterpriseConfig`
        # @return [Google::Apis::CloudbuildV1::GitLabEnterpriseConfig]
        attr_accessor :enterprise_config
      
        # The resource name for the config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # GitLabSecrets represents the secrets in Secret Manager for a GitLab
        # integration.
        # Corresponds to the JSON property `secrets`
        # @return [Google::Apis::CloudbuildV1::GitLabSecrets]
        attr_accessor :secrets
      
        # Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Output only. UUID included in webhook requests. The UUID is used to look up
        # the corresponding config.
        # Corresponds to the JSON property `webhookKey`
        # @return [String]
        attr_accessor :webhook_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_repositories = args[:connected_repositories] if args.key?(:connected_repositories)
          @create_time = args[:create_time] if args.key?(:create_time)
          @enterprise_config = args[:enterprise_config] if args.key?(:enterprise_config)
          @name = args[:name] if args.key?(:name)
          @secrets = args[:secrets] if args.key?(:secrets)
          @username = args[:username] if args.key?(:username)
          @webhook_key = args[:webhook_key] if args.key?(:webhook_key)
        end
      end
      
      # GitLabConnectedRepository represents a GitLab connected repository request
      # response.
      class GitLabConnectedRepository
        include Google::Apis::Core::Hashable
      
        # The name of the `GitLabConfig` that added connected repository. Format: `
        # projects/`project`/locations/`location`/gitLabConfigs/`config``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # GitLabRepositoryId identifies a specific repository hosted on GitLab.com or
        # GitLabEnterprise
        # Corresponds to the JSON property `repo`
        # @return [Google::Apis::CloudbuildV1::GitLabRepositoryId]
        attr_accessor :repo
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudbuildV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @repo = args[:repo] if args.key?(:repo)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise
      # integration.
      class GitLabEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Immutable. The URI of the GitlabEnterprise host.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # ServiceDirectoryConfig represents Service Directory configuration for a SCM
        # host connection.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::CloudbuildV1::ServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The SSL certificate to use in requests to GitLab Enterprise instances.
        # Corresponds to the JSON property `sslCa`
        # @return [String]
        attr_accessor :ssl_ca
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @ssl_ca = args[:ssl_ca] if args.key?(:ssl_ca)
        end
      end
      
      # GitLabEventsConfig describes the configuration of a trigger that creates a
      # build whenever a GitLab event is received.
      class GitLabEventsConfig
        include Google::Apis::Core::Hashable
      
        # GitLabConfig represents the configuration for a GitLab integration.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [Google::Apis::CloudbuildV1::GitLabConfig]
        attr_accessor :gitlab_config
      
        # The GitLab config resource that this trigger config maps to.
        # Corresponds to the JSON property `gitlabConfigResource`
        # @return [String]
        attr_accessor :gitlab_config_resource
      
        # Namespace of the GitLab project.
        # Corresponds to the JSON property `projectNamespace`
        # @return [String]
        attr_accessor :project_namespace
      
        # PullRequestFilter contains filter properties for matching GitHub Pull Requests.
        # Corresponds to the JSON property `pullRequest`
        # @return [Google::Apis::CloudbuildV1::PullRequestFilter]
        attr_accessor :pull_request
      
        # Push contains filter properties for matching GitHub git pushes.
        # Corresponds to the JSON property `push`
        # @return [Google::Apis::CloudbuildV1::PushFilter]
        attr_accessor :push
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
          @gitlab_config_resource = args[:gitlab_config_resource] if args.key?(:gitlab_config_resource)
          @project_namespace = args[:project_namespace] if args.key?(:project_namespace)
          @pull_request = args[:pull_request] if args.key?(:pull_request)
          @push = args[:push] if args.key?(:push)
        end
      end
      
      # Proto Representing a GitLabRepository
      class GitLabRepository
        include Google::Apis::Core::Hashable
      
        # Link to the browse repo page on the GitLab instance
        # Corresponds to the JSON property `browseUri`
        # @return [String]
        attr_accessor :browse_uri
      
        # Description of the repository
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of the repository
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the repository
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # GitLabRepositoryId identifies a specific repository hosted on GitLab.com or
        # GitLabEnterprise
        # Corresponds to the JSON property `repositoryId`
        # @return [Google::Apis::CloudbuildV1::GitLabRepositoryId]
        attr_accessor :repository_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browse_uri = args[:browse_uri] if args.key?(:browse_uri)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @repository_id = args[:repository_id] if args.key?(:repository_id)
        end
      end
      
      # GitLabRepositoryId identifies a specific repository hosted on GitLab.com or
      # GitLabEnterprise
      class GitLabRepositoryId
        include Google::Apis::Core::Hashable
      
        # Required. Identifier for the repository. example: "namespace/project-slug",
        # namespace is usually the username or group ID
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The ID of the webhook that was created for receiving events from
        # this repo. We only create and manage a single webhook for each repo.
        # Corresponds to the JSON property `webhookId`
        # @return [Fixnum]
        attr_accessor :webhook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @webhook_id = args[:webhook_id] if args.key?(:webhook_id)
        end
      end
      
      # GitLabSecrets represents the secrets in Secret Manager for a GitLab
      # integration.
      class GitLabSecrets
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for the api access token’s secret version
        # Corresponds to the JSON property `apiAccessTokenVersion`
        # @return [String]
        attr_accessor :api_access_token_version
      
        # Required. Immutable. API Key that will be attached to webhook requests from
        # GitLab to Cloud Build.
        # Corresponds to the JSON property `apiKeyVersion`
        # @return [String]
        attr_accessor :api_key_version
      
        # Required. The resource name for the read access token’s secret version
        # Corresponds to the JSON property `readAccessTokenVersion`
        # @return [String]
        attr_accessor :read_access_token_version
      
        # Required. Immutable. The resource name for the webhook secret’s secret version.
        # Once this field has been set, it cannot be changed. If you need to change it,
        # please create another GitLabConfig.
        # Corresponds to the JSON property `webhookSecretVersion`
        # @return [String]
        attr_accessor :webhook_secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_access_token_version = args[:api_access_token_version] if args.key?(:api_access_token_version)
          @api_key_version = args[:api_key_version] if args.key?(:api_key_version)
          @read_access_token_version = args[:read_access_token_version] if args.key?(:read_access_token_version)
          @webhook_secret_version = args[:webhook_secret_version] if args.key?(:webhook_secret_version)
        end
      end
      
      # GitRepoSource describes a repo and ref of a code repository.
      class GitRepoSource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the bitbucket server config. Format: `projects/`
        # project`/locations/`location`/bitbucketServerConfigs/`id``.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [String]
        attr_accessor :bitbucket_server_config
      
        # The full resource name of the github enterprise config. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``. `projects/`
        # project`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        # The branch or tag to use. Must start with "refs/" (required).
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # See RepoType below.
        # Corresponds to the JSON property `repoType`
        # @return [String]
        attr_accessor :repo_type
      
        # The URI of the repo. Either uri or repository can be specified and is required.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
          @ref = args[:ref] if args.key?(:ref)
          @repo_type = args[:repo_type] if args.key?(:repo_type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # HTTPDelivery is the delivery configuration for an HTTP notification.
      class HttpDelivery
        include Google::Apis::Core::Hashable
      
        # The URI to which JSON-containing HTTP POST requests should be sent.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Container message for hash values.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # The type of hash that was performed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The hash value.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
      
      # Pairs a set of secret environment variables mapped to encrypted values with
      # the Cloud KMS key to use to decrypt the value.
      class InlineSecret
        include Google::Apis::Core::Hashable
      
        # Map of environment variable name to its encrypted value. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step. Values can be at most 64 KB in size. There can be at
        # most 100 secret values across all of a build's secrets.
        # Corresponds to the JSON property `envMap`
        # @return [Hash<String,String>]
        attr_accessor :env_map
      
        # Resource name of Cloud KMS crypto key to decrypt the encrypted value. In
        # format: projects/*/locations/*/keyRings/*/cryptoKeys/*
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env_map = args[:env_map] if args.key?(:env_map)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # RPC response object returned by ListBitbucketServerConfigs RPC method.
      class ListBitbucketServerConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A list of BitbucketServerConfigs
        # Corresponds to the JSON property `bitbucketServerConfigs`
        # @return [Array<Google::Apis::CloudbuildV1::BitbucketServerConfig>]
        attr_accessor :bitbucket_server_configs
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_configs = args[:bitbucket_server_configs] if args.key?(:bitbucket_server_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # RPC response object returned by the ListBitbucketServerRepositories RPC method.
      class ListBitbucketServerRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # List of Bitbucket Server repositories.
        # Corresponds to the JSON property `bitbucketServerRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::BitbucketServerRepository>]
        attr_accessor :bitbucket_server_repositories
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_repositories = args[:bitbucket_server_repositories] if args.key?(:bitbucket_server_repositories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response containing existing `BuildTriggers`.
      class ListBuildTriggersResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # `BuildTriggers` for the project, sorted by `create_time` descending.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::CloudbuildV1::BuildTrigger>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @triggers = args[:triggers] if args.key?(:triggers)
        end
      end
      
      # Response including listed builds.
      class ListBuildsResponse
        include Google::Apis::Core::Hashable
      
        # Builds will be sorted by `create_time`, descending.
        # Corresponds to the JSON property `builds`
        # @return [Array<Google::Apis::CloudbuildV1::Build>]
        attr_accessor :builds
      
        # Token to receive the next page of results. This will be absent if the end of
        # the response list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builds = args[:builds] if args.key?(:builds)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # RPC response object returned by ListGitLabConfigs RPC method.
      class ListGitLabConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A list of GitLabConfigs
        # Corresponds to the JSON property `gitlabConfigs`
        # @return [Array<Google::Apis::CloudbuildV1::GitLabConfig>]
        attr_accessor :gitlab_configs
      
        # A token that can be sent as `page_token` to retrieve the next page If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gitlab_configs = args[:gitlab_configs] if args.key?(:gitlab_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # RPC response object returned by the ListGitLabRepositories RPC method.
      class ListGitLabRepositoriesResponse
        include Google::Apis::Core::Hashable
      
        # List of GitLab repositories
        # Corresponds to the JSON property `gitlabRepositories`
        # @return [Array<Google::Apis::CloudbuildV1::GitLabRepository>]
        attr_accessor :gitlab_repositories
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gitlab_repositories = args[:gitlab_repositories] if args.key?(:gitlab_repositories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # RPC response object returned by ListGithubEnterpriseConfigs RPC method.
      class ListGithubEnterpriseConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A list of GitHubEnterpriseConfigs
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::CloudbuildV1::GitHubEnterpriseConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response containing existing `WorkerPools`.
      class ListWorkerPoolsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through large result sets. Provide this value
        # in a subsequent ListWorkerPoolsRequest to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # `WorkerPools` for the specified project.
        # Corresponds to the JSON property `workerPools`
        # @return [Array<Google::Apis::CloudbuildV1::WorkerPool>]
        attr_accessor :worker_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @worker_pools = args[:worker_pools] if args.key?(:worker_pools)
        end
      end
      
      # A Maven artifact to upload to Artifact Registry upon successful completion of
      # all build steps.
      class MavenArtifact
        include Google::Apis::Core::Hashable
      
        # Maven `artifactId` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `artifactId`
        # @return [String]
        attr_accessor :artifact_id
      
        # Maven `groupId` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # Path to an artifact in the build's workspace to be uploaded to Artifact
        # Registry. This can be either an absolute path, e.g. /workspace/my-app/target/
        # my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/
        # my-app-1.0.SNAPSHOT.jar.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$
        # PROJECT/$REPOSITORY" Artifact in the workspace specified by path will be
        # uploaded to Artifact Registry with this location as a prefix.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Maven `version` value used when uploading the artifact to Artifact Registry.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_id = args[:artifact_id] if args.key?(:artifact_id)
          @group_id = args[:group_id] if args.key?(:group_id)
          @path = args[:path] if args.key?(:path)
          @repository = args[:repository] if args.key?(:repository)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Defines the network configuration for the pool.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Option to configure network egress for the workers.
        # Corresponds to the JSON property `egressOption`
        # @return [String]
        attr_accessor :egress_option
      
        # Required. Immutable. The network definition that the workers are peered to. If
        # this section is left empty, the workers will be peered to `WorkerPool.
        # project_id` on the service producer network. Must be in the format `projects/`
        # project`/global/networks/`network``, where ``project`` is a project number,
        # such as `12345`, and ``network`` is the name of a VPC network in the project.
        # See [Understanding network configuration options](https://cloud.google.com/
        # build/docs/private-pools/set-up-private-pool-environment)
        # Corresponds to the JSON property `peeredNetwork`
        # @return [String]
        attr_accessor :peered_network
      
        # Immutable. Subnet IP range within the peered network. This is specified in
        # CIDR notation. The IP and prefix size are both optional. If unspecified, the
        # default value for IP is blank (will use an automatic value from the peered
        # network), and the prefix size will default to 24 bits. e.g. `192.168.0.0/30`
        # would specify a subnet mask of 192.168.0.0 with a prefix size of 30 bits. `192.
        # 168.0.0` would specify a subnet mask of 192.168.0.0 with a prefix size of 24
        # bits (the default prefix size). `/16` would specify a prefix size of 16 bits,
        # with an unspecified IP.
        # Corresponds to the JSON property `peeredNetworkIpRange`
        # @return [String]
        attr_accessor :peered_network_ip_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_option = args[:egress_option] if args.key?(:egress_option)
          @peered_network = args[:peered_network] if args.key?(:peered_network)
          @peered_network_ip_range = args[:peered_network_ip_range] if args.key?(:peered_network_ip_range)
        end
      end
      
      # Notification is the container which holds the data that is relevant to this
      # particular notification.
      class Notification
        include Google::Apis::Core::Hashable
      
        # The filter string to use for notification filtering. Currently, this is
        # assumed to be a CEL program. See https://opensource.google/projects/cel for
        # more.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # HTTPDelivery is the delivery configuration for an HTTP notification.
        # Corresponds to the JSON property `httpDelivery`
        # @return [Google::Apis::CloudbuildV1::HttpDelivery]
        attr_accessor :http_delivery
      
        # SlackDelivery is the delivery configuration for delivering Slack messages via
        # webhooks. See Slack webhook documentation at: https://api.slack.com/messaging/
        # webhooks.
        # Corresponds to the JSON property `slackDelivery`
        # @return [Google::Apis::CloudbuildV1::SlackDelivery]
        attr_accessor :slack_delivery
      
        # SMTPDelivery is the delivery configuration for an SMTP (email) notification.
        # Corresponds to the JSON property `smtpDelivery`
        # @return [Google::Apis::CloudbuildV1::SmtpDelivery]
        attr_accessor :smtp_delivery
      
        # Escape hatch for users to supply custom delivery configs.
        # Corresponds to the JSON property `structDelivery`
        # @return [Hash<String,Object>]
        attr_accessor :struct_delivery
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @http_delivery = args[:http_delivery] if args.key?(:http_delivery)
          @slack_delivery = args[:slack_delivery] if args.key?(:slack_delivery)
          @smtp_delivery = args[:smtp_delivery] if args.key?(:smtp_delivery)
          @struct_delivery = args[:struct_delivery] if args.key?(:struct_delivery)
        end
      end
      
      # NotifierConfig is the top-level configuration message.
      class NotifierConfig
        include Google::Apis::Core::Hashable
      
        # The API version of this configuration format.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The type of notifier to use (e.g. SMTPNotifier).
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # NotifierMetadata contains the data which can be used to reference or describe
        # this notifier.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::CloudbuildV1::NotifierMetadata]
        attr_accessor :metadata
      
        # NotifierSpec is the configuration container for notifications.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::CloudbuildV1::NotifierSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # NotifierMetadata contains the data which can be used to reference or describe
      # this notifier.
      class NotifierMetadata
        include Google::Apis::Core::Hashable
      
        # The human-readable and user-given name for the notifier. For example: "repo-
        # merge-email-notifier".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The string representing the name and version of notifier to deploy. Expected
        # to be of the form of "/:". For example: "gcr.io/my-project/notifiers/smtp:1.2.
        # 34".
        # Corresponds to the JSON property `notifier`
        # @return [String]
        attr_accessor :notifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @notifier = args[:notifier] if args.key?(:notifier)
        end
      end
      
      # NotifierSecret is the container that maps a secret name (reference) to its
      # Google Cloud Secret Manager resource path.
      class NotifierSecret
        include Google::Apis::Core::Hashable
      
        # Name is the local name of the secret, such as the verbatim string "my-smtp-
        # password".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value is interpreted to be a resource path for fetching the actual (versioned)
        # secret data for this secret. For example, this would be a Google Cloud Secret
        # Manager secret version resource path like: "projects/my-project/secrets/my-
        # secret/versions/latest".
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # NotifierSecretRef contains the reference to a secret stored in the
      # corresponding NotifierSpec.
      class NotifierSecretRef
        include Google::Apis::Core::Hashable
      
        # The value of `secret_ref` should be a `name` that is registered in a `Secret`
        # in the `secrets` list of the `Spec`.
        # Corresponds to the JSON property `secretRef`
        # @return [String]
        attr_accessor :secret_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_ref = args[:secret_ref] if args.key?(:secret_ref)
        end
      end
      
      # NotifierSpec is the configuration container for notifications.
      class NotifierSpec
        include Google::Apis::Core::Hashable
      
        # Notification is the container which holds the data that is relevant to this
        # particular notification.
        # Corresponds to the JSON property `notification`
        # @return [Google::Apis::CloudbuildV1::Notification]
        attr_accessor :notification
      
        # Configurations for secret resources used by this particular notifier.
        # Corresponds to the JSON property `secrets`
        # @return [Array<Google::Apis::CloudbuildV1::NotifierSecret>]
        attr_accessor :secrets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notification = args[:notification] if args.key?(:notification)
          @secrets = args[:secrets] if args.key?(:secrets)
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
        # @return [Google::Apis::CloudbuildV1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Details about how a build should be executed on a `WorkerPool`. See [running
      # builds in a private pool](https://cloud.google.com/build/docs/private-pools/
      # run-builds-in-private-pool) for more information.
      class PoolOption
        include Google::Apis::Core::Hashable
      
        # The `WorkerPool` resource to execute the build on. You must have `cloudbuild.
        # workerpools.use` on the project hosting the WorkerPool. Format projects/`
        # project`/locations/`location`/workerPools/`workerPoolId`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Configuration for a V1 `PrivatePool`.
      class PrivatePoolV1Config
        include Google::Apis::Core::Hashable
      
        # Defines the network configuration for the pool.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::CloudbuildV1::NetworkConfig]
        attr_accessor :network_config
      
        # Defines the configuration to be used for creating workers in the pool.
        # Corresponds to the JSON property `workerConfig`
        # @return [Google::Apis::CloudbuildV1::WorkerConfig]
        attr_accessor :worker_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_config = args[:network_config] if args.key?(:network_config)
          @worker_config = args[:worker_config] if args.key?(:worker_config)
        end
      end
      
      # Metadata for `ProcessAppManifestCallback` operation.
      class ProcessAppManifestCallbackOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitHubEnterprise to be created. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
        end
      end
      
      # PubsubConfig describes the configuration of a trigger that creates a build
      # whenever a Pub/Sub message is published.
      class PubsubConfig
        include Google::Apis::Core::Hashable
      
        # Service account that will make the push request.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Potential issues with the underlying Pub/Sub subscription configuration. Only
        # populated on get requests.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Name of the subscription. Format is `projects/`project`/
        # subscriptions/`subscription``.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        # The name of the topic from which this subscription is receiving messages.
        # Format is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @state = args[:state] if args.key?(:state)
          @subscription = args[:subscription] if args.key?(:subscription)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # PullRequestFilter contains filter properties for matching GitHub Pull Requests.
      class PullRequestFilter
        include Google::Apis::Core::Hashable
      
        # Regex of branches to match. The syntax of the regular expressions accepted is
        # the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/
        # Syntax
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # Configure builds to run whether a repository owner or collaborator need to
        # comment `/gcbrun`.
        # Corresponds to the JSON property `commentControl`
        # @return [String]
        attr_accessor :comment_control
      
        # If true, branches that do NOT match the git_ref will trigger a build.
        # Corresponds to the JSON property `invertRegex`
        # @return [Boolean]
        attr_accessor :invert_regex
        alias_method :invert_regex?, :invert_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch = args[:branch] if args.key?(:branch)
          @comment_control = args[:comment_control] if args.key?(:comment_control)
          @invert_regex = args[:invert_regex] if args.key?(:invert_regex)
        end
      end
      
      # Push contains filter properties for matching GitHub git pushes.
      class PushFilter
        include Google::Apis::Core::Hashable
      
        # Regexes matching branches to build. The syntax of the regular expressions
        # accepted is the syntax accepted by RE2 and described at https://github.com/
        # google/re2/wiki/Syntax
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # When true, only trigger a build if the revision regex does NOT match the
        # git_ref regex.
        # Corresponds to the JSON property `invertRegex`
        # @return [Boolean]
        attr_accessor :invert_regex
        alias_method :invert_regex?, :invert_regex
      
        # Regexes matching tags to build. The syntax of the regular expressions accepted
        # is the syntax accepted by RE2 and described at https://github.com/google/re2/
        # wiki/Syntax
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch = args[:branch] if args.key?(:branch)
          @invert_regex = args[:invert_regex] if args.key?(:invert_regex)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Python package to upload to Artifact Registry upon successful completion of
      # all build steps. A package can encapsulate multiple objects to be uploaded to
      # a single repository.
      class PythonPackage
        include Google::Apis::Core::Hashable
      
        # Path globs used to match files in the build's workspace. For Python/ Twine,
        # this is usually `dist/*`, and sometimes additionally an `.asc` file.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$
        # PROJECT/$REPOSITORY" Files in the workspace matching any path pattern will be
        # uploaded to Artifact Registry with this location as a prefix.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
          @repository = args[:repository] if args.key?(:repository)
        end
      end
      
      # ReceiveTriggerWebhookResponse [Experimental] is the response object for the
      # ReceiveTriggerWebhook method.
      class ReceiveTriggerWebhookResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # RPC request object accepted by RemoveBitbucketServerConnectedRepository RPC
      # method.
      class RemoveBitbucketServerConnectedRepositoryRequest
        include Google::Apis::Core::Hashable
      
        # BitbucketServerRepositoryId identifies a specific repository hosted on a
        # Bitbucket Server.
        # Corresponds to the JSON property `connectedRepository`
        # @return [Google::Apis::CloudbuildV1::BitbucketServerRepositoryId]
        attr_accessor :connected_repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_repository = args[:connected_repository] if args.key?(:connected_repository)
        end
      end
      
      # RPC request object accepted by RemoveGitLabConnectedRepository RPC method.
      class RemoveGitLabConnectedRepositoryRequest
        include Google::Apis::Core::Hashable
      
        # GitLabRepositoryId identifies a specific repository hosted on GitLab.com or
        # GitLabEnterprise
        # Corresponds to the JSON property `connectedRepository`
        # @return [Google::Apis::CloudbuildV1::GitLabRepositoryId]
        attr_accessor :connected_repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_repository = args[:connected_repository] if args.key?(:connected_repository)
        end
      end
      
      # Location of the source in a Google Cloud Source Repository.
      class RepoSource
        include Google::Apis::Core::Hashable
      
        # Regex matching branches to build. The syntax of the regular expressions
        # accepted is the syntax accepted by RE2 and described at https://github.com/
        # google/re2/wiki/Syntax
        # Corresponds to the JSON property `branchName`
        # @return [String]
        attr_accessor :branch_name
      
        # Explicit commit SHA to build.
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        # Directory, relative to the source root, in which to run the build. This must
        # be a relative path. If a step's `dir` is specified and is an absolute path,
        # this value is ignored for that step's execution.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Only trigger a build if the revision regex does NOT match the revision regex.
        # Corresponds to the JSON property `invertRegex`
        # @return [Boolean]
        attr_accessor :invert_regex
        alias_method :invert_regex?, :invert_regex
      
        # ID of the project that owns the Cloud Source Repository. If omitted, the
        # project ID requesting the build is assumed.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the Cloud Source Repository.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        # Substitutions to use in a triggered build. Should only be used with
        # RunBuildTrigger
        # Corresponds to the JSON property `substitutions`
        # @return [Hash<String,String>]
        attr_accessor :substitutions
      
        # Regex matching tags to build. The syntax of the regular expressions accepted
        # is the syntax accepted by RE2 and described at https://github.com/google/re2/
        # wiki/Syntax
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_name = args[:branch_name] if args.key?(:branch_name)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
          @dir = args[:dir] if args.key?(:dir)
          @invert_regex = args[:invert_regex] if args.key?(:invert_regex)
          @project_id = args[:project_id] if args.key?(:project_id)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
          @substitutions = args[:substitutions] if args.key?(:substitutions)
          @tag_name = args[:tag_name] if args.key?(:tag_name)
        end
      end
      
      # The configuration of a trigger that creates a build whenever an event from
      # Repo API is received.
      class RepositoryEventConfig
        include Google::Apis::Core::Hashable
      
        # PullRequestFilter contains filter properties for matching GitHub Pull Requests.
        # Corresponds to the JSON property `pullRequest`
        # @return [Google::Apis::CloudbuildV1::PullRequestFilter]
        attr_accessor :pull_request
      
        # Push contains filter properties for matching GitHub git pushes.
        # Corresponds to the JSON property `push`
        # @return [Google::Apis::CloudbuildV1::PushFilter]
        attr_accessor :push
      
        # The resource name of the Repo API resource.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Output only. The type of the SCM vendor the repository points to.
        # Corresponds to the JSON property `repositoryType`
        # @return [String]
        attr_accessor :repository_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pull_request = args[:pull_request] if args.key?(:pull_request)
          @push = args[:push] if args.key?(:push)
          @repository = args[:repository] if args.key?(:repository)
          @repository_type = args[:repository_type] if args.key?(:repository_type)
        end
      end
      
      # Artifacts created by the build pipeline.
      class Results
        include Google::Apis::Core::Hashable
      
        # Path to the artifact manifest for non-container artifacts uploaded to Cloud
        # Storage. Only populated when artifacts are uploaded to Cloud Storage.
        # Corresponds to the JSON property `artifactManifest`
        # @return [String]
        attr_accessor :artifact_manifest
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `artifactTiming`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :artifact_timing
      
        # List of build step digests, in the order corresponding to build step indices.
        # Corresponds to the JSON property `buildStepImages`
        # @return [Array<String>]
        attr_accessor :build_step_images
      
        # List of build step outputs, produced by builder images, in the order
        # corresponding to build step indices. [Cloud Builders](https://cloud.google.com/
        # cloud-build/docs/cloud-builders) can produce this output by writing to `$
        # BUILDER_OUTPUT/output`. Only the first 4KB of data is stored.
        # Corresponds to the JSON property `buildStepOutputs`
        # @return [Array<String>]
        attr_accessor :build_step_outputs
      
        # Container images that were built as a part of the build.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::CloudbuildV1::BuiltImage>]
        attr_accessor :images
      
        # Maven artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `mavenArtifacts`
        # @return [Array<Google::Apis::CloudbuildV1::UploadedMavenArtifact>]
        attr_accessor :maven_artifacts
      
        # Number of non-container artifacts uploaded to Cloud Storage. Only populated
        # when artifacts are uploaded to Cloud Storage.
        # Corresponds to the JSON property `numArtifacts`
        # @return [Fixnum]
        attr_accessor :num_artifacts
      
        # Python artifacts uploaded to Artifact Registry at the end of the build.
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<Google::Apis::CloudbuildV1::UploadedPythonPackage>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_manifest = args[:artifact_manifest] if args.key?(:artifact_manifest)
          @artifact_timing = args[:artifact_timing] if args.key?(:artifact_timing)
          @build_step_images = args[:build_step_images] if args.key?(:build_step_images)
          @build_step_outputs = args[:build_step_outputs] if args.key?(:build_step_outputs)
          @images = args[:images] if args.key?(:images)
          @maven_artifacts = args[:maven_artifacts] if args.key?(:maven_artifacts)
          @num_artifacts = args[:num_artifacts] if args.key?(:num_artifacts)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # Specifies a build to retry.
      class RetryBuildRequest
        include Google::Apis::Core::Hashable
      
        # Required. Build ID of the original build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the `Build` to retry. Format: `projects/`project`/locations/`
        # location`/builds/`build``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Specifies a build trigger to run and the source to use.
      class RunBuildTriggerRequest
        include Google::Apis::Core::Hashable
      
        # Required. ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :source
      
        # Required. ID of the trigger.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @source = args[:source] if args.key?(:source)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # SMTPDelivery is the delivery configuration for an SMTP (email) notification.
      class SmtpDelivery
        include Google::Apis::Core::Hashable
      
        # This is the SMTP account/email that appears in the `From:` of the email. If
        # empty, it is assumed to be sender.
        # Corresponds to the JSON property `fromAddress`
        # @return [String]
        attr_accessor :from_address
      
        # NotifierSecretRef contains the reference to a secret stored in the
        # corresponding NotifierSpec.
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::CloudbuildV1::NotifierSecretRef]
        attr_accessor :password
      
        # The SMTP port of the server.
        # Corresponds to the JSON property `port`
        # @return [String]
        attr_accessor :port
      
        # This is the list of addresses to which we send the email (i.e. in the `To:` of
        # the email).
        # Corresponds to the JSON property `recipientAddresses`
        # @return [Array<String>]
        attr_accessor :recipient_addresses
      
        # This is the SMTP account/email that is used to send the message.
        # Corresponds to the JSON property `senderAddress`
        # @return [String]
        attr_accessor :sender_address
      
        # The address of the SMTP server.
        # Corresponds to the JSON property `server`
        # @return [String]
        attr_accessor :server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_address = args[:from_address] if args.key?(:from_address)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @recipient_addresses = args[:recipient_addresses] if args.key?(:recipient_addresses)
          @sender_address = args[:sender_address] if args.key?(:sender_address)
          @server = args[:server] if args.key?(:server)
        end
      end
      
      # Pairs a set of secret environment variables containing encrypted values with
      # the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `
      # available_secrets` instead of using `kmsKeyName` with `secret`. For
      # instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/
      # use-encrypted-credentials.
      class Secret
        include Google::Apis::Core::Hashable
      
        # Cloud KMS key name to use to decrypt these envs.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Map of environment variable name to its encrypted value. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step. Values can be at most 64 KB in size. There can be at
        # most 100 secret values across all of a build's secrets.
        # Corresponds to the JSON property `secretEnv`
        # @return [Hash<String,String>]
        attr_accessor :secret_env
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @secret_env = args[:secret_env] if args.key?(:secret_env)
        end
      end
      
      # Pairs a secret environment variable with a SecretVersion in Secret Manager.
      class SecretManagerSecret
        include Google::Apis::Core::Hashable
      
        # Environment variable name to associate with the secret. Secret environment
        # variables must be unique across all of a build's secrets, and must be used by
        # at least one build step.
        # Corresponds to the JSON property `env`
        # @return [String]
        attr_accessor :env
      
        # Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # Secrets and secret environment variables.
      class Secrets
        include Google::Apis::Core::Hashable
      
        # Secrets encrypted with KMS key and the associated secret environment variable.
        # Corresponds to the JSON property `inline`
        # @return [Array<Google::Apis::CloudbuildV1::InlineSecret>]
        attr_accessor :inline
      
        # Secrets in Secret Manager and associated secret environment variable.
        # Corresponds to the JSON property `secretManager`
        # @return [Array<Google::Apis::CloudbuildV1::SecretManagerSecret>]
        attr_accessor :secret_manager
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline = args[:inline] if args.key?(:inline)
          @secret_manager = args[:secret_manager] if args.key?(:secret_manager)
        end
      end
      
      # ServiceDirectoryConfig represents Service Directory configuration for a SCM
      # host connection.
      class ServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # The Service Directory service name. Format: projects/`project`/locations/`
        # location`/namespaces/`namespace`/services/`service`.
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
      
      # SlackDelivery is the delivery configuration for delivering Slack messages via
      # webhooks. See Slack webhook documentation at: https://api.slack.com/messaging/
      # webhooks.
      class SlackDelivery
        include Google::Apis::Core::Hashable
      
        # NotifierSecretRef contains the reference to a secret stored in the
        # corresponding NotifierSpec.
        # Corresponds to the JSON property `webhookUri`
        # @return [Google::Apis::CloudbuildV1::NotifierSecretRef]
        attr_accessor :webhook_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_uri = args[:webhook_uri] if args.key?(:webhook_uri)
        end
      end
      
      # Location of the source in a supported storage service.
      class Source
        include Google::Apis::Core::Hashable
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `repoSource`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :repo_source
      
        # Location of the source in an archive file in Google Cloud Storage.
        # Corresponds to the JSON property `storageSource`
        # @return [Google::Apis::CloudbuildV1::StorageSource]
        attr_accessor :storage_source
      
        # Location of the source manifest in Google Cloud Storage. This feature is in
        # Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-
        # builders/tree/master/gcs-fetcher).
        # Corresponds to the JSON property `storageSourceManifest`
        # @return [Google::Apis::CloudbuildV1::StorageSourceManifest]
        attr_accessor :storage_source_manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repo_source = args[:repo_source] if args.key?(:repo_source)
          @storage_source = args[:storage_source] if args.key?(:storage_source)
          @storage_source_manifest = args[:storage_source_manifest] if args.key?(:storage_source_manifest)
        end
      end
      
      # Provenance of the source. Ways to find the original source, or verify that
      # some source was used for this build.
      class SourceProvenance
        include Google::Apis::Core::Hashable
      
        # Output only. Hash(es) of the build source, which can be used to verify that
        # the original source integrity was maintained in the build. Note that `
        # FileHashes` will only be populated if `BuildOptions` has requested a `
        # SourceProvenanceHash`. The keys to this map are file paths used as build
        # source and the values contain the hash values for those files. If the build
        # source came in a single package such as a gzipped tarfile (`.tar.gz`), the `
        # FileHash` will be for the single path to that file.
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::CloudbuildV1::FileHashes>]
        attr_accessor :file_hashes
      
        # Location of the source in a Google Cloud Source Repository.
        # Corresponds to the JSON property `resolvedRepoSource`
        # @return [Google::Apis::CloudbuildV1::RepoSource]
        attr_accessor :resolved_repo_source
      
        # Location of the source in an archive file in Google Cloud Storage.
        # Corresponds to the JSON property `resolvedStorageSource`
        # @return [Google::Apis::CloudbuildV1::StorageSource]
        attr_accessor :resolved_storage_source
      
        # Location of the source manifest in Google Cloud Storage. This feature is in
        # Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-
        # builders/tree/master/gcs-fetcher).
        # Corresponds to the JSON property `resolvedStorageSourceManifest`
        # @return [Google::Apis::CloudbuildV1::StorageSourceManifest]
        attr_accessor :resolved_storage_source_manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @resolved_repo_source = args[:resolved_repo_source] if args.key?(:resolved_repo_source)
          @resolved_storage_source = args[:resolved_storage_source] if args.key?(:resolved_storage_source)
          @resolved_storage_source_manifest = args[:resolved_storage_source_manifest] if args.key?(:resolved_storage_source_manifest)
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
      
      # Location of the source in an archive file in Google Cloud Storage.
      class StorageSource
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket containing the source (see [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Google Cloud Storage generation for the object. If the generation is omitted,
        # the latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Google Cloud Storage object containing the source. This object must be a
        # zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Location of the source manifest in Google Cloud Storage. This feature is in
      # Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-
      # builders/tree/master/gcs-fetcher).
      class StorageSourceManifest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket containing the source manifest (see [Bucket Name
        # Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)
        # ).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Google Cloud Storage generation for the object. If the generation is omitted,
        # the latest generation will be used.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Google Cloud Storage object containing the source manifest. This object must
        # be a JSON file.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Start and end times for a build execution phase.
      class TimeSpan
        include Google::Apis::Core::Hashable
      
        # End of time span.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start of time span.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata for `UpdateBitbucketServerConfig` operation.
      class UpdateBitbucketServerConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the BitbucketServerConfig to be updated. Format: `
        # projects/`project`/locations/`location`/bitbucketServerConfigs/`id``.
        # Corresponds to the JSON property `bitbucketServerConfig`
        # @return [String]
        attr_accessor :bitbucket_server_config
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitbucket_server_config = args[:bitbucket_server_config] if args.key?(:bitbucket_server_config)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # Metadata for `UpdateGitHubEnterpriseConfig` operation.
      class UpdateGitHubEnterpriseConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitHubEnterprise to be updated. Format: `projects/`
        # project`/locations/`location`/githubEnterpriseConfigs/`id``.
        # Corresponds to the JSON property `githubEnterpriseConfig`
        # @return [String]
        attr_accessor :github_enterprise_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @github_enterprise_config = args[:github_enterprise_config] if args.key?(:github_enterprise_config)
        end
      end
      
      # Metadata for `UpdateGitLabConfig` operation.
      class UpdateGitLabConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the GitLabConfig to be created. Format: `projects/`
        # project`/locations/`location`/gitlabConfigs/`id``.
        # Corresponds to the JSON property `gitlabConfig`
        # @return [String]
        attr_accessor :gitlab_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gitlab_config = args[:gitlab_config] if args.key?(:gitlab_config)
        end
      end
      
      # Metadata for the `UpdateWorkerPool` operation.
      class UpdateWorkerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Time the operation was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the `WorkerPool` being updated. Format: `projects/`
        # project`/locations/`location`/workerPools/`worker_pool``.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # A Maven artifact uploaded using the MavenArtifact directive.
      class UploadedMavenArtifact
        include Google::Apis::Core::Hashable
      
        # Container message for hashes of byte content of files, used in
        # SourceProvenance messages to verify integrity of source input to the build.
        # Corresponds to the JSON property `fileHashes`
        # @return [Google::Apis::CloudbuildV1::FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :push_timing
      
        # URI of the uploaded artifact.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Artifact uploaded using the PythonPackage directive.
      class UploadedPythonPackage
        include Google::Apis::Core::Hashable
      
        # Container message for hashes of byte content of files, used in
        # SourceProvenance messages to verify integrity of source input to the build.
        # Corresponds to the JSON property `fileHashes`
        # @return [Google::Apis::CloudbuildV1::FileHashes]
        attr_accessor :file_hashes
      
        # Start and end times for a build execution phase.
        # Corresponds to the JSON property `pushTiming`
        # @return [Google::Apis::CloudbuildV1::TimeSpan]
        attr_accessor :push_timing
      
        # URI of the uploaded artifact.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @push_timing = args[:push_timing] if args.key?(:push_timing)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Volume describes a Docker container volume which is mounted into build steps
      # in order to persist files across build step execution.
      class Volume
        include Google::Apis::Core::Hashable
      
        # Name of the volume to mount. Volume names must be unique per build step and
        # must be valid names for Docker volumes. Each named volume must be used by at
        # least two build steps.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Path at which to mount the volume. Paths must be absolute and cannot conflict
        # with other volume paths on the same build step or with certain reserved volume
        # paths.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A non-fatal problem encountered during the execution of the build.
      class Warning
        include Google::Apis::Core::Hashable
      
        # The priority for this warning.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Explanation of the warning generated.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # WebhookConfig describes the configuration of a trigger that creates a build
      # whenever a webhook is sent to a trigger's webhook URL.
      class WebhookConfig
        include Google::Apis::Core::Hashable
      
        # Required. Resource name for the secret required as a URL parameter.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # Potential issues with the underlying Pub/Sub subscription configuration. Only
        # populated on get requests.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret = args[:secret] if args.key?(:secret)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Defines the configuration to be used for creating workers in the pool.
      class WorkerConfig
        include Google::Apis::Core::Hashable
      
        # Size of the disk attached to the worker, in GB. See [Worker pool config file](
        # https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-
        # schema). Specify a value of up to 1000. If `0` is specified, Cloud Build will
        # use a standard disk size.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Machine type of a worker, such as `e2-medium`. See [Worker pool config file](
        # https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-
        # schema). If left blank, Cloud Build will use a sensible default.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # Configuration for a `WorkerPool`. Cloud Build owns and maintains a pool of
      # workers for general use and have no access to a project's private network. By
      # default, builds submitted to Cloud Build will use a worker from this pool. If
      # your build needs access to resources on a private network, create and use a `
      # WorkerPool` to run your builds. Private `WorkerPool`s give your builds access
      # to any single VPC network that you administer, including any on-prem resources
      # connected to that VPC network. For an overview of private pools, see [Private
      # pools overview](https://cloud.google.com/build/docs/private-pools/private-
      # pools-overview).
      class WorkerPool
        include Google::Apis::Core::Hashable
      
        # User specified annotations. See https://google.aip.dev/128#annotations for
        # more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Time at which the request to create the `WorkerPool` was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the request to delete the `WorkerPool` was received.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A user-specified, human-readable name for the `WorkerPool`. If provided, this
        # value must be 1-63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Checksum computed by the server. May be sent on update and delete
        # requests to ensure that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource name of the `WorkerPool`, with format `projects/`
        # project`/locations/`location`/workerPools/`worker_pool``. The value of ``
        # worker_pool`` is provided by `worker_pool_id` in `CreateWorkerPool` request
        # and the value of ``location`` is determined by the endpoint accessed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for a V1 `PrivatePool`.
        # Corresponds to the JSON property `privatePoolV1Config`
        # @return [Google::Apis::CloudbuildV1::PrivatePoolV1Config]
        attr_accessor :private_pool_v1_config
      
        # Output only. `WorkerPool` state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A unique identifier for the `WorkerPool`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the request to update the `WorkerPool` was received.
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
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @private_pool_v1_config = args[:private_pool_v1_config] if args.key?(:private_pool_v1_config)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
