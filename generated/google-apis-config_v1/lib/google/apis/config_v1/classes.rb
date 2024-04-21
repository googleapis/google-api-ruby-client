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
    module ConfigV1
      
      # Outputs and artifacts from applying a deployment.
      class ApplyResults
        include Google::Apis::Core::Hashable
      
        # Location of artifacts (e.g. logs) in Google Cloud Storage. Format: `gs://`
        # bucket`/`object``
        # Corresponds to the JSON property `artifacts`
        # @return [String]
        attr_accessor :artifacts
      
        # Location of a blueprint copy and other manifests in Google Cloud Storage.
        # Format: `gs://`bucket`/`object``
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Map of output name to output info.
        # Corresponds to the JSON property `outputs`
        # @return [Hash<String,Google::Apis::ConfigV1::TerraformOutput>]
        attr_accessor :outputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @content = args[:content] if args.key?(:content)
          @outputs = args[:outputs] if args.key?(:outputs)
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
        # @return [Array<Google::Apis::ConfigV1::AuditLogConfig>]
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
        # @return [Google::Apis::ConfigV1::Expr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      
      # A request to delete a state file passed to a 'DeleteStatefile' call.
      class DeleteStatefileRequest
        include Google::Apis::Core::Hashable
      
        # Required. Lock ID of the lock file to verify that the user who is deleting the
        # state file previously locked the Deployment.
        # Corresponds to the JSON property `lockId`
        # @return [Fixnum]
        attr_accessor :lock_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lock_id = args[:lock_id] if args.key?(:lock_id)
        end
      end
      
      # A Deployment is a group of resources and configs managed and provisioned by
      # Infra Manager.
      class Deployment
        include Google::Apis::Core::Hashable
      
        # Optional. Arbitrary key-value metadata storage e.g. to help client tools
        # identifiy deployments during automation. See https://google.aip.dev/148#
        # annotations for details on format and size limitations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Optional. User-defined location of Cloud Build logs and artifacts in Google
        # Cloud Storage. Format: `gs://`bucket`/`folder`` A default bucket will be
        # bootstrapped if the field is not set or empty. Default bucket format: `gs://--
        # blueprint-config` Constraints: - The bucket needs to be in the same project as
        # the deployment - The path cannot be within the path of `gcs_source` - The
        # field cannot be updated, including changing its presence
        # Corresponds to the JSON property `artifactsGcsBucket`
        # @return [String]
        attr_accessor :artifacts_gcs_bucket
      
        # Output only. Time when the deployment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Cloud Build instance UUID associated with deleting this
        # deployment.
        # Corresponds to the JSON property `deleteBuild`
        # @return [String]
        attr_accessor :delete_build
      
        # Output only. Location of Cloud Build logs in Google Cloud Storage, populated
        # when deleting this deployment. Format: `gs://`bucket`/`object``.
        # Corresponds to the JSON property `deleteLogs`
        # @return [String]
        attr_accessor :delete_logs
      
        # Outputs and artifacts from applying a deployment.
        # Corresponds to the JSON property `deleteResults`
        # @return [Google::Apis::ConfigV1::ApplyResults]
        attr_accessor :delete_results
      
        # Output only. Error code describing errors that may have occurred.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. Location of Terraform error logs in Google Cloud Storage. Format:
        # `gs://`bucket`/`object``.
        # Corresponds to the JSON property `errorLogs`
        # @return [String]
        attr_accessor :error_logs
      
        # By default, Infra Manager will return a failure when Terraform encounters a
        # 409 code (resource conflict error) during actuation. If this flag is set to
        # true, Infra Manager will instead attempt to automatically import the resource
        # into the Terraform state (for supported resource types) and continue actuation.
        # Not all resource types are supported, refer to documentation.
        # Corresponds to the JSON property `importExistingResources`
        # @return [Boolean]
        attr_accessor :import_existing_resources
        alias_method :import_existing_resources?, :import_existing_resources
      
        # User-defined metadata for the deployment.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Revision name that was most recently applied. Format: `projects/`
        # project`/locations/`location`/deployments/`deployment`/ revisions/`revision``
        # Corresponds to the JSON property `latestRevision`
        # @return [String]
        attr_accessor :latest_revision
      
        # Output only. Current lock state of the deployment.
        # Corresponds to the JSON property `lockState`
        # @return [String]
        attr_accessor :lock_state
      
        # Resource name of the deployment. Format: `projects/`project`/locations/`
        # location`/deployments/`deployment``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Input to control quota checks for resources in terraform
        # configuration files. There are limited resources on which quota validation
        # applies.
        # Corresponds to the JSON property `quotaValidation`
        # @return [String]
        attr_accessor :quota_validation
      
        # Optional. User-specified Service Account (SA) credentials to be used when
        # actuating resources. Format: `projects/`projectID`/serviceAccounts/`
        # serviceAccount``
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Current state of the deployment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information regarding the current state.
        # Corresponds to the JSON property `stateDetail`
        # @return [String]
        attr_accessor :state_detail
      
        # TerraformBlueprint describes the source of a Terraform root module which
        # describes the resources and configs to be deployed.
        # Corresponds to the JSON property `terraformBlueprint`
        # @return [Google::Apis::ConfigV1::TerraformBlueprint]
        attr_accessor :terraform_blueprint
      
        # Output only. Errors encountered when deleting this deployment. Errors are
        # truncated to 10 entries, see `delete_results` and `error_logs` for full
        # details.
        # Corresponds to the JSON property `tfErrors`
        # @return [Array<Google::Apis::ConfigV1::TerraformError>]
        attr_accessor :tf_errors
      
        # Output only. The current Terraform version set on the deployment. It is in the
        # format of "Major.Minor.Patch", for example, "1.3.10".
        # Corresponds to the JSON property `tfVersion`
        # @return [String]
        attr_accessor :tf_version
      
        # Optional. The user-specified Terraform version constraint. Example: "=1.3.10".
        # Corresponds to the JSON property `tfVersionConstraint`
        # @return [String]
        attr_accessor :tf_version_constraint
      
        # Output only. Time when the deployment was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The user-specified Cloud Build worker pool resource in which the
        # Cloud Build job will execute. Format: `projects/`project`/locations/`location`/
        # workerPools/`workerPoolId``. If this field is unspecified, the default Cloud
        # Build worker pool will be used.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @artifacts_gcs_bucket = args[:artifacts_gcs_bucket] if args.key?(:artifacts_gcs_bucket)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_build = args[:delete_build] if args.key?(:delete_build)
          @delete_logs = args[:delete_logs] if args.key?(:delete_logs)
          @delete_results = args[:delete_results] if args.key?(:delete_results)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_logs = args[:error_logs] if args.key?(:error_logs)
          @import_existing_resources = args[:import_existing_resources] if args.key?(:import_existing_resources)
          @labels = args[:labels] if args.key?(:labels)
          @latest_revision = args[:latest_revision] if args.key?(:latest_revision)
          @lock_state = args[:lock_state] if args.key?(:lock_state)
          @name = args[:name] if args.key?(:name)
          @quota_validation = args[:quota_validation] if args.key?(:quota_validation)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @state_detail = args[:state_detail] if args.key?(:state_detail)
          @terraform_blueprint = args[:terraform_blueprint] if args.key?(:terraform_blueprint)
          @tf_errors = args[:tf_errors] if args.key?(:tf_errors)
          @tf_version = args[:tf_version] if args.key?(:tf_version)
          @tf_version_constraint = args[:tf_version_constraint] if args.key?(:tf_version_constraint)
          @update_time = args[:update_time] if args.key?(:update_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # Ephemeral metadata content describing the state of a deployment operation.
      class DeploymentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Outputs and artifacts from applying a deployment.
        # Corresponds to the JSON property `applyResults`
        # @return [Google::Apis::ConfigV1::ApplyResults]
        attr_accessor :apply_results
      
        # Output only. Cloud Build instance UUID associated with this operation.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. Location of Deployment operations logs in `gs://`bucket`/`object``
        # format.
        # Corresponds to the JSON property `logs`
        # @return [String]
        attr_accessor :logs
      
        # The current step the deployment operation is running.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_results = args[:apply_results] if args.key?(:apply_results)
          @build = args[:build] if args.key?(:build)
          @logs = args[:logs] if args.key?(:logs)
          @step = args[:step] if args.key?(:step)
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
      
      # A request to export a state file passed to a 'ExportDeploymentStatefile' call.
      class ExportDeploymentStatefileRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If this flag is set to true, the exported deployment state file will
        # be the draft state. This will enable the draft file to be validated before
        # copying it over to the working state on unlock.
        # Corresponds to the JSON property `draft`
        # @return [Boolean]
        attr_accessor :draft
        alias_method :draft?, :draft
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @draft = args[:draft] if args.key?(:draft)
        end
      end
      
      # A request to export preview results.
      class ExportPreviewResultRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response to `ExportPreviewResult` call. Contains preview results.
      class ExportPreviewResultResponse
        include Google::Apis::Core::Hashable
      
        # Contains a signed Cloud Storage URLs.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ConfigV1::PreviewResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # A request to export a state file passed to a 'ExportRevisionStatefile' call.
      class ExportRevisionStatefileRequest
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
      
      # A set of files in a Git repository.
      class GitSource
        include Google::Apis::Core::Hashable
      
        # Optional. Subdirectory inside the repository. Example: 'staging/my-package'
        # Corresponds to the JSON property `directory`
        # @return [String]
        attr_accessor :directory
      
        # Optional. Git reference (e.g. branch or tag).
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # Optional. Repository URL. Example: 'https://github.com/kubernetes/examples.git'
        # Corresponds to the JSON property `repo`
        # @return [String]
        attr_accessor :repo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory = args[:directory] if args.key?(:directory)
          @ref = args[:ref] if args.key?(:ref)
          @repo = args[:repo] if args.key?(:repo)
        end
      end
      
      # A request to import a state file passed to a 'ImportStatefile' call.
      class ImportStatefileRequest
        include Google::Apis::Core::Hashable
      
        # Required. Lock ID of the lock file to verify that the user who is importing
        # the state file previously locked the Deployment.
        # Corresponds to the JSON property `lockId`
        # @return [Fixnum]
        attr_accessor :lock_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lock_id = args[:lock_id] if args.key?(:lock_id)
        end
      end
      
      # 
      class ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # List of Deployments.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ConfigV1::Deployment>]
        attr_accessor :deployments
      
        # Token to be supplied to the next ListDeployments request via `page_token` to
        # obtain the next set of results.
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
          @deployments = args[:deployments] if args.key?(:deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ConfigV1::Location>]
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
        # @return [Array<Google::Apis::ConfigV1::Operation>]
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
      
      # A response to a `ListPreviews` call. Contains a list of Previews.
      class ListPreviewsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be supplied to the next ListPreviews request via `page_token` to
        # obtain the next set of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Previewss.
        # Corresponds to the JSON property `previews`
        # @return [Array<Google::Apis::ConfigV1::Preview>]
        attr_accessor :previews
      
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
          @previews = args[:previews] if args.key?(:previews)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A response to a 'ListResources' call. Contains a list of Resources.
      class ListResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the 'ListResources' method.
        # The value of an empty string means that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Resourcess.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ConfigV1::Resource>]
        attr_accessor :resources
      
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
          @resources = args[:resources] if args.key?(:resources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A response to a 'ListRevisions' call. Contains a list of Revisions.
      class ListRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the 'ListRevisions' method.
        # The value of an empty string means that there are no more resources to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Revisions.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::ConfigV1::Revision>]
        attr_accessor :revisions
      
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
          @revisions = args[:revisions] if args.key?(:revisions)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListTerraformVersions` method.
      class ListTerraformVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to be supplied to the next ListTerraformVersions request via `page_token`
        # to obtain the next set of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TerraformVersions.
        # Corresponds to the JSON property `terraformVersions`
        # @return [Array<Google::Apis::ConfigV1::TerraformVersion>]
        attr_accessor :terraform_versions
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @terraform_versions = args[:terraform_versions] if args.key?(:terraform_versions)
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
      
      # A request to lock a deployment passed to a 'LockDeployment' call.
      class LockDeploymentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details about the lock which locked the deployment.
      class LockInfo
        include Google::Apis::Core::Hashable
      
        # Time that the lock was taken.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Extra information to store with the lock, provided by the caller.
        # Corresponds to the JSON property `info`
        # @return [String]
        attr_accessor :info
      
        # Unique ID for the lock to be overridden with generation ID in the backend.
        # Corresponds to the JSON property `lockId`
        # @return [Fixnum]
        attr_accessor :lock_id
      
        # Terraform operation, provided by the caller.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Terraform version
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # user@hostname when available
        # Corresponds to the JSON property `who`
        # @return [String]
        attr_accessor :who
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @info = args[:info] if args.key?(:info)
          @lock_id = args[:lock_id] if args.key?(:lock_id)
          @operation = args[:operation] if args.key?(:operation)
          @version = args[:version] if args.key?(:version)
          @who = args[:who] if args.key?(:who)
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
        # @return [Google::Apis::ConfigV1::Status]
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
      
        # Output only. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Ephemeral metadata content describing the state of a deployment operation.
        # Corresponds to the JSON property `deploymentMetadata`
        # @return [Google::Apis::ConfigV1::DeploymentOperationMetadata]
        attr_accessor :deployment_metadata
      
        # Output only. Time when the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Ephemeral metadata content describing the state of a preview operation.
        # Corresponds to the JSON property `previewMetadata`
        # @return [Google::Apis::ConfigV1::PreviewOperationMetadata]
        attr_accessor :preview_metadata
      
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
          @deployment_metadata = args[:deployment_metadata] if args.key?(:deployment_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
          @preview_metadata = args[:preview_metadata] if args.key?(:preview_metadata)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ConfigV1::AuditConfig>]
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
        # @return [Array<Google::Apis::ConfigV1::Binding>]
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
      
      # A preview represents a set of actions Infra Manager would perform to move the
      # resources towards the desired state as specified in the configuration.
      class Preview
        include Google::Apis::Core::Hashable
      
        # Optional. User-defined location of Cloud Build logs, artifacts, and in Google
        # Cloud Storage. Format: `gs://`bucket`/`folder`` A default bucket will be
        # bootstrapped if the field is not set or empty Default Bucket Format: `gs://--
        # blueprint-config` Constraints: - The bucket needs to be in the same project as
        # the deployment - The path cannot be within the path of `gcs_source` If omitted
        # and deployment resource ref provided has artifacts_gcs_bucket defined, that
        # artifact bucket is used.
        # Corresponds to the JSON property `artifactsGcsBucket`
        # @return [String]
        attr_accessor :artifacts_gcs_bucket
      
        # Output only. Cloud Build instance UUID associated with this preview.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. Time the preview was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Optional deployment reference. If specified, the preview will be
        # performed using the provided deployment's current state and use any relevant
        # fields from the deployment unless explicitly specified in the preview create
        # request.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Output only. Code describing any errors that may have occurred.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. Link to tf-error.ndjson file, which contains the full list of the
        # errors encountered during a Terraform preview. Format: `gs://`bucket`/`object``
        # .
        # Corresponds to the JSON property `errorLogs`
        # @return [String]
        attr_accessor :error_logs
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::ConfigV1::Status]
        attr_accessor :error_status
      
        # Optional. User-defined labels for the preview.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Location of preview logs in `gs://`bucket`/`object`` format.
        # Corresponds to the JSON property `logs`
        # @return [String]
        attr_accessor :logs
      
        # Identifier. Resource name of the preview. Resource name can be user provided
        # or server generated ID if unspecified. Format: `projects/`project`/locations/`
        # location`/previews/`preview``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Artifacts created by preview.
        # Corresponds to the JSON property `previewArtifacts`
        # @return [Google::Apis::ConfigV1::PreviewArtifacts]
        attr_accessor :preview_artifacts
      
        # Optional. Current mode of preview.
        # Corresponds to the JSON property `previewMode`
        # @return [String]
        attr_accessor :preview_mode
      
        # Optional. User-specified Service Account (SA) credentials to be used when
        # previewing resources. Format: `projects/`projectID`/serviceAccounts/`
        # serviceAccount``
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Current state of the preview.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # TerraformBlueprint describes the source of a Terraform root module which
        # describes the resources and configs to be deployed.
        # Corresponds to the JSON property `terraformBlueprint`
        # @return [Google::Apis::ConfigV1::TerraformBlueprint]
        attr_accessor :terraform_blueprint
      
        # Output only. Summary of errors encountered during Terraform preview. It has a
        # size limit of 10, i.e. only top 10 errors will be summarized here.
        # Corresponds to the JSON property `tfErrors`
        # @return [Array<Google::Apis::ConfigV1::TerraformError>]
        attr_accessor :tf_errors
      
        # Optional. The user-specified Worker Pool resource in which the Cloud Build job
        # will execute. Format projects/`project`/locations/`location`/workerPools/`
        # workerPoolId` If this field is unspecified, the default Cloud Build worker
        # pool will be used. If omitted and deployment resource ref provided has
        # worker_pool defined, that worker pool is used.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifacts_gcs_bucket = args[:artifacts_gcs_bucket] if args.key?(:artifacts_gcs_bucket)
          @build = args[:build] if args.key?(:build)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment = args[:deployment] if args.key?(:deployment)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_logs = args[:error_logs] if args.key?(:error_logs)
          @error_status = args[:error_status] if args.key?(:error_status)
          @labels = args[:labels] if args.key?(:labels)
          @logs = args[:logs] if args.key?(:logs)
          @name = args[:name] if args.key?(:name)
          @preview_artifacts = args[:preview_artifacts] if args.key?(:preview_artifacts)
          @preview_mode = args[:preview_mode] if args.key?(:preview_mode)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @terraform_blueprint = args[:terraform_blueprint] if args.key?(:terraform_blueprint)
          @tf_errors = args[:tf_errors] if args.key?(:tf_errors)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
        end
      end
      
      # Artifacts created by preview.
      class PreviewArtifacts
        include Google::Apis::Core::Hashable
      
        # Output only. Location of artifacts in Google Cloud Storage. Format: `gs://`
        # bucket`/`object``
        # Corresponds to the JSON property `artifacts`
        # @return [String]
        attr_accessor :artifacts
      
        # Output only. Location of a blueprint copy and other content in Google Cloud
        # Storage. Format: `gs://`bucket`/`object``
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifacts = args[:artifacts] if args.key?(:artifacts)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Ephemeral metadata content describing the state of a preview operation.
      class PreviewOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Cloud Build instance UUID associated with this preview.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. Location of preview logs in `gs://`bucket`/`object`` format.
        # Corresponds to the JSON property `logs`
        # @return [String]
        attr_accessor :logs
      
        # Artifacts created by preview.
        # Corresponds to the JSON property `previewArtifacts`
        # @return [Google::Apis::ConfigV1::PreviewArtifacts]
        attr_accessor :preview_artifacts
      
        # The current step the preview operation is running.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build = args[:build] if args.key?(:build)
          @logs = args[:logs] if args.key?(:logs)
          @preview_artifacts = args[:preview_artifacts] if args.key?(:preview_artifacts)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # Contains a signed Cloud Storage URLs.
      class PreviewResult
        include Google::Apis::Core::Hashable
      
        # Output only. Plan binary signed URL
        # Corresponds to the JSON property `binarySignedUri`
        # @return [String]
        attr_accessor :binary_signed_uri
      
        # Output only. Plan JSON signed URL
        # Corresponds to the JSON property `jsonSignedUri`
        # @return [String]
        attr_accessor :json_signed_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_signed_uri = args[:binary_signed_uri] if args.key?(:binary_signed_uri)
          @json_signed_uri = args[:json_signed_uri] if args.key?(:json_signed_uri)
        end
      end
      
      # Resource represents a Google Cloud Platform resource actuated by IM. Resources
      # are child resources of Revisions.
      class Resource
        include Google::Apis::Core::Hashable
      
        # Output only. Map of Cloud Asset Inventory (CAI) type to CAI info (e.g. CAI ID).
        # CAI type format follows https://cloud.google.com/asset-inventory/docs/
        # supported-asset-types
        # Corresponds to the JSON property `caiAssets`
        # @return [Hash<String,Google::Apis::ConfigV1::ResourceCaiInfo>]
        attr_accessor :cai_assets
      
        # Output only. Intent of the resource.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Output only. Resource name. Format: `projects/`project`/locations/`location`/
        # deployments/`deployment`/revisions/`revision`/resources/`resource``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Current state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Terraform info of a Resource.
        # Corresponds to the JSON property `terraformInfo`
        # @return [Google::Apis::ConfigV1::ResourceTerraformInfo]
        attr_accessor :terraform_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cai_assets = args[:cai_assets] if args.key?(:cai_assets)
          @intent = args[:intent] if args.key?(:intent)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @terraform_info = args[:terraform_info] if args.key?(:terraform_info)
        end
      end
      
      # CAI info of a Resource.
      class ResourceCaiInfo
        include Google::Apis::Core::Hashable
      
        # CAI resource name in the format following https://cloud.google.com/apis/design/
        # resource_names#full_resource_name
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # Terraform info of a Resource.
      class ResourceTerraformInfo
        include Google::Apis::Core::Hashable
      
        # TF resource address that uniquely identifies this resource within this
        # deployment.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # ID attribute of the TF resource
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # TF resource type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A child resource of a Deployment generated by a 'CreateDeployment' or '
      # UpdateDeployment' call. Each Revision contains metadata pertaining to a
      # snapshot of a particular Deployment.
      class Revision
        include Google::Apis::Core::Hashable
      
        # Output only. The action which created this revision
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Outputs and artifacts from applying a deployment.
        # Corresponds to the JSON property `applyResults`
        # @return [Google::Apis::ConfigV1::ApplyResults]
        attr_accessor :apply_results
      
        # Output only. Cloud Build instance UUID associated with this revision.
        # Corresponds to the JSON property `build`
        # @return [String]
        attr_accessor :build
      
        # Output only. Time when the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Code describing any errors that may have occurred.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. Location of Terraform error logs in Google Cloud Storage. Format:
        # `gs://`bucket`/`object``.
        # Corresponds to the JSON property `errorLogs`
        # @return [String]
        attr_accessor :error_logs
      
        # Output only. By default, Infra Manager will return a failure when Terraform
        # encounters a 409 code (resource conflict error) during actuation. If this flag
        # is set to true, Infra Manager will instead attempt to automatically import the
        # resource into the Terraform state (for supported resource types) and continue
        # actuation. Not all resource types are supported, refer to documentation.
        # Corresponds to the JSON property `importExistingResources`
        # @return [Boolean]
        attr_accessor :import_existing_resources
        alias_method :import_existing_resources?, :import_existing_resources
      
        # Output only. Location of Revision operation logs in `gs://`bucket`/`object``
        # format.
        # Corresponds to the JSON property `logs`
        # @return [String]
        attr_accessor :logs
      
        # Revision name. Format: `projects/`project`/locations/`location`/deployments/`
        # deployment`/ revisions/`revision``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Input to control quota checks for resources in terraform
        # configuration files. There are limited resources on which quota validation
        # applies.
        # Corresponds to the JSON property `quotaValidation`
        # @return [String]
        attr_accessor :quota_validation
      
        # Output only. Cloud Storage path containing quota validation results. This
        # field is set when a user sets Deployment.quota_validation field to ENABLED or
        # ENFORCED. Format: `gs://`bucket`/`object``.
        # Corresponds to the JSON property `quotaValidationResults`
        # @return [String]
        attr_accessor :quota_validation_results
      
        # Output only. User-specified Service Account (SA) to be used as credential to
        # manage resources. Format: `projects/`projectID`/serviceAccounts/`
        # serviceAccount``
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Current state of the revision.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional info regarding the current state.
        # Corresponds to the JSON property `stateDetail`
        # @return [String]
        attr_accessor :state_detail
      
        # TerraformBlueprint describes the source of a Terraform root module which
        # describes the resources and configs to be deployed.
        # Corresponds to the JSON property `terraformBlueprint`
        # @return [Google::Apis::ConfigV1::TerraformBlueprint]
        attr_accessor :terraform_blueprint
      
        # Output only. Errors encountered when creating or updating this deployment.
        # Errors are truncated to 10 entries, see `delete_results` and `error_logs` for
        # full details.
        # Corresponds to the JSON property `tfErrors`
        # @return [Array<Google::Apis::ConfigV1::TerraformError>]
        attr_accessor :tf_errors
      
        # Output only. The version of Terraform used to create the Revision. It is in
        # the format of "Major.Minor.Patch", for example, "1.3.10".
        # Corresponds to the JSON property `tfVersion`
        # @return [String]
        attr_accessor :tf_version
      
        # Output only. The user-specified Terraform version constraint. Example: "=1.3.
        # 10".
        # Corresponds to the JSON property `tfVersionConstraint`
        # @return [String]
        attr_accessor :tf_version_constraint
      
        # Output only. Time when the revision was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The user-specified Cloud Build worker pool resource in which the
        # Cloud Build job will execute. Format: `projects/`project`/locations/`location`/
        # workerPools/`workerPoolId``. If this field is unspecified, the default Cloud
        # Build worker pool will be used.
        # Corresponds to the JSON property `workerPool`
        # @return [String]
        attr_accessor :worker_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @apply_results = args[:apply_results] if args.key?(:apply_results)
          @build = args[:build] if args.key?(:build)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_logs = args[:error_logs] if args.key?(:error_logs)
          @import_existing_resources = args[:import_existing_resources] if args.key?(:import_existing_resources)
          @logs = args[:logs] if args.key?(:logs)
          @name = args[:name] if args.key?(:name)
          @quota_validation = args[:quota_validation] if args.key?(:quota_validation)
          @quota_validation_results = args[:quota_validation_results] if args.key?(:quota_validation_results)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @state_detail = args[:state_detail] if args.key?(:state_detail)
          @terraform_blueprint = args[:terraform_blueprint] if args.key?(:terraform_blueprint)
          @tf_errors = args[:tf_errors] if args.key?(:tf_errors)
          @tf_version = args[:tf_version] if args.key?(:tf_version)
          @tf_version_constraint = args[:tf_version_constraint] if args.key?(:tf_version_constraint)
          @update_time = args[:update_time] if args.key?(:update_time)
          @worker_pool = args[:worker_pool] if args.key?(:worker_pool)
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ConfigV1::Policy]
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
      
      # Contains info about a Terraform state file
      class Statefile
        include Google::Apis::Core::Hashable
      
        # Output only. Cloud Storage signed URI used for downloading or uploading the
        # state file.
        # Corresponds to the JSON property `signedUri`
        # @return [String]
        attr_accessor :signed_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signed_uri = args[:signed_uri] if args.key?(:signed_uri)
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
      
      # TerraformBlueprint describes the source of a Terraform root module which
      # describes the resources and configs to be deployed.
      class TerraformBlueprint
        include Google::Apis::Core::Hashable
      
        # Required. URI of an object in Google Cloud Storage. Format: `gs://`bucket`/`
        # object`` URI may also specify an object version for zipped objects. Format: `
        # gs://`bucket`/`object`#`version``
        # Corresponds to the JSON property `gcsSource`
        # @return [String]
        attr_accessor :gcs_source
      
        # A set of files in a Git repository.
        # Corresponds to the JSON property `gitSource`
        # @return [Google::Apis::ConfigV1::GitSource]
        attr_accessor :git_source
      
        # Input variable values for the Terraform blueprint.
        # Corresponds to the JSON property `inputValues`
        # @return [Hash<String,Google::Apis::ConfigV1::TerraformVariable>]
        attr_accessor :input_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @git_source = args[:git_source] if args.key?(:git_source)
          @input_values = args[:input_values] if args.key?(:input_values)
        end
      end
      
      # Errors encountered during actuation using Terraform
      class TerraformError
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ConfigV1::Status]
        attr_accessor :error
      
        # A human-readable error description.
        # Corresponds to the JSON property `errorDescription`
        # @return [String]
        attr_accessor :error_description
      
        # HTTP response code returned from Google Cloud Platform APIs when Terraform
        # fails to provision the resource. If unset or 0, no HTTP response code was
        # returned by Terraform.
        # Corresponds to the JSON property `httpResponseCode`
        # @return [Fixnum]
        attr_accessor :http_response_code
      
        # Address of the resource associated with the error, e.g. `
        # google_compute_network.vpc_network`.
        # Corresponds to the JSON property `resourceAddress`
        # @return [String]
        attr_accessor :resource_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @error_description = args[:error_description] if args.key?(:error_description)
          @http_response_code = args[:http_response_code] if args.key?(:http_response_code)
          @resource_address = args[:resource_address] if args.key?(:resource_address)
        end
      end
      
      # Describes a Terraform output.
      class TerraformOutput
        include Google::Apis::Core::Hashable
      
        # Identifies whether Terraform has set this output as a potential sensitive
        # value.
        # Corresponds to the JSON property `sensitive`
        # @return [Boolean]
        attr_accessor :sensitive
        alias_method :sensitive?, :sensitive
      
        # Value of output.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive = args[:sensitive] if args.key?(:sensitive)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A Terraform input variable.
      class TerraformVariable
        include Google::Apis::Core::Hashable
      
        # Input variable value.
        # Corresponds to the JSON property `inputValue`
        # @return [Object]
        attr_accessor :input_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_value = args[:input_value] if args.key?(:input_value)
        end
      end
      
      # A TerraformVersion represents the support state the corresponding Terraform
      # version.
      class TerraformVersion
        include Google::Apis::Core::Hashable
      
        # Output only. When the version is deprecated.
        # Corresponds to the JSON property `deprecateTime`
        # @return [String]
        attr_accessor :deprecate_time
      
        # Identifier. The version name is in the format: 'projects/`project_id`/
        # locations/`location`/terraformVersions/`terraform_version`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. When the version is obsolete.
        # Corresponds to the JSON property `obsoleteTime`
        # @return [String]
        attr_accessor :obsolete_time
      
        # Output only. The state of the version, ACTIVE, DEPRECATED or OBSOLETE.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. When the version is supported.
        # Corresponds to the JSON property `supportTime`
        # @return [String]
        attr_accessor :support_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecate_time = args[:deprecate_time] if args.key?(:deprecate_time)
          @name = args[:name] if args.key?(:name)
          @obsolete_time = args[:obsolete_time] if args.key?(:obsolete_time)
          @state = args[:state] if args.key?(:state)
          @support_time = args[:support_time] if args.key?(:support_time)
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
      
      # A request to unlock a state file passed to a 'UnlockDeployment' call.
      class UnlockDeploymentRequest
        include Google::Apis::Core::Hashable
      
        # Required. Lock ID of the lock file to be unlocked.
        # Corresponds to the JSON property `lockId`
        # @return [Fixnum]
        attr_accessor :lock_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lock_id = args[:lock_id] if args.key?(:lock_id)
        end
      end
    end
  end
end
