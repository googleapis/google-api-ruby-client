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
    module NetworkconnectivityV1alpha1
      
      # The allowed types for [VALUE] in a `[KEY]:[VALUE]` attribute.
      class AttributeValue
        include Google::Apis::Core::Hashable
      
        # A Boolean value represented by `true` or `false`.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A 64-bit signed integer.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Represents a string that might be shortened to a specified length.
        # Corresponds to the JSON property `stringValue`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::TruncatableString]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A set of attributes, each in the format `[KEY]:[VALUE]`.
      class Attributes
        include Google::Apis::Core::Hashable
      
        # The set of attributes. Each attribute's key can be up to 128 bytes long. The
        # value can be a string up to 256 bytes, a signed 64-bit integer, or the Boolean
        # values `true` and `false`. For example: "/instance_id": "my-instance" "/http/
        # user_agent": "" "/http/request_bytes": 300 "abc.com/myattribute": true
        # Corresponds to the JSON property `attributeMap`
        # @return [Hash<String,Google::Apis::NetworkconnectivityV1alpha1::AttributeValue>]
        attr_accessor :attribute_map
      
        # The number of attributes that were discarded. Attributes can be discarded
        # because their keys are too long or because there are too many attributes. If
        # this value is 0 then all attributes are valid.
        # Corresponds to the JSON property `droppedAttributesCount`
        # @return [Fixnum]
        attr_accessor :dropped_attributes_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_map = args[:attribute_map] if args.key?(:attribute_map)
          @dropped_attributes_count = args[:dropped_attributes_count] if args.key?(:dropped_attributes_count)
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
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::AuditLogConfig>]
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
      
      # Message for reporting billing requests through Eventstream.
      class BillingView
        include Google::Apis::Core::Hashable
      
        # Billing requests to be reported for cloud.eventstream.v2.ResourceEvent Each
        # request contains billing operations to be reported under a service name. See
        # go/billing-view-construction for documentation on constructing billing view
        # report requests.
        # Corresponds to the JSON property `reportRequests`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::ReportRequest>]
        attr_accessor :report_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_requests = args[:report_requests] if args.key?(:report_requests)
        end
      end
      
      # Associates `members` with a `role`.
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
        # @return [Google::Apis::NetworkconnectivityV1alpha1::Expr]
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
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Distribution represents a frequency distribution of double-valued sample
      # points. It contains the size of the population of sample points plus
      # additional optional information: - the arithmetic mean of the samples - the
      # minimum and maximum of the samples - the sum-squared-deviation of the samples,
      # used to compute variance - a histogram of the values of the sample points
      class Distribution
        include Google::Apis::Core::Hashable
      
        # The number of samples in each histogram bucket. `bucket_counts` are optional.
        # If present, they must sum to the `count` value. The buckets are defined below
        # in `bucket_option`. There are N buckets. `bucket_counts[0]` is the number of
        # samples in the underflow bucket. `bucket_counts[1]` to `bucket_counts[N-1]`
        # are the numbers of samples in each of the finite buckets. And `bucket_counts[N]
        # is the number of samples in the overflow bucket. See the comments of `
        # bucket_option` below for more details. Any suffix of trailing zeros may be
        # omitted.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<Fixnum>]
        attr_accessor :bucket_counts
      
        # The total number of samples in the distribution. Must be >= 0.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Example points. Must be in increasing order of `value` field.
        # Corresponds to the JSON property `exemplars`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Exemplar>]
        attr_accessor :exemplars
      
        # Describing buckets with arbitrary user-provided width.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::ExplicitBuckets]
        attr_accessor :explicit_buckets
      
        # Describing buckets with exponentially growing width.
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::ExponentialBuckets]
        attr_accessor :exponential_buckets
      
        # Describing buckets with constant width.
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::LinearBuckets]
        attr_accessor :linear_buckets
      
        # The maximum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # The arithmetic mean of the samples in the distribution. If `count` is zero
        # then this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The minimum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # The sum of squared deviations from the mean: Sum[i=1..count]((x_i - mean)^2)
        # where each x_i is a sample values. If `count` is zero then this field must be
        # zero, otherwise validation of the request fails.
        # Corresponds to the JSON property `sumOfSquaredDeviation`
        # @return [Float]
        attr_accessor :sum_of_squared_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_counts = args[:bucket_counts] if args.key?(:bucket_counts)
          @count = args[:count] if args.key?(:count)
          @exemplars = args[:exemplars] if args.key?(:exemplars)
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
          @maximum = args[:maximum] if args.key?(:maximum)
          @mean = args[:mean] if args.key?(:mean)
          @minimum = args[:minimum] if args.key?(:minimum)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
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
      
      # Exemplars are example points that may be used to annotate aggregated
      # distribution values. They are metadata that gives information about a
      # particular value added to a Distribution bucket, such as a trace ID that was
      # active when a value was added. They may contain further information, such as a
      # example values and timestamps, origin, etc.
      class Exemplar
        include Google::Apis::Core::Hashable
      
        # Contextual information about the example value. Examples are: Trace: type.
        # googleapis.com/google.monitoring.v3.SpanContext Literal string: type.
        # googleapis.com/google.protobuf.StringValue Labels dropped during aggregation:
        # type.googleapis.com/google.monitoring.v3.DroppedLabels There may be only a
        # single attachment of any given message type in a single exemplar, and this is
        # enforced by the system.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :attachments
      
        # The observation (sampling) time of the above value.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Value of the exemplar point. This value determines to which bucket the
        # exemplar belongs.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describing buckets with arbitrary user-provided width.
      class ExplicitBuckets
        include Google::Apis::Core::Hashable
      
        # 'bound' is a list of strictly increasing boundaries between buckets. Note that
        # a list of length N-1 defines N buckets because of fenceposting. See comments
        # on `bucket_options` for details. The i'th finite bucket covers the interval [
        # bound[i-1], bound[i]) where i ranges from 1 to bound_size() - 1. Note that
        # there are no finite buckets at all if 'bound' only contains a single element;
        # in that special case the single bound defines the boundary between the
        # underflow and overflow buckets. bucket number lower bound upper bound i == 0 (
        # underflow) -inf bound[i] 0 < i < bound_size() bound[i-1] bound[i] i ==
        # bound_size() (overflow) bound[i-1] +inf
        # Corresponds to the JSON property `bounds`
        # @return [Array<Float>]
        attr_accessor :bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounds = args[:bounds] if args.key?(:bounds)
        end
      end
      
      # Describing buckets with exponentially growing width.
      class ExponentialBuckets
        include Google::Apis::Core::Hashable
      
        # The i'th exponential bucket covers the interval [scale * growth_factor^(i-1),
        # scale * growth_factor^i) where i ranges from 1 to num_finite_buckets inclusive.
        # Must be larger than 1.0.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # The number of finite buckets. With the underflow and overflow buckets, the
        # total number of buckets is `num_finite_buckets` + 2. See comments on `
        # bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th exponential bucket covers the interval [scale * growth_factor^(i-1),
        # scale * growth_factor^i) where i ranges from 1 to num_finite_buckets inclusive.
        # Must be > 0.
        # Corresponds to the JSON property `scale`
        # @return [Float]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @growth_factor = args[:growth_factor] if args.key?(:growth_factor)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @scale = args[:scale] if args.key?(:scale)
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
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus]
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
      
      # A common proto for logging HTTP requests. Only contains semantics defined by
      # the HTTP specification. Product-specific logging information MUST be defined
      # in a separate message.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # The number of HTTP response bytes inserted into cache. Set only when a cache
        # fill was attempted.
        # Corresponds to the JSON property `cacheFillBytes`
        # @return [Fixnum]
        attr_accessor :cache_fill_bytes
      
        # Whether or not an entity was served from cache (with or without validation).
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Whether or not a cache lookup was attempted.
        # Corresponds to the JSON property `cacheLookup`
        # @return [Boolean]
        attr_accessor :cache_lookup
        alias_method :cache_lookup?, :cache_lookup
      
        # Whether or not the response was validated with the origin server before being
        # served from cache. This field is only meaningful if `cache_hit` is True.
        # Corresponds to the JSON property `cacheValidatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :cache_validated_with_origin_server
        alias_method :cache_validated_with_origin_server?, :cache_validated_with_origin_server
      
        # The request processing latency on the server, from the time the request was
        # received until the response was sent.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The referer URL of the request, as defined in [HTTP/1.1 Header Field
        # Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
        # The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
        # Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # The size of the HTTP request message in bytes, including the request headers
        # and the request body.
        # Corresponds to the JSON property `requestSize`
        # @return [Fixnum]
        attr_accessor :request_size
      
        # The scheme (http, https), the host name, the path, and the query portion of
        # the URL that was requested. Example: `"http://example.com/some/info?color=red"`
        # .
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # The size of the HTTP response message sent back to the client, in bytes,
        # including the response headers and the response body.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # The IP address (IPv4 or IPv6) of the origin server that the request was sent
        # to.
        # Corresponds to the JSON property `serverIp`
        # @return [String]
        attr_accessor :server_ip
      
        # The response code indicating the status of the response. Examples: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The user agent sent by the client. Example: `"Mozilla/4.0 (compatible; MSIE 6.
        # 0; Windows 98; Q312461; .NET CLR 1.0.3705)"`.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_fill_bytes = args[:cache_fill_bytes] if args.key?(:cache_fill_bytes)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @cache_lookup = args[:cache_lookup] if args.key?(:cache_lookup)
          @cache_validated_with_origin_server = args[:cache_validated_with_origin_server] if args.key?(:cache_validated_with_origin_server)
          @latency = args[:latency] if args.key?(:latency)
          @protocol = args[:protocol] if args.key?(:protocol)
          @referer = args[:referer] if args.key?(:referer)
          @remote_ip = args[:remote_ip] if args.key?(:remote_ip)
          @request_method = args[:request_method] if args.key?(:request_method)
          @request_size = args[:request_size] if args.key?(:request_size)
          @request_url = args[:request_url] if args.key?(:request_url)
          @response_size = args[:response_size] if args.key?(:response_size)
          @server_ip = args[:server_ip] if args.key?(:server_ip)
          @status = args[:status] if args.key?(:status)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # Network Connectivity Center is a hub-and-spoke abstraction for network
      # connectivity management in Google Cloud. It reduces operational complexity
      # through a simple, centralized connectivity management model. Following is the
      # resource message of a hub.
      class Hub
        include Google::Apis::Core::Hashable
      
        # Time when the Hub was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Short description of the hub resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of a Hub resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A list of the URIs of all attached spokes. This field is
        # deprecated and will not be included in future API versions. Call ListSpokes on
        # each region instead.
        # Corresponds to the JSON property `spokes`
        # @return [Array<String>]
        attr_accessor :spokes
      
        # Output only. The current lifecycle state of this Hub.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all Hub resources. If a Hub resource is deleted and another with the same name
        # is created, it gets a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Time when the Hub was updated.
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
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @spokes = args[:spokes] if args.key?(:spokes)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Describing buckets with constant width.
      class LinearBuckets
        include Google::Apis::Core::Hashable
      
        # The number of finite buckets. With the underflow and overflow buckets, the
        # total number of buckets is `num_finite_buckets` + 2. See comments on `
        # bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i
        # * width) where i ranges from 1 to num_finite_buckets, inclusive.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i
        # * width) where i ranges from 1 to num_finite_buckets, inclusive. Must be
        # strictly positive.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @offset = args[:offset] if args.key?(:offset)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Response for HubService.ListHubs method.
      class ListHubsResponse
        include Google::Apis::Core::Hashable
      
        # Hubs to be returned.
        # Corresponds to the JSON property `hubs`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Hub>]
        attr_accessor :hubs
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
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
          @hubs = args[:hubs] if args.key?(:hubs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Location>]
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
      
      # The response for HubService.ListSpokes.
      class ListSpokesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Spokes to be returned.
        # Corresponds to the JSON property `spokes`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Spoke>]
        attr_accessor :spokes
      
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
          @spokes = args[:spokes] if args.key?(:spokes)
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
      
      # An individual log entry.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # A common proto for logging HTTP requests. Only contains semantics defined by
        # the HTTP specification. Product-specific logging information MUST be defined
        # in a separate message.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::HttpRequest]
        attr_accessor :http_request
      
        # A unique ID for the log entry used for deduplication. If omitted, the
        # implementation will generate one based on operation_id.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # A set of user-defined (key, value) data that provides additional information
        # about the log entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The log to which this log entry belongs. Examples: `"syslog"`, `"
        # book_log"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional information about a potentially long-running operation with which a
        # log entry is associated.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::LogEntryOperation]
        attr_accessor :operation
      
        # The log entry payload, represented as a protocol buffer that is expressed as a
        # JSON object. The only accepted type currently is AuditLog.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # The severity of the log entry. The default value is `LogSeverity.DEFAULT`.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Additional information about the source code location that produced the log
        # entry.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::LogEntrySourceLocation]
        attr_accessor :source_location
      
        # The log entry payload, represented as a structure that is expressed as a JSON
        # object.
        # Corresponds to the JSON property `structPayload`
        # @return [Hash<String,Object>]
        attr_accessor :struct_payload
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The time the event described by the log entry occurred. If omitted, defaults
        # to operation start time.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Optional. Resource name of the trace associated with the log entry, if any. If
        # this field contains a relative resource name, you can assume the name is
        # relative to `//tracing.googleapis.com`. Example: `projects/my-projectid/traces/
        # 06796866738c859f2f19b7cfb3214824`
        # Corresponds to the JSON property `trace`
        # @return [String]
        attr_accessor :trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_request = args[:http_request] if args.key?(:http_request)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @severity = args[:severity] if args.key?(:severity)
          @source_location = args[:source_location] if args.key?(:source_location)
          @struct_payload = args[:struct_payload] if args.key?(:struct_payload)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @trace = args[:trace] if args.key?(:trace)
        end
      end
      
      # Additional information about a potentially long-running operation with which a
      # log entry is associated.
      class LogEntryOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Set this to True if this is the first log entry in the operation.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Optional. An arbitrary operation identifier. Log entries with the same
        # identifier are assumed to be part of the same operation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Set this to True if this is the last log entry in the operation.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Optional. An arbitrary producer identifier. The combination of `id` and `
        # producer` must be globally unique. Examples for `producer`: `"MyDivision.
        # MyBigCompany.com"`, `"github.com/MyProject/MyApplication"`.
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first = args[:first] if args.key?(:first)
          @id = args[:id] if args.key?(:id)
          @last = args[:last] if args.key?(:last)
          @producer = args[:producer] if args.key?(:producer)
        end
      end
      
      # Additional information about the source code location that produced the log
      # entry.
      class LogEntrySourceLocation
        include Google::Apis::Core::Hashable
      
        # Optional. Source file name. Depending on the runtime environment, this might
        # be a simple name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Optional. Human-readable name of the function or method being invoked, with
        # optional context such as the class or package name. This information may be
        # used in contexts such as the logs viewer, where a file and line number are
        # less meaningful. The format can vary by language. For example: `qual.if.ied.
        # Class.method` (Java), `dir/package.func` (Go), `function` (Python).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Line within the source file. 1-based; 0 indicates no line number
        # available.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function = args[:function] if args.key?(:function)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Represents a single metric value.
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # A boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Distribution represents a frequency distribution of double-valued sample
        # points. It contains the size of the population of sample points plus
        # additional optional information: - the arithmetic mean of the samples - the
        # minimum and maximum of the samples - the sum-squared-deviation of the samples,
        # used to compute variance - a histogram of the values of the sample points
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::Distribution]
        attr_accessor :distribution_value
      
        # A double precision floating point value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # The end of the time period over which this metric value's measurement applies.
        # If not specified, google.api.servicecontrol.v1.Operation.end_time will be used.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A signed 64-bit integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # The labels describing the metric value. See comments on google.api.
        # servicecontrol.v1.Operation.labels for the overriding relationship. Note that
        # this map must not contain monitored resource labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::Money]
        attr_accessor :money_value
      
        # The start of the time period over which this metric value's measurement
        # applies. The time period has different semantics for different metric types (
        # cumulative, delta, and gauge). See the metric definition documentation in the
        # service configuration for details. If not specified, google.api.servicecontrol.
        # v1.Operation.start_time will be used.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # A text string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @distribution_value = args[:distribution_value] if args.key?(:distribution_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @end_time = args[:end_time] if args.key?(:end_time)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @labels = args[:labels] if args.key?(:labels)
          @money_value = args[:money_value] if args.key?(:money_value)
          @start_time = args[:start_time] if args.key?(:start_time)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Represents a set of metric values in the same metric. Each metric value in the
      # set should have a unique combination of start time, end time, and label values.
      class MetricValueSet
        include Google::Apis::Core::Hashable
      
        # The metric name defined in the service configuration.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # The values in this metric.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents information regarding an operation.
      class Operation
        include Google::Apis::Core::Hashable
      
        # Identity of the consumer who is using the service. This field should be filled
        # in for the operations initiated by a consumer, but not for service-initiated
        # operations that are not related to a specific consumer. - This can be in one
        # of the following formats: - project:PROJECT_ID, - project`_`number:
        # PROJECT_NUMBER, - projects/PROJECT_ID or PROJECT_NUMBER, - folders/
        # FOLDER_NUMBER, - organizations/ORGANIZATION_NUMBER, - api`_`key:API_KEY.
        # Corresponds to the JSON property `consumerId`
        # @return [String]
        attr_accessor :consumer_id
      
        # End time of the operation. Required when the operation is used in
        # ServiceController.Report, but optional when the operation is used in
        # ServiceController.Check.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Unimplemented.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        # DO NOT USE. This is an experimental field.
        # Corresponds to the JSON property `importance`
        # @return [String]
        attr_accessor :importance
      
        # Labels describing the operation. Only the following labels are allowed: -
        # Labels describing monitored resources as defined in the service configuration.
        # - Default labels of metric values. When specified, labels defined in the
        # metric value override these default. - The following labels defined by Google
        # Cloud Platform: - `cloud.googleapis.com/location` describing the location
        # where the operation happened, - `servicecontrol.googleapis.com/user_agent`
        # describing the user agent of the API request, - `servicecontrol.googleapis.com/
        # service_agent` describing the service used to handle the API request (e.g. ESP)
        # , - `servicecontrol.googleapis.com/platform` describing the platform where the
        # API is served, such as App Engine, Compute Engine, or Kubernetes Engine.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents information to be logged.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::LogEntry>]
        attr_accessor :log_entries
      
        # Represents information about this operation. Each MetricValueSet corresponds
        # to a metric defined in the service configuration. The data type used in the
        # MetricValueSet must agree with the data type specified in the metric
        # definition. Within a single operation, it is not allowed to have more than one
        # MetricValue instances that have the same metric names and identical label
        # value combinations. If a request has such duplicated MetricValue instances,
        # the entire request is rejected with an invalid argument error.
        # Corresponds to the JSON property `metricValueSets`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::MetricValueSet>]
        attr_accessor :metric_value_sets
      
        # Identity of the operation. This must be unique within the scope of the service
        # that generated the operation. If the service calls Check() and Report() on the
        # same operation, the two calls should carry the same id. UUID version 4 is
        # recommended, though not required. In scenarios where an operation is computed
        # from existing information and an idempotent id is desirable for deduplication
        # purpose, UUID version 5 is recommended. See RFC 4122 for details.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Fully qualified name of the operation. Reserved for future use.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Represents the properties needed for quota operations.
        # Corresponds to the JSON property `quotaProperties`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::QuotaProperties]
        attr_accessor :quota_properties
      
        # The resources that are involved in the operation. The maximum supported number
        # of entries in this field is 100.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::ResourceInfo>]
        attr_accessor :resources
      
        # Required. Start time of the operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Unimplemented. A list of Cloud Trace spans. The span names shall contain the
        # id of the destination project which can be either the produce or the consumer
        # project.
        # Corresponds to the JSON property `traceSpans`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::TraceSpan>]
        attr_accessor :trace_spans
      
        # Private Preview. This feature is only available for approved services. User
        # defined labels for the resource that this operation is associated with.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_id = args[:consumer_id] if args.key?(:consumer_id)
          @end_time = args[:end_time] if args.key?(:end_time)
          @extensions = args[:extensions] if args.key?(:extensions)
          @importance = args[:importance] if args.key?(:importance)
          @labels = args[:labels] if args.key?(:labels)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @metric_value_sets = args[:metric_value_sets] if args.key?(:metric_value_sets)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @quota_properties = args[:quota_properties] if args.key?(:quota_properties)
          @resources = args[:resources] if args.key?(:resources)
          @start_time = args[:start_time] if args.key?(:start_time)
          @trace_spans = args[:trace_spans] if args.key?(:trace_spans)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
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
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Binding>]
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
      
      # Represents the properties needed for quota operations.
      class QuotaProperties
        include Google::Apis::Core::Hashable
      
        # Quota mode for this operation.
        # Corresponds to the JSON property `quotaMode`
        # @return [String]
        attr_accessor :quota_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quota_mode = args[:quota_mode] if args.key?(:quota_mode)
        end
      end
      
      # Request message for the Report method.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # Operations to be reported. Typically the service should report one operation
        # per request. Putting multiple operations into a single request is allowed, but
        # should be used only when multiple operations are natually available at the
        # time of the report. There is no limit on the number of operations in the same
        # ReportRequest, however the ReportRequest size should be no larger than 1MB.
        # See ReportResponse.report_errors for partial failure behavior.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::Operation>]
        attr_accessor :operations
      
        # Specifies which version of service config should be used to process the
        # request. If unspecified or no matching version can be found, the latest one
        # will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        # The service name as specified in its service configuration. For example, `"
        # pubsub.googleapis.com"`. See [google.api.Service](https://cloud.google.com/
        # service-management/reference/rpc/google.api#google.api.Service) for the
        # definition of a service name.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # Describes a resource associated with this operation.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # The identifier of the parent of this resource instance. Must be in one of the
        # following formats: - `projects/` - `folders/` - `organizations/`
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # The location of the resource. If not empty, the resource will be checked
        # against location policy. The value must be a valid zone, region or multiregion.
        # For example: "europe-west4" or "northamerica-northeast1-a"
        # Corresponds to the JSON property `resourceLocation`
        # @return [String]
        attr_accessor :resource_location
      
        # Name of the resource. This is used for auditing purposes.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_location = args[:resource_location] if args.key?(:resource_location)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # RouterAppliance represents a Router appliance which is specified by a VM URI
      # and a NIC address.
      class RouterApplianceInstance
        include Google::Apis::Core::Hashable
      
        # The IP address of the network interface to use for peering.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `networkInterface`
        # @return [String]
        attr_accessor :network_interface
      
        # The URI of the virtual machine resource
        # Corresponds to the JSON property `virtualMachine`
        # @return [String]
        attr_accessor :virtual_machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network_interface = args[:network_interface] if args.key?(:network_interface)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
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
        # @return [Google::Apis::NetworkconnectivityV1alpha1::Policy]
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
      
      # A Spoke is an abstraction of a network attachment being attached to a Hub. A
      # Spoke can be underlying a VPN tunnel, a VLAN (interconnect) attachment, a
      # Router appliance, etc.
      class Spoke
        include Google::Apis::Core::Hashable
      
        # The time when the Spoke was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Short description of the spoke resource
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The resource URL of the hub resource that the spoke is attached to
        # Corresponds to the JSON property `hub`
        # @return [String]
        attr_accessor :hub
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The URIs of linked interconnect attachment resources
        # Corresponds to the JSON property `linkedInterconnectAttachments`
        # @return [Array<String>]
        attr_accessor :linked_interconnect_attachments
      
        # The URIs of linked Router appliance resources
        # Corresponds to the JSON property `linkedRouterApplianceInstances`
        # @return [Array<Google::Apis::NetworkconnectivityV1alpha1::RouterApplianceInstance>]
        attr_accessor :linked_router_appliance_instances
      
        # The URIs of linked VPN tunnel resources
        # Corresponds to the JSON property `linkedVpnTunnels`
        # @return [Array<String>]
        attr_accessor :linked_vpn_tunnels
      
        # Immutable. The name of a Spoke resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current lifecycle state of this Hub.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all Spoke resources. If a Spoke resource is deleted and another with the same
        # name is created, it gets a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # The time when the Spoke was updated.
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
          @hub = args[:hub] if args.key?(:hub)
          @labels = args[:labels] if args.key?(:labels)
          @linked_interconnect_attachments = args[:linked_interconnect_attachments] if args.key?(:linked_interconnect_attachments)
          @linked_router_appliance_instances = args[:linked_router_appliance_instances] if args.key?(:linked_router_appliance_instances)
          @linked_vpn_tunnels = args[:linked_vpn_tunnels] if args.key?(:linked_vpn_tunnels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
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
      
      # A span represents a single operation within a trace. Spans can be nested to
      # form a trace tree. Often, a trace contains a root span that describes the end-
      # to-end latency, and one or more subspans for its sub-operations. A trace can
      # also contain multiple root spans, or none at all. Spans do not need to be
      # contiguous—there may be gaps or overlaps between spans in a trace.
      class TraceSpan
        include Google::Apis::Core::Hashable
      
        # A set of attributes, each in the format `[KEY]:[VALUE]`.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::Attributes]
        attr_accessor :attributes
      
        # An optional number of child spans that were generated while this span was
        # active. If set, allows implementation to detect missing child spans.
        # Corresponds to the JSON property `childSpanCount`
        # @return [Fixnum]
        attr_accessor :child_span_count
      
        # Represents a string that might be shortened to a specified length.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::TruncatableString]
        attr_accessor :display_name
      
        # The end time of the span. On the client side, this is the time kept by the
        # local machine where the span execution ends. On the server side, this is the
        # time when the server application handler stops running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The resource name of the span in the following format: projects/[PROJECT_ID]/
        # traces/[TRACE_ID]/spans/SPAN_ID is a unique identifier for a trace within a
        # project; it is a 32-character hexadecimal encoding of a 16-byte array. [
        # SPAN_ID] is a unique identifier for a span within a trace; it is a 16-
        # character hexadecimal encoding of an 8-byte array.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The [SPAN_ID] of this span's parent span. If this is a root span, then this
        # field must be empty.
        # Corresponds to the JSON property `parentSpanId`
        # @return [String]
        attr_accessor :parent_span_id
      
        # (Optional) Set this parameter to indicate whether this span is in the same
        # process as its parent. If you do not set this parameter, Stackdriver Trace is
        # unable to take advantage of this helpful information.
        # Corresponds to the JSON property `sameProcessAsParentSpan`
        # @return [Boolean]
        attr_accessor :same_process_as_parent_span
        alias_method :same_process_as_parent_span?, :same_process_as_parent_span
      
        # The [SPAN_ID] portion of the span's resource name.
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # Distinguishes between spans generated in a particular context. For example,
        # two spans with the same name may be distinguished using `CLIENT` (caller) and `
        # SERVER` (callee) to identify an RPC call.
        # Corresponds to the JSON property `spanKind`
        # @return [String]
        attr_accessor :span_kind
      
        # The start time of the span. On the client side, this is the time kept by the
        # local machine where the span execution starts. On the server side, this is the
        # time when the server's application handler starts running.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @child_span_count = args[:child_span_count] if args.key?(:child_span_count)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @parent_span_id = args[:parent_span_id] if args.key?(:parent_span_id)
          @same_process_as_parent_span = args[:same_process_as_parent_span] if args.key?(:same_process_as_parent_span)
          @span_id = args[:span_id] if args.key?(:span_id)
          @span_kind = args[:span_kind] if args.key?(:span_kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents a string that might be shortened to a specified length.
      class TruncatableString
        include Google::Apis::Core::Hashable
      
        # The number of bytes removed from the original string. If this value is 0, then
        # the string was not shortened.
        # Corresponds to the JSON property `truncatedByteCount`
        # @return [Fixnum]
        attr_accessor :truncated_byte_count
      
        # The shortened string. For example, if the original string is 500 bytes long
        # and the limit of the string is 128 bytes, then `value` contains the first 128
        # bytes of the 500-byte string. Truncation always happens on a UTF8 character
        # boundary. If there are multi-byte characters in the string, then the length of
        # the shortened string might be less than the size limit.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @truncated_byte_count = args[:truncated_byte_count] if args.key?(:truncated_byte_count)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
