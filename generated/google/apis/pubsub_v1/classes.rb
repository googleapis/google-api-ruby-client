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
    module PubsubV1
      
      # Request for the Acknowledge method.
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The acknowledgment ID for the messages being acknowledged that was
        # returned by the Pub/Sub system in the `Pull` response. Must not be empty.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
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
        # @return [Google::Apis::PubsubV1::Expr]
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
      
      # Request for the `CreateSnapshot` method.
      class CreateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # See Creating and managing labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The subscription whose backlog the snapshot retains. Specifically,
        # the created snapshot is guaranteed to retain: (a) The existing backlog on the
        # subscription. More precisely, this is defined as the messages in the
        # subscription's backlog that are unacknowledged upon the successful completion
        # of the `CreateSnapshot` request; as well as: (b) Any messages published to the
        # subscription's topic following the successful completion of the CreateSnapshot
        # request. Format is `projects/`project`/subscriptions/`sub``.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Dead lettering is done on a best effort basis. The same message might be dead
      # lettered multiple times. If validation on any of the fields fails at
      # subscription creation/updation, the create/update subscription request will
      # fail.
      class DeadLetterPolicy
        include Google::Apis::Core::Hashable
      
        # The name of the topic to which dead letter messages should be published.
        # Format is `projects/`project`/topics/`topic``.The Cloud Pub/Sub service
        # account associated with the enclosing subscription's parent project (i.e.,
        # service-`project_number`@gcp-sa-pubsub.iam.gserviceaccount.com) must have
        # permission to Publish() to this topic. The operation will fail if the topic
        # does not exist. Users should ensure that there is a subscription attached to
        # this topic since messages published to a topic with no subscriptions are lost.
        # Corresponds to the JSON property `deadLetterTopic`
        # @return [String]
        attr_accessor :dead_letter_topic
      
        # The maximum number of delivery attempts for any message. The value must be
        # between 5 and 100. The number of delivery attempts is defined as 1 + (the sum
        # of number of NACKs and number of times the acknowledgement deadline has been
        # exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0
        # deadline. Note that client libraries may automatically extend ack_deadlines.
        # This field will be honored on a best effort basis. If this parameter is 0, a
        # default value of 5 is used.
        # Corresponds to the JSON property `maxDeliveryAttempts`
        # @return [Fixnum]
        attr_accessor :max_delivery_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dead_letter_topic = args[:dead_letter_topic] if args.key?(:dead_letter_topic)
          @max_delivery_attempts = args[:max_delivery_attempts] if args.key?(:max_delivery_attempts)
        end
      end
      
      # Response for the DetachSubscription method. Reserved for future use.
      class DetachSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # A policy that specifies the conditions for resource expiration (i.e.,
      # automatic resource deletion).
      class ExpirationPolicy
        include Google::Apis::Core::Hashable
      
        # Specifies the "time-to-live" duration for an associated resource. The resource
        # expires if it is not active for a period of `ttl`. The definition of "activity"
        # depends on the type of the associated resource. The minimum and maximum
        # allowed values for `ttl` depend on the type of the associated resource, as
        # well. If `ttl` is not set, the associated resource never expires.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ttl = args[:ttl] if args.key?(:ttl)
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
      
      # Response for the `ListSnapshots` method.
      class ListSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more snapshot that match the request;
        # this value should be passed in a new `ListSnapshotsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting snapshots.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<Google::Apis::PubsubV1::Snapshot>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListSubscriptions` method.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more subscriptions that match the
        # request; this value should be passed in a new `ListSubscriptionsRequest` to
        # get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopicSnapshots` method.
      class ListTopicSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more snapshots that match the
        # request; this value should be passed in a new `ListTopicSnapshotsRequest` to
        # get more snapshots.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of the snapshots that match the request.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<String>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListTopicSubscriptions` method.
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more subscriptions that match the
        # request; this value should be passed in a new `ListTopicSubscriptionsRequest`
        # to get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of subscriptions attached to the topic specified in the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopics` method.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more topics that match the request;
        # this value should be passed in a new `ListTopicsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting topics.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubV1::Topic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # A policy constraining the storage of messages published to the topic.
      class MessageStoragePolicy
        include Google::Apis::Core::Hashable
      
        # A list of IDs of GCP regions where messages that are published to the topic
        # may be persisted in storage. Messages published by publishers running in non-
        # allowed GCP regions (or running outside of GCP altogether) will be routed for
        # storage in one of the allowed regions. An empty list means that no regions are
        # allowed, and is not a valid configuration.
        # Corresponds to the JSON property `allowedPersistenceRegions`
        # @return [Array<String>]
        attr_accessor :allowed_persistence_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_persistence_regions = args[:allowed_persistence_regions] if args.key?(:allowed_persistence_regions)
        end
      end
      
      # Request for the ModifyAckDeadline method.
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new ack deadline with respect to the time this request was sent
        # to the Pub/Sub system. For example, if the value is 10, the new ack deadline
        # will expire 10 seconds after the `ModifyAckDeadline` call was made. Specifying
        # zero might immediately make the message available for delivery to another
        # subscriber client. This typically results in an increase in the rate of
        # message redeliveries (that is, duplicates). The minimum deadline you can
        # specify is 0 seconds. The maximum deadline you can specify is 600 seconds (10
        # minutes).
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Required. List of acknowledgment IDs.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
        end
      end
      
      # Request for the ModifyPushConfig method.
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_config = args[:push_config] if args.key?(:push_config)
        end
      end
      
      # Contains information needed for generating an [OpenID Connect token](https://
      # developers.google.com/identity/protocols/OpenIDConnect).
      class OidcToken
        include Google::Apis::Core::Hashable
      
        # Audience to be used when generating OIDC token. The audience claim identifies
        # the recipients that the JWT is intended for. The audience value is a single
        # case-sensitive string. Having multiple values (array) for the audience field
        # is not supported. More info about the OIDC JWT token audience here: https://
        # tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push
        # endpoint URL will be used.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # [Service account email](https://cloud.google.com/iam/docs/service-accounts) to
        # be used for generating the OIDC token. The caller (for CreateSubscription,
        # UpdateSubscription, and ModifyPushConfig RPCs) must have the iam.
        # serviceAccounts.actAs permission for the service account.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
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
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PubsubV1::Binding>]
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
      
      # Request for the Publish method.
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # Required. The messages to publish.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1::Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Response for the `Publish` method.
      class PublishResponse
        include Google::Apis::Core::Hashable
      
        # The server-assigned ID of each published message, in the same order as the
        # messages in the request. IDs are guaranteed to be unique within the topic.
        # Corresponds to the JSON property `messageIds`
        # @return [Array<String>]
        attr_accessor :message_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_ids = args[:message_ids] if args.key?(:message_ids)
        end
      end
      
      # A message that is published by publishers and consumed by subscribers. The
      # message must contain either a non-empty data field or at least one attribute.
      # Note that client libraries represent this object differently depending on the
      # language. See the corresponding [client library documentation](https://cloud.
      # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
      # and limits] (https://cloud.google.com/pubsub/quotas) for more information
      # about message limits.
      class Message
        include Google::Apis::Core::Hashable
      
        # Attributes for this message. If this field is empty, the message must contain
        # non-empty data. This can be used to filter messages on the subscription.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # The message data field. If this field is empty, the message must contain at
        # least one attribute.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # ID of this message, assigned by the server when the message is published.
        # Guaranteed to be unique within the topic. This value may be read by a
        # subscriber that receives a `PubsubMessage` via a `Pull` call or a push
        # delivery. It must not be populated by the publisher in a `Publish` call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # If non-empty, identifies related messages for which publish order should be
        # respected. If a `Subscription` has `enable_message_ordering` set to `true`,
        # messages published with the same non-empty `ordering_key` value will be
        # delivered to subscribers in the order in which they are received by the Pub/
        # Sub system. All `PubsubMessage`s published in a given `PublishRequest` must
        # specify the same `ordering_key` value.
        # Corresponds to the JSON property `orderingKey`
        # @return [String]
        attr_accessor :ordering_key
      
        # The time at which the message was published, populated by the server when it
        # receives the `Publish` call. It must not be populated by the publisher in a `
        # Publish` call.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @data = args[:data] if args.key?(:data)
          @message_id = args[:message_id] if args.key?(:message_id)
          @ordering_key = args[:ordering_key] if args.key?(:ordering_key)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
        end
      end
      
      # Request for the `Pull` method.
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # Required. The maximum number of messages to return for this request. Must be a
        # positive integer. The Pub/Sub system may return fewer than the number
        # specified.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # Optional. If this field set to true, the system will respond immediately even
        # if it there are no messages available to return in the `Pull` response.
        # Otherwise, the system may wait (for a bounded amount of time) until at least
        # one message is available, rather than returning no messages. Warning: setting
        # this field to `true` is discouraged because it adversely impacts the
        # performance of `Pull` operations. We recommend that users do not set this
        # field.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_messages = args[:max_messages] if args.key?(:max_messages)
          @return_immediately = args[:return_immediately] if args.key?(:return_immediately)
        end
      end
      
      # Response for the `Pull` method.
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # Received Pub/Sub messages. The list will be empty if there are no more
        # messages available in the backlog. For JSON, the response can be entirely
        # empty. The Pub/Sub system may return fewer than the `maxMessages` requested
        # even if there are more messages available in the backlog.
        # Corresponds to the JSON property `receivedMessages`
        # @return [Array<Google::Apis::PubsubV1::ReceivedMessage>]
        attr_accessor :received_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @received_messages = args[:received_messages] if args.key?(:received_messages)
        end
      end
      
      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # Endpoint configuration attributes that can be used to control different
        # aspects of the message delivery. The only currently supported attribute is `x-
        # goog-version`, which you can use to change the format of the pushed message.
        # This attribute indicates the version of the data expected by the endpoint.
        # This controls the shape of the pushed message (i.e., its fields and metadata).
        # If not present during the `CreateSubscription` call, it will default to the
        # version of the Pub/Sub API used to make such call. If not present in a `
        # ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls
        # will always return a valid version, even if the subscription was created
        # without this attribute. The only supported values for the `x-goog-version`
        # attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/
        # Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub
        # API. For example: attributes ` "x-goog-version": "v1" `
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Contains information needed for generating an [OpenID Connect token](https://
        # developers.google.com/identity/protocols/OpenIDConnect).
        # Corresponds to the JSON property `oidcToken`
        # @return [Google::Apis::PubsubV1::OidcToken]
        attr_accessor :oidc_token
      
        # A URL locating the endpoint to which messages should be pushed. For example, a
        # Webhook endpoint might use `https://example.com/push`.
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @oidc_token = args[:oidc_token] if args.key?(:oidc_token)
          @push_endpoint = args[:push_endpoint] if args.key?(:push_endpoint)
        end
      end
      
      # A message and its corresponding acknowledgment ID.
      class ReceivedMessage
        include Google::Apis::Core::Hashable
      
        # This ID can be used to acknowledge the received message.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # The approximate number of times that Cloud Pub/Sub has attempted to deliver
        # the associated message to a subscriber. More precisely, this is 1 + (number of
        # NACKs) + (number of ack_deadline exceeds) for this message. A NACK is any call
        # to ModifyAckDeadline with a 0 deadline. An ack_deadline exceeds event is
        # whenever a message is not acknowledged within ack_deadline. Note that
        # ack_deadline is initially Subscription.ackDeadlineSeconds, but may get
        # extended automatically by the client library. Upon the first delivery of a
        # given message, `delivery_attempt` will have a value of 1. The value is
        # calculated at best effort and is approximate. If a DeadLetterPolicy is not set
        # on the subscription, this will be 0.
        # Corresponds to the JSON property `deliveryAttempt`
        # @return [Fixnum]
        attr_accessor :delivery_attempt
      
        # A message that is published by publishers and consumed by subscribers. The
        # message must contain either a non-empty data field or at least one attribute.
        # Note that client libraries represent this object differently depending on the
        # language. See the corresponding [client library documentation](https://cloud.
        # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
        # and limits] (https://cloud.google.com/pubsub/quotas) for more information
        # about message limits.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] if args.key?(:ack_id)
          @delivery_attempt = args[:delivery_attempt] if args.key?(:delivery_attempt)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A policy that specifies how Cloud Pub/Sub retries message delivery. Retry
      # delay will be exponential based on provided minimum and maximum backoffs.
      # https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be
      # triggered on NACKs or acknowledgement deadline exceeded events for a given
      # message. Retry Policy is implemented on a best effort basis. At times, the
      # delay between consecutive deliveries may not match the configuration. That is,
      # delay can be more or less than configured backoff.
      class RetryPolicy
        include Google::Apis::Core::Hashable
      
        # The maximum delay between consecutive deliveries of a given message. Value
        # should be between 0 and 600 seconds. Defaults to 600 seconds.
        # Corresponds to the JSON property `maximumBackoff`
        # @return [String]
        attr_accessor :maximum_backoff
      
        # The minimum delay between consecutive deliveries of a given message. Value
        # should be between 0 and 600 seconds. Defaults to 10 seconds.
        # Corresponds to the JSON property `minimumBackoff`
        # @return [String]
        attr_accessor :minimum_backoff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum_backoff = args[:maximum_backoff] if args.key?(:maximum_backoff)
          @minimum_backoff = args[:minimum_backoff] if args.key?(:minimum_backoff)
        end
      end
      
      # Request for the `Seek` method.
      class SeekRequest
        include Google::Apis::Core::Hashable
      
        # The snapshot to seek to. The snapshot's topic must be the same as that of the
        # provided subscription. Format is `projects/`project`/snapshots/`snap``.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # The time to seek to. Messages retained in the subscription that were published
        # before this time are marked as acknowledged, and messages retained in the
        # subscription that were published after this time are marked as unacknowledged.
        # Note that this operation affects only those messages retained in the
        # subscription (configured by the combination of `message_retention_duration`
        # and `retain_acked_messages`). For example, if `time` corresponds to a point
        # before the message retention window (or to a point before the system's notion
        # of the subscription creation time), only retained messages will be marked as
        # unacknowledged, and already-expunged messages will not be restored.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Response for the `Seek` method (this response is empty).
      class SeekResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::PubsubV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/
      # pubsub/docs/replay-overview) operations, which allow you to manage message
      # acknowledgments in bulk. That is, you can set the acknowledgment state of
      # messages in an existing subscription to the state captured by a snapshot.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # The snapshot is guaranteed to exist up until this time. A newly-created
        # snapshot expires no later than 7 days from the time of its creation. Its exact
        # lifetime is determined at creation by the existing backlog in the source
        # subscription. Specifically, the lifetime of the snapshot is `7 days - (age of
        # oldest unacked message in the subscription)`. For example, consider a
        # subscription whose oldest unacked message is 3 days old. If a snapshot is
        # created from this subscription, the snapshot -- which will always capture this
        # 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The
        # service will refuse to create a snapshot that would expire in less than 1 hour
        # after creation.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/
        # labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name of the snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the topic from which this snapshot is retaining messages.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # A subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # The approximate amount of time (on a best-effort basis) Pub/Sub waits for the
        # subscriber to acknowledge receipt before resending the message. In the
        # interval after the message is delivered and before it is acknowledged, it is
        # considered to be *outstanding*. During that time period, the message will not
        # be redelivered (on a best-effort basis). For pull subscriptions, this value is
        # used as the initial value for the ack deadline. To override this value for a
        # given message, call `ModifyAckDeadline` with the corresponding `ack_id` if
        # using non-streaming pull or send the `ack_id` in a `
        # StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom
        # deadline you can specify is 10 seconds. The maximum custom deadline you can
        # specify is 600 seconds (10 minutes). If this parameter is 0, a default value
        # of 10 seconds is used. For push delivery, this value is also used to set the
        # request timeout for the call to the push endpoint. If the subscriber never
        # acknowledges the message, the Pub/Sub system will eventually redeliver the
        # message.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Dead lettering is done on a best effort basis. The same message might be dead
        # lettered multiple times. If validation on any of the fields fails at
        # subscription creation/updation, the create/update subscription request will
        # fail.
        # Corresponds to the JSON property `deadLetterPolicy`
        # @return [Google::Apis::PubsubV1::DeadLetterPolicy]
        attr_accessor :dead_letter_policy
      
        # Indicates whether the subscription is detached from its topic. Detached
        # subscriptions don't receive messages from their topic and don't retain any
        # backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION.
        # If the subscription is a push subscription, pushes to the endpoint will not be
        # made.
        # Corresponds to the JSON property `detached`
        # @return [Boolean]
        attr_accessor :detached
        alias_method :detached?, :detached
      
        # If true, messages published with the same `ordering_key` in `PubsubMessage`
        # will be delivered to the subscribers in the order in which they are received
        # by the Pub/Sub system. Otherwise, they may be delivered in any order.
        # Corresponds to the JSON property `enableMessageOrdering`
        # @return [Boolean]
        attr_accessor :enable_message_ordering
        alias_method :enable_message_ordering?, :enable_message_ordering
      
        # A policy that specifies the conditions for resource expiration (i.e.,
        # automatic resource deletion).
        # Corresponds to the JSON property `expirationPolicy`
        # @return [Google::Apis::PubsubV1::ExpirationPolicy]
        attr_accessor :expiration_policy
      
        # An expression written in the Pub/Sub [filter language](https://cloud.google.
        # com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `
        # attributes` field matches the filter are delivered on this subscription. If
        # empty, then no messages are filtered out.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # See Creating and managing labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # How long to retain unacknowledged messages in the subscription's backlog, from
        # the moment a message is published. If `retain_acked_messages` is true, then
        # this also configures the retention of acknowledged messages, and thus
        # configures how far back in time a `Seek` can be done. Defaults to 7 days.
        # Cannot be more than 7 days or less than 10 minutes.
        # Corresponds to the JSON property `messageRetentionDuration`
        # @return [String]
        attr_accessor :message_retention_duration
      
        # Required. The name of the subscription. It must have the format `"projects/`
        # project`/subscriptions/`subscription`"`. ``subscription`` must start with a
        # letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
        # underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`
        # %`). It must be between 3 and 255 characters in length, and it must not start
        # with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        # Indicates whether to retain acknowledged messages. If true, then messages are
        # not expunged from the subscription's backlog, even if they are acknowledged,
        # until they fall out of the `message_retention_duration` window. This must be
        # true if you would like to [Seek to a timestamp] (https://cloud.google.com/
        # pubsub/docs/replay-overview#seek_to_a_time).
        # Corresponds to the JSON property `retainAckedMessages`
        # @return [Boolean]
        attr_accessor :retain_acked_messages
        alias_method :retain_acked_messages?, :retain_acked_messages
      
        # A policy that specifies how Cloud Pub/Sub retries message delivery. Retry
        # delay will be exponential based on provided minimum and maximum backoffs.
        # https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be
        # triggered on NACKs or acknowledgement deadline exceeded events for a given
        # message. Retry Policy is implemented on a best effort basis. At times, the
        # delay between consecutive deliveries may not match the configuration. That is,
        # delay can be more or less than configured backoff.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::PubsubV1::RetryPolicy]
        attr_accessor :retry_policy
      
        # Required. The name of the topic from which this subscription is receiving
        # messages. Format is `projects/`project`/topics/`topic``. The value of this
        # field will be `_deleted-topic_` if the topic has been deleted.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @dead_letter_policy = args[:dead_letter_policy] if args.key?(:dead_letter_policy)
          @detached = args[:detached] if args.key?(:detached)
          @enable_message_ordering = args[:enable_message_ordering] if args.key?(:enable_message_ordering)
          @expiration_policy = args[:expiration_policy] if args.key?(:expiration_policy)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @message_retention_duration = args[:message_retention_duration] if args.key?(:message_retention_duration)
          @name = args[:name] if args.key?(:name)
          @push_config = args[:push_config] if args.key?(:push_config)
          @retain_acked_messages = args[:retain_acked_messages] if args.key?(:retain_acked_messages)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @topic = args[:topic] if args.key?(:topic)
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
      
      # A topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # The resource name of the Cloud KMS CryptoKey to be used to protect access to
        # messages published on this topic. The expected format is `projects/*/locations/
        # */keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/
        # labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A policy constraining the storage of messages published to the topic.
        # Corresponds to the JSON property `messageStoragePolicy`
        # @return [Google::Apis::PubsubV1::MessageStoragePolicy]
        attr_accessor :message_storage_policy
      
        # Required. The name of the topic. It must have the format `"projects/`project`/
        # topics/`topic`"`. ``topic`` must start with a letter, and contain only letters
        # (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`)
        # , tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and
        # 255 characters in length, and it must not start with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @labels = args[:labels] if args.key?(:labels)
          @message_storage_policy = args[:message_storage_policy] if args.key?(:message_storage_policy)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request for the UpdateSnapshot method.
      class UpdateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/
        # pubsub/docs/replay-overview) operations, which allow you to manage message
        # acknowledgments in bulk. That is, you can set the acknowledgment state of
        # messages in an existing subscription to the state captured by a snapshot.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::PubsubV1::Snapshot]
        attr_accessor :snapshot
      
        # Required. Indicates which fields in the provided snapshot to update. Must be
        # specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the UpdateSubscription method.
      class UpdateSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # A subscription resource.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PubsubV1::Subscription]
        attr_accessor :subscription
      
        # Required. Indicates which fields in the provided subscription to update. Must
        # be specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the UpdateTopic method.
      class UpdateTopicRequest
        include Google::Apis::Core::Hashable
      
        # A topic resource.
        # Corresponds to the JSON property `topic`
        # @return [Google::Apis::PubsubV1::Topic]
        attr_accessor :topic
      
        # Required. Indicates which fields in the provided topic to update. Must be
        # specified and non-empty. Note that if `update_mask` contains "
        # message_storage_policy" but the `message_storage_policy` is not set in the `
        # topic` provided above, then the updated value is determined by the policy
        # configured at the project or organization level.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
    end
  end
end
