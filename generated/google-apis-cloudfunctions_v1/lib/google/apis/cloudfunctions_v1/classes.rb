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
    module CloudfunctionsV1
      
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
        # @return [Array<Google::Apis::CloudfunctionsV1::AuditLogConfig>]
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
        # @return [Google::Apis::CloudfunctionsV1::Expr]
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
      
      # Request for the `CallFunction` method.
      class CallFunctionRequest
        include Google::Apis::Core::Hashable
      
        # Required. Input to be passed to the function.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # Response of `CallFunction` method.
      class CallFunctionResponse
        include Google::Apis::Core::Hashable
      
        # Either system or user-function generated error. Set if execution was not
        # successful.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Execution id of function invocation.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Result populated for successful execution of synchronous function. Will not be
        # populated if function does not return a result through context.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Describes a Cloud Function that contains user computation executed in response
      # to an event. It encapsulate function and triggers configurations.
      class CloudFunction
        include Google::Apis::Core::Hashable
      
        # The amount of memory in MB available for a function. Defaults to 256MB.
        # Corresponds to the JSON property `availableMemoryMb`
        # @return [Fixnum]
        attr_accessor :available_memory_mb
      
        # Build environment variables that shall be available during build time.
        # Corresponds to the JSON property `buildEnvironmentVariables`
        # @return [Hash<String,String>]
        attr_accessor :build_environment_variables
      
        # Output only. The Cloud Build ID of the latest successful deployment of the
        # function.
        # Corresponds to the JSON property `buildId`
        # @return [String]
        attr_accessor :build_id
      
        # Output only. The Cloud Build Name of the function deployment. `projects//
        # locations//builds/`.
        # Corresponds to the JSON property `buildName`
        # @return [String]
        attr_accessor :build_name
      
        # Name of the Cloud Build Custom Worker Pool that should be used to build the
        # function. The format of this field is `projects/`project`/locations/`region`/
        # workerPools/`workerPool`` where ``project`` and ``region`` are the project id
        # and region respectively where the worker pool is defined and ``workerPool`` is
        # the short name of the worker pool. If the project id is not the same as the
        # function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.
        # iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers
        # Builder (`roles/cloudbuild.customworkers.builder`) in the project.
        # Corresponds to the JSON property `buildWorkerPool`
        # @return [String]
        attr_accessor :build_worker_pool
      
        # User-provided description of a function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Docker Registry to use for this deployment. If `docker_repository` field is
        # specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If
        # unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be
        # overridden by the backend for eligible deployments.
        # Corresponds to the JSON property `dockerRegistry`
        # @return [String]
        attr_accessor :docker_registry
      
        # User managed repository created in Artifact Registry optionally with a
        # customer managed encryption key. If specified, deployments will use Artifact
        # Registry. If unspecified and the deployment is eligible to use Artifact
        # Registry, GCF will create and use a repository named 'gcf-artifacts' for every
        # deployed region. This is the repository to which the function docker image
        # will be pushed after it is built by Cloud Build. It must match the pattern `
        # projects/`project`/locations/`location`/repositories/`repository``. Cross-
        # project repositories are not supported. Cross-location repositories are not
        # supported. Repository format must be 'DOCKER'.
        # Corresponds to the JSON property `dockerRepository`
        # @return [String]
        attr_accessor :docker_repository
      
        # The name of the function (as defined in source code) that will be executed.
        # Defaults to the resource name suffix, if not specified. For backward
        # compatibility, if function with given name is not found, then the system will
        # try to use function named "function". For Node.js this is name of a function
        # exported by the module specified in `source_location`.
        # Corresponds to the JSON property `entryPoint`
        # @return [String]
        attr_accessor :entry_point
      
        # Environment variables that shall be available during function execution.
        # Corresponds to the JSON property `environmentVariables`
        # @return [Hash<String,String>]
        attr_accessor :environment_variables
      
        # Describes EventTrigger, used to request events be sent from another service.
        # Corresponds to the JSON property `eventTrigger`
        # @return [Google::Apis::CloudfunctionsV1::EventTrigger]
        attr_accessor :event_trigger
      
        # Describes HttpsTrigger, could be used to connect web hooks to function.
        # Corresponds to the JSON property `httpsTrigger`
        # @return [Google::Apis::CloudfunctionsV1::HttpsTrigger]
        attr_accessor :https_trigger
      
        # The ingress settings for the function, controlling what traffic can reach it.
        # Corresponds to the JSON property `ingressSettings`
        # @return [String]
        attr_accessor :ingress_settings
      
        # Resource name of a KMS crypto key (managed by the user) used to encrypt/
        # decrypt function resources. It must match the pattern `projects/`project`/
        # locations/`location`/keyRings/`key_ring`/cryptoKeys/`crypto_key``. If
        # specified, you must also provide an artifact registry repository using the `
        # docker_repository` field that was created with the same KMS crypto key. The
        # following service accounts need to be granted the role 'Cloud KMS CryptoKey
        # Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/
        # KeyRing/Project/Organization (least access preferred). 1. Google Cloud
        # Functions service account (service-`project_number`@gcf-admin-robot.iam.
        # gserviceaccount.com) - Required to protect the function's image. 2. Google
        # Storage service account (service-`project_number`@gs-project-accounts.iam.
        # gserviceaccount.com) - Required to protect the function's source code. If this
        # service account does not exist, deploying a function without a KMS key or
        # retrieving the service agent name provisions it. For more information, see
        # https://cloud.google.com/storage/docs/projects#service-agents and https://
        # cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud
        # Functions delegates access to service agents to protect function resources in
        # internal projects that are not accessible by the end user.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Labels associated with this Cloud Function.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The limit on the maximum number of function instances that may coexist at a
        # given time. In some cases, such as rapid traffic surges, Cloud Functions may,
        # for a short period of time, create more instances than the specified max
        # instances limit. If your function cannot tolerate this temporary behavior, you
        # may want to factor in a safety margin and set a lower max instances value than
        # your function can tolerate. See the [Max Instances](https://cloud.google.com/
        # functions/docs/max-instances) Guide for more details.
        # Corresponds to the JSON property `maxInstances`
        # @return [Fixnum]
        attr_accessor :max_instances
      
        # A lower bound for the number function instances that may coexist at a given
        # time.
        # Corresponds to the JSON property `minInstances`
        # @return [Fixnum]
        attr_accessor :min_instances
      
        # A user-defined name of the function. Function names must be unique globally
        # and match pattern `projects/*/locations/*/functions/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The VPC Network that this cloud function can connect to. It can be either the
        # fully-qualified URI, or the short name of the network resource. If the short
        # network name is used, the network must belong to the same project. Otherwise,
        # it must belong to a project within the same organization. The format of this
        # field is either `projects/`project`/global/networks/`network`` or ``network``,
        # where ``project`` is a project id where the network is defined, and ``network``
        # is the short name of the network. This field is mutually exclusive with `
        # vpc_connector` and will be replaced by it. See [the VPC documentation](https://
        # cloud.google.com/compute/docs/vpc) for more information on connecting Cloud
        # projects.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The runtime in which to run the function. Required when deploying a new
        # function, optional when updating an existing function. For a complete list of
        # possible choices, see the [`gcloud` command reference](https://cloud.google.
        # com/sdk/gcloud/reference/functions/deploy#--runtime).
        # Corresponds to the JSON property `runtime`
        # @return [String]
        attr_accessor :runtime
      
        # Secret environment variables configuration.
        # Corresponds to the JSON property `secretEnvironmentVariables`
        # @return [Array<Google::Apis::CloudfunctionsV1::SecretEnvVar>]
        attr_accessor :secret_environment_variables
      
        # Secret volumes configuration.
        # Corresponds to the JSON property `secretVolumes`
        # @return [Array<Google::Apis::CloudfunctionsV1::SecretVolume>]
        attr_accessor :secret_volumes
      
        # The email of the function's service account. If empty, defaults to ``
        # project_id`@appspot.gserviceaccount.com`.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # The Google Cloud Storage URL, starting with `gs://`, pointing to the zip
        # archive which contains the function.
        # Corresponds to the JSON property `sourceArchiveUrl`
        # @return [String]
        attr_accessor :source_archive_url
      
        # Describes SourceRepository, used to represent parameters related to source
        # repository where a function is hosted.
        # Corresponds to the JSON property `sourceRepository`
        # @return [Google::Apis::CloudfunctionsV1::SourceRepository]
        attr_accessor :source_repository
      
        # Input only. An identifier for Firebase function sources. Disclaimer: This
        # field is only supported for Firebase function deployments.
        # Corresponds to the JSON property `sourceToken`
        # @return [String]
        attr_accessor :source_token
      
        # The Google Cloud Storage signed URL used for source uploading, generated by
        # calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is
        # validated on write methods (Create, Update) The signature is stripped from the
        # Function object on read methods (Get, List)
        # Corresponds to the JSON property `sourceUploadUrl`
        # @return [String]
        attr_accessor :source_upload_url
      
        # Output only. Status of the function deployment.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The function execution timeout. Execution is considered failed and can be
        # terminated if the function is not completed at the end of the timeout period.
        # Defaults to 60 seconds.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # Output only. The last update timestamp of a Cloud Function.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The version identifier of the Cloud Function. Each deployment
        # attempt results in a new version of a function being created.
        # Corresponds to the JSON property `versionId`
        # @return [Fixnum]
        attr_accessor :version_id
      
        # The VPC Network Connector that this cloud function can connect to. It can be
        # either the fully-qualified URI, or the short name of the network connector
        # resource. The format of this field is `projects/*/locations/*/connectors/*`
        # This field is mutually exclusive with `network` field and will eventually
        # replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/
        # vpc) for more information on connecting Cloud projects.
        # Corresponds to the JSON property `vpcConnector`
        # @return [String]
        attr_accessor :vpc_connector
      
        # The egress settings for the connector, controlling what traffic is diverted
        # through it.
        # Corresponds to the JSON property `vpcConnectorEgressSettings`
        # @return [String]
        attr_accessor :vpc_connector_egress_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_memory_mb = args[:available_memory_mb] if args.key?(:available_memory_mb)
          @build_environment_variables = args[:build_environment_variables] if args.key?(:build_environment_variables)
          @build_id = args[:build_id] if args.key?(:build_id)
          @build_name = args[:build_name] if args.key?(:build_name)
          @build_worker_pool = args[:build_worker_pool] if args.key?(:build_worker_pool)
          @description = args[:description] if args.key?(:description)
          @docker_registry = args[:docker_registry] if args.key?(:docker_registry)
          @docker_repository = args[:docker_repository] if args.key?(:docker_repository)
          @entry_point = args[:entry_point] if args.key?(:entry_point)
          @environment_variables = args[:environment_variables] if args.key?(:environment_variables)
          @event_trigger = args[:event_trigger] if args.key?(:event_trigger)
          @https_trigger = args[:https_trigger] if args.key?(:https_trigger)
          @ingress_settings = args[:ingress_settings] if args.key?(:ingress_settings)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @max_instances = args[:max_instances] if args.key?(:max_instances)
          @min_instances = args[:min_instances] if args.key?(:min_instances)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @runtime = args[:runtime] if args.key?(:runtime)
          @secret_environment_variables = args[:secret_environment_variables] if args.key?(:secret_environment_variables)
          @secret_volumes = args[:secret_volumes] if args.key?(:secret_volumes)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @source_archive_url = args[:source_archive_url] if args.key?(:source_archive_url)
          @source_repository = args[:source_repository] if args.key?(:source_repository)
          @source_token = args[:source_token] if args.key?(:source_token)
          @source_upload_url = args[:source_upload_url] if args.key?(:source_upload_url)
          @status = args[:status] if args.key?(:status)
          @timeout = args[:timeout] if args.key?(:timeout)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_id = args[:version_id] if args.key?(:version_id)
          @vpc_connector = args[:vpc_connector] if args.key?(:vpc_connector)
          @vpc_connector_egress_settings = args[:vpc_connector_egress_settings] if args.key?(:vpc_connector_egress_settings)
        end
      end
      
      # Describes EventTrigger, used to request events be sent from another service.
      class EventTrigger
        include Google::Apis::Core::Hashable
      
        # Required. The type of event to observe. For example: `providers/cloud.storage/
        # eventTypes/object.change` and `providers/cloud.pubsub/eventTypes/topic.publish`
        # . Event types match pattern `providers/*/eventTypes/*.*`. The pattern contains:
        # 1. namespace: For example, `cloud.storage` and `google.firebase.analytics`. 2.
        # resource type: The type of resource on which event occurs. For example, the
        # Google Cloud Storage API includes the type `object`. 3. action: The action
        # that generates the event. For example, action for a Google Cloud Storage
        # Object is 'change'. These parts are lower case.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Describes the policy in case of function's execution failure. If empty, then
        # defaults to ignoring failures (i.e. not retrying them).
        # Corresponds to the JSON property `failurePolicy`
        # @return [Google::Apis::CloudfunctionsV1::FailurePolicy]
        attr_accessor :failure_policy
      
        # Required. The resource(s) from which to observe events, for example, `projects/
        # _/buckets/myBucket`. Not all syntactically correct values are accepted by all
        # services. For example: 1. The authorization model must support it. Google
        # Cloud Functions only allows EventTriggers to be deployed that observe
        # resources in the same project as the `CloudFunction`. 2. The resource type
        # must match the pattern expected for an `event_type`. For example, an `
        # EventTrigger` that has an `event_type` of "google.pubsub.topic.publish" should
        # have a resource that matches Google Cloud Pub/Sub topics. Additionally, some
        # services may support short names when creating an `EventTrigger`. These will
        # always be returned in the normalized "long" format. See each *service's*
        # documentation for supported formats.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The hostname of the service that should be observed. If no string is provided,
        # the default service implementing the API will be used. For example, `storage.
        # googleapis.com` is the default for all event types in the `google.storage`
        # namespace.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_type = args[:event_type] if args.key?(:event_type)
          @failure_policy = args[:failure_policy] if args.key?(:failure_policy)
          @resource = args[:resource] if args.key?(:resource)
          @service = args[:service] if args.key?(:service)
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
      
      # Describes the policy in case of function's execution failure. If empty, then
      # defaults to ignoring failures (i.e. not retrying them).
      class FailurePolicy
        include Google::Apis::Core::Hashable
      
        # Describes the retry policy in case of function's execution failure. A function
        # execution will be retried on any failure. A failed execution will be retried
        # up to 7 days with an exponential backoff (capped at 10 seconds). Retried
        # execution is charged as any other execution.
        # Corresponds to the JSON property `retry`
        # @return [Google::Apis::CloudfunctionsV1::Retry]
        attr_accessor :retry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retry = args[:retry] if args.key?(:retry)
        end
      end
      
      # Request of `GenerateDownloadUrl` method.
      class GenerateDownloadUrlRequest
        include Google::Apis::Core::Hashable
      
        # The optional version of function. If not set, default, current version is used.
        # Corresponds to the JSON property `versionId`
        # @return [Fixnum]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # Response of `GenerateDownloadUrl` method.
      class GenerateDownloadUrlResponse
        include Google::Apis::Core::Hashable
      
        # The generated Google Cloud Storage signed URL that should be used for function
        # source code download.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_url = args[:download_url] if args.key?(:download_url)
        end
      end
      
      # Request of `GenerateSourceUploadUrl` method.
      class GenerateUploadUrlRequest
        include Google::Apis::Core::Hashable
      
        # Resource name of a KMS crypto key (managed by the user) used to encrypt/
        # decrypt function source code objects in staging Cloud Storage buckets. When
        # you generate an upload url and upload your source code, it gets copied to a
        # staging Cloud Storage bucket in an internal regional project. The source code
        # is then copied to a versioned directory in the sources bucket in the consumer
        # project during the function deployment. It must match the pattern `projects/`
        # project`/locations/`location`/keyRings/`key_ring`/cryptoKeys/`crypto_key``.
        # The Google Cloud Functions service account (service-`project_number`@gcf-admin-
        # robot.iam.gserviceaccount.com) must be granted the role 'Cloud KMS CryptoKey
        # Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/
        # KeyRing/Project/Organization (least access preferred). GCF will delegate
        # access to the Google Storage service account in the internal project.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Response of `GenerateSourceUploadUrl` method.
      class GenerateUploadUrlResponse
        include Google::Apis::Core::Hashable
      
        # The generated Google Cloud Storage signed URL that should be used for a
        # function source code upload. The uploaded file should be a zip archive which
        # contains a function.
        # Corresponds to the JSON property `uploadUrl`
        # @return [String]
        attr_accessor :upload_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upload_url = args[:upload_url] if args.key?(:upload_url)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudFunctionsV2OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The original request that started the operation.
        # Corresponds to the JSON property `requestResource`
        # @return [Hash<String,Object>]
        attr_accessor :request_resource
      
        # Mechanism for reporting in-progress stages
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2Stage>]
        attr_accessor :stages
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request_resource = args[:request_resource] if args.key?(:request_resource)
          @stages = args[:stages] if args.key?(:stages)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Each Stage of the deployment process
      class GoogleCloudFunctionsV2Stage
        include Google::Apis::Core::Hashable
      
        # Message describing the Stage
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Name of the Stage. This will be unique for each Stage.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource of the Stage
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Link to the current Stage resource
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Current state of the Stage
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # State messages from the current Stage.
        # Corresponds to the JSON property `stateMessages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2StateMessage>]
        attr_accessor :state_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @state = args[:state] if args.key?(:state)
          @state_messages = args[:state_messages] if args.key?(:state_messages)
        end
      end
      
      # Informational messages about the state of the Cloud Function or Operation.
      class GoogleCloudFunctionsV2StateMessage
        include Google::Apis::Core::Hashable
      
        # The message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Severity of the state message.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # One-word CamelCase type of the state message.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudFunctionsV2alphaOperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The original request that started the operation.
        # Corresponds to the JSON property `requestResource`
        # @return [Hash<String,Object>]
        attr_accessor :request_resource
      
        # Mechanism for reporting in-progress stages
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2alphaStage>]
        attr_accessor :stages
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request_resource = args[:request_resource] if args.key?(:request_resource)
          @stages = args[:stages] if args.key?(:stages)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Each Stage of the deployment process
      class GoogleCloudFunctionsV2alphaStage
        include Google::Apis::Core::Hashable
      
        # Message describing the Stage
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Name of the Stage. This will be unique for each Stage.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource of the Stage
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Link to the current Stage resource
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Current state of the Stage
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # State messages from the current Stage.
        # Corresponds to the JSON property `stateMessages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2alphaStateMessage>]
        attr_accessor :state_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @state = args[:state] if args.key?(:state)
          @state_messages = args[:state_messages] if args.key?(:state_messages)
        end
      end
      
      # Informational messages about the state of the Cloud Function or Operation.
      class GoogleCloudFunctionsV2alphaStateMessage
        include Google::Apis::Core::Hashable
      
        # The message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Severity of the state message.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # One-word CamelCase type of the state message.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudFunctionsV2betaOperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The original request that started the operation.
        # Corresponds to the JSON property `requestResource`
        # @return [Hash<String,Object>]
        attr_accessor :request_resource
      
        # Mechanism for reporting in-progress stages
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStage>]
        attr_accessor :stages
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request_resource = args[:request_resource] if args.key?(:request_resource)
          @stages = args[:stages] if args.key?(:stages)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Each Stage of the deployment process
      class GoogleCloudFunctionsV2betaStage
        include Google::Apis::Core::Hashable
      
        # Message describing the Stage
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Name of the Stage. This will be unique for each Stage.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource of the Stage
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Link to the current Stage resource
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Current state of the Stage
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # State messages from the current Stage.
        # Corresponds to the JSON property `stateMessages`
        # @return [Array<Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStateMessage>]
        attr_accessor :state_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @state = args[:state] if args.key?(:state)
          @state_messages = args[:state_messages] if args.key?(:state_messages)
        end
      end
      
      # Informational messages about the state of the Cloud Function or Operation.
      class GoogleCloudFunctionsV2betaStateMessage
        include Google::Apis::Core::Hashable
      
        # The message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Severity of the state message.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # One-word CamelCase type of the state message.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Describes HttpsTrigger, could be used to connect web hooks to function.
      class HttpsTrigger
        include Google::Apis::Core::Hashable
      
        # The security level for the function.
        # Corresponds to the JSON property `securityLevel`
        # @return [String]
        attr_accessor :security_level
      
        # Output only. The deployed url for the function.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @security_level = args[:security_level] if args.key?(:security_level)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response for the `ListFunctions` method.
      class ListFunctionsResponse
        include Google::Apis::Core::Hashable
      
        # The functions that match the request.
        # Corresponds to the JSON property `functions`
        # @return [Array<Google::Apis::CloudfunctionsV1::CloudFunction>]
        attr_accessor :functions
      
        # If not empty, indicates that there may be more functions that match the
        # request; this value should be passed in a new google.cloud.functions.v1.
        # ListFunctionsRequest to get more functions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached. The response does not include any
        # functions from these locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @functions = args[:functions] if args.key?(:functions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudfunctionsV1::Location>]
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
        # @return [Array<Google::Apis::CloudfunctionsV1::Operation>]
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
        # @return [Google::Apis::CloudfunctionsV1::Status]
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
      
      # Metadata describing an Operation
      class OperationMetadataV1
        include Google::Apis::Core::Hashable
      
        # The Cloud Build ID of the function created or updated by an API call. This
        # field is only populated for Create and Update operations.
        # Corresponds to the JSON property `buildId`
        # @return [String]
        attr_accessor :build_id
      
        # The Cloud Build Name of the function deployment. This field is only populated
        # for Create and Update operations. `projects//locations//builds/`.
        # Corresponds to the JSON property `buildName`
        # @return [String]
        attr_accessor :build_name
      
        # The original request that started the operation.
        # Corresponds to the JSON property `request`
        # @return [Hash<String,Object>]
        attr_accessor :request
      
        # An identifier for Firebase function sources. Disclaimer: This field is only
        # supported for Firebase function deployments.
        # Corresponds to the JSON property `sourceToken`
        # @return [String]
        attr_accessor :source_token
      
        # Target of the operation - for example `projects/project-1/locations/region-1/
        # functions/function-1`
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Type of operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The last update timestamp of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Version id of the function created or updated by an API call. This field is
        # only populated for Create and Update operations.
        # Corresponds to the JSON property `versionId`
        # @return [Fixnum]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_id = args[:build_id] if args.key?(:build_id)
          @build_name = args[:build_name] if args.key?(:build_name)
          @request = args[:request] if args.key?(:request)
          @source_token = args[:source_token] if args.key?(:source_token)
          @target = args[:target] if args.key?(:target)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_id = args[:version_id] if args.key?(:version_id)
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
        # @return [Array<Google::Apis::CloudfunctionsV1::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudfunctionsV1::Binding>]
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
      
      # Describes the retry policy in case of function's execution failure. A function
      # execution will be retried on any failure. A failed execution will be retried
      # up to 7 days with an exponential backoff (capped at 10 seconds). Retried
      # execution is charged as any other execution.
      class Retry
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for a secret environment variable. It has the information
      # necessary to fetch the secret value from secret manager and expose it as an
      # environment variable.
      class SecretEnvVar
        include Google::Apis::Core::Hashable
      
        # Name of the environment variable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Project identifier (preferrably project number but can also be the project ID)
        # of the project that contains the secret. If not set, it will be populated with
        # the function's project assuming that the secret exists in the same project as
        # of the function.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the secret in secret manager (not the full resource name).
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # Version of the secret (version number or the string 'latest'). It is
        # recommended to use a numeric version for secret environment variables as any
        # updates to the secret value is not reflected until new instances start.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @project_id = args[:project_id] if args.key?(:project_id)
          @secret = args[:secret] if args.key?(:secret)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for a single version.
      class SecretVersion
        include Google::Apis::Core::Hashable
      
        # Relative path of the file under the mount path where the secret value for this
        # version will be fetched and made available. For example, setting the
        # mount_path as '/etc/secrets' and path as `/secret_foo` would mount the secret
        # value file at `/etc/secrets/secret_foo`.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Version of the secret (version number or the string 'latest'). It is
        # preferable to use `latest` version with secret volumes as secret value changes
        # are reflected immediately.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration for a secret volume. It has the information necessary to fetch
      # the secret value from secret manager and make it available as files mounted at
      # the requested paths within the application container. Secret value is not a
      # part of the configuration. Every filesystem read operation performs a lookup
      # in secret manager to retrieve the secret value.
      class SecretVolume
        include Google::Apis::Core::Hashable
      
        # The path within the container to mount the secret volume. For example, setting
        # the mount_path as `/etc/secrets` would mount the secret value files under the `
        # /etc/secrets` directory. This directory will also be completely shadowed and
        # unavailable to mount any other secrets. Recommended mount paths: /etc/secrets
        # Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
        # Corresponds to the JSON property `mountPath`
        # @return [String]
        attr_accessor :mount_path
      
        # Project identifier (preferrably project number but can also be the project ID)
        # of the project that contains the secret. If not set, it will be populated with
        # the function's project assuming that the secret exists in the same project as
        # of the function.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the secret in secret manager (not the full resource name).
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # List of secret versions to mount for this secret. If empty, the `latest`
        # version of the secret will be made available in a file named after the secret
        # under the mount point.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::CloudfunctionsV1::SecretVersion>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_path = args[:mount_path] if args.key?(:mount_path)
          @project_id = args[:project_id] if args.key?(:project_id)
          @secret = args[:secret] if args.key?(:secret)
          @versions = args[:versions] if args.key?(:versions)
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
        # @return [Google::Apis::CloudfunctionsV1::Policy]
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
      
      # Describes SourceRepository, used to represent parameters related to source
      # repository where a function is hosted.
      class SourceRepository
        include Google::Apis::Core::Hashable
      
        # Output only. The URL pointing to the hosted repository where the function were
        # defined at the time of deployment. It always points to a specific commit in
        # the format described above.
        # Corresponds to the JSON property `deployedUrl`
        # @return [String]
        attr_accessor :deployed_url
      
        # The URL pointing to the hosted repository where the function is defined. There
        # are supported Cloud Source Repository URLs in the following formats: To refer
        # to a specific commit: `https://source.developers.google.com/projects/*/repos/*/
        # revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.
        # developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In
        # particular, to refer to HEAD use `master` moveable alias. To refer to a
        # specific fixed alias (tag): `https://source.developers.google.com/projects/*/
        # repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the
        # main directory.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployed_url = args[:deployed_url] if args.key?(:deployed_url)
          @url = args[:url] if args.key?(:url)
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
