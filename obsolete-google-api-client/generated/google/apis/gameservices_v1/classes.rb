# Copyright 2015 Google Inc.
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
    module GameservicesV1
      
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
        # @return [Array<Google::Apis::GameservicesV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # 
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
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
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
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
      
        # 
        # Corresponds to the JSON property `ignoreChildExemptions`
        # @return [Boolean]
        attr_accessor :ignore_child_exemptions
        alias_method :ignore_child_exemptions?, :ignore_child_exemptions
      
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
          @ignore_child_exemptions = args[:ignore_child_exemptions] if args.key?(:ignore_child_exemptions)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Authorization-related information used by Cloud Audit Logging.
      class AuthorizationLoggingOptions
        include Google::Apis::Core::Hashable
      
        # The type of the permission that was checked.
        # Corresponds to the JSON property `permissionType`
        # @return [String]
        attr_accessor :permission_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_type = args[:permission_type] if args.key?(:permission_type)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bindingId`
        # @return [String]
        attr_accessor :binding_id
      
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
        # @return [Google::Apis::GameservicesV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
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
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_id = args[:binding_id] if args.key?(:binding_id)
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
      
      # Write a Cloud Audit log
      class CloudAuditOptions
        include Google::Apis::Core::Hashable
      
        # Authorization-related information used by Cloud Audit Logging.
        # Corresponds to the JSON property `authorizationLoggingOptions`
        # @return [Google::Apis::GameservicesV1::AuthorizationLoggingOptions]
        attr_accessor :authorization_logging_options
      
        # The log_name to populate in the Cloud Audit Record.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_logging_options = args[:authorization_logging_options] if args.key?(:authorization_logging_options)
          @log_name = args[:log_name] if args.key?(:log_name)
        end
      end
      
      # A condition to be met.
      class Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        # Trusted attributes supplied by any service that owns resources and uses the
        # IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # The objects of the condition.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam = args[:iam] if args.key?(:iam)
          @op = args[:op] if args.key?(:op)
          @svc = args[:svc] if args.key?(:svc)
          @sys = args[:sys] if args.key?(:sys)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Increment a streamz counter with the specified metric and field names. Metric
      # names should start with a '/', generally be lowercase-only, and end in "_count"
      # . Field names should not contain an initial slash. The actual exported metric
      # names will have "/iam/policy" prepended. Field names correspond to IAM request
      # parameters and field values are their respective values. Supported field names:
      # - "authority", which is "[token]" if IAMContext.token is present, otherwise
      # the value of IAMContext.authority_selector if present, and otherwise a
      # representation of IAMContext.principal; or - "iam_principal", a representation
      # of IAMContext.principal even if a token or authority selector is present; or -
      # "" (empty string), resulting in a counter with no fields. Examples: counter `
      # metric: "/debug_access_count" field: "iam_principal" ` ==> increment counter /
      # iam/policy/debug_access_count `iam_principal=[value of IAMContext.principal]`
      class CounterOptions
        include Google::Apis::Core::Hashable
      
        # Custom fields.
        # Corresponds to the JSON property `customFields`
        # @return [Array<Google::Apis::GameservicesV1::CustomField>]
        attr_accessor :custom_fields
      
        # The field value to attribute.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # The metric to update.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_fields = args[:custom_fields] if args.key?(:custom_fields)
          @field = args[:field] if args.key?(:field)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # Custom fields. These can be used to create a counter with arbitrary field/
      # value pairs. See: go/rpcsp-custom-fields.
      class CustomField
        include Google::Apis::Core::Hashable
      
        # Name is the field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value is the field value. It is important that in contrast to the
        # CounterOptions.field, the value here is a constant that is not derived from
        # the IAMContext.
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
      
      # Write a Data Access (Gin) log
      class DataAccessOptions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `logMode`
        # @return [String]
        attr_accessor :log_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_mode = args[:log_mode] if args.key?(:log_mode)
        end
      end
      
      # The game server cluster changes made by the game server deployment.
      class DeployedClusterState
        include Google::Apis::Core::Hashable
      
        # The name of the cluster.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # The details about the Agones fleets and autoscalers created in the game server
        # cluster.
        # Corresponds to the JSON property `fleetDetails`
        # @return [Array<Google::Apis::GameservicesV1::DeployedFleetDetails>]
        attr_accessor :fleet_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @fleet_details = args[:fleet_details] if args.key?(:fleet_details)
        end
      end
      
      # Agones fleet specification and details.
      class DeployedFleet
        include Google::Apis::Core::Hashable
      
        # The name of the Agones fleet.
        # Corresponds to the JSON property `fleet`
        # @return [String]
        attr_accessor :fleet
      
        # The fleet spec retrieved from the Agones fleet.
        # Corresponds to the JSON property `fleetSpec`
        # @return [String]
        attr_accessor :fleet_spec
      
        # Encapsulates Agones fleet spec and Agones autoscaler spec sources.
        # Corresponds to the JSON property `specSource`
        # @return [Google::Apis::GameservicesV1::SpecSource]
        attr_accessor :spec_source
      
        # DeployedFleetStatus has details about the Agones fleets such as how many are
        # running, how many allocated, and so on.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GameservicesV1::DeployedFleetStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fleet = args[:fleet] if args.key?(:fleet)
          @fleet_spec = args[:fleet_spec] if args.key?(:fleet_spec)
          @spec_source = args[:spec_source] if args.key?(:spec_source)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Details about the Agones autoscaler.
      class DeployedFleetAutoscaler
        include Google::Apis::Core::Hashable
      
        # The name of the Agones autoscaler.
        # Corresponds to the JSON property `autoscaler`
        # @return [String]
        attr_accessor :autoscaler
      
        # The autoscaler spec retrieved from Agones.
        # Corresponds to the JSON property `fleetAutoscalerSpec`
        # @return [String]
        attr_accessor :fleet_autoscaler_spec
      
        # Encapsulates Agones fleet spec and Agones autoscaler spec sources.
        # Corresponds to the JSON property `specSource`
        # @return [Google::Apis::GameservicesV1::SpecSource]
        attr_accessor :spec_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaler = args[:autoscaler] if args.key?(:autoscaler)
          @fleet_autoscaler_spec = args[:fleet_autoscaler_spec] if args.key?(:fleet_autoscaler_spec)
          @spec_source = args[:spec_source] if args.key?(:spec_source)
        end
      end
      
      # Details of the deployed Agones fleet.
      class DeployedFleetDetails
        include Google::Apis::Core::Hashable
      
        # Details about the Agones autoscaler.
        # Corresponds to the JSON property `deployedAutoscaler`
        # @return [Google::Apis::GameservicesV1::DeployedFleetAutoscaler]
        attr_accessor :deployed_autoscaler
      
        # Agones fleet specification and details.
        # Corresponds to the JSON property `deployedFleet`
        # @return [Google::Apis::GameservicesV1::DeployedFleet]
        attr_accessor :deployed_fleet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployed_autoscaler = args[:deployed_autoscaler] if args.key?(:deployed_autoscaler)
          @deployed_fleet = args[:deployed_fleet] if args.key?(:deployed_fleet)
        end
      end
      
      # DeployedFleetStatus has details about the Agones fleets such as how many are
      # running, how many allocated, and so on.
      class DeployedFleetStatus
        include Google::Apis::Core::Hashable
      
        # The number of GameServer replicas in the ALLOCATED state in this fleet.
        # Corresponds to the JSON property `allocatedReplicas`
        # @return [Fixnum]
        attr_accessor :allocated_replicas
      
        # The number of GameServer replicas in the READY state in this fleet.
        # Corresponds to the JSON property `readyReplicas`
        # @return [Fixnum]
        attr_accessor :ready_replicas
      
        # The total number of current GameServer replicas in this fleet.
        # Corresponds to the JSON property `replicas`
        # @return [Fixnum]
        attr_accessor :replicas
      
        # The number of GameServer replicas in the RESERVED state in this fleet.
        # Reserved instances won't be deleted on scale down, but won't cause an
        # autoscaler to scale up.
        # Corresponds to the JSON property `reservedReplicas`
        # @return [Fixnum]
        attr_accessor :reserved_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_replicas = args[:allocated_replicas] if args.key?(:allocated_replicas)
          @ready_replicas = args[:ready_replicas] if args.key?(:ready_replicas)
          @replicas = args[:replicas] if args.key?(:replicas)
          @reserved_replicas = args[:reserved_replicas] if args.key?(:reserved_replicas)
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
      
      # Request message for GameServerDeploymentsService.FetchDeploymentState.
      class FetchDeploymentStateRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for GameServerDeploymentsService.FetchDeploymentState.
      class FetchDeploymentStateResponse
        include Google::Apis::Core::Hashable
      
        # The state of the game server deployment in each game server cluster.
        # Corresponds to the JSON property `clusterState`
        # @return [Array<Google::Apis::GameservicesV1::DeployedClusterState>]
        attr_accessor :cluster_state
      
        # List of locations that could not be reached.
        # Corresponds to the JSON property `unavailable`
        # @return [Array<String>]
        attr_accessor :unavailable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_state = args[:cluster_state] if args.key?(:cluster_state)
          @unavailable = args[:unavailable] if args.key?(:unavailable)
        end
      end
      
      # Fleet configs for Agones.
      class FleetConfig
        include Google::Apis::Core::Hashable
      
        # Agones fleet spec. Example spec: `https://agones.dev/site/docs/reference/fleet/
        # `.
        # Corresponds to the JSON property `fleetSpec`
        # @return [String]
        attr_accessor :fleet_spec
      
        # The name of the FleetConfig.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fleet_spec = args[:fleet_spec] if args.key?(:fleet_spec)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A game server cluster resource.
      class GameServerCluster
        include Google::Apis::Core::Hashable
      
        # The game server cluster connection information.
        # Corresponds to the JSON property `connectionInfo`
        # @return [Google::Apis::GameservicesV1::GameServerClusterConnectionInfo]
        attr_accessor :connection_info
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human readable description of the cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The labels associated with this game server cluster. Each label is a key-value
        # pair.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The resource name of the game server cluster, in the following form:
        # `projects/`project`/locations/`location`/realms/`realm`/gameServerClusters/`
        # cluster``. For example, `projects/my-project/locations/`location`/realms/
        # zanzibar/gameServerClusters/my-onprem-cluster`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_info = args[:connection_info] if args.key?(:connection_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The game server cluster connection information.
      class GameServerClusterConnectionInfo
        include Google::Apis::Core::Hashable
      
        # A reference to a GKE cluster.
        # Corresponds to the JSON property `gkeClusterReference`
        # @return [Google::Apis::GameservicesV1::GkeClusterReference]
        attr_accessor :gke_cluster_reference
      
        # Namespace designated on the game server cluster where the Agones game server
        # instances will be created. Existence of the namespace will be validated during
        # creation.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_cluster_reference = args[:gke_cluster_reference] if args.key?(:gke_cluster_reference)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # A game server config resource.
      class GameServerConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the game server config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # FleetConfig contains a list of Agones fleet specs. Only one FleetConfig is
        # allowed.
        # Corresponds to the JSON property `fleetConfigs`
        # @return [Array<Google::Apis::GameservicesV1::FleetConfig>]
        attr_accessor :fleet_configs
      
        # The labels associated with this game server config. Each label is a key-value
        # pair.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name of the game server config, in the following form: `projects/`
        # project`/locations/`location`/gameServerDeployments/`deployment`/configs/`
        # config``. For example, `projects/my-project/locations/global/
        # gameServerDeployments/my-game/configs/my-config`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The autoscaling settings.
        # Corresponds to the JSON property `scalingConfigs`
        # @return [Array<Google::Apis::GameservicesV1::ScalingConfig>]
        attr_accessor :scaling_configs
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @fleet_configs = args[:fleet_configs] if args.key?(:fleet_configs)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @scaling_configs = args[:scaling_configs] if args.key?(:scaling_configs)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A game server config override.
      class GameServerConfigOverride
        include Google::Apis::Core::Hashable
      
        # The game server config for this override.
        # Corresponds to the JSON property `configVersion`
        # @return [String]
        attr_accessor :config_version
      
        # The realm selector, used to match realm resources.
        # Corresponds to the JSON property `realmsSelector`
        # @return [Google::Apis::GameservicesV1::RealmSelector]
        attr_accessor :realms_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_version = args[:config_version] if args.key?(:config_version)
          @realms_selector = args[:realms_selector] if args.key?(:realms_selector)
        end
      end
      
      # A game server deployment resource.
      class GameServerDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human readable description of the game server delpoyment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The labels associated with this game server deployment. Each label is a key-
        # value pair.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name of the game server deployment, in the following form: `
        # projects/`project`/locations/`location`/gameServerDeployments/`deployment``.
        # For example, `projects/my-project/locations/global/gameServerDeployments/my-
        # deployment`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The game server deployment rollout which represents the desired rollout state.
      class GameServerDeploymentRollout
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The default game server config is applied to all realms unless overridden in
        # the rollout. For example, `projects/my-project/locations/global/
        # gameServerDeployments/my-game/configs/my-config`.
        # Corresponds to the JSON property `defaultGameServerConfig`
        # @return [String]
        attr_accessor :default_game_server_config
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Contains the game server config rollout overrides. Overrides are processed in
        # the order they are listed. Once a match is found for a realm, the rest of the
        # list is not processed.
        # Corresponds to the JSON property `gameServerConfigOverrides`
        # @return [Array<Google::Apis::GameservicesV1::GameServerConfigOverride>]
        attr_accessor :game_server_config_overrides
      
        # The resource name of the game server deployment rollout, in the following form:
        # `projects/`project`/locations/`location`/gameServerDeployments/`deployment`/
        # rollout`. For example, `projects/my-project/locations/global/
        # gameServerDeployments/my-deployment/rollout`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_game_server_config = args[:default_game_server_config] if args.key?(:default_game_server_config)
          @etag = args[:etag] if args.key?(:etag)
          @game_server_config_overrides = args[:game_server_config_overrides] if args.key?(:game_server_config_overrides)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A reference to a GKE cluster.
      class GkeClusterReference
        include Google::Apis::Core::Hashable
      
        # The full or partial name of a GKE cluster, using one of the following forms: *
        # `projects/`project`/locations/`location`/clusters/`cluster`` * `locations/`
        # location`/clusters/`cluster`` * ``cluster`` If project and location are not
        # specified, the project and location of the GameServerCluster resource are used
        # to generate the full name of the GKE cluster.
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
      
      # The label selector, used to group labels on the resources.
      class LabelSelector
        include Google::Apis::Core::Hashable
      
        # Resource labels for this selector.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Response message for GameServerClustersService.ListGameServerClusters.
      class ListGameServerClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of game server clusters.
        # Corresponds to the JSON property `gameServerClusters`
        # @return [Array<Google::Apis::GameservicesV1::GameServerCluster>]
        attr_accessor :game_server_clusters
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @game_server_clusters = args[:game_server_clusters] if args.key?(:game_server_clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for GameServerConfigsService.ListGameServerConfigs.
      class ListGameServerConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of game server configs.
        # Corresponds to the JSON property `gameServerConfigs`
        # @return [Array<Google::Apis::GameservicesV1::GameServerConfig>]
        attr_accessor :game_server_configs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @game_server_configs = args[:game_server_configs] if args.key?(:game_server_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for GameServerDeploymentsService.ListGameServerDeployments.
      class ListGameServerDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of game server deployments.
        # Corresponds to the JSON property `gameServerDeployments`
        # @return [Array<Google::Apis::GameservicesV1::GameServerDeployment>]
        attr_accessor :game_server_deployments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @game_server_deployments = args[:game_server_deployments] if args.key?(:game_server_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GameservicesV1::Location>]
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
        # @return [Array<Google::Apis::GameservicesV1::Operation>]
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
      
      # Response message for RealmsService.ListRealms.
      class ListRealmsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of realms.
        # Corresponds to the JSON property `realms`
        # @return [Array<Google::Apis::GameservicesV1::Realm>]
        attr_accessor :realms
      
        # List of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @realms = args[:realms] if args.key?(:realms)
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
      
      # Specifies what kind of log the caller must write
      class LogConfig
        include Google::Apis::Core::Hashable
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::GameservicesV1::CloudAuditOptions]
        attr_accessor :cloud_audit
      
        # Increment a streamz counter with the specified metric and field names. Metric
        # names should start with a '/', generally be lowercase-only, and end in "_count"
        # . Field names should not contain an initial slash. The actual exported metric
        # names will have "/iam/policy" prepended. Field names correspond to IAM request
        # parameters and field values are their respective values. Supported field names:
        # - "authority", which is "[token]" if IAMContext.token is present, otherwise
        # the value of IAMContext.authority_selector if present, and otherwise a
        # representation of IAMContext.principal; or - "iam_principal", a representation
        # of IAMContext.principal even if a token or authority selector is present; or -
        # "" (empty string), resulting in a counter with no fields. Examples: counter `
        # metric: "/debug_access_count" field: "iam_principal" ` ==> increment counter /
        # iam/policy/debug_access_count `iam_principal=[value of IAMContext.principal]`
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::GameservicesV1::CounterOptions]
        attr_accessor :counter
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::GameservicesV1::DataAccessOptions]
        attr_accessor :data_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_audit = args[:cloud_audit] if args.key?(:cloud_audit)
          @counter = args[:counter] if args.key?(:counter)
          @data_access = args[:data_access] if args.key?(:data_access)
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
        # @return [Google::Apis::GameservicesV1::Status]
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
      
        # Output only. Operation status for Game Services API operations. Operation
        # status is in the form of key-value pairs where keys are resource IDs and the
        # values show the status of the operation. In case of failures, the value
        # includes an error code and error message.
        # Corresponds to the JSON property `operationStatus`
        # @return [Hash<String,Google::Apis::GameservicesV1::OperationStatus>]
        attr_accessor :operation_status
      
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
      
        # Output only. List of Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
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
          @operation_status = args[:operation_status] if args.key?(:operation_status)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # 
      class OperationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the operation is done or still in progress.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The error code in case of failures.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # The human-readable error message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::GameservicesV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GameservicesV1::Binding>]
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
      
        # 
        # Corresponds to the JSON property `iamOwned`
        # @return [Boolean]
        attr_accessor :iam_owned
        alias_method :iam_owned?, :iam_owned
      
        # If more than one rule is specified, the rules are applied in the following
        # manner: - All matching LOG rules are always applied. - If any DENY/
        # DENY_WITH_LOG rule matches, permission is denied. Logging will be applied if
        # one or more matching rule requires logging. - Otherwise, if any ALLOW/
        # ALLOW_WITH_LOG rule matches, permission is granted. Logging will be applied if
        # one or more matching rule requires logging. - Otherwise, if no rule applies,
        # permission is denied.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::GameservicesV1::Rule>]
        attr_accessor :rules
      
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
          @iam_owned = args[:iam_owned] if args.key?(:iam_owned)
          @rules = args[:rules] if args.key?(:rules)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Response message for GameServerClustersService.PreviewCreateGameServerCluster.
      class PreviewCreateGameServerClusterResponse
        include Google::Apis::Core::Hashable
      
        # The ETag of the game server cluster.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Encapsulates the Target state.
        # Corresponds to the JSON property `targetState`
        # @return [Google::Apis::GameservicesV1::TargetState]
        attr_accessor :target_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @target_state = args[:target_state] if args.key?(:target_state)
        end
      end
      
      # Response message for GameServerClustersService.PreviewDeleteGameServerCluster.
      class PreviewDeleteGameServerClusterResponse
        include Google::Apis::Core::Hashable
      
        # The ETag of the game server cluster.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Encapsulates the Target state.
        # Corresponds to the JSON property `targetState`
        # @return [Google::Apis::GameservicesV1::TargetState]
        attr_accessor :target_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @target_state = args[:target_state] if args.key?(:target_state)
        end
      end
      
      # Response message for PreviewGameServerDeploymentRollout. This has details
      # about the Agones fleet and autoscaler to be actuated.
      class PreviewGameServerDeploymentRolloutResponse
        include Google::Apis::Core::Hashable
      
        # ETag of the game server deployment.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Encapsulates the Target state.
        # Corresponds to the JSON property `targetState`
        # @return [Google::Apis::GameservicesV1::TargetState]
        attr_accessor :target_state
      
        # Locations that could not be reached on this request.
        # Corresponds to the JSON property `unavailable`
        # @return [Array<String>]
        attr_accessor :unavailable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @target_state = args[:target_state] if args.key?(:target_state)
          @unavailable = args[:unavailable] if args.key?(:unavailable)
        end
      end
      
      # Response message for RealmsService.PreviewRealmUpdate.
      class PreviewRealmUpdateResponse
        include Google::Apis::Core::Hashable
      
        # ETag of the realm.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Encapsulates the Target state.
        # Corresponds to the JSON property `targetState`
        # @return [Google::Apis::GameservicesV1::TargetState]
        attr_accessor :target_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @target_state = args[:target_state] if args.key?(:target_state)
        end
      end
      
      # Response message for GameServerClustersService.PreviewUpdateGameServerCluster
      class PreviewUpdateGameServerClusterResponse
        include Google::Apis::Core::Hashable
      
        # The ETag of the game server cluster.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Encapsulates the Target state.
        # Corresponds to the JSON property `targetState`
        # @return [Google::Apis::GameservicesV1::TargetState]
        attr_accessor :target_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @target_state = args[:target_state] if args.key?(:target_state)
        end
      end
      
      # A realm resource.
      class Realm
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human readable description of the realm.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The labels associated with this realm. Each label is a key-value pair.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name of the realm, in the following form: `projects/`project`/
        # locations/`location`/realms/`realm``. For example, `projects/my-project/
        # locations/`location`/realms/my-realm`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Time zone where all policies targeting this realm are evaluated. The
        # value of this field must be from the IANA time zone database: https://www.iana.
        # org/time-zones.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The realm selector, used to match realm resources.
      class RealmSelector
        include Google::Apis::Core::Hashable
      
        # List of realms to match.
        # Corresponds to the JSON property `realms`
        # @return [Array<String>]
        attr_accessor :realms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @realms = args[:realms] if args.key?(:realms)
        end
      end
      
      # A rule to be applied in a Policy.
      class Rule
        include Google::Apis::Core::Hashable
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Additional restrictions that must be met. All conditions must pass for the
        # rule to match.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GameservicesV1::Condition>]
        attr_accessor :conditions
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/
        # AUTHORITY_SELECTOR is in at least one of these entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::GameservicesV1::LogConfig>]
        attr_accessor :log_config
      
        # If one or more 'not_in' clauses are specified, the rule matches if the
        # PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and
        # not_in entries can be found at in the Local IAM documentation (see go/local-
        # iam#features).
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value
        # of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.
        # *') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @conditions = args[:conditions] if args.key?(:conditions)
          @description = args[:description] if args.key?(:description)
          @in = args[:in] if args.key?(:in)
          @log_config = args[:log_config] if args.key?(:log_config)
          @not_in = args[:not_in] if args.key?(:not_in)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Autoscaling config for an Agones fleet.
      class ScalingConfig
        include Google::Apis::Core::Hashable
      
        # Required. Agones fleet autoscaler spec. Example spec: https://agones.dev/site/
        # docs/reference/fleetautoscaler/
        # Corresponds to the JSON property `fleetAutoscalerSpec`
        # @return [String]
        attr_accessor :fleet_autoscaler_spec
      
        # Required. The name of the Scaling Config
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The schedules to which this Scaling Config applies.
        # Corresponds to the JSON property `schedules`
        # @return [Array<Google::Apis::GameservicesV1::Schedule>]
        attr_accessor :schedules
      
        # Labels used to identify the game server clusters to which this Agones scaling
        # config applies. A game server cluster is subject to this Agones scaling config
        # if its labels match any of the selector entries.
        # Corresponds to the JSON property `selectors`
        # @return [Array<Google::Apis::GameservicesV1::LabelSelector>]
        attr_accessor :selectors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fleet_autoscaler_spec = args[:fleet_autoscaler_spec] if args.key?(:fleet_autoscaler_spec)
          @name = args[:name] if args.key?(:name)
          @schedules = args[:schedules] if args.key?(:schedules)
          @selectors = args[:selectors] if args.key?(:selectors)
        end
      end
      
      # The schedule of a recurring or one time event. The event's time span is
      # specified by start_time and end_time. If the scheduled event's timespan is
      # larger than the cron_spec + cron_job_duration, the event will be recurring. If
      # only cron_spec + cron_job_duration are specified, the event is effective
      # starting at the local time specified by cron_spec, and is recurring.
      # start_time|-------[cron job]-------[cron job]-------[cron job]---|end_time
      # cron job: cron spec start time + duration
      class Schedule
        include Google::Apis::Core::Hashable
      
        # The duration for the cron job event. The duration of the event is effective
        # after the cron job's start time.
        # Corresponds to the JSON property `cronJobDuration`
        # @return [String]
        attr_accessor :cron_job_duration
      
        # The cron definition of the scheduled event. See https://en.wikipedia.org/wiki/
        # Cron. Cron spec specifies the local time as defined by the realm.
        # Corresponds to the JSON property `cronSpec`
        # @return [String]
        attr_accessor :cron_spec
      
        # The end time of the event.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time of the event.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_job_duration = args[:cron_job_duration] if args.key?(:cron_job_duration)
          @cron_spec = args[:cron_spec] if args.key?(:cron_spec)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GameservicesV1::Policy]
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
      
      # Encapsulates Agones fleet spec and Agones autoscaler spec sources.
      class SpecSource
        include Google::Apis::Core::Hashable
      
        # The game server config resource. Uses the form: `projects/`project`/locations/`
        # location`/gameServerDeployments/`deployment_id`/configs/`config_id``.
        # Corresponds to the JSON property `gameServerConfigName`
        # @return [String]
        attr_accessor :game_server_config_name
      
        # The name of the Agones leet config or Agones scaling config used to derive the
        # Agones fleet or Agones autoscaler spec.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @game_server_config_name = args[:game_server_config_name] if args.key?(:game_server_config_name)
          @name = args[:name] if args.key?(:name)
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
      
      # Details about the Agones resources.
      class TargetDetails
        include Google::Apis::Core::Hashable
      
        # Agones fleet details for game server clusters and game server deployments.
        # Corresponds to the JSON property `fleetDetails`
        # @return [Array<Google::Apis::GameservicesV1::TargetFleetDetails>]
        attr_accessor :fleet_details
      
        # The game server cluster name. Uses the form: `projects/`project`/locations/`
        # location`/realms/`realm`/gameServerClusters/`cluster``.
        # Corresponds to the JSON property `gameServerClusterName`
        # @return [String]
        attr_accessor :game_server_cluster_name
      
        # The game server deployment name. Uses the form: `projects/`project`/locations/`
        # location`/gameServerDeployments/`deployment_id``.
        # Corresponds to the JSON property `gameServerDeploymentName`
        # @return [String]
        attr_accessor :game_server_deployment_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fleet_details = args[:fleet_details] if args.key?(:fleet_details)
          @game_server_cluster_name = args[:game_server_cluster_name] if args.key?(:game_server_cluster_name)
          @game_server_deployment_name = args[:game_server_deployment_name] if args.key?(:game_server_deployment_name)
        end
      end
      
      # Target Agones fleet specification.
      class TargetFleet
        include Google::Apis::Core::Hashable
      
        # The name of the Agones fleet.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates Agones fleet spec and Agones autoscaler spec sources.
        # Corresponds to the JSON property `specSource`
        # @return [Google::Apis::GameservicesV1::SpecSource]
        attr_accessor :spec_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @spec_source = args[:spec_source] if args.key?(:spec_source)
        end
      end
      
      # Target Agones autoscaler policy reference.
      class TargetFleetAutoscaler
        include Google::Apis::Core::Hashable
      
        # The name of the Agones autoscaler.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates Agones fleet spec and Agones autoscaler spec sources.
        # Corresponds to the JSON property `specSource`
        # @return [Google::Apis::GameservicesV1::SpecSource]
        attr_accessor :spec_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @spec_source = args[:spec_source] if args.key?(:spec_source)
        end
      end
      
      # Details of the target Agones fleet.
      class TargetFleetDetails
        include Google::Apis::Core::Hashable
      
        # Target Agones autoscaler policy reference.
        # Corresponds to the JSON property `autoscaler`
        # @return [Google::Apis::GameservicesV1::TargetFleetAutoscaler]
        attr_accessor :autoscaler
      
        # Target Agones fleet specification.
        # Corresponds to the JSON property `fleet`
        # @return [Google::Apis::GameservicesV1::TargetFleet]
        attr_accessor :fleet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaler = args[:autoscaler] if args.key?(:autoscaler)
          @fleet = args[:fleet] if args.key?(:fleet)
        end
      end
      
      # Encapsulates the Target state.
      class TargetState
        include Google::Apis::Core::Hashable
      
        # Details about Agones fleets.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::GameservicesV1::TargetDetails>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
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
