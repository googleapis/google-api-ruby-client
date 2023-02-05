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
    module ApigeeregistryV1
      
      # A top-level description of an API. Produced by producers and are commitments
      # to provide services.
      class Api
        include Google::Apis::Core::Hashable
      
        # Annotations attach non-identifying metadata to resources. Annotation keys and
        # values are less restricted than those of labels, but should be generally used
        # for small values of broad interest. Larger, topic- specific metadata should be
        # stored in Artifacts.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # A user-definable description of the availability of this service. Format: free-
        # form, but we expect single words that describe availability, e.g., "NONE", "
        # TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A detailed description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human-meaningful name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels attach identifying metadata to resources. Identifying metadata can be
        # used to filter list operations. Label keys and values can be no longer than 64
        # characters (Unicode codepoints), can only contain lowercase letters, numeric
        # characters, underscores, and dashes. International characters are allowed. No
        # more than 64 user labels can be associated with one resource (System labels
        # are excluded). See https://goo.gl/xmQnxf for more information and examples of
        # labels. System reserved label keys are prefixed with `apigeeregistry.
        # googleapis.com/` and cannot be changed.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The recommended deployment of the API. Format: `projects/`project`/locations/`
        # location`/apis/`api`/deployments/`deployment``
        # Corresponds to the JSON property `recommendedDeployment`
        # @return [String]
        attr_accessor :recommended_deployment
      
        # The recommended version of the API. Format: `projects/`project`/locations/`
        # location`/apis/`api`/versions/`version``
        # Corresponds to the JSON property `recommendedVersion`
        # @return [String]
        attr_accessor :recommended_version
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @availability = args[:availability] if args.key?(:availability)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @recommended_deployment = args[:recommended_deployment] if args.key?(:recommended_deployment)
          @recommended_version = args[:recommended_version] if args.key?(:recommended_version)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Describes a service running at particular address that provides a particular
      # version of an API. ApiDeployments have revisions which correspond to different
      # configurations of a single deployment in time. Revision identifiers should be
      # updated whenever the served API spec or endpoint address changes.
      class ApiDeployment
        include Google::Apis::Core::Hashable
      
        # Text briefly describing how to access the endpoint. Changes to this value will
        # not affect the revision.
        # Corresponds to the JSON property `accessGuidance`
        # @return [String]
        attr_accessor :access_guidance
      
        # Annotations attach non-identifying metadata to resources. Annotation keys and
        # values are less restricted than those of labels, but should be generally used
        # for small values of broad interest. Larger, topic- specific metadata should be
        # stored in Artifacts.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # The full resource name (including revision ID) of the spec of the API being
        # served by the deployment. Changes to this value will update the revision.
        # Format: `projects/`project`/locations/`location`/apis/`api`/versions/`version`/
        # specs/`spec@revision``
        # Corresponds to the JSON property `apiSpecRevision`
        # @return [String]
        attr_accessor :api_spec_revision
      
        # Output only. Creation timestamp; when the deployment resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A detailed description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human-meaningful name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The address where the deployment is serving. Changes to this value will update
        # the revision.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # The address of the external channel of the API (e.g., the Developer Portal).
        # Changes to this value will not affect the revision.
        # Corresponds to the JSON property `externalChannelUri`
        # @return [String]
        attr_accessor :external_channel_uri
      
        # Text briefly identifying the intended audience of the API. Changes to this
        # value will not affect the revision.
        # Corresponds to the JSON property `intendedAudience`
        # @return [String]
        attr_accessor :intended_audience
      
        # Labels attach identifying metadata to resources. Identifying metadata can be
        # used to filter list operations. Label keys and values can be no longer than 64
        # characters (Unicode codepoints), can only contain lowercase letters, numeric
        # characters, underscores and dashes. International characters are allowed. No
        # more than 64 user labels can be associated with one resource (System labels
        # are excluded). See https://goo.gl/xmQnxf for more information and examples of
        # labels. System reserved label keys are prefixed with `apigeeregistry.
        # googleapis.com/` and cannot be changed.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Revision creation timestamp; when the represented revision was
        # created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. Immutable. The revision ID of the deployment. A new revision is
        # committed whenever the deployment contents are changed. The format is an 8-
        # character hexadecimal string.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Output only. Last update timestamp: when the represented revision was last
        # modified.
        # Corresponds to the JSON property `revisionUpdateTime`
        # @return [String]
        attr_accessor :revision_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_guidance = args[:access_guidance] if args.key?(:access_guidance)
          @annotations = args[:annotations] if args.key?(:annotations)
          @api_spec_revision = args[:api_spec_revision] if args.key?(:api_spec_revision)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @external_channel_uri = args[:external_channel_uri] if args.key?(:external_channel_uri)
          @intended_audience = args[:intended_audience] if args.key?(:intended_audience)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @revision_update_time = args[:revision_update_time] if args.key?(:revision_update_time)
        end
      end
      
      # Describes a version of an API in a structured way. ApiSpecs provide formal
      # descriptions that consumers can use to use a version. ApiSpec resources are
      # intended to be fully-resolved descriptions of an ApiVersion. When specs
      # consist of multiple files, these should be bundled together (e.g., in a zip
      # archive) and stored as a unit. Multiple specs can exist to provide
      # representations in different API description formats. Synchronization of these
      # representations would be provided by tooling and background services.
      class ApiSpec
        include Google::Apis::Core::Hashable
      
        # Annotations attach non-identifying metadata to resources. Annotation keys and
        # values are less restricted than those of labels, but should be generally used
        # for small values of broad interest. Larger, topic- specific metadata should be
        # stored in Artifacts.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Input only. The contents of the spec. Provided by API callers when specs are
        # created or updated. To access the contents of a spec, use GetApiSpecContents.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Output only. Creation timestamp; when the spec resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A detailed description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A possibly-hierarchical name used to refer to the spec from other specs.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Output only. A SHA-256 hash of the spec's contents. If the spec is gzipped,
        # this is the hash of the uncompressed spec.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # Labels attach identifying metadata to resources. Identifying metadata can be
        # used to filter list operations. Label keys and values can be no longer than 64
        # characters (Unicode codepoints), can only contain lowercase letters, numeric
        # characters, underscores and dashes. International characters are allowed. No
        # more than 64 user labels can be associated with one resource (System labels
        # are excluded). See https://goo.gl/xmQnxf for more information and examples of
        # labels. System reserved label keys are prefixed with `apigeeregistry.
        # googleapis.com/` and cannot be changed.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A style (format) descriptor for this spec that is specified as a Media Type (
        # https://en.wikipedia.org/wiki/Media_type). Possible values include `
        # application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `
        # application/vnd.apigee.graphql`, with possible suffixes representing
        # compression types. These hypothetical names are defined in the vendor tree
        # defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final.
        # Content types can specify compression. Currently only GZip compression is
        # supported (indicated with "+gzip").
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Revision creation timestamp; when the represented revision was
        # created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. Immutable. The revision ID of the spec. A new revision is
        # committed whenever the spec contents are changed. The format is an 8-character
        # hexadecimal string.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Output only. Last update timestamp: when the represented revision was last
        # modified.
        # Corresponds to the JSON property `revisionUpdateTime`
        # @return [String]
        attr_accessor :revision_update_time
      
        # Output only. The size of the spec file in bytes. If the spec is gzipped, this
        # is the size of the uncompressed spec.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # The original source URI of the spec (if one exists). This is an external
        # location that can be used for reference purposes but which may not be
        # authoritative since this external resource may change after the spec is
        # retrieved.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @contents = args[:contents] if args.key?(:contents)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @filename = args[:filename] if args.key?(:filename)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @revision_update_time = args[:revision_update_time] if args.key?(:revision_update_time)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
        end
      end
      
      # Describes a particular version of an API. ApiVersions are what consumers
      # actually use.
      class ApiVersion
        include Google::Apis::Core::Hashable
      
        # Annotations attach non-identifying metadata to resources. Annotation keys and
        # values are less restricted than those of labels, but should be generally used
        # for small values of broad interest. Larger, topic- specific metadata should be
        # stored in Artifacts.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A detailed description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human-meaningful name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels attach identifying metadata to resources. Identifying metadata can be
        # used to filter list operations. Label keys and values can be no longer than 64
        # characters (Unicode codepoints), can only contain lowercase letters, numeric
        # characters, underscores and dashes. International characters are allowed. No
        # more than 64 user labels can be associated with one resource (System labels
        # are excluded). See https://goo.gl/xmQnxf for more information and examples of
        # labels. System reserved label keys are prefixed with `apigeeregistry.
        # googleapis.com/` and cannot be changed.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The primary spec for this version. Format: projects/`project`/locations/`
        # location`/apis/`api`/versions/`version`/specs/`spec`
        # Corresponds to the JSON property `primarySpec`
        # @return [String]
        attr_accessor :primary_spec
      
        # A user-definable description of the lifecycle phase of this API version.
        # Format: free-form, but we expect single words that describe API maturity, e.g.,
        # "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "
        # RETIRED".
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Last update timestamp.
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
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @primary_spec = args[:primary_spec] if args.key?(:primary_spec)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Artifacts of resources. Artifacts are unique (single-value) per resource and
      # are used to store metadata that is too large or numerous to be stored directly
      # on the resource. Since artifacts are stored separately from parent resources,
      # they should generally be used for metadata that is needed infrequently, i.e.,
      # not for display in primary views of the resource but perhaps displayed or
      # downloaded upon request. The `ListArtifacts` method allows artifacts to be
      # quickly enumerated and checked for presence without downloading their (
      # potentially-large) contents.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Annotations attach non-identifying metadata to resources. Annotation keys and
        # values are less restricted than those of labels, but should be generally used
        # for small values of broad interest. Larger, topic- specific metadata should be
        # stored in Artifacts.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Input only. The contents of the artifact. Provided by API callers when
        # artifacts are created or replaced. To access the contents of an artifact, use
        # GetArtifactContents.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. A SHA-256 hash of the artifact's contents. If the artifact is
        # gzipped, this is the hash of the uncompressed artifact.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # Labels attach identifying metadata to resources. Identifying metadata can be
        # used to filter list operations. Label keys and values can be no longer than 64
        # characters (Unicode codepoints), can only contain lowercase letters, numeric
        # characters, underscores and dashes. International characters are allowed. No
        # more than 64 user labels can be associated with one resource (System labels
        # are excluded). See https://goo.gl/xmQnxf for more information and examples of
        # labels. System reserved label keys are prefixed with "registry.googleapis.com/"
        # and cannot be changed.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A content type specifier for the artifact. Content type specifiers are Media
        # Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema"
        # parameter that specifies a schema for the stored information. Content types
        # can specify compression. Currently only GZip compression is supported (
        # indicated with "+gzip").
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The size of the artifact in bytes. If the artifact is gzipped,
        # this is the size of the uncompressed artifact.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @contents = args[:contents] if args.key?(:contents)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ApigeeregistryV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Build information of the Instance if it's in `ACTIVE` state.
      class Build
        include Google::Apis::Core::Hashable
      
        # Output only. Commit ID of the latest commit in the build.
        # Corresponds to the JSON property `commitId`
        # @return [String]
        attr_accessor :commit_id
      
        # Output only. Commit time of the latest commit in the build.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # Output only. Path of the open source repository: github.com/apigee/registry.
        # Corresponds to the JSON property `repo`
        # @return [String]
        attr_accessor :repo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_id = args[:commit_id] if args.key?(:commit_id)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @repo = args[:repo] if args.key?(:repo)
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
      
      # Available configurations to provision an Instance.
      class Config
        include Google::Apis::Core::Hashable
      
        # Required. The Customer Managed Encryption Key (CMEK) used for data encryption.
        # The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/
        # keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match
        # InstanceConfig.location.
        # Corresponds to the JSON property `cmekKeyName`
        # @return [String]
        attr_accessor :cmek_key_name
      
        # Output only. The GCP location where the Instance resides.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmek_key_name = args[:cmek_key_name] if args.key?(:cmek_key_name)
          @location = args[:location] if args.key?(:location)
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
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
      
      # An Instance represents the instance resources of the Registry. Currently, only
      # one instance is allowed for each project.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Build information of the Instance if it's in `ACTIVE` state.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::ApigeeregistryV1::Build]
        attr_accessor :build
      
        # Available configurations to provision an Instance.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ApigeeregistryV1::Config]
        attr_accessor :config
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Format: `projects/*/locations/*/instance`. Currently only `locations/global`
        # is supported.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the Instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Extra information of Instance.State if the state is `FAILED`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. Last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for ListApiDeploymentRevisionsResponse.
      class ListApiDeploymentRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # The revisions of the deployment.
        # Corresponds to the JSON property `apiDeployments`
        # @return [Array<Google::Apis::ApigeeregistryV1::ApiDeployment>]
        attr_accessor :api_deployments
      
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
          @api_deployments = args[:api_deployments] if args.key?(:api_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListApiDeployments.
      class ListApiDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The deployments from the specified publisher.
        # Corresponds to the JSON property `apiDeployments`
        # @return [Array<Google::Apis::ApigeeregistryV1::ApiDeployment>]
        attr_accessor :api_deployments
      
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
          @api_deployments = args[:api_deployments] if args.key?(:api_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListApiSpecRevisionsResponse.
      class ListApiSpecRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # The revisions of the spec.
        # Corresponds to the JSON property `apiSpecs`
        # @return [Array<Google::Apis::ApigeeregistryV1::ApiSpec>]
        attr_accessor :api_specs
      
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
          @api_specs = args[:api_specs] if args.key?(:api_specs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListApiSpecs.
      class ListApiSpecsResponse
        include Google::Apis::Core::Hashable
      
        # The specs from the specified publisher.
        # Corresponds to the JSON property `apiSpecs`
        # @return [Array<Google::Apis::ApigeeregistryV1::ApiSpec>]
        attr_accessor :api_specs
      
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
          @api_specs = args[:api_specs] if args.key?(:api_specs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListApiVersions.
      class ListApiVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The versions from the specified publisher.
        # Corresponds to the JSON property `apiVersions`
        # @return [Array<Google::Apis::ApigeeregistryV1::ApiVersion>]
        attr_accessor :api_versions
      
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
          @api_versions = args[:api_versions] if args.key?(:api_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListApis.
      class ListApisResponse
        include Google::Apis::Core::Hashable
      
        # The APIs from the specified publisher.
        # Corresponds to the JSON property `apis`
        # @return [Array<Google::Apis::ApigeeregistryV1::Api>]
        attr_accessor :apis
      
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
          @apis = args[:apis] if args.key?(:apis)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListArtifacts.
      class ListArtifactsResponse
        include Google::Apis::Core::Hashable
      
        # The artifacts from the specified publisher.
        # Corresponds to the JSON property `artifacts`
        # @return [Array<Google::Apis::ApigeeregistryV1::Artifact>]
        attr_accessor :artifacts
      
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
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ApigeeregistryV1::Location>]
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
        # @return [Array<Google::Apis::ApigeeregistryV1::Operation>]
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
      
      # A resource that represents Google Cloud Platform location.
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
        # @return [Google::Apis::ApigeeregistryV1::Status]
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
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancellationRequested`
        # @return [Boolean]
        attr_accessor :cancellation_requested
        alias_method :cancellation_requested?, :cancellation_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancellation_requested = args[:cancellation_requested] if args.key?(:cancellation_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ApigeeregistryV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for RollbackApiDeployment.
      class RollbackApiDeploymentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The revision ID to roll back to. It must be a revision of the same
        # deployment. Example: `c7cfa2a8`
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Request message for RollbackApiSpec.
      class RollbackApiSpecRequest
        include Google::Apis::Core::Hashable
      
        # Required. The revision ID to roll back to. It must be a revision of the same
        # spec. Example: `c7cfa2a8`
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ApigeeregistryV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # Request message for TagApiDeploymentRevision.
      class TagApiDeploymentRevisionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The tag to apply. The tag should be at most 40 characters, and match
        # `a-z`3,39``.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Request message for TagApiSpecRevision.
      class TagApiSpecRevisionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The tag to apply. The tag should be at most 40 characters, and match
        # `a-z`3,39``.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
    end
  end
end
