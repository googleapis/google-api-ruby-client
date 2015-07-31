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
    module PubsubV1beta2
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # # Overview The `Policy` defines an access control policy language. It is used
        # to define policies that are attached to resources like files, folders, VMs,
        # etc. # Policy structure A `Policy` consists of a list of bindings. A `Binding`
        # binds a set of members to a role, where the members include user accounts,
        # user groups, user domains, and service accounts. A 'role' is a named set of
        # permissions, defined by IAM. The definition of a role is outside the policy. A
        # permission check first determines the roles that include the specified
        # permission, and then determines if the principal specified is a member of a
        # binding to at least one of these roles. The membership check is recursive when
        # a group is bound to a role. Policy examples: ``` ` "bindings": [ ` "role": "
        # roles/owner", "members": [ "user:mike@example.com", "group:admins@example.com",
        # "domain:google.com", "serviceAccount:frontend@example.iam.gserviceaccounts.
        # com"] `, ` "role": "roles/viewer", "members": ["user:sean@example.com"] ` ] ` `
        # ``
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PubsubV1beta2::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] unless args[:policy].nil?
        end
      end
      
      # # Overview The `Policy` defines an access control policy language. It is used
      # to define policies that are attached to resources like files, folders, VMs,
      # etc. # Policy structure A `Policy` consists of a list of bindings. A `Binding`
      # binds a set of members to a role, where the members include user accounts,
      # user groups, user domains, and service accounts. A 'role' is a named set of
      # permissions, defined by IAM. The definition of a role is outside the policy. A
      # permission check first determines the roles that include the specified
      # permission, and then determines if the principal specified is a member of a
      # binding to at least one of these roles. The membership check is recursive when
      # a group is bound to a role. Policy examples: ``` ` "bindings": [ ` "role": "
      # roles/owner", "members": [ "user:mike@example.com", "group:admins@example.com",
      # "domain:google.com", "serviceAccount:frontend@example.iam.gserviceaccounts.
      # com"] `, ` "role": "roles/viewer", "members": ["user:sean@example.com"] ` ] ` `
      # ``
      class Policy
        include Google::Apis::Core::Hashable
      
        # The policy language version. The version of the policy is represented by the
        # etag. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # It is an error to specify multiple bindings for the same role. It is an error
        # to specify a binding with no members.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PubsubV1beta2::Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::PubsubV1beta2::Rule>]
        attr_accessor :rules
      
        # Can be used to perform a read-modify-write.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] unless args[:version].nil?
          @bindings = args[:bindings] unless args[:bindings].nil?
          @rules = args[:rules] unless args[:rules].nil?
          @etag = args[:etag] unless args[:etag].nil?
        end
      end
      
      # Associates members with roles. See below for allowed formats of members.
      class Binding
        include Google::Apis::Core::Hashable
      
        # The name of the role to which the members should be bound. Examples: "roles/
        # viewer", "roles/editor", "roles/owner". Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Format of member entries: 1. allUsers Matches any requesting principal (users,
        # service accounts or anonymous). 2. allAuthenticatedUsers Matches any
        # requesting authenticated principal (users or service accounts). 3. user:`
        # emailid` A google user account using an email address. For example alice@gmail.
        # com, joe@example.com 4. serviceAccount:`emailid` An service account email. 5.
        # group:`emailid` A google group with an email address. For example auth-ti-
        # cloud@google.com 6. domain:`domain` A Google Apps domain name. For example
        # google.com, example.com
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] unless args[:role].nil?
          @members = args[:members] unless args[:members].nil?
        end
      end
      
      # A rule to be applied in a Policy.
      class Rule
        include Google::Apis::Core::Hashable
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value
        # of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.
        # *') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in this set of entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is not in this set of
        # entries. The formation for in and not_in entries is the same as members in a
        # Binding above.
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # Additional restrictions that must be met
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::PubsubV1beta2::Condition>]
        attr_accessor :conditions
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::PubsubV1beta2::LogConfig>]
        attr_accessor :log_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @action = args[:action] unless args[:action].nil?
          @in = args[:in] unless args[:in].nil?
          @not_in = args[:not_in] unless args[:not_in].nil?
          @conditions = args[:conditions] unless args[:conditions].nil?
          @log_config = args[:log_config] unless args[:log_config].nil?
        end
      end
      
      # A condition to be met.
      class Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # Trusted attributes supplied by any service that owns resources and uses the
        # IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # The object of the condition. Exactly one of these must be set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The objects of the condition. This is mutually exclusive with 'value'.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam = args[:iam] unless args[:iam].nil?
          @sys = args[:sys] unless args[:sys].nil?
          @svc = args[:svc] unless args[:svc].nil?
          @op = args[:op] unless args[:op].nil?
          @value = args[:value] unless args[:value].nil?
          @values = args[:values] unless args[:values].nil?
        end
      end
      
      # Specifies what kind of log the caller must write Increment a streamz counter
      # with the specified metric and field names. Metric names should start with a '/'
      # , generally be lowercase-only, and end in "_count". Field names should not
      # contain an initial slash. The actual exported metric names will have "/iam/
      # policy" prepended. Field names correspond to IAM request parameters and field
      # values are their respective values. At present only "iam_principal",
      # corresponding to IAMContext.principal, is supported. Examples: counter `
      # metric: "/debug_access_count" field: "iam_principal" ` ==> increment counter /
      # iam/policy/backend_debug_access_count `iam_principal=[value of IAMContext.
      # principal]` At this time we do not support: * multiple field names (though
      # this may be supported in the future) * decrementing the counter * incrementing
      # it by anything other than 1
      class LogConfig
        include Google::Apis::Core::Hashable
      
        # Options for counters
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::PubsubV1beta2::CounterOptions]
        attr_accessor :counter
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::PubsubV1beta2::DataAccessOptions]
        attr_accessor :data_access
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::PubsubV1beta2::CloudAuditOptions]
        attr_accessor :cloud_audit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counter = args[:counter] unless args[:counter].nil?
          @data_access = args[:data_access] unless args[:data_access].nil?
          @cloud_audit = args[:cloud_audit] unless args[:cloud_audit].nil?
        end
      end
      
      # Options for counters
      class CounterOptions
        include Google::Apis::Core::Hashable
      
        # The metric to update.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The field value to attribute.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] unless args[:metric].nil?
          @field = args[:field] unless args[:field].nil?
        end
      end
      
      # Write a Data Access (Gin) log
      class DataAccessOptions
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
      
        # The set of permissions to check for the 'resource'. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] unless args[:permissions].nil?
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
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # A topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # The name of the topic. It must have the format `"projects/`project`/topics/`
        # topic`"`. ``topic`` must start with a letter, and contain only letters (`[A-Za-
        # z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`),
        # tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255
        # characters in length, and it must not start with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Request for the Publish method.
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # The messages to publish.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1beta2::Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] unless args[:messages].nil?
        end
      end
      
      # A message data and its attributes. The message payload must not be empty; it
      # must contain either a non-empty data field, or at least one attribute.
      class Message
        include Google::Apis::Core::Hashable
      
        # The message payload. For JSON requests, the value of this field must be base64-
        # encoded.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Optional attributes for this message.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # ID of this message assigned by the server at publication time. Guaranteed to
        # be unique within the topic. This value may be read by a subscriber that
        # receives a PubsubMessage via a Pull call or a push delivery. It must not be
        # populated by a publisher in a Publish call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @attributes = args[:attributes] unless args[:attributes].nil?
          @message_id = args[:message_id] unless args[:message_id].nil?
        end
      end
      
      # Response for the Publish method.
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
          @message_ids = args[:message_ids] unless args[:message_ids].nil?
        end
      end
      
      # Response for the ListTopics method.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # The resulting topics.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubV1beta2::Topic>]
        attr_accessor :topics
      
        # If not empty, indicates that there may be more topics that match the request;
        # this value should be passed in a new ListTopicsRequest.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topics = args[:topics] unless args[:topics].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Response for the ListTopicSubscriptions method.
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # The names of the subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        # If not empty, indicates that there may be more subscriptions that match the
        # request; this value should be passed in a new ListTopicSubscriptionsRequest to
        # get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscriptions = args[:subscriptions] unless args[:subscriptions].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
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
      
      # A subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # The name of the subscription. It must have the format `"projects/`project`/
        # subscriptions/`subscription`"`. ``subscription`` must start with a letter, and
        # contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
        # underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%
        # `). It must be between 3 and 255 characters in length, and it must not start
        # with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the topic from which this subscription is receiving messages. The
        # value of this field will be `_deleted-topic_` if the topic has been deleted.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta2::PushConfig]
        attr_accessor :push_config
      
        # This value is the maximum time after a subscriber receives a message before
        # the subscriber should acknowledge the message. After message delivery but
        # before the ack deadline expires and before the message is acknowledged, it is
        # an outstanding message and will not be delivered again during that time (on a
        # best-effort basis). For pull delivery this value is used as the initial value
        # for the ack deadline. To override this value for a given message, call
        # ModifyAckDeadline with the corresponding ack_id. For push delivery, this value
        # is also used to set the request timeout for the call to the push endpoint. If
        # the subscriber never acknowledges the message, the Pub/Sub system will
        # eventually redeliver the message. If this parameter is not set, the default
        # value of 10 seconds is used.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @topic = args[:topic] unless args[:topic].nil?
          @push_config = args[:push_config] unless args[:push_config].nil?
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
        end
      end
      
      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # A URL locating the endpoint to which messages should be pushed. For example, a
        # Webhook endpoint might use "https://example.com/push".
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        # Endpoint configuration attributes. Every endpoint has a set of API supported
        # attributes that can be used to control different aspects of the message
        # delivery. The currently supported attribute is `x-goog-version`, which you can
        # use to change the format of the push message. This attribute indicates the
        # version of the data expected by the endpoint. This controls the shape of the
        # envelope (i.e. its fields and metadata). The endpoint version is based on the
        # version of the Pub/Sub API. If not present during the CreateSubscription call,
        # it will default to the version of the API used to make such call. If not
        # present during a ModifyPushConfig call, its value will not be changed.
        # GetSubscription calls will always return a valid version, even if the
        # subscription was created without this attribute. The possible values for this
        # attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/
        # Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub
        # API.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_endpoint = args[:push_endpoint] unless args[:push_endpoint].nil?
          @attributes = args[:attributes] unless args[:attributes].nil?
        end
      end
      
      # Response for the ListSubscriptions method.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # The subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubV1beta2::Subscription>]
        attr_accessor :subscriptions
      
        # If not empty, indicates that there may be more subscriptions that match the
        # request; this value should be passed in a new ListSubscriptionsRequest to get
        # more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscriptions = args[:subscriptions] unless args[:subscriptions].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Request for the ModifyAckDeadline method.
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # The acknowledgment ID. Either this or ack_ids must be populated, but not both.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # List of acknowledgment IDs.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        # The new ack deadline with respect to the time this request was sent to the Pub/
        # Sub system. Must be >= 0. For example, if the value is 10, the new ack
        # deadline will expire 10 seconds after the ModifyAckDeadline call was made.
        # Specifying zero may immediately make the message available for another pull
        # request.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @ack_ids = args[:ack_ids] unless args[:ack_ids].nil?
          @ack_deadline_seconds = args[:ack_deadline_seconds] unless args[:ack_deadline_seconds].nil?
        end
      end
      
      # Request for the Acknowledge method.
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # The acknowledgment ID for the messages being acknowledged that was returned by
        # the Pub/Sub system in the Pull response. Must not be empty.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_ids = args[:ack_ids] unless args[:ack_ids].nil?
        end
      end
      
      # Request for the Pull method.
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # If this is specified as true the system will respond immediately even if it is
        # not able to return a message in the Pull response. Otherwise the system is
        # allowed to wait until at least one message is available rather than returning
        # no messages. The client may cancel the request if it does not wish to wait any
        # longer for the response.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        # The maximum number of messages returned for this request. The Pub/Sub system
        # may return fewer than the number specified.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @return_immediately = args[:return_immediately] unless args[:return_immediately].nil?
          @max_messages = args[:max_messages] unless args[:max_messages].nil?
        end
      end
      
      # Response for the Pull method.
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # Received Pub/Sub messages. The Pub/Sub system will return zero messages if
        # there are no more available in the backlog. The Pub/Sub system may return
        # fewer than the maxMessages requested even if there are more messages available
        # in the backlog.
        # Corresponds to the JSON property `receivedMessages`
        # @return [Array<Google::Apis::PubsubV1beta2::ReceivedMessage>]
        attr_accessor :received_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @received_messages = args[:received_messages] unless args[:received_messages].nil?
        end
      end
      
      # A message and its corresponding acknowledgment ID.
      class ReceivedMessage
        include Google::Apis::Core::Hashable
      
        # This ID can be used to acknowledge the received message.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # A message data and its attributes. The message payload must not be empty; it
        # must contain either a non-empty data field, or at least one attribute.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1beta2::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] unless args[:ack_id].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # Request for the ModifyPushConfig method.
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1beta2::PushConfig]
        attr_accessor :push_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_config = args[:push_config] unless args[:push_config].nil?
        end
      end
    end
  end
end
