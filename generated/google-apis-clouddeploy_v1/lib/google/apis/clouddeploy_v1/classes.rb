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
      
      # The request object used by `AbandonRelease`.
      class AbandonReleaseRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response object for `AbandonRelease`.
      class AbandonReleaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An advanceChildRollout Job.
      class AdvanceChildRolloutJob
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # AdvanceChildRolloutJobRun contains information specific to a
      # advanceChildRollout `JobRun`.
      class AdvanceChildRolloutJobRun
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the `ChildRollout`. Format is projects/`project`/
        # locations/`location`/deliveryPipelines/`deliveryPipeline`/ releases/`release`/
        # rollouts/a-z`0,62`.
        # Corresponds to the JSON property `rollout`
        # @return [String]
        attr_accessor :rollout
      
        # Output only. the ID of the ChildRollout's Phase.
        # Corresponds to the JSON property `rolloutPhaseId`
        # @return [String]
        attr_accessor :rollout_phase_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rollout = args[:rollout] if args.key?(:rollout)
          @rollout_phase_id = args[:rollout_phase_id] if args.key?(:rollout_phase_id)
        end
      end
      
      # The request object used by `AdvanceRollout`.
      class AdvanceRolloutRequest
        include Google::Apis::Core::Hashable
      
        # Required. The phase ID to advance the `Rollout` to.
        # Corresponds to the JSON property `phaseId`
        # @return [String]
        attr_accessor :phase_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phase_id = args[:phase_id] if args.key?(:phase_id)
        end
      end
      
      # The response object from `AdvanceRollout`.
      class AdvanceRolloutResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information specifying an Anthos Cluster.
      class AnthosCluster
        include Google::Apis::Core::Hashable
      
        # Membership of the GKE Hub-registered cluster to which to apply the Skaffold
        # configuration. Format is `projects/`project`/locations/`location`/memberships/`
        # membership_name``.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
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
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
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
      
      # Canary represents the canary deployment strategy.
      class Canary
        include Google::Apis::Core::Hashable
      
        # CanaryDeployment represents the canary deployment configuration
        # Corresponds to the JSON property `canaryDeployment`
        # @return [Google::Apis::ClouddeployV1::CanaryDeployment]
        attr_accessor :canary_deployment
      
        # CustomCanaryDeployment represents the custom canary deployment configuration.
        # Corresponds to the JSON property `customCanaryDeployment`
        # @return [Google::Apis::ClouddeployV1::CustomCanaryDeployment]
        attr_accessor :custom_canary_deployment
      
        # RuntimeConfig contains the runtime specific configurations for a deployment
        # strategy.
        # Corresponds to the JSON property `runtimeConfig`
        # @return [Google::Apis::ClouddeployV1::RuntimeConfig]
        attr_accessor :runtime_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canary_deployment = args[:canary_deployment] if args.key?(:canary_deployment)
          @custom_canary_deployment = args[:custom_canary_deployment] if args.key?(:custom_canary_deployment)
          @runtime_config = args[:runtime_config] if args.key?(:runtime_config)
        end
      end
      
      # CanaryDeployment represents the canary deployment configuration
      class CanaryDeployment
        include Google::Apis::Core::Hashable
      
        # Required. The percentage based deployments that will occur as a part of a `
        # Rollout`. List is expected in ascending order and each integer n is 0 <= n <
        # 100.
        # Corresponds to the JSON property `percentages`
        # @return [Array<Fixnum>]
        attr_accessor :percentages
      
        # Whether to run verify tests after each percentage deployment.
        # Corresponds to the JSON property `verify`
        # @return [Boolean]
        attr_accessor :verify
        alias_method :verify?, :verify
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentages = args[:percentages] if args.key?(:percentages)
          @verify = args[:verify] if args.key?(:verify)
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
      
      # The request object used by `CancelRollout`.
      class CancelRolloutRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response object from `CancelRollout`.
      class CancelRolloutResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ChildRollouts job composition
      class ChildRolloutJobs
        include Google::Apis::Core::Hashable
      
        # Output only. List of AdvanceChildRolloutJobs
        # Corresponds to the JSON property `advanceRolloutJobs`
        # @return [Array<Google::Apis::ClouddeployV1::Job>]
        attr_accessor :advance_rollout_jobs
      
        # Output only. List of CreateChildRolloutJobs
        # Corresponds to the JSON property `createRolloutJobs`
        # @return [Array<Google::Apis::ClouddeployV1::Job>]
        attr_accessor :create_rollout_jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advance_rollout_jobs = args[:advance_rollout_jobs] if args.key?(:advance_rollout_jobs)
          @create_rollout_jobs = args[:create_rollout_jobs] if args.key?(:create_rollout_jobs)
        end
      end
      
      # CloudRunConfig contains the Cloud Run runtime configuration.
      class CloudRunConfig
        include Google::Apis::Core::Hashable
      
        # Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service
        # on the user's behalf to facilitate traffic splitting. This is required to be
        # true for CanaryDeployments, but optional for CustomCanaryDeployments.
        # Corresponds to the JSON property `automaticTrafficControl`
        # @return [Boolean]
        attr_accessor :automatic_traffic_control
        alias_method :automatic_traffic_control?, :automatic_traffic_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_traffic_control = args[:automatic_traffic_control] if args.key?(:automatic_traffic_control)
        end
      end
      
      # Information specifying where to deploy a Cloud Run Service.
      class CloudRunLocation
        include Google::Apis::Core::Hashable
      
        # Required. The location for the Cloud Run Service. Format must be `projects/`
        # project`/locations/`location``.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # CloudRunMetadata contains information from a Cloud Run deployment.
      class CloudRunMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The Cloud Run Revision id associated with a `Rollout`.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # Output only. The name of the Cloud Run Service that is associated with a `
        # Rollout`. Format is projects/`project`/locations/`location`/services/`service`.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Output only. The Cloud Run Service urls that are associated with a `Rollout`.
        # Corresponds to the JSON property `serviceUrls`
        # @return [Array<String>]
        attr_accessor :service_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision = args[:revision] if args.key?(:revision)
          @service = args[:service] if args.key?(:service)
          @service_urls = args[:service_urls] if args.key?(:service_urls)
        end
      end
      
      # CloudRunRenderMetadata contains Cloud Run information associated with a `
      # Release` render.
      class CloudRunRenderMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Cloud Run Service in the rendered manifest.
        # Format is projects/`project`/locations/`location`/services/`service`.
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
      
      # Service-wide configuration.
      class Config
        include Google::Apis::Core::Hashable
      
        # Default Skaffold version that is assigned when a Release is created without
        # specifying a Skaffold version.
        # Corresponds to the JSON property `defaultSkaffoldVersion`
        # @return [String]
        attr_accessor :default_skaffold_version
      
        # Name of the configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # All supported versions of Skaffold.
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
      
      # A createChildRollout Job.
      class CreateChildRolloutJob
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # CreateChildRolloutJobRun contains information specific to a createChildRollout
      # `JobRun`.
      class CreateChildRolloutJobRun
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the `ChildRollout`. Format is projects/`project`/
        # locations/`location`/deliveryPipelines/`deliveryPipeline`/ releases/`release`/
        # rollouts/a-z`0,62`.
        # Corresponds to the JSON property `rollout`
        # @return [String]
        attr_accessor :rollout
      
        # Output only. The ID of the childRollout Phase initiated by this JobRun.
        # Corresponds to the JSON property `rolloutPhaseId`
        # @return [String]
        attr_accessor :rollout_phase_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rollout = args[:rollout] if args.key?(:rollout)
          @rollout_phase_id = args[:rollout_phase_id] if args.key?(:rollout_phase_id)
        end
      end
      
      # CustomCanaryDeployment represents the custom canary deployment configuration.
      class CustomCanaryDeployment
        include Google::Apis::Core::Hashable
      
        # Required. Configuration for each phase in the canary deployment in the order
        # executed.
        # Corresponds to the JSON property `phaseConfigs`
        # @return [Array<Google::Apis::ClouddeployV1::PhaseConfig>]
        attr_accessor :phase_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phase_configs = args[:phase_configs] if args.key?(:phase_configs)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
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
        # not by Google Cloud Deploy.
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
      
        # When suspended, no new releases or rollouts can be created, but in-progress
        # ones will complete.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
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
          @suspended = args[:suspended] if args.key?(:suspended)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/deliverypipeline_notification"
      # Platform Log event that describes the failure to send delivery pipeline status
      # change Pub/Sub notification.
      class DeliveryPipelineNotificationEvent
        include Google::Apis::Core::Hashable
      
        # The name of the `Delivery Pipeline`.
        # Corresponds to the JSON property `deliveryPipeline`
        # @return [String]
        attr_accessor :delivery_pipeline
      
        # Debug message for when a notification fails to send.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Type of this notification, e.g. for a Pub/Sub failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_pipeline = args[:delivery_pipeline] if args.key?(:delivery_pipeline)
          @message = args[:message] if args.key?(:message)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The artifacts produced by a deploy operation.
      class DeployArtifact
        include Google::Apis::Core::Hashable
      
        # Output only. URI of a directory containing the artifacts. All paths are
        # relative to this location.
        # Corresponds to the JSON property `artifactUri`
        # @return [String]
        attr_accessor :artifact_uri
      
        # Output only. File paths of the manifests applied during the deploy operation
        # relative to the URI.
        # Corresponds to the JSON property `manifestPaths`
        # @return [Array<String>]
        attr_accessor :manifest_paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_uri = args[:artifact_uri] if args.key?(:artifact_uri)
          @manifest_paths = args[:manifest_paths] if args.key?(:manifest_paths)
        end
      end
      
      # A deploy Job.
      class DeployJob
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DeployJobRun contains information specific to a deploy `JobRun`.
      class DeployJobRun
        include Google::Apis::Core::Hashable
      
        # The artifacts produced by a deploy operation.
        # Corresponds to the JSON property `artifact`
        # @return [Google::Apis::ClouddeployV1::DeployArtifact]
        attr_accessor :artifact
      
        # Output only. The resource name of the Cloud Build `Build` object that is used
        # to deploy. Format is projects/`project`/locations/`location`/builds/`build`.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. The reason the deploy failed. This will always be unspecified
        # while the deploy is in progress or if it succeeded.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Output only. Additional information about the deploy failure, if available.
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        # DeployJobRunMetadata surfaces information associated with a `DeployJobRun` to
        # the user.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ClouddeployV1::DeployJobRunMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact = args[:artifact] if args.key?(:artifact)
          @build = args[:build] if args.key?(:build)
          @failure_cause = args[:failure_cause] if args.key?(:failure_cause)
          @failure_message = args[:failure_message] if args.key?(:failure_message)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # DeployJobRunMetadata surfaces information associated with a `DeployJobRun` to
      # the user.
      class DeployJobRunMetadata
        include Google::Apis::Core::Hashable
      
        # CloudRunMetadata contains information from a Cloud Run deployment.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::ClouddeployV1::CloudRunMetadata]
        attr_accessor :cloud_run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
        end
      end
      
      # Deployment job composition.
      class DeploymentJobs
        include Google::Apis::Core::Hashable
      
        # Job represents an operation for a `Rollout`.
        # Corresponds to the JSON property `deployJob`
        # @return [Google::Apis::ClouddeployV1::Job]
        attr_accessor :deploy_job
      
        # Job represents an operation for a `Rollout`.
        # Corresponds to the JSON property `verifyJob`
        # @return [Google::Apis::ClouddeployV1::Job]
        attr_accessor :verify_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deploy_job = args[:deploy_job] if args.key?(:deploy_job)
          @verify_job = args[:verify_job] if args.key?(:verify_job)
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
      
      # Configuration of the environment to use when calling Skaffold.
      class ExecutionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage location in which to store execution outputs. This can
        # either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-
        # bucket/my-dir"). If unspecified, a default bucket located in the same region
        # will be used.
        # Corresponds to the JSON property `artifactStorage`
        # @return [String]
        attr_accessor :artifact_storage
      
        # Execution using the default Cloud Build pool.
        # Corresponds to the JSON property `defaultPool`
        # @return [Google::Apis::ClouddeployV1::DefaultPool]
        attr_accessor :default_pool
      
        # Optional. Execution timeout for a Cloud Build Execution. This must be between
        # 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
        # Corresponds to the JSON property `executionTimeout`
        # @return [String]
        attr_accessor :execution_timeout
      
        # Execution using a private Cloud Build pool.
        # Corresponds to the JSON property `privatePool`
        # @return [Google::Apis::ClouddeployV1::PrivatePool]
        attr_accessor :private_pool
      
        # Optional. Google service account to use for execution. If unspecified, the
        # project execution service account (-compute@developer.gserviceaccount.com) is
        # used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Required. Usages when this configuration should be applied.
        # Corresponds to the JSON property `usages`
        # @return [Array<String>]
        attr_accessor :usages
      
        # Optional. The resource name of the `WorkerPool`, with the format `projects/`
        # project`/locations/`location`/workerPools/`worker_pool``. If this optional
        # field is unspecified, the default Cloud Build pool will be used.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_storage = args[:artifact_storage] if args.key?(:artifact_storage)
          @default_pool = args[:default_pool] if args.key?(:default_pool)
          @execution_timeout = args[:execution_timeout] if args.key?(:execution_timeout)
          @private_pool = args[:private_pool] if args.key?(:private_pool)
          @service_account = args[:service_account] if args.key?(:service_account)
          @usages = args[:usages] if args.key?(:usages)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
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
      
      # Information about the Kubernetes Gateway API service mesh configuration.
      class GatewayServiceMesh
        include Google::Apis::Core::Hashable
      
        # Required. Name of the Kubernetes Deployment whose traffic is managed by the
        # specified HTTPRoute and Service.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Required. Name of the Gateway API HTTPRoute.
        # Corresponds to the JSON property `httpRoute`
        # @return [String]
        attr_accessor :http_route
      
        # Required. Name of the Kubernetes Service.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @http_route = args[:http_route] if args.key?(:http_route)
          @service = args[:service] if args.key?(:service)
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
      
        # Optional. If true, `cluster` is accessed using the private IP address of the
        # control plane endpoint. Otherwise, the default IP address of the control plane
        # endpoint is used. The default IP address is the private IP address for
        # clusters with private control-plane endpoints and the public IP address
        # otherwise. Only specify this option when `cluster` is a [private GKE cluster](
        # https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-
        # concept).
        # Corresponds to the JSON property `internalIp`
        # @return [Boolean]
        attr_accessor :internal_ip
        alias_method :internal_ip?, :internal_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
        end
      end
      
      # The request object used by `IgnoreJob`.
      class IgnoreJobRequest
        include Google::Apis::Core::Hashable
      
        # Required. The job ID for the Job to ignore.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Required. The phase ID the Job to ignore belongs to.
        # Corresponds to the JSON property `phaseId`
        # @return [String]
        attr_accessor :phase_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @phase_id = args[:phase_id] if args.key?(:phase_id)
        end
      end
      
      # The response object from `IgnoreJob`.
      class IgnoreJobResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Job represents an operation for a `Rollout`.
      class Job
        include Google::Apis::Core::Hashable
      
        # An advanceChildRollout Job.
        # Corresponds to the JSON property `advanceChildRolloutJob`
        # @return [Google::Apis::ClouddeployV1::AdvanceChildRolloutJob]
        attr_accessor :advance_child_rollout_job
      
        # A createChildRollout Job.
        # Corresponds to the JSON property `createChildRolloutJob`
        # @return [Google::Apis::ClouddeployV1::CreateChildRolloutJob]
        attr_accessor :create_child_rollout_job
      
        # A deploy Job.
        # Corresponds to the JSON property `deployJob`
        # @return [Google::Apis::ClouddeployV1::DeployJob]
        attr_accessor :deploy_job
      
        # Output only. The ID of the Job.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The name of the `JobRun` responsible for the most recent
        # invocation of this Job.
        # Corresponds to the JSON property `jobRun`
        # @return [String]
        attr_accessor :job_run
      
        # Output only. Additional information on why the Job was skipped, if available.
        # Corresponds to the JSON property `skipMessage`
        # @return [String]
        attr_accessor :skip_message
      
        # Output only. The current state of the Job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A verify Job.
        # Corresponds to the JSON property `verifyJob`
        # @return [Google::Apis::ClouddeployV1::VerifyJob]
        attr_accessor :verify_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advance_child_rollout_job = args[:advance_child_rollout_job] if args.key?(:advance_child_rollout_job)
          @create_child_rollout_job = args[:create_child_rollout_job] if args.key?(:create_child_rollout_job)
          @deploy_job = args[:deploy_job] if args.key?(:deploy_job)
          @id = args[:id] if args.key?(:id)
          @job_run = args[:job_run] if args.key?(:job_run)
          @skip_message = args[:skip_message] if args.key?(:skip_message)
          @state = args[:state] if args.key?(:state)
          @verify_job = args[:verify_job] if args.key?(:verify_job)
        end
      end
      
      # A `JobRun` resource in the Google Cloud Deploy API. A `JobRun` contains
      # information of a single `Rollout` job evaluation.
      class JobRun
        include Google::Apis::Core::Hashable
      
        # AdvanceChildRolloutJobRun contains information specific to a
        # advanceChildRollout `JobRun`.
        # Corresponds to the JSON property `advanceChildRolloutJobRun`
        # @return [Google::Apis::ClouddeployV1::AdvanceChildRolloutJobRun]
        attr_accessor :advance_child_rollout_job_run
      
        # CreateChildRolloutJobRun contains information specific to a createChildRollout
        # `JobRun`.
        # Corresponds to the JSON property `createChildRolloutJobRun`
        # @return [Google::Apis::ClouddeployV1::CreateChildRolloutJobRun]
        attr_accessor :create_child_rollout_job_run
      
        # Output only. Time at which the `JobRun` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # DeployJobRun contains information specific to a deploy `JobRun`.
        # Corresponds to the JSON property `deployJobRun`
        # @return [Google::Apis::ClouddeployV1::DeployJobRun]
        attr_accessor :deploy_job_run
      
        # Output only. Time at which the `JobRun` ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. ID of the `Rollout` job this `JobRun` corresponds to.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Optional. Name of the `JobRun`. Format is projects/`project`/locations/`
        # location`/ deliveryPipelines/`deliveryPipeline`/releases/`releases`/rollouts/ `
        # rollouts`/jobRuns/`uuid`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. ID of the `Rollout` phase this `JobRun` belongs in.
        # Corresponds to the JSON property `phaseId`
        # @return [String]
        attr_accessor :phase_id
      
        # Output only. Time at which the `JobRun` was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the `JobRun`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Unique identifier of the `JobRun`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # VerifyJobRun contains information specific to a verify `JobRun`.
        # Corresponds to the JSON property `verifyJobRun`
        # @return [Google::Apis::ClouddeployV1::VerifyJobRun]
        attr_accessor :verify_job_run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advance_child_rollout_job_run = args[:advance_child_rollout_job_run] if args.key?(:advance_child_rollout_job_run)
          @create_child_rollout_job_run = args[:create_child_rollout_job_run] if args.key?(:create_child_rollout_job_run)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deploy_job_run = args[:deploy_job_run] if args.key?(:deploy_job_run)
          @end_time = args[:end_time] if args.key?(:end_time)
          @etag = args[:etag] if args.key?(:etag)
          @job_id = args[:job_id] if args.key?(:job_id)
          @name = args[:name] if args.key?(:name)
          @phase_id = args[:phase_id] if args.key?(:phase_id)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @verify_job_run = args[:verify_job_run] if args.key?(:verify_job_run)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/jobrun_notification" Platform
      # Log event that describes the failure to send JobRun resource update Pub/Sub
      # notification.
      class JobRunNotificationEvent
        include Google::Apis::Core::Hashable
      
        # The name of the `JobRun`.
        # Corresponds to the JSON property `jobRun`
        # @return [String]
        attr_accessor :job_run
      
        # Debug message for when a notification fails to send.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique identifier of the `DeliveryPipeline`.
        # Corresponds to the JSON property `pipelineUid`
        # @return [String]
        attr_accessor :pipeline_uid
      
        # Unique identifier of the `Release`.
        # Corresponds to the JSON property `releaseUid`
        # @return [String]
        attr_accessor :release_uid
      
        # Unique identifier of the `Rollout`.
        # Corresponds to the JSON property `rolloutUid`
        # @return [String]
        attr_accessor :rollout_uid
      
        # ID of the `Target`.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # Type of this notification, e.g. for a Pub/Sub failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_run = args[:job_run] if args.key?(:job_run)
          @message = args[:message] if args.key?(:message)
          @pipeline_uid = args[:pipeline_uid] if args.key?(:pipeline_uid)
          @release_uid = args[:release_uid] if args.key?(:release_uid)
          @rollout_uid = args[:rollout_uid] if args.key?(:rollout_uid)
          @target_id = args[:target_id] if args.key?(:target_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # KubernetesConfig contains the Kubernetes runtime configuration.
      class KubernetesConfig
        include Google::Apis::Core::Hashable
      
        # Information about the Kubernetes Gateway API service mesh configuration.
        # Corresponds to the JSON property `gatewayServiceMesh`
        # @return [Google::Apis::ClouddeployV1::GatewayServiceMesh]
        attr_accessor :gateway_service_mesh
      
        # Information about the Kubernetes Service networking configuration.
        # Corresponds to the JSON property `serviceNetworking`
        # @return [Google::Apis::ClouddeployV1::ServiceNetworking]
        attr_accessor :service_networking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gateway_service_mesh = args[:gateway_service_mesh] if args.key?(:gateway_service_mesh)
          @service_networking = args[:service_networking] if args.key?(:service_networking)
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
      
      # ListJobRunsResponse is the response object returned by `ListJobRuns`.
      class ListJobRunsResponse
        include Google::Apis::Core::Hashable
      
        # The `JobRun` objects.
        # Corresponds to the JSON property `jobRuns`
        # @return [Array<Google::Apis::ClouddeployV1::JobRun>]
        attr_accessor :job_runs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_runs = args[:job_runs] if args.key?(:job_runs)
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
      
      # Metadata includes information associated with a `Rollout`.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # CloudRunMetadata contains information from a Cloud Run deployment.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::ClouddeployV1::CloudRunMetadata]
        attr_accessor :cloud_run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
        end
      end
      
      # Information specifying a multiTarget.
      class MultiTarget
        include Google::Apis::Core::Hashable
      
        # Required. The target_ids of this multiTarget.
        # Corresponds to the JSON property `targetIds`
        # @return [Array<String>]
        attr_accessor :target_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_ids = args[:target_ids] if args.key?(:target_ids)
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
      
      # Phase represents a collection of jobs that are logically grouped together for
      # a `Rollout`.
      class Phase
        include Google::Apis::Core::Hashable
      
        # ChildRollouts job composition
        # Corresponds to the JSON property `childRolloutJobs`
        # @return [Google::Apis::ClouddeployV1::ChildRolloutJobs]
        attr_accessor :child_rollout_jobs
      
        # Deployment job composition.
        # Corresponds to the JSON property `deploymentJobs`
        # @return [Google::Apis::ClouddeployV1::DeploymentJobs]
        attr_accessor :deployment_jobs
      
        # Output only. The ID of the Phase.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Additional information on why the Phase was skipped, if available.
        # Corresponds to the JSON property `skipMessage`
        # @return [String]
        attr_accessor :skip_message
      
        # Output only. Current state of the Phase.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_rollout_jobs = args[:child_rollout_jobs] if args.key?(:child_rollout_jobs)
          @deployment_jobs = args[:deployment_jobs] if args.key?(:deployment_jobs)
          @id = args[:id] if args.key?(:id)
          @skip_message = args[:skip_message] if args.key?(:skip_message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains the paths to the artifacts, relative to the URI, for a phase.
      class PhaseArtifact
        include Google::Apis::Core::Hashable
      
        # Output only. File path of the directory of rendered job manifests relative to
        # the URI. This is only set if it is applicable.
        # Corresponds to the JSON property `jobManifestsPath`
        # @return [String]
        attr_accessor :job_manifests_path
      
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
          @job_manifests_path = args[:job_manifests_path] if args.key?(:job_manifests_path)
          @manifest_path = args[:manifest_path] if args.key?(:manifest_path)
          @skaffold_config_path = args[:skaffold_config_path] if args.key?(:skaffold_config_path)
        end
      end
      
      # PhaseConfig represents the configuration for a phase in the custom canary
      # deployment.
      class PhaseConfig
        include Google::Apis::Core::Hashable
      
        # Required. Percentage deployment for the phase.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # Required. The ID to assign to the `Rollout` phase. This value must consist of
        # lower-case letters, numbers, and hyphens, start with a letter and end with a
        # letter or a number, and have a max length of 63 characters. In other words, it
        # must match the following regex: `^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$`.
        # Corresponds to the JSON property `phaseId`
        # @return [String]
        attr_accessor :phase_id
      
        # Skaffold profiles to use when rendering the manifest for this phase. These are
        # in addition to the profiles list specified in the `DeliveryPipeline` stage.
        # Corresponds to the JSON property `profiles`
        # @return [Array<String>]
        attr_accessor :profiles
      
        # Whether to run verify tests after the deployment.
        # Corresponds to the JSON property `verify`
        # @return [Boolean]
        attr_accessor :verify
        alias_method :verify?, :verify
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percentage = args[:percentage] if args.key?(:percentage)
          @phase_id = args[:phase_id] if args.key?(:phase_id)
          @profiles = args[:profiles] if args.key?(:profiles)
          @verify = args[:verify] if args.key?(:verify)
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
      
        # TargetsTypeCondition contains information on whether the Targets defined in
        # the Delivery Pipeline are of the same type.
        # Corresponds to the JSON property `targetsTypeCondition`
        # @return [Google::Apis::ClouddeployV1::TargetsTypeCondition]
        attr_accessor :targets_type_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pipeline_ready_condition = args[:pipeline_ready_condition] if args.key?(:pipeline_ready_condition)
          @targets_present_condition = args[:targets_present_condition] if args.key?(:targets_present_condition)
          @targets_type_condition = args[:targets_type_condition] if args.key?(:targets_type_condition)
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
      
        # Output only. Indicates whether this is an abandoned release.
        # Corresponds to the JSON property `abandoned`
        # @return [Boolean]
        attr_accessor :abandoned
        alias_method :abandoned?, :abandoned
      
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
      
        # ReleaseCondition contains all conditions relevant to a Release.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ClouddeployV1::ReleaseCondition]
        attr_accessor :condition
      
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
      
        # Output only. Snapshot of the targets taken at release creation time.
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
          @abandoned = args[:abandoned] if args.key?(:abandoned)
          @annotations = args[:annotations] if args.key?(:annotations)
          @build_artifacts = args[:build_artifacts] if args.key?(:build_artifacts)
          @condition = args[:condition] if args.key?(:condition)
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
      
      # ReleaseCondition contains all conditions relevant to a Release.
      class ReleaseCondition
        include Google::Apis::Core::Hashable
      
        # ReleaseReadyCondition contains information around the status of the Release.
        # If a release is not ready, you cannot create a rollout with the release.
        # Corresponds to the JSON property `releaseReadyCondition`
        # @return [Google::Apis::ClouddeployV1::ReleaseReadyCondition]
        attr_accessor :release_ready_condition
      
        # SkaffoldSupportedCondition contains information about when support for the
        # release's version of skaffold ends.
        # Corresponds to the JSON property `skaffoldSupportedCondition`
        # @return [Google::Apis::ClouddeployV1::SkaffoldSupportedCondition]
        attr_accessor :skaffold_supported_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release_ready_condition = args[:release_ready_condition] if args.key?(:release_ready_condition)
          @skaffold_supported_condition = args[:skaffold_supported_condition] if args.key?(:skaffold_supported_condition)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/release_notification" Platform
      # Log event that describes the failure to send release status change Pub/Sub
      # notification.
      class ReleaseNotificationEvent
        include Google::Apis::Core::Hashable
      
        # Debug message for when a notification fails to send.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The name of the `Release`.
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        # Type of this notification, e.g. for a Pub/Sub failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @release = args[:release] if args.key?(:release)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # ReleaseReadyCondition contains information around the status of the Release.
      # If a release is not ready, you cannot create a rollout with the release.
      class ReleaseReadyCondition
        include Google::Apis::Core::Hashable
      
        # True if the Release is in a valid state. Otherwise at least one condition in `
        # ReleaseCondition` is in an invalid state. Iterate over those conditions and
        # see which condition(s) has status = false to find out what is wrong with the
        # Release.
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/release_render" Platform Log
      # event that describes the render status change.
      class ReleaseRenderEvent
        include Google::Apis::Core::Hashable
      
        # Debug message for when a render transition occurs. Provides further details as
        # rendering progresses through render states.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The name of the `Release`.
        # Corresponds to the JSON property `release`
        # @return [String]
        attr_accessor :release
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @release = args[:release] if args.key?(:release)
        end
      end
      
      # RenderMetadata includes information associated with a `Release` render.
      class RenderMetadata
        include Google::Apis::Core::Hashable
      
        # CloudRunRenderMetadata contains Cloud Run information associated with a `
        # Release` render.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::ClouddeployV1::CloudRunRenderMetadata]
        attr_accessor :cloud_run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
        end
      end
      
      # RetryJobRequest is the request object used by `RetryJob`.
      class RetryJobRequest
        include Google::Apis::Core::Hashable
      
        # Required. The job ID for the Job to retry.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Required. The phase ID the Job to retry belongs to.
        # Corresponds to the JSON property `phaseId`
        # @return [String]
        attr_accessor :phase_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @phase_id = args[:phase_id] if args.key?(:phase_id)
        end
      end
      
      # The response object from 'RetryJob'.
      class RetryJobResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # Output only. Name of the `ControllerRollout`. Format is projects/`project`/
        # locations/`location`/deliveryPipelines/`deliveryPipeline`/ releases/`release`/
        # rollouts/a-z`0,62`.
        # Corresponds to the JSON property `controllerRollout`
        # @return [String]
        attr_accessor :controller_rollout
      
        # Output only. Time at which the `Rollout` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time at which the `Rollout` finished deploying.
        # Corresponds to the JSON property `deployEndTime`
        # @return [String]
        attr_accessor :deploy_end_time
      
        # Output only. The reason this rollout failed. This will always be unspecified
        # while the rollout is in progress.
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
      
        # Output only. Additional information about the rollout failure, if available.
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
      
        # Metadata includes information associated with a `Rollout`.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ClouddeployV1::Metadata]
        attr_accessor :metadata
      
        # Optional. Name of the `Rollout`. Format is projects/`project`/ locations/`
        # location`/deliveryPipelines/`deliveryPipeline`/ releases/`release`/rollouts/a-
        # z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The phases that represent the workflows of this `Rollout`.
        # Corresponds to the JSON property `phases`
        # @return [Array<Google::Apis::ClouddeployV1::Phase>]
        attr_accessor :phases
      
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
          @controller_rollout = args[:controller_rollout] if args.key?(:controller_rollout)
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
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @phases = args[:phases] if args.key?(:phases)
          @state = args[:state] if args.key?(:state)
          @target_id = args[:target_id] if args.key?(:target_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/rollout_notification" Platform
      # Log event that describes the failure to send rollout status change Pub/Sub
      # notification.
      class RolloutNotificationEvent
        include Google::Apis::Core::Hashable
      
        # Debug message for when a notification fails to send.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Unique identifier of the `DeliveryPipeline`.
        # Corresponds to the JSON property `pipelineUid`
        # @return [String]
        attr_accessor :pipeline_uid
      
        # Unique identifier of the `Release`.
        # Corresponds to the JSON property `releaseUid`
        # @return [String]
        attr_accessor :release_uid
      
        # The name of the `Rollout`.
        # Corresponds to the JSON property `rollout`
        # @return [String]
        attr_accessor :rollout
      
        # ID of the `Target` that the rollout is deployed to.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # Type of this notification, e.g. for a Pub/Sub failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @pipeline_uid = args[:pipeline_uid] if args.key?(:pipeline_uid)
          @release_uid = args[:release_uid] if args.key?(:release_uid)
          @rollout = args[:rollout] if args.key?(:rollout)
          @target_id = args[:target_id] if args.key?(:target_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # RuntimeConfig contains the runtime specific configurations for a deployment
      # strategy.
      class RuntimeConfig
        include Google::Apis::Core::Hashable
      
        # CloudRunConfig contains the Cloud Run runtime configuration.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::ClouddeployV1::CloudRunConfig]
        attr_accessor :cloud_run
      
        # KubernetesConfig contains the Kubernetes runtime configuration.
        # Corresponds to the JSON property `kubernetes`
        # @return [Google::Apis::ClouddeployV1::KubernetesConfig]
        attr_accessor :kubernetes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
          @kubernetes = args[:kubernetes] if args.key?(:kubernetes)
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
      
      # Information about the Kubernetes Service networking configuration.
      class ServiceNetworking
        include Google::Apis::Core::Hashable
      
        # Required. Name of the Kubernetes Deployment whose traffic is managed by the
        # specified Service.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Required. Name of the Kubernetes Service.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @service = args[:service] if args.key?(:service)
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
      
      # SkaffoldSupportedCondition contains information about when support for the
      # release's version of skaffold ends.
      class SkaffoldSupportedCondition
        include Google::Apis::Core::Hashable
      
        # The time at which this release's version of skaffold will enter maintenance
        # mode.
        # Corresponds to the JSON property `maintenanceModeTime`
        # @return [String]
        attr_accessor :maintenance_mode_time
      
        # The skaffold support state for this release's version of skaffold.
        # Corresponds to the JSON property `skaffoldSupportState`
        # @return [String]
        attr_accessor :skaffold_support_state
      
        # True if the version of skaffold used by this release is supported.
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        # The time at which this release's version of skaffold will no longer be
        # supported.
        # Corresponds to the JSON property `supportExpirationTime`
        # @return [String]
        attr_accessor :support_expiration_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_mode_time = args[:maintenance_mode_time] if args.key?(:maintenance_mode_time)
          @skaffold_support_state = args[:skaffold_support_state] if args.key?(:skaffold_support_state)
          @status = args[:status] if args.key?(:status)
          @support_expiration_time = args[:support_expiration_time] if args.key?(:support_expiration_time)
        end
      end
      
      # Details of a supported Skaffold version.
      class SkaffoldVersion
        include Google::Apis::Core::Hashable
      
        # The time at which this version of skaffold will enter maintenance mode.
        # Corresponds to the JSON property `maintenanceModeTime`
        # @return [String]
        attr_accessor :maintenance_mode_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `supportEndDate`
        # @return [Google::Apis::ClouddeployV1::Date]
        attr_accessor :support_end_date
      
        # The time at which this version of skaffold will no longer be supported.
        # Corresponds to the JSON property `supportExpirationTime`
        # @return [String]
        attr_accessor :support_expiration_time
      
        # Release version number. For example, "1.20.3".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_mode_time = args[:maintenance_mode_time] if args.key?(:maintenance_mode_time)
          @support_end_date = args[:support_end_date] if args.key?(:support_end_date)
          @support_expiration_time = args[:support_expiration_time] if args.key?(:support_expiration_time)
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
      
        # Strategy contains deployment strategy information.
        # Corresponds to the JSON property `strategy`
        # @return [Google::Apis::ClouddeployV1::Strategy]
        attr_accessor :strategy
      
        # The target_id to which this stage points. This field refers exclusively to the
        # last segment of a target name. For example, this field would just be `my-
        # target` (rather than `projects/project/locations/location/targets/my-target`).
        # The location of the `Target` is inferred to be the same as the location of the
        # `DeliveryPipeline` that contains this `Stage`.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profiles = args[:profiles] if args.key?(:profiles)
          @strategy = args[:strategy] if args.key?(:strategy)
          @target_id = args[:target_id] if args.key?(:target_id)
        end
      end
      
      # Standard represents the standard deployment strategy.
      class Standard
        include Google::Apis::Core::Hashable
      
        # Whether to verify a deployment.
        # Corresponds to the JSON property `verify`
        # @return [Boolean]
        attr_accessor :verify
        alias_method :verify?, :verify
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verify = args[:verify] if args.key?(:verify)
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
      
      # Strategy contains deployment strategy information.
      class Strategy
        include Google::Apis::Core::Hashable
      
        # Canary represents the canary deployment strategy.
        # Corresponds to the JSON property `canary`
        # @return [Google::Apis::ClouddeployV1::Canary]
        attr_accessor :canary
      
        # Standard represents the standard deployment strategy.
        # Corresponds to the JSON property `standard`
        # @return [Google::Apis::ClouddeployV1::Standard]
        attr_accessor :standard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canary = args[:canary] if args.key?(:canary)
          @standard = args[:standard] if args.key?(:standard)
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
      
        # Information specifying an Anthos Cluster.
        # Corresponds to the JSON property `anthosCluster`
        # @return [Google::Apis::ClouddeployV1::AnthosCluster]
        attr_accessor :anthos_cluster
      
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
      
        # Information specifying a multiTarget.
        # Corresponds to the JSON property `multiTarget`
        # @return [Google::Apis::ClouddeployV1::MultiTarget]
        attr_accessor :multi_target
      
        # Optional. Name of the `Target`. Format is projects/`project`/locations/`
        # location`/targets/a-z`0,62`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Whether or not the `Target` requires approval.
        # Corresponds to the JSON property `requireApproval`
        # @return [Boolean]
        attr_accessor :require_approval
        alias_method :require_approval?, :require_approval
      
        # Information specifying where to deploy a Cloud Run Service.
        # Corresponds to the JSON property `run`
        # @return [Google::Apis::ClouddeployV1::CloudRunLocation]
        attr_accessor :run
      
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
          @anthos_cluster = args[:anthos_cluster] if args.key?(:anthos_cluster)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @execution_configs = args[:execution_configs] if args.key?(:execution_configs)
          @gke = args[:gke] if args.key?(:gke)
          @labels = args[:labels] if args.key?(:labels)
          @multi_target = args[:multi_target] if args.key?(:multi_target)
          @name = args[:name] if args.key?(:name)
          @require_approval = args[:require_approval] if args.key?(:require_approval)
          @run = args[:run] if args.key?(:run)
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
      
        # Output only. Map from the phase ID to the phase artifacts for the `Target`.
        # Corresponds to the JSON property `phaseArtifacts`
        # @return [Hash<String,Google::Apis::ClouddeployV1::PhaseArtifact>]
        attr_accessor :phase_artifacts
      
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
          @phase_artifacts = args[:phase_artifacts] if args.key?(:phase_artifacts)
          @skaffold_config_path = args[:skaffold_config_path] if args.key?(:skaffold_config_path)
        end
      end
      
      # Payload proto for "clouddeploy.googleapis.com/target_notification" Platform
      # Log event that describes the failure to send target status change Pub/Sub
      # notification.
      class TargetNotificationEvent
        include Google::Apis::Core::Hashable
      
        # Debug message for when a notification fails to send.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The name of the `Target`.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Type of this notification, e.g. for a Pub/Sub failure.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @target = args[:target] if args.key?(:target)
          @type = args[:type] if args.key?(:type)
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
      
        # Output only. Additional information about the render failure, if available.
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        # RenderMetadata includes information associated with a `Release` render.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ClouddeployV1::RenderMetadata]
        attr_accessor :metadata
      
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
          @failure_message = args[:failure_message] if args.key?(:failure_message)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rendering_build = args[:rendering_build] if args.key?(:rendering_build)
          @rendering_state = args[:rendering_state] if args.key?(:rendering_state)
        end
      end
      
      # TargetsPresentCondition contains information on any Targets defined in the
      # Delivery Pipeline that do not actually exist.
      class TargetsPresentCondition
        include Google::Apis::Core::Hashable
      
        # The list of Target names that do not exist. For example, projects/`project_id`/
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
      
      # TargetsTypeCondition contains information on whether the Targets defined in
      # the Delivery Pipeline are of the same type.
      class TargetsTypeCondition
        include Google::Apis::Core::Hashable
      
        # Human readable error message.
        # Corresponds to the JSON property `errorDetails`
        # @return [String]
        attr_accessor :error_details
      
        # True if the targets are all a comparable type. For example this is true if all
        # targets are GKE clusters. This is false if some targets are Cloud Run targets
        # and others are GKE clusters.
        # Corresponds to the JSON property `status`
        # @return [Boolean]
        attr_accessor :status
        alias_method :status?, :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_details = args[:error_details] if args.key?(:error_details)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The request object used by `TerminateJobRun`.
      class TerminateJobRunRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response object from `TerminateJobRun`.
      class TerminateJobRunResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # A verify Job.
      class VerifyJob
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # VerifyJobRun contains information specific to a verify `JobRun`.
      class VerifyJobRun
        include Google::Apis::Core::Hashable
      
        # Output only. URI of a directory containing the verify artifacts. This contains
        # the Skaffold event log.
        # Corresponds to the JSON property `artifactUri`
        # @return [String]
        attr_accessor :artifact_uri
      
        # Output only. The resource name of the Cloud Build `Build` object that is used
        # to verify. Format is projects/`project`/locations/`location`/builds/`build`.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. File path of the Skaffold event log relative to the artifact URI.
        # Corresponds to the JSON property `eventLogPath`
        # @return [String]
        attr_accessor :event_log_path
      
        # Output only. The reason the verify failed. This will always be unspecified
        # while the verify is in progress or if it succeeded.
        # Corresponds to the JSON property `failureCause`
        # @return [String]
        attr_accessor :failure_cause
      
        # Output only. Additional information about the verify failure, if available.
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_uri = args[:artifact_uri] if args.key?(:artifact_uri)
          @build = args[:build] if args.key?(:build)
          @event_log_path = args[:event_log_path] if args.key?(:event_log_path)
          @failure_cause = args[:failure_cause] if args.key?(:failure_cause)
          @failure_message = args[:failure_message] if args.key?(:failure_message)
        end
      end
    end
  end
end
