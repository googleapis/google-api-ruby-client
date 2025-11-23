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
    module FirebaseapphostingV1
      
      # The URI of an storage archive or a signed URL to use as the build source.
      class ArchiveSource
        include Google::Apis::Core::Hashable
      
        # Metadata for the user who started the build.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::FirebaseapphostingV1::SourceUserMetadata]
        attr_accessor :author
      
        # Optional. An optional message that describes the uploaded version of the
        # source code.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Signed URL to an archive in a storage bucket.
        # Corresponds to the JSON property `externalSignedUri`
        # @return [String]
        attr_accessor :external_signed_uri
      
        # Optional. Relative path in the archive.
        # Corresponds to the JSON property `rootDirectory`
        # @return [String]
        attr_accessor :root_directory
      
        # URI to an archive in Cloud Storage. The object must be a zipped (.zip) or
        # gzipped archive file (.tar.gz) containing source to deploy.
        # Corresponds to the JSON property `userStorageUri`
        # @return [String]
        attr_accessor :user_storage_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @description = args[:description] if args.key?(:description)
          @external_signed_uri = args[:external_signed_uri] if args.key?(:external_signed_uri)
          @root_directory = args[:root_directory] if args.key?(:root_directory)
          @user_storage_uri = args[:user_storage_uri] if args.key?(:user_storage_uri)
        end
      end
      
      # A backend is the primary resource of App Hosting.
      class Backend
        include Google::Apis::Core::Hashable
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/
        # firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
        # associated with the backend.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # The connection to an external source repository to watch for event-driven
        # updates to the backend.
        # Corresponds to the JSON property `codebase`
        # @return [Google::Apis::FirebaseapphostingV1::Codebase]
        attr_accessor :codebase
      
        # Output only. Time at which the backend was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the backend was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The environment name of the backend, used to load environment
        # variables from environment specific configuration.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Output only. Server-computed checksum based on other values; may be sent on
        # update or delete to ensure operation is done on expected resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. A list of the resources managed by this backend.
        # Corresponds to the JSON property `managedResources`
        # @return [Array<Google::Apis::FirebaseapphostingV1::ManagedResource>]
        attr_accessor :managed_resources
      
        # Optional. Deprecated: Use `environment` instead.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Identifier. The resource name of the backend. Format: `projects/`project`/
        # locations/`locationId`/backends/`backendId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that, if true, indicates that the system is working to
        # make adjustments to the backend during a LRO.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Optional. A field that, if true, indicates that incoming request logs are
        # disabled for this backend. Incoming request logs are enabled by default.
        # Corresponds to the JSON property `requestLogsDisabled`
        # @return [Boolean]
        attr_accessor :request_logs_disabled
        alias_method :request_logs_disabled?, :request_logs_disabled
      
        # Required. The name of the service account used for Cloud Build and Cloud Run.
        # Should have the role roles/firebaseapphosting.computeRunner or equivalent
        # permissions.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Required. Immutable. Specifies how App Hosting will serve the content for this
        # backend. It will either be contained to a single region (REGIONAL_STRICT) or
        # allowed to use App Hosting's global-replicated serving infrastructure (
        # GLOBAL_ACCESS).
        # Corresponds to the JSON property `servingLocality`
        # @return [String]
        attr_accessor :serving_locality
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the backend was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The primary URI to communicate with the backend.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @app_id = args[:app_id] if args.key?(:app_id)
          @codebase = args[:codebase] if args.key?(:codebase)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment = args[:environment] if args.key?(:environment)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @managed_resources = args[:managed_resources] if args.key?(:managed_resources)
          @mode = args[:mode] if args.key?(:mode)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @request_logs_disabled = args[:request_logs_disabled] if args.key?(:request_logs_disabled)
          @service_account = args[:service_account] if args.key?(:service_account)
          @serving_locality = args[:serving_locality] if args.key?(:serving_locality)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A single build for a backend, at a specific point codebase reference tag and
      # point in time. Encapsulates several resources, including an Artifact Registry
      # container image, a Cloud Build invocation that built the image, and the Cloud
      # Run revision that uses that image.
      class Build
        include Google::Apis::Core::Hashable
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The location of the [Cloud Build logs](https://cloud.google.com/
        # build/docs/view-build-results) for the build process.
        # Corresponds to the JSON property `buildLogsUri`
        # @return [String]
        attr_accessor :build_logs_uri
      
        # Additional configuration of the backend for this build.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::FirebaseapphostingV1::Config]
        attr_accessor :config
      
        # Output only. Time at which the build was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the build was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The environment name of the backend when this build was created.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Output only. A list of all errors that occurred during an App Hosting build.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Error>]
        attr_accessor :errors
      
        # Output only. Server-computed checksum based on other values; may be sent on
        # update or delete to ensure operation is done on expected resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The Artifact Registry [container image](https://cloud.google.com/
        # artifact-registry/docs/reference/rest/v1/projects.locations.repositories.
        # dockerImages) URI, used by the Cloud Run [`revision`](https://cloud.google.com/
        # run/docs/reference/rest/v2/projects.locations.services.revisions) for this
        # build.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the build. Format: `projects/`project`/
        # locations/`locationId`/backends/`backendId`/builds/`buildId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that, if true, indicates that the build has an ongoing
        # LRO.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # The source for the build.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::FirebaseapphostingV1::BuildSource]
        attr_accessor :source
      
        # Output only. The state of the build.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the build was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @build_logs_uri = args[:build_logs_uri] if args.key?(:build_logs_uri)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment = args[:environment] if args.key?(:environment)
          @errors = args[:errors] if args.key?(:errors)
          @etag = args[:etag] if args.key?(:etag)
          @image = args[:image] if args.key?(:image)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @source = args[:source] if args.key?(:source)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The source for the build.
      class BuildSource
        include Google::Apis::Core::Hashable
      
        # The URI of an storage archive or a signed URL to use as the build source.
        # Corresponds to the JSON property `archive`
        # @return [Google::Apis::FirebaseapphostingV1::ArchiveSource]
        attr_accessor :archive
      
        # A codebase source, representing the state of the codebase that the build will
        # be created at.
        # Corresponds to the JSON property `codebase`
        # @return [Google::Apis::FirebaseapphostingV1::CodebaseSource]
        attr_accessor :codebase
      
        # The URI of an Artifact Registry [container image](https://cloud.google.com/
        # artifact-registry/docs/reference/rest/v1/projects.locations.repositories.
        # dockerImages) to use as the build source.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::FirebaseapphostingV1::ContainerSource]
        attr_accessor :container
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive = args[:archive] if args.key?(:archive)
          @codebase = args[:codebase] if args.key?(:codebase)
          @container = args[:container] if args.key?(:container)
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
      
      # The connection to an external source repository to watch for event-driven
      # updates to the backend.
      class Codebase
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for the Developer Connect [`gitRepositoryLink`](
        # https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.
        # locations.connections.gitRepositoryLinks) connected to this backend, in the
        # format: `projects/`project`/locations/`location`/connections/`connection`/
        # gitRepositoryLinks/`repositoryLink`` The connection for the `gitRepositoryLink`
        # must made be using the Firebase App Hosting GitHub App via the Firebase
        # Console.
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # Optional. If `repository` is provided, the directory relative to the root of
        # the repository to use as the root for the deployed web app.
        # Corresponds to the JSON property `rootDirectory`
        # @return [String]
        attr_accessor :root_directory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] if args.key?(:repository)
          @root_directory = args[:root_directory] if args.key?(:root_directory)
        end
      end
      
      # A codebase source, representing the state of the codebase that the build will
      # be created at.
      class CodebaseSource
        include Google::Apis::Core::Hashable
      
        # Version control metadata for a user associated with a resolved codebase.
        # Currently assumes a Git user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::FirebaseapphostingV1::UserMetadata]
        attr_accessor :author
      
        # The branch in the codebase to build from, using the latest commit.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # The commit in the codebase to build from.
        # Corresponds to the JSON property `commit`
        # @return [String]
        attr_accessor :commit
      
        # Output only. The message of a codebase change.
        # Corresponds to the JSON property `commitMessage`
        # @return [String]
        attr_accessor :commit_message
      
        # Output only. The time the change was made.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # Output only. The human-friendly name to use for this Codebase when displaying
        # a build. We use the first eight characters of the SHA-1 hash for GitHub.com.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The full SHA-1 hash of a Git commit, if available.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # Output only. A URI linking to the codebase on an hosting provider's website.
        # May not be valid if the commit has been rebased or force-pushed out of
        # existence in the linked repository.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @branch = args[:branch] if args.key?(:branch)
          @commit = args[:commit] if args.key?(:commit)
          @commit_message = args[:commit_message] if args.key?(:commit_message)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Additional configuration of the backend for this build.
      class Config
        include Google::Apis::Core::Hashable
      
        # Optional. Supplied environment variables for a specific build. Provided at
        # Build creation time and immutable afterwards. This field is only applicable
        # for Builds using a build image - (e.g., ContainerSource or ArchiveSource with
        # locally_build_source) Attempts to set this for other build types will result
        # in an error
        # Corresponds to the JSON property `env`
        # @return [Array<Google::Apis::FirebaseapphostingV1::EnvironmentVariable>]
        attr_accessor :env
      
        # Additional configuration to apply to the Cloud Run [`service`](https://cloud.
        # google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-
        # service).
        # Corresponds to the JSON property `runConfig`
        # @return [Google::Apis::FirebaseapphostingV1::RunConfig]
        attr_accessor :run_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env = args[:env] if args.key?(:env)
          @run_config = args[:run_config] if args.key?(:run_config)
        end
      end
      
      # The URI of an Artifact Registry [container image](https://cloud.google.com/
      # artifact-registry/docs/reference/rest/v1/projects.locations.repositories.
      # dockerImages) to use as the build source.
      class ContainerSource
        include Google::Apis::Core::Hashable
      
        # Required. A URI representing a container for the backend to use.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # Additional metadata for operations on custom domains.
      class CustomDomainOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The custom domain's `CertState`, which must be `CERT_ACTIVE` for
        # the create operations to complete.
        # Corresponds to the JSON property `certState`
        # @return [String]
        attr_accessor :cert_state
      
        # Output only. The custom domain's `HostState`, which must be `HOST_ACTIVE` for
        # Create operations of the domain name this `CustomDomain` refers toto complete.
        # Corresponds to the JSON property `hostState`
        # @return [String]
        attr_accessor :host_state
      
        # Output only. A list of issues that are currently preventing the operation from
        # completing. These are generally DNS-related issues encountered when querying a
        # domain's records or attempting to mint an SSL certificate.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Status>]
        attr_accessor :issues
      
        # Output only. A list of steps that the user must complete to migrate their
        # domain to App Hosting without downtime.
        # Corresponds to the JSON property `liveMigrationSteps`
        # @return [Array<Google::Apis::FirebaseapphostingV1::LiveMigrationStep>]
        attr_accessor :live_migration_steps
      
        # Output only. The custom domain's `OwnershipState`, which must be `
        # OWNERSHIP_ACTIVE` for the create operations to complete.
        # Corresponds to the JSON property `ownershipState`
        # @return [String]
        attr_accessor :ownership_state
      
        # Output only. A set of DNS record updates to perform, to allow App Hosting to
        # serve secure content on the domain.
        # Corresponds to the JSON property `quickSetupUpdates`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsUpdates>]
        attr_accessor :quick_setup_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_state = args[:cert_state] if args.key?(:cert_state)
          @host_state = args[:host_state] if args.key?(:host_state)
          @issues = args[:issues] if args.key?(:issues)
          @live_migration_steps = args[:live_migration_steps] if args.key?(:live_migration_steps)
          @ownership_state = args[:ownership_state] if args.key?(:ownership_state)
          @quick_setup_updates = args[:quick_setup_updates] if args.key?(:quick_setup_updates)
        end
      end
      
      # The status of a custom domain's linkage to a backend.
      class CustomDomainStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Tracks SSL certificate status for the domain.
        # Corresponds to the JSON property `certState`
        # @return [String]
        attr_accessor :cert_state
      
        # Output only. Tracks whether a custom domain is detected as appropriately
        # directing traffic to App Hosting.
        # Corresponds to the JSON property `hostState`
        # @return [String]
        attr_accessor :host_state
      
        # Output only. A list of issues with domain configuration. Allows users to self-
        # correct problems with DNS records.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Status>]
        attr_accessor :issues
      
        # Output only. Tracks whether the backend is permitted to serve content on the
        # domain, based off the domain's DNS records.
        # Corresponds to the JSON property `ownershipState`
        # @return [String]
        attr_accessor :ownership_state
      
        # Output only. Lists the records that must added or removed to a custom domain's
        # DNS in order to finish setup and start serving content. Field is present
        # during onboarding. Also present after onboarding if one or more of the above
        # states is not *_ACTIVE, indicating the domain's DNS records are in a bad state.
        # Corresponds to the JSON property `requiredDnsUpdates`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsUpdates>]
        attr_accessor :required_dns_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_state = args[:cert_state] if args.key?(:cert_state)
          @host_state = args[:host_state] if args.key?(:host_state)
          @issues = args[:issues] if args.key?(:issues)
          @ownership_state = args[:ownership_state] if args.key?(:ownership_state)
          @required_dns_updates = args[:required_dns_updates] if args.key?(:required_dns_updates)
        end
      end
      
      # A representation of a DNS records for a domain. DNS records are resource
      # records that define how systems and services should behave when handling
      # requests for a domain. For example, when you add `A` records to your domain's
      # DNS records, you're informing other systems (such as your users' web browsers)
      # to contact those IPv4 addresses to retrieve resources relevant to your domain (
      # such as your App Hosting files).
      class DnsRecord
        include Google::Apis::Core::Hashable
      
        # Output only. The domain the record pertains to, e.g. `foo.bar.com.`.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Output only. The data of the record. The meaning of the value depends on
        # record type: - A and AAAA: IP addresses for the domain. - CNAME: Another
        # domain to check for records. - TXT: Arbitrary text strings associated with the
        # domain. App Hosting uses TXT records to determine which Firebase projects have
        # permission to act on the domain's behalf. - CAA: The record's flags, tag, and
        # value, e.g. `0 issue "pki.goog"`.
        # Corresponds to the JSON property `rdata`
        # @return [String]
        attr_accessor :rdata
      
        # Output only. An enum that indicates which state(s) this DNS record applies to.
        # Populated for all records with an `ADD` or `REMOVE` required action.
        # Corresponds to the JSON property `relevantState`
        # @return [Array<String>]
        attr_accessor :relevant_state
      
        # Output only. An enum that indicates the a required action for this record.
        # Populated when the record is part of a required change in a `DnsUpdates` `
        # discovered` or `desired` record set.
        # Corresponds to the JSON property `requiredAction`
        # @return [String]
        attr_accessor :required_action
      
        # Output only. The record's type, which determines what data the record contains.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @rdata = args[:rdata] if args.key?(:rdata)
          @relevant_state = args[:relevant_state] if args.key?(:relevant_state)
          @required_action = args[:required_action] if args.key?(:required_action)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A set of DNS records relevant to the setup and maintenance of a custom domain
      # in App Hosting.
      class DnsRecordSet
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `checkError`
        # @return [Google::Apis::FirebaseapphostingV1::Status]
        attr_accessor :check_error
      
        # Output only. The domain name the record set pertains to.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Output only. Records on the domain.
        # Corresponds to the JSON property `records`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsRecord>]
        attr_accessor :records
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_error = args[:check_error] if args.key?(:check_error)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @records = args[:records] if args.key?(:records)
        end
      end
      
      # A set of DNS record updates that you should make to allow App Hosting to serve
      # secure content in response to requests against your domain. These updates
      # present the current state of your domain's and related subdomains' DNS records
      # when App Hosting last queried them, and the desired set of records that App
      # Hosting needs to see before your custom domain can be fully active.
      class DnsUpdates
        include Google::Apis::Core::Hashable
      
        # Output only. The last time App Hosting checked your custom domain's DNS
        # records.
        # Corresponds to the JSON property `checkTime`
        # @return [String]
        attr_accessor :check_time
      
        # Output only. The set of DNS records App Hosting needs in order to be able to
        # serve secure content on the domain.
        # Corresponds to the JSON property `desired`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsRecordSet>]
        attr_accessor :desired
      
        # Output only. The set of DNS records App Hosting discovered when inspecting a
        # domain.
        # Corresponds to the JSON property `discovered`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsRecordSet>]
        attr_accessor :discovered
      
        # Output only. The domain name the DNS updates pertain to.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_time = args[:check_time] if args.key?(:check_time)
          @desired = args[:desired] if args.key?(:desired)
          @discovered = args[:discovered] if args.key?(:discovered)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
        end
      end
      
      # A domain name that is associated with a backend.
      class Domain
        include Google::Apis::Core::Hashable
      
        # Optional. Annotations as key value pairs.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Time at which the domain was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The status of a custom domain's linkage to a backend.
        # Corresponds to the JSON property `customDomainStatus`
        # @return [Google::Apis::FirebaseapphostingV1::CustomDomainStatus]
        attr_accessor :custom_domain_status
      
        # Output only. Time at which the domain was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Whether the domain is disabled. Defaults to false.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. Mutable human-readable name for the domain. 63 character limit. e.g.
        # `prod domain`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Server-computed checksum based on other values; may be sent on
        # update or delete to ensure operation is done on expected resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the domain, e.g. `/projects/p/locations/l/
        # backends/b/domains/foo.com`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that, if true, indicates that the build has an ongoing
        # LRO.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Indicates whether App Hosting will serve content on the domain.
        # Corresponds to the JSON property `serve`
        # @return [Google::Apis::FirebaseapphostingV1::ServingBehavior]
        attr_accessor :serve
      
        # Output only. The type of the domain.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the domain was last updated.
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
          @custom_domain_status = args[:custom_domain_status] if args.key?(:custom_domain_status)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @serve = args[:serve] if args.key?(:serve)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the metadata of a long-running operation on domains.
      class DomainOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Additional metadata for operations on custom domains.
        # Corresponds to the JSON property `customDomainOperationMetadata`
        # @return [Google::Apis::FirebaseapphostingV1::CustomDomainOperationMetadata]
        attr_accessor :custom_domain_operation_metadata
      
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
          @custom_domain_operation_metadata = args[:custom_domain_operation_metadata] if args.key?(:custom_domain_operation_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
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
      
      # Environment variables for this build.
      class EnvironmentVariable
        include Google::Apis::Core::Hashable
      
        # Optional. Where this variable should be made available. If left unspecified,
        # will be available in both BUILD and BACKEND.
        # Corresponds to the JSON property `availability`
        # @return [Array<String>]
        attr_accessor :availability
      
        # A fully qualified secret version. The value of the secret will be accessed
        # once while building the application and once per cold start of the container
        # at runtime. The service account used by Cloud Build and by Cloud Run must each
        # have the `secretmanager.versions.access` permission on the secret.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # A plaintext value. This value is encrypted at rest, but all project readers
        # can view the value when reading your backend configuration.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Required. The name of the environment variable. - Must be a valid environment
        # variable name (e.g. A-Z or underscores). - May not start with "FIREBASE" or "
        # GOOGLE". - May not be a reserved environment variable for KNative/Cloud Run
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @secret = args[:secret] if args.key?(:secret)
          @value = args[:value] if args.key?(:value)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # The container for the rpc status and source for any errors found during the
      # build process.
      class Error
        include Google::Apis::Core::Hashable
      
        # Output only. Resource link
        # Corresponds to the JSON property `cloudResource`
        # @return [String]
        attr_accessor :cloud_resource
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FirebaseapphostingV1::Status]
        attr_accessor :error
      
        # Output only. The source of the error for the build, if in a `FAILED` state.
        # Corresponds to the JSON property `errorSource`
        # @return [String]
        attr_accessor :error_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_resource = args[:cloud_resource] if args.key?(:cloud_resource)
          @error = args[:error] if args.key?(:error)
          @error_source = args[:error_source] if args.key?(:error_source)
        end
      end
      
      # Message for response to list backends
      class ListBackendsResponse
        include Google::Apis::Core::Hashable
      
        # The list of backends
        # Corresponds to the JSON property `backends`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Backend>]
        attr_accessor :backends
      
        # A token identifying the next page of results the server should return.
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
          @backends = args[:backends] if args.key?(:backends)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to list builds.
      class ListBuildsResponse
        include Google::Apis::Core::Hashable
      
        # The list of builds.
        # Corresponds to the JSON property `builds`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Build>]
        attr_accessor :builds
      
        # A token identifying the next page of results the server should return.
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
          @builds = args[:builds] if args.key?(:builds)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to list domains.
      class ListDomainsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of domains.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Domain>]
        attr_accessor :domains
      
        # Output only. A token identifying the next page of results the server should
        # return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Location>]
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
        # @return [Array<Google::Apis::FirebaseapphostingV1::Operation>]
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
      
      # Message for response to list rollouts.
      class ListRolloutsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying the next page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of rollouts.
        # Corresponds to the JSON property `rollouts`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Rollout>]
        attr_accessor :rollouts
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rollouts = args[:rollouts] if args.key?(:rollouts)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A set of updates including ACME challenges and DNS records that allow App
      # Hosting to create an SSL certificate and establish project ownership for your
      # domain name before you direct traffic to App Hosting servers. Use these
      # updates to facilitate zero downtime migrations to App Hosting from other
      # services. After you've made the recommended updates, check your custom domain'
      # s `ownershipState` and `certState`. To avoid downtime, they should be `
      # OWNERSHIP_ACTIVE` and `CERT_ACTIVE`, respectively, before you update your `A`
      # and `AAAA` records.
      class LiveMigrationStep
        include Google::Apis::Core::Hashable
      
        # Output only. DNS updates to facilitate your domain's zero-downtime migration
        # to App Hosting.
        # Corresponds to the JSON property `dnsUpdates`
        # @return [Array<Google::Apis::FirebaseapphostingV1::DnsUpdates>]
        attr_accessor :dns_updates
      
        # Output only. Issues that prevent the current step from completing.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::FirebaseapphostingV1::Status>]
        attr_accessor :issues
      
        # Output only. One or more states from the `CustomDomainStatus` of the migrating
        # domain that this step is attempting to make ACTIVE. For example, if the step
        # is attempting to mint an SSL certificate, this field will include `CERT_STATE`.
        # Corresponds to the JSON property `relevantDomainStates`
        # @return [Array<String>]
        attr_accessor :relevant_domain_states
      
        # Output only. The state of the live migration step, indicates whether you
        # should work to complete the step now, in the future, or have already completed
        # it.
        # Corresponds to the JSON property `stepState`
        # @return [String]
        attr_accessor :step_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_updates = args[:dns_updates] if args.key?(:dns_updates)
          @issues = args[:issues] if args.key?(:issues)
          @relevant_domain_states = args[:relevant_domain_states] if args.key?(:relevant_domain_states)
          @step_state = args[:step_state] if args.key?(:step_state)
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
      
      # An external resource managed by App Hosting on the project.
      class ManagedResource
        include Google::Apis::Core::Hashable
      
        # A managed Cloud Run [`service`](https://cloud.google.com/run/docs/reference/
        # rest/v2/projects.locations.services#resource:-service).
        # Corresponds to the JSON property `runService`
        # @return [Google::Apis::FirebaseapphostingV1::RunService]
        attr_accessor :run_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_service = args[:run_service] if args.key?(:run_service)
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
        # @return [Google::Apis::FirebaseapphostingV1::Status]
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
      
      # Represents the metadata of a long-running operation.
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
      
      # Specifies redirect behavior for a domain.
      class Redirect
        include Google::Apis::Core::Hashable
      
        # Optional. The status code to use in a redirect response. Must be a valid HTTP
        # 3XX status code. Defaults to 302 if not present.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Required. The URI of the redirect's intended destination. This URI will be
        # prepended to the original request path. URI without a scheme are assumed to be
        # HTTPS.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A single rollout of a build for a backend.
      class Rollout
        include Google::Apis::Core::Hashable
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Required. Immutable. The name of a build that already exists. It doesn't have
        # to be built; a rollout will wait for a build to be ready before updating
        # traffic.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. Time at which the rollout was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the rollout was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FirebaseapphostingV1::Status]
        attr_accessor :error
      
        # Output only. Server-computed checksum based on other values; may be sent on
        # update or delete to ensure operation is done on expected resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the rollout. Format: `projects/`project`/
        # locations/`locationId`/backends/`backendId`/rollouts/`rolloutId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that, if true, indicates that the Rollout currently has
        # an LRO.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The state of the rollout.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the rollout was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @build = args[:build] if args.key?(:build)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The policy for how automatic builds and rollouts are triggered and rolled out.
      class RolloutPolicy
        include Google::Apis::Core::Hashable
      
        # If set, specifies a branch that triggers a new build to be started with this
        # policy. Otherwise, no automatic rollouts will happen.
        # Corresponds to the JSON property `codebaseBranch`
        # @return [String]
        attr_accessor :codebase_branch
      
        # Optional. A flag that, if true, prevents automatic rollouts from being created
        # via this RolloutPolicy.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Output only. If `disabled` is set, the time at which the automatic rollouts
        # were disabled.
        # Corresponds to the JSON property `disabledTime`
        # @return [String]
        attr_accessor :disabled_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @codebase_branch = args[:codebase_branch] if args.key?(:codebase_branch)
          @disabled = args[:disabled] if args.key?(:disabled)
          @disabled_time = args[:disabled_time] if args.key?(:disabled_time)
        end
      end
      
      # Additional configuration to apply to the Cloud Run [`service`](https://cloud.
      # google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-
      # service).
      class RunConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Maximum number of requests that each Cloud Run instance can receive.
        # By default, each instance can receive Cloud Run's default of up to 80 requests
        # at the same time. Concurrency can be set to any integer value up to 1000.
        # Corresponds to the JSON property `concurrency`
        # @return [Fixnum]
        attr_accessor :concurrency
      
        # Optional. Number of CPUs used for each serving instance. By default, cpu
        # defaults to the Cloud Run's default of 1.0. CPU can be set to value 1, 2, 4, 6,
        # or 8 CPUs, and for less than 1 CPU, a value from 0.08 to less than 1.00, in
        # increments of 0.01. If you set a value of less than 1 CPU, you must set
        # concurrency to 1, and CPU will only be allocated during request processing.
        # Increasing CPUs limit may require increase in memory limits: - 4 CPUs: at
        # least 2 GiB - 6 CPUs: at least 4 GiB - 8 CPUs: at least 4 GiB
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Optional. Number of Cloud Run instances to maintain at maximum for each
        # revision. By default, each Cloud Run [`service`](https://cloud.google.com/run/
        # docs/reference/rest/v2/projects.locations.services#resource:-service) scales
        # out to Cloud Run's default of a maximum of 100 instances. The maximum
        # max_instances limit is based on your quota. See https://cloud.google.com/run/
        # docs/configuring/max-instances#limits.
        # Corresponds to the JSON property `maxInstances`
        # @return [Fixnum]
        attr_accessor :max_instances
      
        # Optional. Amount of memory allocated for each serving instance in MiB. By
        # default, memory defaults to the Cloud Run's default where each instance is
        # allocated 512 MiB of memory. Memory can be set to any integer value between
        # 128 to 32768. Increasing memory limit may require increase in CPUs limits: -
        # Over 4 GiB: at least 2 CPUs - Over 8 GiB: at least 4 CPUs - Over 16 GiB: at
        # least 6 CPUs - Over 24 GiB: at least 8 CPUs
        # Corresponds to the JSON property `memoryMib`
        # @return [Fixnum]
        attr_accessor :memory_mib
      
        # Optional. Number of Cloud Run instances to maintain at minimum for each Cloud
        # Run Service. By default, there are no minimum. Even if the service splits
        # traffic across multiple revisions, the total number of instances for a service
        # will be capped at this value.
        # Corresponds to the JSON property `minInstances`
        # @return [Fixnum]
        attr_accessor :min_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrency = args[:concurrency] if args.key?(:concurrency)
          @cpu = args[:cpu] if args.key?(:cpu)
          @max_instances = args[:max_instances] if args.key?(:max_instances)
          @memory_mib = args[:memory_mib] if args.key?(:memory_mib)
          @min_instances = args[:min_instances] if args.key?(:min_instances)
        end
      end
      
      # A managed Cloud Run [`service`](https://cloud.google.com/run/docs/reference/
      # rest/v2/projects.locations.services#resource:-service).
      class RunService
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the Cloud Run [`service`](https://cloud.google.com/run/
        # docs/reference/rest/v2/projects.locations.services#resource:-service), in the
        # format: `projects/`project`/locations/`location`/services/`serviceId``
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
      
      # Indicates whether App Hosting will serve content on the domain.
      class ServingBehavior
        include Google::Apis::Core::Hashable
      
        # Specifies redirect behavior for a domain.
        # Corresponds to the JSON property `redirect`
        # @return [Google::Apis::FirebaseapphostingV1::Redirect]
        attr_accessor :redirect
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @redirect = args[:redirect] if args.key?(:redirect)
        end
      end
      
      # Metadata for the user who started the build.
      class SourceUserMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The user-chosen displayname. May be empty.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The account email linked to the EUC that created the build. May
        # be a service account or other robot account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The URI of a profile photo associated with the user who created
        # the build.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
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
      
      # Controls traffic configuration for the backend.
      class Traffic
        include Google::Apis::Core::Hashable
      
        # Optional. Unstructured key value map that may be set by external tools to
        # store and arbitrary metadata. They are not queryable and should be preserved
        # when modifying objects.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Time at which the backend was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A list of traffic splits that together represent where traffic is being routed.
        # Corresponds to the JSON property `current`
        # @return [Google::Apis::FirebaseapphostingV1::TrafficSet]
        attr_accessor :current
      
        # Output only. Server-computed checksum based on other values; may be sent on
        # update or delete to ensure operation is done on expected resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Unstructured key value map that can be used to organize and
        # categorize objects.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the backend's traffic. Format: `projects/`
        # project`/locations/`locationId`/backends/`backendId`/traffic`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that, if true, indicates that the system is working to
        # make the backend's `current` match the requested `target` list.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # The policy for how automatic builds and rollouts are triggered and rolled out.
        # Corresponds to the JSON property `rolloutPolicy`
        # @return [Google::Apis::FirebaseapphostingV1::RolloutPolicy]
        attr_accessor :rollout_policy
      
        # A list of traffic splits that together represent where traffic is being routed.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::FirebaseapphostingV1::TrafficSet]
        attr_accessor :target
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Time at which the backend was last updated.
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
          @current = args[:current] if args.key?(:current)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @rollout_policy = args[:rollout_policy] if args.key?(:rollout_policy)
          @target = args[:target] if args.key?(:target)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A list of traffic splits that together represent where traffic is being routed.
      class TrafficSet
        include Google::Apis::Core::Hashable
      
        # Required. The list of traffic splits.
        # Corresponds to the JSON property `splits`
        # @return [Array<Google::Apis::FirebaseapphostingV1::TrafficSplit>]
        attr_accessor :splits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @splits = args[:splits] if args.key?(:splits)
        end
      end
      
      # The traffic allocation for the backend.
      class TrafficSplit
        include Google::Apis::Core::Hashable
      
        # Required. The build that traffic is being routed to.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Required. The percentage of traffic to send to the build. Currently must be
        # 100% or 0%.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
          @percent = args[:percent] if args.key?(:percent)
        end
      end
      
      # Version control metadata for a user associated with a resolved codebase.
      # Currently assumes a Git user.
      class UserMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The 'name' field in a Git user's git.config. Required by Git.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The 'email' field in a Git user's git.config, if available.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The URI of an image file associated with the user's account in an
        # external source control provider, if available.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
    end
  end
end
