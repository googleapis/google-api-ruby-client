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
    module EventarcV1
      
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
        # @return [Array<Google::Apis::EventarcV1::AuditLogConfig>]
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
        # @return [Google::Apis::EventarcV1::Expr]
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
      
      # A representation of the Channel resource. A Channel is a resource on which
      # event providers publish their events. The published events are delivered
      # through the transport associated with the channel. Note that a channel is
      # associated with exactly one event provider.
      class Channel
        include Google::Apis::Core::Hashable
      
        # Output only. The activation token for the channel. The token must be used by
        # the provider to register the channel for publishing.
        # Corresponds to the JSON property `activationToken`
        # @return [String]
        attr_accessor :activation_token
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource name of a KMS crypto key (managed by the user) used to
        # encrypt/decrypt their event data. It must match the pattern `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The resource name of the channel. Must be unique within the location
        # on the project and must be in `projects/`project`/locations/`location`/
        # channels/`channel_id`` format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the event provider (e.g. Eventarc SaaS partner) associated with
        # the channel. This provider will be granted permissions to publish events to
        # the channel. Format: `projects/`project`/locations/`location`/providers/`
        # provider_id``.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. The name of the Pub/Sub topic created and managed by Eventarc
        # system as a transport for the event delivery. Format: `projects/`project`/
        # topics/`topic_id``.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Output only. Whether or not this Channel satisfies the requirements of
        # physical zone separation
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The state of a Channel.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Server assigned unique identifier for the channel. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_token = args[:activation_token] if args.key?(:activation_token)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A representation of the ChannelConnection resource. A ChannelConnection is a
      # resource which event providers create during the activation process to
      # establish a connection between the provider and the subscriber channel.
      class ChannelConnection
        include Google::Apis::Core::Hashable
      
        # Input only. Activation token for the channel. The token will be used during
        # the creation of ChannelConnection to bind the channel with the provider
        # project. This field will not be stored in the provider resource.
        # Corresponds to the JSON property `activationToken`
        # @return [String]
        attr_accessor :activation_token
      
        # Required. The name of the connected subscriber Channel. This is a weak
        # reference to avoid cross project and cross accounts references. This must be
        # in `projects/`project`/location/`location`/channels/`channel_id`` format.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The name of the connection.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server assigned ID of the resource. The server guarantees
        # uniqueness and immutability until deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_token = args[:activation_token] if args.key?(:activation_token)
          @channel = args[:channel] if args.key?(:channel)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a Cloud Run destination.
      class CloudRun
        include Google::Apis::Core::Hashable
      
        # Optional. The relative path on the Cloud Run service the events should be sent
        # to. The value must conform to the definition of a URI path segment (section 3.
        # 3 of RFC2396). Examples: "/route", "route", "route/subroute".
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. The region the Cloud Run service is deployed in.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Required. The name of the Cloud Run service being addressed. See https://cloud.
        # google.com/run/docs/reference/rest/v1/namespaces.services. Only services
        # located in the same project as the trigger object can be addressed.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @region = args[:region] if args.key?(:region)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Represents a target of an invocation over HTTP.
      class Destination
        include Google::Apis::Core::Hashable
      
        # The Cloud Function resource name. Cloud Functions V1 and V2 are supported.
        # Format: `projects/`project`/locations/`location`/functions/`function`` This is
        # a read-only field. Creating Cloud Functions V1/V2 triggers is only supported
        # via the Cloud Functions product. An error will be returned if the user sets
        # this value.
        # Corresponds to the JSON property `cloudFunction`
        # @return [String]
        attr_accessor :cloud_function
      
        # Represents a Cloud Run destination.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::EventarcV1::CloudRun]
        attr_accessor :cloud_run
      
        # Represents a GKE destination.
        # Corresponds to the JSON property `gke`
        # @return [Google::Apis::EventarcV1::Gke]
        attr_accessor :gke
      
        # Represents a HTTP endpoint destination.
        # Corresponds to the JSON property `httpEndpoint`
        # @return [Google::Apis::EventarcV1::HttpEndpoint]
        attr_accessor :http_endpoint
      
        # Network Configuration that can be inherited by other protos.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::EventarcV1::NetworkConfig]
        attr_accessor :network_config
      
        # The resource name of the Workflow whose Executions are triggered by the events.
        # The Workflow resource should be deployed in the same project as the trigger.
        # Format: `projects/`project`/locations/`location`/workflows/`workflow``
        # Corresponds to the JSON property `workflow`
        # @return [String]
        attr_accessor :workflow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_function = args[:cloud_function] if args.key?(:cloud_function)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
          @gke = args[:gke] if args.key?(:gke)
          @http_endpoint = args[:http_endpoint] if args.key?(:http_endpoint)
          @network_config = args[:network_config] if args.key?(:network_config)
          @workflow = args[:workflow] if args.key?(:workflow)
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
      
      # An enrollment represents a subscription for messages on a particular message
      # bus. It defines a matching criteria for messages on the bus and the subscriber
      # endpoint where matched messages should be delivered.
      class Enrollment
        include Google::Apis::Core::Hashable
      
        # Optional. Resource annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Required. A CEL expression identifying which messages this enrollment applies
        # to.
        # Corresponds to the JSON property `celMatch`
        # @return [String]
        attr_accessor :cel_match
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Destination is the Pipeline that the Enrollment is delivering to. It
        # must point to the full resource name of a Pipeline. Format: "projects/`
        # PROJECT_ID`/locations/`region`/pipelines/`PIPELINE_ID)"
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. Resource display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and might be sent only on update and delete requests to ensure
        # that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Immutable. Resource name of the message bus identifying the source
        # of the messages. It matches the form projects/`project`/locations/`location`/
        # messageBuses/`messageBus`.
        # Corresponds to the JSON property `messageBus`
        # @return [String]
        attr_accessor :message_bus
      
        # Identifier. Resource name of the form projects/`project`/locations/`location`/
        # enrollments/`enrollment`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server assigned unique identifier for the channel. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cel_match = args[:cel_match] if args.key?(:cel_match)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination = args[:destination] if args.key?(:destination)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @message_bus = args[:message_bus] if args.key?(:message_bus)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Filters events based on exact matches on the CloudEvents attributes.
      class EventFilter
        include Google::Apis::Core::Hashable
      
        # Required. The name of a CloudEvents attribute. Currently, only a subset of
        # attributes are supported for filtering. You can [retrieve a specific provider'
        # s supported event types](/eventarc/docs/list-providers#describe-provider). All
        # triggers MUST provide a filter for the 'type' attribute.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Optional. The operator used for matching the events with the value of the
        # filter. If not specified, only events that have an exact key-value pair
        # specified in the filter are matched. The allowed values are `path_pattern` and
        # `match-path-pattern`. `path_pattern` is only allowed for GCFv1 triggers.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Required. The value for the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A representation of the event type resource.
      class EventType
        include Google::Apis::Core::Hashable
      
        # Output only. Human friendly description of what the event type is about. For
        # example "Bucket created in Cloud Storage".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. URI for the event schema. For example "https://github.com/
        # googleapis/google-cloudevents/blob/master/proto/google/events/cloud/storage/v1/
        # events.proto"
        # Corresponds to the JSON property `eventSchemaUri`
        # @return [String]
        attr_accessor :event_schema_uri
      
        # Output only. Filtering attributes for the event type.
        # Corresponds to the JSON property `filteringAttributes`
        # @return [Array<Google::Apis::EventarcV1::FilteringAttribute>]
        attr_accessor :filtering_attributes
      
        # Output only. The full name of the event type (for example, "google.cloud.
        # storage.object.v1.finalized"). In the form of `provider-specific-prefix`.`
        # resource`.`version`.`verb`. Types MUST be versioned and event schemas are
        # guaranteed to remain backward compatible within one version. Note that event
        # type versions and API versions do not need to match.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @event_schema_uri = args[:event_schema_uri] if args.key?(:event_schema_uri)
          @filtering_attributes = args[:filtering_attributes] if args.key?(:filtering_attributes)
          @type = args[:type] if args.key?(:type)
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
      
      # A representation of the FilteringAttribute resource. Filtering attributes are
      # per event type.
      class FilteringAttribute
        include Google::Apis::Core::Hashable
      
        # Output only. Attribute used for filtering the event type.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # Output only. Description of the purpose of the attribute.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. If true, the attribute accepts matching expressions in the
        # Eventarc PathPattern format.
        # Corresponds to the JSON property `pathPatternSupported`
        # @return [Boolean]
        attr_accessor :path_pattern_supported
        alias_method :path_pattern_supported?, :path_pattern_supported
      
        # Output only. If true, the triggers for this provider should always specify a
        # filter on these attributes. Trigger creation will fail otherwise.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
          @description = args[:description] if args.key?(:description)
          @path_pattern_supported = args[:path_pattern_supported] if args.key?(:path_pattern_supported)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # Represents a GKE destination.
      class Gke
        include Google::Apis::Core::Hashable
      
        # Required. The name of the cluster the GKE service is running in. The cluster
        # must be running in the same project as the trigger being created.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Required. The name of the Google Compute Engine in which the cluster resides,
        # which can either be compute zone (for example, us-central1-a) for the zonal
        # clusters or region (for example, us-central1) for regional clusters.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The namespace the GKE service is running in.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # Optional. The relative path on the GKE service the events should be sent to.
        # The value must conform to the definition of a URI path segment (section 3.3 of
        # RFC2396). Examples: "/route", "route", "route/subroute".
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. Name of the GKE service.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @location = args[:location] if args.key?(:location)
          @namespace = args[:namespace] if args.key?(:namespace)
          @path = args[:path] if args.key?(:path)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A GoogleApiSource represents a subscription of 1P events from a MessageBus.
      class GoogleApiSource
        include Google::Apis::Core::Hashable
      
        # Optional. Resource annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource name of a KMS crypto key (managed by the user) used to
        # encrypt/decrypt their event data. It must match the pattern `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Required. Destination is the message bus that the GoogleApiSource is
        # delivering to. It must be point to the full resource name of a MessageBus.
        # Format: "projects/`PROJECT_ID`/locations/`region`/messagesBuses/`
        # MESSAGE_BUS_ID)
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. Resource display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and might be sent only on update and delete requests to ensure
        # that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The configuration for Platform Telemetry logging for Eventarc Advanced
        # resources.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::EventarcV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Identifier. Resource name of the form projects/`project`/locations/`location`/
        # googleApiSources/`google_api_source`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Config to enabled subscribing to events from other projects in the org.
        # Corresponds to the JSON property `organizationSubscription`
        # @return [Google::Apis::EventarcV1::OrganizationSubscription]
        attr_accessor :organization_subscription
      
        # Config to enable subscribing to all events from a list of projects.
        # Corresponds to the JSON property `projectSubscriptions`
        # @return [Google::Apis::EventarcV1::ProjectSubscriptions]
        attr_accessor :project_subscriptions
      
        # Output only. Server assigned unique identifier for the channel. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
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
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @destination = args[:destination] if args.key?(:destination)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @organization_subscription = args[:organization_subscription] if args.key?(:organization_subscription)
          @project_subscriptions = args[:project_subscriptions] if args.key?(:project_subscriptions)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A GoogleChannelConfig is a resource that stores the custom settings respected
      # by Eventarc first-party triggers in the matching region. Once configured,
      # first-party event data will be protected using the specified custom managed
      # encryption key instead of Google-managed encryption keys.
      class GoogleChannelConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of a KMS crypto key (managed by the user) used to
        # encrypt/decrypt their event data. It must match the pattern `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The resource name of the config. Must be in the format of, `projects/
        # `project`/locations/`location`/googleChannelConfig`. In API responses, the
        # config name always includes the projectID, regardless of whether the projectID
        # or projectNumber was provided.
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
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a target of an invocation over HTTP.
      class GoogleCloudEventarcV1PipelineDestination
        include Google::Apis::Core::Hashable
      
        # Represents a config used to authenticate message requests.
        # Corresponds to the JSON property `authenticationConfig`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig]
        attr_accessor :authentication_config
      
        # Represents a HTTP endpoint destination.
        # Corresponds to the JSON property `httpEndpoint`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationHttpEndpoint]
        attr_accessor :http_endpoint
      
        # Optional. The resource name of the Message Bus to which events should be
        # published. The Message Bus resource should exist in the same project as the
        # Pipeline. Format: `projects/`project`/locations/`location`/messageBuses/`
        # message_bus``
        # Corresponds to the JSON property `messageBus`
        # @return [String]
        attr_accessor :message_bus
      
        # Represents a network config to be used for destination resolution and
        # connectivity.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationNetworkConfig]
        attr_accessor :network_config
      
        # Represents the format of message data.
        # Corresponds to the JSON property `outputPayloadFormat`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat]
        attr_accessor :output_payload_format
      
        # Optional. The resource name of the Pub/Sub topic to which events should be
        # published. Format: `projects/`project`/locations/`location`/topics/`topic``
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        # Optional. The resource name of the Workflow whose Executions are triggered by
        # the events. The Workflow resource should be deployed in the same project as
        # the Pipeline. Format: `projects/`project`/locations/`location`/workflows/`
        # workflow``
        # Corresponds to the JSON property `workflow`
        # @return [String]
        attr_accessor :workflow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_config = args[:authentication_config] if args.key?(:authentication_config)
          @http_endpoint = args[:http_endpoint] if args.key?(:http_endpoint)
          @message_bus = args[:message_bus] if args.key?(:message_bus)
          @network_config = args[:network_config] if args.key?(:network_config)
          @output_payload_format = args[:output_payload_format] if args.key?(:output_payload_format)
          @topic = args[:topic] if args.key?(:topic)
          @workflow = args[:workflow] if args.key?(:workflow)
        end
      end
      
      # Represents a config used to authenticate message requests.
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig
        include Google::Apis::Core::Hashable
      
        # Represents a config used to authenticate with a Google OIDC token using a
        # Google Cloud service account. Use this authentication method to invoke your
        # Cloud Run and Cloud Functions destinations or HTTP endpoints that support
        # Google OIDC.
        # Corresponds to the JSON property `googleOidc`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken]
        attr_accessor :google_oidc
      
        # Contains information needed for generating an [OAuth token](https://developers.
        # google.com/identity/protocols/OAuth2). This type of authorization should
        # generally only be used when calling Google APIs hosted on *.googleapis.com.
        # Corresponds to the JSON property `oauthToken`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken]
        attr_accessor :oauth_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_oidc = args[:google_oidc] if args.key?(:google_oidc)
          @oauth_token = args[:oauth_token] if args.key?(:oauth_token)
        end
      end
      
      # Contains information needed for generating an [OAuth token](https://developers.
      # google.com/identity/protocols/OAuth2). This type of authorization should
      # generally only be used when calling Google APIs hosted on *.googleapis.com.
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken
        include Google::Apis::Core::Hashable
      
        # Optional. OAuth scope to be used for generating OAuth access token. If not
        # specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Required. Service account email used to generate the [OAuth token](https://
        # developers.google.com/identity/protocols/OAuth2). The principal who calls this
        # API must have iam.serviceAccounts.actAs permission in the service account. See
        # https://cloud.google.com/iam/docs/understanding-service-accounts for more
        # information. Eventarc service agents must have roles/roles/iam.
        # serviceAccountTokenCreator role to allow Pipeline to create OAuth2 tokens for
        # authenticated requests.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scope = args[:scope] if args.key?(:scope)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Represents a config used to authenticate with a Google OIDC token using a
      # Google Cloud service account. Use this authentication method to invoke your
      # Cloud Run and Cloud Functions destinations or HTTP endpoints that support
      # Google OIDC.
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken
        include Google::Apis::Core::Hashable
      
        # Optional. Audience to be used to generate the OIDC Token. The audience claim
        # identifies the recipient that the JWT is intended for. If unspecified, the
        # destination URI will be used.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Required. Service account email used to generate the OIDC Token. The principal
        # who calls this API must have iam.serviceAccounts.actAs permission in the
        # service account. See https://cloud.google.com/iam/docs/understanding-service-
        # accounts for more information. Eventarc service agents must have roles/roles/
        # iam.serviceAccountTokenCreator role to allow the Pipeline to create OpenID
        # tokens for authenticated requests.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Represents a HTTP endpoint destination.
      class GoogleCloudEventarcV1PipelineDestinationHttpEndpoint
        include Google::Apis::Core::Hashable
      
        # Optional. The CEL expression used to modify how the destination-bound HTTP
        # request is constructed. If a binding expression is not specified here, the
        # message is treated as a CloudEvent and is mapped to the HTTP request according
        # to the CloudEvent HTTP Protocol Binding Binary Content Mode (https://github.
        # com/cloudevents/spec/blob/main/cloudevents/bindings/http-protocol-binding.md#
        # 31-binary-content-mode). In this representation, all fields except the `data`
        # and `datacontenttype` field on the message are mapped to HTTP request headers
        # with a prefix of `ce-`. To construct the HTTP request payload and the value of
        # the content-type HTTP header, the payload format is defined as follows: 1) Use
        # the output_payload_format_type on the Pipeline.Destination if it is set, else:
        # 2) Use the input_payload_format_type on the Pipeline if it is set, else: 3)
        # Treat the payload as opaque binary data. The `data` field of the message is
        # converted to the payload format or left as-is for case 3) and then attached as
        # the payload of the HTTP request. The `content-type` header on the HTTP request
        # is set to the payload format type or left empty for case 3). However, if a
        # mediation has updated the `datacontenttype` field on the message so that it is
        # not the same as the payload format type but it is still a prefix of the
        # payload format type, then the `content-type` header on the HTTP request is set
        # to this `datacontenttype` value. For example, if the `datacontenttype` is "
        # application/json" and the payload format type is "application/json; charset=
        # utf-8", then the `content-type` header on the HTTP request is set to "
        # application/json; charset=utf-8". If a non-empty binding expression is
        # specified then this expression is used to modify the default CloudEvent HTTP
        # Protocol Binding Binary Content representation. The result of the CEL
        # expression must be a map of key/value pairs which is used as follows: - If a
        # map named `headers` exists on the result of the expression, then its key/value
        # pairs are directly mapped to the HTTP request headers. The headers values are
        # constructed from the corresponding value type's canonical representation. If
        # the `headers` field doesn't exist then the resulting HTTP request will be the
        # headers of the CloudEvent HTTP Binding Binary Content Mode representation of
        # the final message. Note: If the specified binding expression, has updated the `
        # datacontenttype` field on the message so that it is not the same as the
        # payload format type but it is still a prefix of the payload format type, then
        # the `content-type` header in the `headers` map is set to this `datacontenttype`
        # value. - If a field named `body` exists on the result of the expression then
        # its value is directly mapped to the body of the request. If the value of the `
        # body` field is of type bytes or string then it is used for the HTTP request
        # body as-is, with no conversion. If the body field is of any other type then it
        # is converted to a JSON string. If the body field does not exist then the
        # resulting payload of the HTTP request will be data value of the CloudEvent
        # HTTP Binding Binary Content Mode representation of the final message as
        # described earlier. - Any other fields in the resulting expression will be
        # ignored. The CEL expression may access the incoming CloudEvent message in its
        # definition, as follows: - The `data` field of the incoming CloudEvent message
        # can be accessed using the `message.data` value. Subfields of `message.data`
        # may also be accessed if an input_payload_format has been specified on the
        # Pipeline. - Each attribute of the incoming CloudEvent message can be accessed
        # using the `message.` value, where is replaced with the name of the attribute. -
        # Existing headers can be accessed in the CEL expression using the `headers`
        # variable. The `headers` variable defines a map of key/value pairs
        # corresponding to the HTTP headers of the CloudEvent HTTP Binding Binary
        # Content Mode representation of the final message as described earlier. For
        # example, the following CEL expression can be used to construct an HTTP request
        # by adding an additional header to the HTTP headers of the CloudEvent HTTP
        # Binding Binary Content Mode representation of the final message and by
        # overwriting the body of the request: ``` ` "headers": headers.merge(`"new-
        # header-key": "new-header-value"`), "body": "new-body" ` ``` - The default
        # binding for the message payload can be accessed using the `body` variable. It
        # conatins a string representation of the message payload in the format
        # specified by the `output_payload_format` field. If the `input_payload_format`
        # field is not set, the `body` variable contains the same message payload bytes
        # that were published. Additionally, the following CEL extension functions are
        # provided for use in this CEL expression: - toBase64Url: map.toBase64Url() ->
        # string - Converts a CelValue to a base64url encoded string - toJsonString: map.
        # toJsonString() -> string - Converts a CelValue to a JSON string - merge: map1.
        # merge(map2) -> map3 - Merges the passed CEL map with the existing CEL map the
        # function is applied to. - If the same key exists in both maps, if the key's
        # value is type map both maps are merged else the value from the passed map is
        # used. - denormalize: map.denormalize() -> map - Denormalizes a CEL map such
        # that every value of type map or key in the map is expanded to return a single
        # level map. - The resulting keys are "." separated indices of the map keys. -
        # For example: ` "a": 1, "b": ` "c": 2, "d": 3 ` "e": [4, 5] ` .denormalize() ->
        # ` "a": 1, "b.c": 2, "b.d": 3, "e.0": 4, "e.1": 5 ` - setField: map.setField(
        # key, value) -> message - Sets the field of the message with the given key to
        # the given value. - If the field is not present it will be added. - If the
        # field is present it will be overwritten. - The key can be a dot separated path
        # to set a field in a nested message. - Key must be of type string. - Value may
        # be any valid type. - removeFields: map.removeFields([key1, key2, ...]) ->
        # message - Removes the fields of the map with the given keys. - The keys can be
        # a dot separated path to remove a field in a nested message. - If a key is not
        # found it will be ignored. - Keys must be of type string. - toMap: [map1, map2,
        # ...].toMap() -> map - Converts a CEL list of CEL maps to a single CEL map -
        # toCloudEventJsonWithPayloadFormat: message.toCloudEventJsonWithPayloadFormat()
        # -> map - Converts a message to the corresponding structure of JSON format for
        # CloudEvents. - It converts `data` to destination payload format specified in `
        # output_payload_format`. If `output_payload_format` is not set, the data will
        # remain unchanged. - It also sets the corresponding datacontenttype of the
        # CloudEvent, as indicated by `output_payload_format`. If no `
        # output_payload_format` is set it will use the value of the "datacontenttype"
        # attribute on the CloudEvent if present, else remove "datacontenttype"
        # attribute. - This function expects that the content of the message will adhere
        # to the standard CloudEvent format. If it doesn't then this function will fail.
        # - The result is a CEL map that corresponds to the JSON representation of the
        # CloudEvent. To convert that data to a JSON string it can be chained with the
        # toJsonString function. The Pipeline expects that the message it receives
        # adheres to the standard CloudEvent format. If it doesn't then the outgoing
        # message request may fail with a persistent error.
        # Corresponds to the JSON property `messageBindingTemplate`
        # @return [String]
        attr_accessor :message_binding_template
      
        # Required. The URI of the HTTP endpoint. The value must be a RFC2396 URI string.
        # Examples: `https://svc.us-central1.p.local:8080/route`. Only the HTTPS
        # protocol is supported.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_binding_template = args[:message_binding_template] if args.key?(:message_binding_template)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents a network config to be used for destination resolution and
      # connectivity.
      class GoogleCloudEventarcV1PipelineDestinationNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the NetworkAttachment that allows access to the consumer VPC.
        # Format: `projects/`PROJECT_ID`/regions/`REGION`/networkAttachments/`
        # NETWORK_ATTACHMENT_NAME``
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
        end
      end
      
      # Mediation defines different ways to modify the Pipeline.
      class GoogleCloudEventarcV1PipelineMediation
        include Google::Apis::Core::Hashable
      
        # Transformation defines the way to transform an incoming message.
        # Corresponds to the JSON property `transformation`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediationTransformation]
        attr_accessor :transformation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformation = args[:transformation] if args.key?(:transformation)
        end
      end
      
      # Transformation defines the way to transform an incoming message.
      class GoogleCloudEventarcV1PipelineMediationTransformation
        include Google::Apis::Core::Hashable
      
        # Optional. The CEL expression template to apply to transform messages. The
        # following CEL extension functions are provided for use in this CEL expression:
        # - merge: map1.merge(map2) -> map3 - Merges the passed CEL map with the
        # existing CEL map the function is applied to. - If the same key exists in both
        # maps, if the key's value is type map both maps are merged else the value from
        # the passed map is used. - denormalize: map.denormalize() -> map - Denormalizes
        # a CEL map such that every value of type map or key in the map is expanded to
        # return a single level map. - The resulting keys are "." separated indices of
        # the map keys. - For example: ` "a": 1, "b": ` "c": 2, "d": 3 ` "e": [4, 5] ` .
        # denormalize() -> ` "a": 1, "b.c": 2, "b.d": 3, "e.0": 4, "e.1": 5 ` - setField:
        # map.setField(key, value) -> message - Sets the field of the message with the
        # given key to the given value. - If the field is not present it will be added. -
        # If the field is present it will be overwritten. - The key can be a dot
        # separated path to set a field in a nested message. - Key must be of type
        # string. - Value may be any valid type. - removeFields: map.removeFields([key1,
        # key2, ...]) -> message - Removes the fields of the map with the given keys. -
        # The keys can be a dot separated path to remove a field in a nested message. -
        # If a key is not found it will be ignored. - Keys must be of type string. -
        # toMap: [map1, map2, ...].toMap() -> map - Converts a CEL list of CEL maps to a
        # single CEL map - toDestinationPayloadFormat(): message.data.
        # toDestinationPayloadFormat() -> string or bytes - Converts the message data to
        # the destination payload format specified in Pipeline.Destination.
        # output_payload_format - This function is meant to be applied to the message.
        # data field. - If the destination payload format is not set, the function will
        # return the message data unchanged. - toCloudEventJsonWithPayloadFormat:
        # message.toCloudEventJsonWithPayloadFormat() -> map - Converts a message to the
        # corresponding structure of JSON format for CloudEvents - This function applies
        # toDestinationPayloadFormat() to the message data. It also sets the
        # corresponding datacontenttype of the CloudEvent, as indicated by Pipeline.
        # Destination.output_payload_format. If no output_payload_format is set it will
        # use the existing datacontenttype on the CloudEvent if present, else leave
        # datacontenttype absent. - This function expects that the content of the
        # message will adhere to the standard CloudEvent format. If it doesn't then this
        # function will fail. - The result is a CEL map that corresponds to the JSON
        # representation of the CloudEvent. To convert that data to a JSON string it can
        # be chained with the toJsonString function.
        # Corresponds to the JSON property `transformationTemplate`
        # @return [String]
        attr_accessor :transformation_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformation_template = args[:transformation_template] if args.key?(:transformation_template)
        end
      end
      
      # Represents the format of message data.
      class GoogleCloudEventarcV1PipelineMessagePayloadFormat
        include Google::Apis::Core::Hashable
      
        # The format of an AVRO message payload.
        # Corresponds to the JSON property `avro`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat]
        attr_accessor :avro
      
        # The format of a JSON message payload.
        # Corresponds to the JSON property `json`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat]
        attr_accessor :json
      
        # The format of a Protobuf message payload.
        # Corresponds to the JSON property `protobuf`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat]
        attr_accessor :protobuf
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro = args[:avro] if args.key?(:avro)
          @json = args[:json] if args.key?(:json)
          @protobuf = args[:protobuf] if args.key?(:protobuf)
        end
      end
      
      # The format of an AVRO message payload.
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat
        include Google::Apis::Core::Hashable
      
        # Optional. The entire schema definition is stored in this field.
        # Corresponds to the JSON property `schemaDefinition`
        # @return [String]
        attr_accessor :schema_definition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema_definition = args[:schema_definition] if args.key?(:schema_definition)
        end
      end
      
      # The format of a JSON message payload.
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The format of a Protobuf message payload.
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat
        include Google::Apis::Core::Hashable
      
        # Optional. The entire schema definition is stored in this field.
        # Corresponds to the JSON property `schemaDefinition`
        # @return [String]
        attr_accessor :schema_definition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema_definition = args[:schema_definition] if args.key?(:schema_definition)
        end
      end
      
      # The retry policy configuration for the Pipeline. The pipeline exponentially
      # backs off in case the destination is non responsive or returns a retryable
      # error code. The default semantics are as follows: The backoff starts with a 5
      # second delay and doubles the delay after each failed attempt (10 seconds, 20
      # seconds, 40 seconds, etc.). The delay is capped at 60 seconds by default.
      # Please note that if you set the min_retry_delay and max_retry_delay fields to
      # the same value this will make the duration between retries constant.
      class GoogleCloudEventarcV1PipelineRetryPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of delivery attempts for any message. The value
        # must be between 1 and 100. The default value for this field is 5.
        # Corresponds to the JSON property `maxAttempts`
        # @return [Fixnum]
        attr_accessor :max_attempts
      
        # Optional. The maximum amount of seconds to wait between retry attempts. The
        # value must be between 1 and 600. The default value for this field is 60.
        # Corresponds to the JSON property `maxRetryDelay`
        # @return [String]
        attr_accessor :max_retry_delay
      
        # Optional. The minimum amount of seconds to wait between retry attempts. The
        # value must be between 1 and 600. The default value for this field is 5.
        # Corresponds to the JSON property `minRetryDelay`
        # @return [String]
        attr_accessor :min_retry_delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_attempts = args[:max_attempts] if args.key?(:max_attempts)
          @max_retry_delay = args[:max_retry_delay] if args.key?(:max_retry_delay)
          @min_retry_delay = args[:min_retry_delay] if args.key?(:min_retry_delay)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::EventarcV1::GoogleLongrunningOperation>]
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::EventarcV1::GoogleRpcStatus]
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Represents a HTTP endpoint destination.
      class HttpEndpoint
        include Google::Apis::Core::Hashable
      
        # Required. The URI of the HTTP endpoint. The value must be a RFC2396 URI string.
        # Examples: `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`
        # . Only HTTP and HTTPS protocols are supported. The host can be either a static
        # IP addressable from the VPC specified by the network config, or an internal
        # DNS hostname of the service resolvable via Cloud DNS.
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
      
      # The response message for the `ListChannelConnections` method.
      class ListChannelConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # The requested channel connections, up to the number specified in `page_size`.
        # Corresponds to the JSON property `channelConnections`
        # @return [Array<Google::Apis::EventarcV1::ChannelConnection>]
        attr_accessor :channel_connections
      
        # A page token that can be sent to `ListChannelConnections` to request the next
        # page. If this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_connections = args[:channel_connections] if args.key?(:channel_connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListChannels` method.
      class ListChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The requested channels, up to the number specified in `page_size`.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::EventarcV1::Channel>]
        attr_accessor :channels
      
        # A page token that can be sent to `ListChannels` to request the next page. If
        # this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListEnrollments` method.
      class ListEnrollmentsResponse
        include Google::Apis::Core::Hashable
      
        # The requested Enrollments, up to the number specified in `page_size`.
        # Corresponds to the JSON property `enrollments`
        # @return [Array<Google::Apis::EventarcV1::Enrollment>]
        attr_accessor :enrollments
      
        # A page token that can be sent to `ListEnrollments` to request the next page.
        # If this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enrollments = args[:enrollments] if args.key?(:enrollments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListGoogleApiSources` method.
      class ListGoogleApiSourcesResponse
        include Google::Apis::Core::Hashable
      
        # The requested GoogleApiSources, up to the number specified in `page_size`.
        # Corresponds to the JSON property `googleApiSources`
        # @return [Array<Google::Apis::EventarcV1::GoogleApiSource>]
        attr_accessor :google_api_sources
      
        # A page token that can be sent to `ListMessageBusEnrollments` to request the
        # next page. If this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_api_sources = args[:google_api_sources] if args.key?(:google_api_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::EventarcV1::Location>]
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
      
      # The response message for the `ListMessageBusEnrollments` method.`
      class ListMessageBusEnrollmentsResponse
        include Google::Apis::Core::Hashable
      
        # The requested enrollments, up to the number specified in `page_size`.
        # Corresponds to the JSON property `enrollments`
        # @return [Array<String>]
        attr_accessor :enrollments
      
        # A page token that can be sent to `ListMessageBusEnrollments` to request the
        # next page. If this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enrollments = args[:enrollments] if args.key?(:enrollments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListMessageBuses` method.
      class ListMessageBusesResponse
        include Google::Apis::Core::Hashable
      
        # The requested message buses, up to the number specified in `page_size`.
        # Corresponds to the JSON property `messageBuses`
        # @return [Array<Google::Apis::EventarcV1::MessageBus>]
        attr_accessor :message_buses
      
        # A page token that can be sent to `ListMessageBuses` to request the next page.
        # If this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources, if any.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_buses = args[:message_buses] if args.key?(:message_buses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the ListPipelines method.
      class ListPipelinesResponse
        include Google::Apis::Core::Hashable
      
        # A page token that can be sent to `ListPipelines` to request the next page. If
        # this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested pipelines, up to the number specified in `page_size`.
        # Corresponds to the JSON property `pipelines`
        # @return [Array<Google::Apis::EventarcV1::Pipeline>]
        attr_accessor :pipelines
      
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
          @pipelines = args[:pipelines] if args.key?(:pipelines)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListProviders` method.
      class ListProvidersResponse
        include Google::Apis::Core::Hashable
      
        # A page token that can be sent to `ListProviders` to request the next page. If
        # this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested providers, up to the number specified in `page_size`.
        # Corresponds to the JSON property `providers`
        # @return [Array<Google::Apis::EventarcV1::Provider>]
        attr_accessor :providers
      
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
          @providers = args[:providers] if args.key?(:providers)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for the `ListTriggers` method.
      class ListTriggersResponse
        include Google::Apis::Core::Hashable
      
        # A page token that can be sent to `ListTriggers` to request the next page. If
        # this is empty, then there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested triggers, up to the number specified in `page_size`.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::EventarcV1::Trigger>]
        attr_accessor :triggers
      
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
          @triggers = args[:triggers] if args.key?(:triggers)
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
      
      # The configuration for Platform Telemetry logging for Eventarc Advanced
      # resources.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The minimum severity of logs that will be sent to Stackdriver/
        # Platform Telemetry. Logs at severitiy ≥ this value will be sent, unless it is
        # NONE.
        # Corresponds to the JSON property `logSeverity`
        # @return [String]
        attr_accessor :log_severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_severity = args[:log_severity] if args.key?(:log_severity)
        end
      end
      
      # MessageBus for the messages flowing through the system. The admin has
      # visibility and control over the messages being published and consumed and can
      # restrict publishers and subscribers to only a subset of data available in the
      # system by defining authorization policies.
      class MessageBus
        include Google::Apis::Core::Hashable
      
        # Optional. Resource annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource name of a KMS crypto key (managed by the user) used to
        # encrypt/decrypt their event data. It must match the pattern `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Optional. Resource display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and might be sent only on update and delete requests to ensure
        # that the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The configuration for Platform Telemetry logging for Eventarc Advanced
        # resources.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::EventarcV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Identifier. Resource name of the form projects/`project`/locations/`location`/
        # messageBuses/`message_bus`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server assigned unique identifier for the channel. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
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
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Network Configuration that can be inherited by other protos.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Required. Name of the NetworkAttachment that allows access to the customer's
        # VPC. Format: `projects/`PROJECT_ID`/regions/`REGION`/networkAttachments/`
        # NETWORK_ATTACHMENT_NAME``
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
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
      
      # Config to enabled subscribing to events from other projects in the org.
      class OrganizationSubscription
        include Google::Apis::Core::Hashable
      
        # Required. Enable org level subscription.
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
      
      # A representation of the Pipeline resource.
      class Pipeline
        include Google::Apis::Core::Hashable
      
        # Optional. User-defined annotations. See https://google.aip.dev/128#annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The creation time. A timestamp in RFC3339 UTC "Zulu" format, with
        # nanosecond resolution and up to nine fractional digits. Examples: "2014-10-
        # 02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Resource name of a KMS crypto key (managed by the user) used to
        # encrypt/decrypt the event data. If not set, an internal Google-owned key will
        # be used to encrypt messages. It must match the pattern "projects/`project`/
        # locations/`location`/keyRings/`keyring`/cryptoKeys/`key`".
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Required. List of destinations to which messages will be forwarded. Currently,
        # exactly one destination is supported per Pipeline.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestination>]
        attr_accessor :destinations
      
        # Optional. Display name of resource.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and might be sent only on create requests to ensure that the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Represents the format of message data.
        # Corresponds to the JSON property `inputPayloadFormat`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat]
        attr_accessor :input_payload_format
      
        # Optional. User labels attached to the Pipeline that can be used to group
        # resources. An object containing a list of "key": value pairs. Example: ` "name"
        # : "wrench", "mass": "1.3kg", "count": "3" `.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The configuration for Platform Telemetry logging for Eventarc Advanced
        # resources.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::EventarcV1::LoggingConfig]
        attr_accessor :logging_config
      
        # Optional. List of mediation operations to be performed on the message.
        # Currently, only one Transformation operation is allowed in each Pipeline.
        # Corresponds to the JSON property `mediations`
        # @return [Array<Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediation>]
        attr_accessor :mediations
      
        # Identifier. The resource name of the Pipeline. Must be unique within the
        # location of the project and must be in `projects/`project`/locations/`location`
        # /pipelines/`pipeline`` format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The retry policy configuration for the Pipeline. The pipeline exponentially
        # backs off in case the destination is non responsive or returns a retryable
        # error code. The default semantics are as follows: The backoff starts with a 5
        # second delay and doubles the delay after each failed attempt (10 seconds, 20
        # seconds, 40 seconds, etc.). The delay is capped at 60 seconds by default.
        # Please note that if you set the min_retry_delay and max_retry_delay fields to
        # the same value this will make the duration between retries constant.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineRetryPolicy]
        attr_accessor :retry_policy
      
        # Output only. Whether or not this Pipeline satisfies the requirements of
        # physical zone separation
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. Server-assigned unique identifier for the Pipeline. The value is
        # a UUID4 string and guaranteed to remain unchanged until the resource is
        # deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time. A timestamp in RFC3339 UTC "Zulu" format,
        # with nanosecond resolution and up to nine fractional digits. Examples: "2014-
        # 10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
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
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @destinations = args[:destinations] if args.key?(:destinations)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @input_payload_format = args[:input_payload_format] if args.key?(:input_payload_format)
          @labels = args[:labels] if args.key?(:labels)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @mediations = args[:mediations] if args.key?(:mediations)
          @name = args[:name] if args.key?(:name)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @uid = args[:uid] if args.key?(:uid)
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
        # @return [Array<Google::Apis::EventarcV1::AuditConfig>]
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
        # @return [Array<Google::Apis::EventarcV1::Binding>]
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
      
      # Config to enable subscribing to all events from a list of projects.
      class ProjectSubscriptions
        include Google::Apis::Core::Hashable
      
        # Required. A list of projects to receive events from. All the projects must be
        # in the same org. The listed projects should have the format project/`
        # identifier` where identifier can be either the project id for project number.
        # A single list may contain both formats. At most 100 projects can be listed.
        # Corresponds to the JSON property `list`
        # @return [Array<String>]
        attr_accessor :list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list = args[:list] if args.key?(:list)
        end
      end
      
      # A representation of the Provider resource.
      class Provider
        include Google::Apis::Core::Hashable
      
        # Output only. Human friendly name for the Provider. For example "Cloud Storage".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Event types for this provider.
        # Corresponds to the JSON property `eventTypes`
        # @return [Array<Google::Apis::EventarcV1::EventType>]
        attr_accessor :event_types
      
        # Output only. In `projects/`project`/locations/`location`/providers/`
        # provider_id`` format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @event_types = args[:event_types] if args.key?(:event_types)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a Pub/Sub transport.
      class Pubsub
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Pub/Sub subscription created and managed by
        # Eventarc as a transport for the event delivery. Format: `projects/`PROJECT_ID`/
        # subscriptions/`SUBSCRIPTION_NAME``.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        # Optional. The name of the Pub/Sub topic created and managed by Eventarc as a
        # transport for the event delivery. Format: `projects/`PROJECT_ID`/topics/`
        # TOPIC_NAME``. You can set an existing topic for triggers of the type `google.
        # cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not
        # deleted by Eventarc at trigger deletion.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # The retry policy configuration for the Trigger. Can only be set with Cloud Run
      # destinations.
      class RetryPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of delivery attempts for any message. The only
        # valid value is 1.
        # Corresponds to the JSON property `maxAttempts`
        # @return [Fixnum]
        attr_accessor :max_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_attempts = args[:max_attempts] if args.key?(:max_attempts)
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
        # @return [Google::Apis::EventarcV1::Policy]
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
      
      # A condition that is part of the trigger state computation.
      class StateCondition
        include Google::Apis::Core::Hashable
      
        # The canonical code of the condition.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Human-readable message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
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
      
      # Represents the transport intermediaries created for the trigger to deliver
      # events.
      class Transport
        include Google::Apis::Core::Hashable
      
        # Represents a Pub/Sub transport.
        # Corresponds to the JSON property `pubsub`
        # @return [Google::Apis::EventarcV1::Pubsub]
        attr_accessor :pubsub
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub = args[:pubsub] if args.key?(:pubsub)
        end
      end
      
      # A representation of the trigger resource.
      class Trigger
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the channel associated with the trigger in `projects/`
        # project`/locations/`location`/channels/`channel`` format. You must provide a
        # channel to receive events from Eventarc SaaS partners.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Output only. The reason(s) why a trigger is in FAILED state.
        # Corresponds to the JSON property `conditions`
        # @return [Hash<String,Google::Apis::EventarcV1::StateCondition>]
        attr_accessor :conditions
      
        # Output only. The creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents a target of an invocation over HTTP.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::EventarcV1::Destination]
        attr_accessor :destination
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and might be sent only on create requests to ensure that the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. EventDataContentType specifies the type of payload in MIME format
        # that is expected from the CloudEvent data field. This is set to `application/
        # json` if the value is not defined.
        # Corresponds to the JSON property `eventDataContentType`
        # @return [String]
        attr_accessor :event_data_content_type
      
        # Required. Unordered list. The list of filters that applies to event attributes.
        # Only events that match all the provided filters are sent to the destination.
        # Corresponds to the JSON property `eventFilters`
        # @return [Array<Google::Apis::EventarcV1::EventFilter>]
        attr_accessor :event_filters
      
        # Optional. User labels attached to the triggers that can be used to group
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The resource name of the trigger. Must be unique within the location
        # of the project and must be in `projects/`project`/locations/`location`/
        # triggers/`trigger`` format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The retry policy configuration for the Trigger. Can only be set with Cloud Run
        # destinations.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::EventarcV1::RetryPolicy]
        attr_accessor :retry_policy
      
        # Output only. Whether or not this Trigger satisfies the requirements of
        # physical zone separation
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Optional. The IAM service account email associated with the trigger. The
        # service account represents the identity of the trigger. The `iam.
        # serviceAccounts.actAs` permission must be granted on the service account to
        # allow a principal to impersonate the service account. For more information,
        # see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page
        # specific to the trigger destination.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Represents the transport intermediaries created for the trigger to deliver
        # events.
        # Corresponds to the JSON property `transport`
        # @return [Google::Apis::EventarcV1::Transport]
        attr_accessor :transport
      
        # Output only. Server-assigned unique identifier for the trigger. The value is a
        # UUID4 string and guaranteed to remain unchanged until the resource is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The last-modified time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @conditions = args[:conditions] if args.key?(:conditions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination = args[:destination] if args.key?(:destination)
          @etag = args[:etag] if args.key?(:etag)
          @event_data_content_type = args[:event_data_content_type] if args.key?(:event_data_content_type)
          @event_filters = args[:event_filters] if args.key?(:event_filters)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @service_account = args[:service_account] if args.key?(:service_account)
          @transport = args[:transport] if args.key?(:transport)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
