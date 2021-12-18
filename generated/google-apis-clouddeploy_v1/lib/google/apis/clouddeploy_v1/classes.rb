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
    module ClouddeployV1
      
      # The request object used by `ApproveRollout`.
      class ApproveRolloutRequest
        include Google::Apis::Core::Hashable
      
        # Required. True = approve; false = reject
        # Corresponds to the JSON property `approved`
        # @return [Boolean]
        attr_accessor :approved
        alias_method :approved?, :approved
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approved = args[:approved] if args.key?(:approved)
        end
      end
      
      # The response object from `ApproveRollout`.
      class ApproveRolloutResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::ClouddeployV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
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
        # @return [Google::Apis::ClouddeployV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
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
      
      # Description of an a image to use during Skaffold rendering.
      class BuildArtifact
        include Google::Apis::Core::Hashable
      
        # Image name in Skaffold configuration.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Image tag to use. This will generally be the full path to an image, such as "
        # gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
          @tag = args[:tag] if args.key?(:tag)
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
      
      # Service-wide configuration.
      class Config
        include Google::Apis::Core::Hashable
      
        # Output only. Default Skaffold version that is assigned when a Release is
        # created without specifying a Skaffold version.
        # Corresponds to the JSON property `defaultSkaffoldVersion`
        # @return [String]
        attr_accessor :default_skaffold_version
      
        # Name of the configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. All supported versions of Skaffold.
        # Corresponds to the JSON property `supportedVersions`
        # @return [Array<Google::Apis::ClouddeployV1::SkaffoldVersion>]
        attr_accessor :supported_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_skaffold_version = args[:default_skaffold_version] if args.key?(:default_skaffold_version)
          @name = args[:name] if args.key?(:name)
          @supported_versions = args[:supported_versions] if args.key?(:supported_versions)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Execution using the default Cloud Build pool.
      class DefaultPool
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage location where execution outputs should be stored.
        # This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs:/
        # /my-bucket/my-dir"). If unspecified, a default bucket located in the same
        # region will be used.
        # Corresponds to the JSON property `artifactStorage`
        # @return [String]
        attr_accessor :artifact_storage
      
        # Optional. Google service account to use for execution. If unspecified, the
        # project execution service account (-compute@developer.gserviceaccount.com)
        # will be used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_storage = args[:artifact_storage] if args.key?(:artifact_storage)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # A `DeliveryPipeline` resource in the Google Cloud Deploy API. A `
      # DeliveryPipeline` defines a pipeline through which a Skaffold configuration
      # can progress.
      class DeliveryPipeline
        include Google::Apis::Core::Hashable
      
        # User annotations. These attributes can only be set and used by the user, and
        # not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for
        # more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # PipelineCondition contains all conditions relevant to a Delivery Pipeline.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ClouddeployV1::PipelineCondition]
        attr_accessor :condition
      
        # Output only. Time at which the pipeline was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the `DeliveryPipeline`. Max length is 255 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Labels are attributes that can be set and used by both the user and by Google
        # Cloud Deploy. Labels must meet the following constraints: * Keys and values
        # can contain only lowercase letters, numeric characters, underscores, and
        # dashes. * All characters must use UTF-8 encoding, and international characters
        # are allowed. * Keys must start with a lowercase letter or international
        # character. * Each resource is limited to a maximum of 64 labels. Both keys and
        # values are additionally constrained to be <= 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Name of the `DeliveryPipeline`. Format is projects/`project`/
        # locations/`location`/deliveryPipelines/a-z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
        # Corresponds to the JSON property `serialPipeline`
        # @return [Google::Apis::ClouddeployV1::SerialPipeline]
        attr_accessor :serial_pipeline
      
        # Output only. Unique identifier of the `DeliveryPipeline`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Most recent time at which the pipeline was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @condition = args[:condition] if args.key?(:condition)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @serial_pipeline = args[:serial_pipeline] if args.key?(:serial_pipeline)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration of the environment to use when calling Skaffold.
      class ExecutionConfig
        include Google::Apis::Core::Hashable
      
        # Execution using the default Cloud Build pool.
        # Corresponds to the JSON property `defaultPool`
        # @return [Google::Apis::ClouddeployV1::DefaultPool]
        attr_accessor :default_pool
      
        # Execution using a private Cloud Build pool.
        # Corresponds to the JSON property `privatePool`
        # @return [Google::Apis::ClouddeployV1::PrivatePool]
        attr_accessor :private_pool
      
        # Required. Usages when this configuration should be applied.
        # Corresponds to the JSON property `usages`
        # @return [Array<String>]
        attr_accessor :usages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_pool = args[:default_pool] if args.key?(:default_pool)
          @private_pool = args[:private_pool] if args.key?(:private_pool)
          @usages = args[:usages] if args.key?(:usages)
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
      
      # Information specifying a GKE Cluster.
      class GkeCluster
        include Google::Apis::Core::Hashable
      
        # Information specifying a GKE Cluster. Format is `projects/`project_id`/
        # locations/`location_id`/clusters/`cluster_id`.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
        end
      end
      
      # The response object from `ListDeliveryPipelines`.
      class ListDeliveryPipelinesResponse
        include Google::Apis::Core::Hashable
      
        # The `DeliveryPipeline` objects.
        # Corresponds to the JSON property `deliveryPipelines`
        # @return [Array<Google::Apis::ClouddeployV1::DeliveryPipeline>]
        attr_accessor :delivery_pipelines
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @delivery_pipelines = args[:delivery_pipelines] if args.key?(:delivery_pipelines)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ClouddeployV1::Location>]
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
        # @return [Array<Google::Apis::ClouddeployV1::Operation>]
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
      
      # The response object from `ListReleases`.
      class ListReleasesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `Release` objects.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::ClouddeployV1::Release>]
        attr_accessor :releases
      
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
          @releases = args[:releases] if args.key?(:releases)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListRolloutsResponse is the response object reutrned by `ListRollouts`.
      class ListRolloutsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `Rollout` objects.
        # Corresponds to the JSON property `rollouts`
        # @return [Array<Google::Apis::ClouddeployV1::Rollout>]
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
      
      # The response object from `ListTargets`.
      class ListTargetsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `Target` objects.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::ClouddeployV1::Target>]
        attr_accessor :targets
      
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
          @targets = args[:targets] if args.key?(:targets)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Google::Apis::ClouddeployV1::Status]
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
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
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
      
      # PipelineCondition contains all conditions relevant to a Delivery Pipeline.
      class PipelineCondition
        include Google::Apis::Core::Hashable
      
        # PipelineReadyCondition contains information around the status of the Pipeline.
        # Corresponds to the JSON property `pipelineReadyCondition`
        # @return [Google::Apis::ClouddeployV1::PipelineReadyCondition]
        attr_accessor :pipeline_ready_condition
      
        # TargetsPresentCondition contains information on any Targets defined in the
        # Delivery Pipeline that do not actually exist.
        # Corresponds to the JSON property `targetsPresentCondition`
        # @return [Google::Apis::ClouddeployV1::TargetsPresentCondition]
        attr_accessor :targets_present_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pipeline_ready_condition = args[:pipeline_ready_condition] if args.key?(:pipeline_ready_condition)
          @targets_present_condition = args[:targets_present_condition] if args.key?(:targets_present_condition)
        end
      end
      
      # PipelineReadyCondition contains information around the status of the Pipeline.
      class PipelineReadyCondition
        include Google::Apis::Core::Hashable
      
        # True if the Pipeline is in a valid state. Otherwise at least one condition in `
        # PipelineCondition` is in an invalid state. Iterate over those conditions and
        # see which condition(s) has status = false to find out what is wrong with the
        # Pipeline.
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        # Last time the condition was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ClouddeployV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ClouddeployV1::Binding>]
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
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Execution using a private Cloud Build pool.
      class PrivatePool
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage location where execution outputs should be stored.
        # This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs:/
        # /my-bucket/my-dir"). If unspecified, a default bucket located in the same
        # region will be used.
        # Corresponds to the JSON property `artifactStorage`
        # @return [String]
        attr_accessor :artifact_storage
      
        # Optional. Google service account to use for execution. If unspecified, the
        # project execution service account (-compute@developer.gserviceaccount.com)
        # will be used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Required. Resource name of the Cloud Build worker pool to use. The format is `
        # projects/`project`/locations/`location`/workerPools/`pool``.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_storage = args[:artifact_storage] if args.key?(:artifact_storage)
          @service_account = args[:service_account] if args.key?(:service_account)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # A `Release` resource in the Google Cloud Deploy API. A `Release` defines a
      # specific Skaffold configuration instance that can be deployed.
      class Release
        include Google::Apis::Core::Hashable
      
        # User annotations. These attributes can only be set and used by the user, and
        # not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for
        # more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # List of artifacts to pass through to Skaffold command.
        # Corresponds to the JSON property `buildArtifacts`
        # @return [Array<Google::Apis::ClouddeployV1::BuildArtifact>]
        attr_accessor :build_artifacts
      
        # Output only. Time at which the `Release` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A `DeliveryPipeline` resource in the Google Cloud Deploy API. A `
        # DeliveryPipeline` defines a pipeline through which a Skaffold configuration
        # can progress.
        # Corresponds to the JSON property `deliveryPipelineSnapshot`
        # @return [Google::Apis::ClouddeployV1::DeliveryPipeline]
        attr_accessor :delivery_pipeline_snapshot
      
        # Description of the `Release`. Max length is 255 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Labels are attributes that can be set and used by both the user and by Google
        # Cloud Deploy. Labels must meet the following constraints: * Keys and values
        # can contain only lowercase letters, numeric characters, underscores, and
        # dashes. * All characters must use UTF-8 encoding, and international characters
        # are allowed. * Keys must start with a lowercase letter or international
        # character. * Each resource is limited to a maximum of 64 labels. Both keys and
        # values are additionally constrained to be <= 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Name of the `Release`. Format is projects/`project`/ locations/`
        # location`/deliveryPipelines/`deliveryPipeline`/ releases/a-z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time at which the render completed.
        # Corresponds to the JSON property `renderEndTime`
        # @return [String]
        attr_accessor :render_end_time
      
        # Output only. Time at which the render began.
        # Corresponds to the JSON property `renderStartTime`
        # @return [String]
        attr_accessor :render_start_time
      
        # Output only. Current state of the render operation.
        # Corresponds to the JSON property `renderState`
        # @return [String]
        attr_accessor :render_state
      
        # Filepath of the Skaffold config inside of the config URI.
        # Corresponds to the JSON property `skaffoldConfigPath`
        # @return [String]
        attr_accessor :skaffold_config_path
      
        # Cloud Storage URI of tar.gz archive containing Skaffold configuration.
        # Corresponds to the JSON property `skaffoldConfigUri`
        # @return [String]
        attr_accessor :skaffold_config_uri
      
        # The Skaffold version to use when operating on this release, such as "1.20.0".
        # Not all versions are valid; Google Cloud Deploy supports a specific set of
        # versions. If unset, the most recent supported Skaffold version will be used.
        # Corresponds to the JSON property `skaffoldVersion`
        # @return [String]
        attr_accessor :skaffold_version
      
        # Output only. Map from target ID to the target artifacts created during the
        # render operation.
        # Corresponds to the JSON property `targetArtifacts`
        # @return [Hash<String,Google::Apis::ClouddeployV1::TargetArtifact>]
        attr_accessor :target_artifacts
      
        # Output only. Map from target ID to details of the render operation for that
        # target.
        # Corresponds to the JSON property `targetRenders`
        # @return [Hash<String,Google::Apis::ClouddeployV1::TargetRender>]
        attr_accessor :target_renders
      
        # Output only. Snapshot of the parent pipeline's targets taken at release
        # creation time.
        # Corresponds to the JSON property `targetSnapshots`
        # @return [Array<Google::Apis::ClouddeployV1::Target>]
        attr_accessor :target_snapshots
      
        # Output only. Unique identifier of the `Release`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @build_artifacts = args[:build_artifacts] if args.key?(:build_artifacts)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delivery_pipeline_snapshot = args[:delivery_pipeline_snapshot] if args.key?(:delivery_pipeline_snapshot)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @render_end_time = args[:render_end_time] if args.key?(:render_end_time)
          @render_start_time = args[:render_start_time] if args.key?(:render_start_time)
          @render_state = args[:render_state] if args.key?(:render_state)
          @skaffold_config_path = args[:skaffold_config_path] if args.key?(:skaffold_config_path)
          @skaffold_config_uri = args[:skaffold_config_uri] if args.key?(:skaffold_config_uri)
          @skaffold_version = args[:skaffold_version] if args.key?(:skaffold_version)
          @target_artifacts = args[:target_artifacts] if args.key?(:target_artifacts)
          @target_renders = args[:target_renders] if args.key?(:target_renders)
          @target_snapshots = args[:target_snapshots] if args.key?(:target_snapshots)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # A `Rollout` resource in the Google Cloud Deploy API. A `Rollout` contains
      # information around a specific deployment to a `Target`.
      class Rollout
        include Google::Apis::Core::Hashable
      
        # User annotations. These attributes can only be set and used by the user, and
        # not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for
        # more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Approval state of the `Rollout`.
        # Corresponds to the JSON property `approvalState`
        # @return [String]
        attr_accessor :approval_state
      
        # Output only. Time at which the `Rollout` was approved.
        # Corresponds to the JSON property `approveTime`
        # @return [String]
        attr_accessor :approve_time
      
        # Output only. Time at which the `Rollout` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the `Rollout` finished deploying.
        # Corresponds to the JSON property `deployEndTime`
        # @return [String]
        attr_accessor :deploy_end_time
      
        # Output only. The reason this deploy failed. This will always be unspecified
        # while the deploy in progress.
        # Corresponds to the JSON property `deployFailureCause`
        # @return [String]
        attr_accessor :deploy_failure_cause
      
        # Output only. Time at which the `Rollout` started deploying.
        # Corresponds to the JSON property `deployStartTime`
        # @return [String]
        attr_accessor :deploy_start_time
      
        # Output only. The resource name of the Cloud Build `Build` object that is used
        # to deploy the Rollout. Format is `projects/`project`/locations/`location`/
        # builds/`build``.
        # Corresponds to the JSON property `deployingBuild`
        # @return [String]
        attr_accessor :deploying_build
      
        # Description of the `Rollout` for user purposes. Max length is 255 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Time at which the `Rollout` was enqueued.
        # Corresponds to the JSON property `enqueueTime`
        # @return [String]
        attr_accessor :enqueue_time
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Reason the build failed. Empty if the build succeeded.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Labels are attributes that can be set and used by both the user and by Google
        # Cloud Deploy. Labels must meet the following constraints: * Keys and values
        # can contain only lowercase letters, numeric characters, underscores, and
        # dashes. * All characters must use UTF-8 encoding, and international characters
        # are allowed. * Keys must start with a lowercase letter or international
        # character. * Each resource is limited to a maximum of 64 labels. Both keys and
        # values are additionally constrained to be <= 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Name of the `Rollout`. Format is projects/`project`/ locations/`
        # location`/deliveryPipelines/`deliveryPipeline`/ releases/`release`/rollouts/a-
        # z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Current state of the `Rollout`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The ID of Target to which this `Rollout` is deploying.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # Output only. Unique identifier of the `Rollout`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @approval_state = args[:approval_state] if args.key?(:approval_state)
          @approve_time = args[:approve_time] if args.key?(:approve_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deploy_end_time = args[:deploy_end_time] if args.key?(:deploy_end_time)
          @deploy_failure_cause = args[:deploy_failure_cause] if args.key?(:deploy_failure_cause)
          @deploy_start_time = args[:deploy_start_time] if args.key?(:deploy_start_time)
          @deploying_build = args[:deploying_build] if args.key?(:deploying_build)
          @description = args[:description] if args.key?(:description)
          @enqueue_time = args[:enqueue_time] if args.key?(:enqueue_time)
          @etag = args[:etag] if args.key?(:etag)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @target_id = args[:target_id] if args.key?(:target_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
      class SerialPipeline
        include Google::Apis::Core::Hashable
      
        # Each stage specifies configuration for a `Target`. The ordering of this list
        # defines the promotion flow.
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::ClouddeployV1::Stage>]
        attr_accessor :stages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stages = args[:stages] if args.key?(:stages)
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
        # @return [Google::Apis::ClouddeployV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Details of a supported Skaffold version.
      class SkaffoldVersion
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `supportEndDate`
        # @return [Google::Apis::ClouddeployV1::Date]
        attr_accessor :support_end_date
      
        # Release version number. For example, "1.20.3".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @support_end_date = args[:support_end_date] if args.key?(:support_end_date)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Stage specifies a location to which to deploy.
      class Stage
        include Google::Apis::Core::Hashable
      
        # Skaffold profiles to use when rendering the manifest for this stage's `Target`.
        # Corresponds to the JSON property `profiles`
        # @return [Array<String>]
        attr_accessor :profiles
      
        # The target_id to which this stage points. This field refers exclusively to the
        # last segment of a target name. For example, this field would just be `my-
        # target` (rather than `projects/project/deliveryPipelines/pipeline/targets/my-
        # target`). The parent `DeliveryPipeline` of the `Target` is inferred to be the
        # parent `DeliveryPipeline` of the `Release` in which this `Stage` lives.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profiles = args[:profiles] if args.key?(:profiles)
          @target_id = args[:target_id] if args.key?(:target_id)
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
      
      # A `Target` resource in the Google Cloud Deploy API. A `Target` defines a
      # location to which a Skaffold configuration can be deployed.
      class Target
        include Google::Apis::Core::Hashable
      
        # Optional. User annotations. These attributes can only be set and used by the
        # user, and not by Google Cloud Deploy. See https://google.aip.dev/128#
        # annotations for more details such as format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. Time at which the `Target` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the `Target`. Max length is 255 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Configurations for all execution that relates to this `Target`. Each `
        # ExecutionEnvironmentUsage` value may only be used in a single configuration;
        # using the same value multiple times is an error. When one or more
        # configurations are specified, they must include the `RENDER` and `DEPLOY` `
        # ExecutionEnvironmentUsage` values. When no configurations are specified,
        # execution will use the default specified in `DefaultPool`.
        # Corresponds to the JSON property `executionConfigs`
        # @return [Array<Google::Apis::ClouddeployV1::ExecutionConfig>]
        attr_accessor :execution_configs
      
        # Information specifying a GKE Cluster.
        # Corresponds to the JSON property `gke`
        # @return [Google::Apis::ClouddeployV1::GkeCluster]
        attr_accessor :gke
      
        # Optional. Labels are attributes that can be set and used by both the user and
        # by Google Cloud Deploy. Labels must meet the following constraints: * Keys and
        # values can contain only lowercase letters, numeric characters, underscores,
        # and dashes. * All characters must use UTF-8 encoding, and international
        # characters are allowed. * Keys must start with a lowercase letter or
        # international character. * Each resource is limited to a maximum of 64 labels.
        # Both keys and values are additionally constrained to be <= 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Name of the `Target`. Format is projects/`project`/locations/`
        # location`/ deliveryPipelines/`deliveryPipeline`/targets/a-z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Whether or not the `Target` requires approval.
        # Corresponds to the JSON property `requireApproval`
        # @return [Boolean]
        attr_accessor :require_approval
        alias_method :require_approval?, :require_approval
      
        # Output only. Resource id of the `Target`.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # Output only. Unique identifier of the `Target`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Most recent time at which the `Target` was updated.
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
          @etag = args[:etag] if args.key?(:etag)
          @execution_configs = args[:execution_configs] if args.key?(:execution_configs)
          @gke = args[:gke] if args.key?(:gke)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @require_approval = args[:require_approval] if args.key?(:require_approval)
          @target_id = args[:target_id] if args.key?(:target_id)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The artifacts produced by a target render operation.
      class TargetArtifact
        include Google::Apis::Core::Hashable
      
        # Output only. URI of a directory containing the artifacts. This contains
        # deployment configuration used by Skaffold during a rollout, and all paths are
        # relative to this location.
        # Corresponds to the JSON property `artifactUri`
        # @return [String]
        attr_accessor :artifact_uri
      
        # Output only. File path of the rendered manifest relative to the URI.
        # Corresponds to the JSON property `manifestPath`
        # @return [String]
        attr_accessor :manifest_path
      
        # Output only. File path of the resolved Skaffold configuration relative to the
        # URI.
        # Corresponds to the JSON property `skaffoldConfigPath`
        # @return [String]
        attr_accessor :skaffold_config_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_uri = args[:artifact_uri] if args.key?(:artifact_uri)
          @manifest_path = args[:manifest_path] if args.key?(:manifest_path)
          @skaffold_config_path = args[:skaffold_config_path] if args.key?(:skaffold_config_path)
        end
      end
      
      # Details of rendering for a single target.
      class TargetRender
        include Google::Apis::Core::Hashable
      
        # Output only. Reason this render failed. This will always be unspecified while
        # the render in progress.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Output only. The resource name of the Cloud Build `Build` object that is used
        # to render the manifest for this target. Format is `projects/`project`/
        # locations/`location`/builds/`build``.
        # Corresponds to the JSON property `renderingBuild`
        # @return [String]
        attr_accessor :rendering_build
      
        # Output only. Current state of the render operation for this Target.
        # Corresponds to the JSON property `renderingState`
        # @return [String]
        attr_accessor :rendering_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_cause = args[:failure_cause] if args.key?(:failure_cause)
          @rendering_build = args[:rendering_build] if args.key?(:rendering_build)
          @rendering_state = args[:rendering_state] if args.key?(:rendering_state)
        end
      end
      
      # TargetsPresentCondition contains information on any Targets defined in the
      # Delivery Pipeline that do not actually exist.
      class TargetsPresentCondition
        include Google::Apis::Core::Hashable
      
        # The list of Target names that are missing. For example, projects/`project_id`/
        # locations/`location_name`/targets/`target_name`.
        # Corresponds to the JSON property `missingTargets`
        # @return [Array<String>]
        attr_accessor :missing_targets
      
        # True if there aren't any missing Targets.
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        # Last time the condition was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @missing_targets = args[:missing_targets] if args.key?(:missing_targets)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
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
