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
    module ServicecontrolV1
      
      # 
      class AllocateInfo
        include Google::Apis::Core::Hashable
      
        # A list of label keys that were unused by the server in processing the
        # request. Thus, for similar requests repeated in a certain future time
        # window, the caller can choose to ignore these labels in the requests
        # to achieve better client-side cache hits and quota aggregation.
        # Corresponds to the JSON property `unusedArguments`
        # @return [Array<String>]
        attr_accessor :unused_arguments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unused_arguments = args[:unused_arguments] if args.key?(:unused_arguments)
        end
      end
      
      # Request message for the AllocateQuota method.
      class AllocateQuotaRequest
        include Google::Apis::Core::Hashable
      
        # Represents information regarding a quota operation.
        # Corresponds to the JSON property `allocateOperation`
        # @return [Google::Apis::ServicecontrolV1::QuotaOperation]
        attr_accessor :allocate_operation
      
        # Specifies which version of service configuration should be used to process
        # the request. If unspecified or no matching version can be found, the latest
        # one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocate_operation = args[:allocate_operation] if args.key?(:allocate_operation)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for the AllocateQuota method.
      class AllocateQuotaResponse
        include Google::Apis::Core::Hashable
      
        # Indicates the decision of the allocate.
        # Corresponds to the JSON property `allocateErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::QuotaError>]
        attr_accessor :allocate_errors
      
        # WARNING: DO NOT use this field until this warning message is removed.
        # Corresponds to the JSON property `allocateInfo`
        # @return [Google::Apis::ServicecontrolV1::AllocateInfo]
        attr_accessor :allocate_info
      
        # The same operation_id value used in the AllocateQuotaRequest. Used for
        # logging and diagnostics purposes.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Quota metrics to indicate the result of allocation. Depending on the
        # request, one or more of the following metrics will be included:
        # 1. For rate quota, per quota group or per quota metric incremental usage
        # will be specified using the following delta metric:
        # "serviceruntime.googleapis.com/api/consumer/quota_used_count"
        # 2. For allocation quota, per quota metric total usage will be specified
        # using the following gauge metric:
        # "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
        # 3. For both rate quota and allocation quota, the quota limit reached
        # condition will be specified using the following boolean metric:
        # "serviceruntime.googleapis.com/quota/exceeded"
        # 4. For allocation quota, value for each quota limit associated with
        # the metrics will be specified using the following gauge metric:
        # "serviceruntime.googleapis.com/quota/limit"
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        # ID of the actual config used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocate_errors = args[:allocate_errors] if args.key?(:allocate_errors)
          @allocate_info = args[:allocate_info] if args.key?(:allocate_info)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Common audit log format for Google Cloud Platform API operations.
      class AuditLog
        include Google::Apis::Core::Hashable
      
        # Authentication information for the operation.
        # Corresponds to the JSON property `authenticationInfo`
        # @return [Google::Apis::ServicecontrolV1::AuthenticationInfo]
        attr_accessor :authentication_info
      
        # Authorization information. If there are multiple
        # resources or permissions involved, then there is
        # one AuthorizationInfo element for each `resource, permission` tuple.
        # Corresponds to the JSON property `authorizationInfo`
        # @return [Array<Google::Apis::ServicecontrolV1::AuthorizationInfo>]
        attr_accessor :authorization_info
      
        # Other service-specific data about the request, response, and other
        # information associated with the current audited event.
        # Corresponds to the JSON property `metadata`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :metadata
      
        # The name of the service method or operation.
        # For API calls, this should be the name of the API method.
        # For example,
        # "google.datastore.v1.Datastore.RunQuery"
        # "google.logging.v1.LoggingService.DeleteLog"
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # The number of items returned from a List or Query API method,
        # if applicable.
        # Corresponds to the JSON property `numResponseItems`
        # @return [Fixnum]
        attr_accessor :num_response_items
      
        # The operation request. This may not include all request parameters,
        # such as those that are too large, privacy-sensitive, or duplicated
        # elsewhere in the log record.
        # It should never include user-generated data, such as file contents.
        # When the JSON object represented here has a proto equivalent, the proto
        # name will be indicated in the `@type` property.
        # Corresponds to the JSON property `request`
        # @return [Hash<String,Object>]
        attr_accessor :request
      
        # Metadata about the request.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ServicecontrolV1::RequestMetadata]
        attr_accessor :request_metadata
      
        # The resource or collection that is the target of the operation.
        # The name is a scheme-less URI, not including the API service name.
        # For example:
        # "shelves/SHELF_ID/books"
        # "shelves/SHELF_ID/books/BOOK_ID"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The operation response. This may not include all response elements,
        # such as those that are too large, privacy-sensitive, or duplicated
        # elsewhere in the log record.
        # It should never include user-generated data, such as file contents.
        # When the JSON object represented here has a proto equivalent, the proto
        # name will be indicated in the `@type` property.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        # Deprecated, use `metadata` field instead.
        # Other service-specific data about the request, response, and other
        # activities.
        # Corresponds to the JSON property `serviceData`
        # @return [Hash<String,Object>]
        attr_accessor :service_data
      
        # The name of the API service performing the operation. For example,
        # `"datastore.googleapis.com"`.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ServicecontrolV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_info = args[:authentication_info] if args.key?(:authentication_info)
          @authorization_info = args[:authorization_info] if args.key?(:authorization_info)
          @metadata = args[:metadata] if args.key?(:metadata)
          @method_name = args[:method_name] if args.key?(:method_name)
          @num_response_items = args[:num_response_items] if args.key?(:num_response_items)
          @request = args[:request] if args.key?(:request)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @response = args[:response] if args.key?(:response)
          @service_data = args[:service_data] if args.key?(:service_data)
          @service_name = args[:service_name] if args.key?(:service_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Authentication information for the operation.
      class AuthenticationInfo
        include Google::Apis::Core::Hashable
      
        # The authority selector specified by the requestor, if any.
        # It is not guaranteed that the principal was allowed to use this authority.
        # Corresponds to the JSON property `authoritySelector`
        # @return [String]
        attr_accessor :authority_selector
      
        # The email address of the authenticated user (or service account on behalf
        # of third party principal) making the request. For privacy reasons, the
        # principal email address is redacted for all read-only operations that fail
        # with a "permission denied" error.
        # Corresponds to the JSON property `principalEmail`
        # @return [String]
        attr_accessor :principal_email
      
        # The third party identification (if any) of the authenticated user making
        # the request.
        # When the JSON object represented here has a proto equivalent, the proto
        # name will be indicated in the `@type` property.
        # Corresponds to the JSON property `thirdPartyPrincipal`
        # @return [Hash<String,Object>]
        attr_accessor :third_party_principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority_selector = args[:authority_selector] if args.key?(:authority_selector)
          @principal_email = args[:principal_email] if args.key?(:principal_email)
          @third_party_principal = args[:third_party_principal] if args.key?(:third_party_principal)
        end
      end
      
      # Authorization information for the operation.
      class AuthorizationInfo
        include Google::Apis::Core::Hashable
      
        # Whether or not authorization for `resource` and `permission`
        # was granted.
        # Corresponds to the JSON property `granted`
        # @return [Boolean]
        attr_accessor :granted
        alias_method :granted?, :granted
      
        # The required IAM permission.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The resource being accessed, as a REST-style string. For example:
        # bigquery.googleapis.com/projects/PROJECTID/datasets/DATASETID
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @granted = args[:granted] if args.key?(:granted)
          @permission = args[:permission] if args.key?(:permission)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Defines the errors to be returned in
      # google.api.servicecontrol.v1.CheckResponse.check_errors.
      class CheckError
        include Google::Apis::Core::Hashable
      
        # The error code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Free-form text providing details on the error cause of the error.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @detail = args[:detail] if args.key?(:detail)
        end
      end
      
      # Contains additional information about the check operation.
      class CheckInfo
        include Google::Apis::Core::Hashable
      
        # `ConsumerInfo` provides information about the consumer project.
        # Corresponds to the JSON property `consumerInfo`
        # @return [Google::Apis::ServicecontrolV1::ConsumerInfo]
        attr_accessor :consumer_info
      
        # A list of fields and label keys that are ignored by the server.
        # The client doesn't need to send them for following requests to improve
        # performance and allow better aggregation.
        # Corresponds to the JSON property `unusedArguments`
        # @return [Array<String>]
        attr_accessor :unused_arguments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_info = args[:consumer_info] if args.key?(:consumer_info)
          @unused_arguments = args[:unused_arguments] if args.key?(:unused_arguments)
        end
      end
      
      # Request message for the Check method.
      class CheckRequest
        include Google::Apis::Core::Hashable
      
        # Represents information regarding an operation.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ServicecontrolV1::Operation]
        attr_accessor :operation
      
        # Requests the project settings to be returned as part of the check response.
        # Corresponds to the JSON property `requestProjectSettings`
        # @return [Boolean]
        attr_accessor :request_project_settings
        alias_method :request_project_settings?, :request_project_settings
      
        # Specifies which version of service configuration should be used to process
        # the request.
        # If unspecified or no matching version can be found, the
        # latest one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        # Indicates if service activation check should be skipped for this request.
        # Default behavior is to perform the check and apply relevant quota.
        # Corresponds to the JSON property `skipActivationCheck`
        # @return [Boolean]
        attr_accessor :skip_activation_check
        alias_method :skip_activation_check?, :skip_activation_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @request_project_settings = args[:request_project_settings] if args.key?(:request_project_settings)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
          @skip_activation_check = args[:skip_activation_check] if args.key?(:skip_activation_check)
        end
      end
      
      # Response message for the Check method.
      class CheckResponse
        include Google::Apis::Core::Hashable
      
        # Indicate the decision of the check.
        # If no check errors are present, the service should process the operation.
        # Otherwise the service should use the list of errors to determine the
        # appropriate action.
        # Corresponds to the JSON property `checkErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::CheckError>]
        attr_accessor :check_errors
      
        # Contains additional information about the check operation.
        # Corresponds to the JSON property `checkInfo`
        # @return [Google::Apis::ServicecontrolV1::CheckInfo]
        attr_accessor :check_info
      
        # The same operation_id value used in the CheckRequest.
        # Used for logging and diagnostics purposes.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Contains the quota information for a quota check response.
        # Corresponds to the JSON property `quotaInfo`
        # @return [Google::Apis::ServicecontrolV1::QuotaInfo]
        attr_accessor :quota_info
      
        # The actual config id used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_errors = args[:check_errors] if args.key?(:check_errors)
          @check_info = args[:check_info] if args.key?(:check_info)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_info = args[:quota_info] if args.key?(:quota_info)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # `ConsumerInfo` provides information about the consumer project.
      class ConsumerInfo
        include Google::Apis::Core::Hashable
      
        # The Google cloud project number, e.g. 1234567890. A value of 0 indicates
        # no project number is found.
        # Corresponds to the JSON property `projectNumber`
        # @return [Fixnum]
        attr_accessor :project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_number = args[:project_number] if args.key?(:project_number)
        end
      end
      
      # Distribution represents a frequency distribution of double-valued sample
      # points. It contains the size of the population of sample points plus
      # additional optional information:
      # - the arithmetic mean of the samples
      # - the minimum and maximum of the samples
      # - the sum-squared-deviation of the samples, used to compute variance
      # - a histogram of the values of the sample points
      class Distribution
        include Google::Apis::Core::Hashable
      
        # The number of samples in each histogram bucket. `bucket_counts` are
        # optional. If present, they must sum to the `count` value.
        # The buckets are defined below in `bucket_option`. There are N buckets.
        # `bucket_counts[0]` is the number of samples in the underflow bucket.
        # `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples
        # in each of the finite buckets. And `bucket_counts[N] is the number
        # of samples in the overflow bucket. See the comments of `bucket_option`
        # below for more details.
        # Any suffix of trailing zeros may be omitted.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<Fixnum>]
        attr_accessor :bucket_counts
      
        # The total number of samples in the distribution. Must be >= 0.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Describing buckets with arbitrary user-provided width.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::ServicecontrolV1::ExplicitBuckets]
        attr_accessor :explicit_buckets
      
        # Describing buckets with exponentially growing width.
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::ServicecontrolV1::ExponentialBuckets]
        attr_accessor :exponential_buckets
      
        # Describing buckets with constant width.
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::ServicecontrolV1::LinearBuckets]
        attr_accessor :linear_buckets
      
        # The maximum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # The arithmetic mean of the samples in the distribution. If `count` is
        # zero then this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The minimum of the population of values. Ignored if `count` is zero.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # The sum of squared deviations from the mean:
        # Sum[i=1..count]((x_i - mean)^2)
        # where each x_i is a sample values. If `count` is zero then this field
        # must be zero, otherwise validation of the request fails.
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
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
          @maximum = args[:maximum] if args.key?(:maximum)
          @mean = args[:mean] if args.key?(:mean)
          @minimum = args[:minimum] if args.key?(:minimum)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
        end
      end
      
      # Request message for QuotaController.EndReconciliation.
      class EndReconciliationRequest
        include Google::Apis::Core::Hashable
      
        # Represents information regarding a quota operation.
        # Corresponds to the JSON property `reconciliationOperation`
        # @return [Google::Apis::ServicecontrolV1::QuotaOperation]
        attr_accessor :reconciliation_operation
      
        # Specifies which version of service configuration should be used to process
        # the request. If unspecified or no matching version can be found, the latest
        # one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reconciliation_operation = args[:reconciliation_operation] if args.key?(:reconciliation_operation)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for QuotaController.EndReconciliation.
      class EndReconciliationResponse
        include Google::Apis::Core::Hashable
      
        # The same operation_id value used in the EndReconciliationRequest. Used for
        # logging and diagnostics purposes.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Metric values as tracked by One Platform before the adjustment was made.
        # The following metrics will be included:
        # 1. Per quota metric total usage will be specified using the following gauge
        # metric:
        # "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
        # 2. Value for each quota limit associated with the metrics will be specified
        # using the following gauge metric:
        # "serviceruntime.googleapis.com/quota/limit"
        # 3. Delta value of the usage after the reconciliation for limits associated
        # with the metrics will be specified using the following metric:
        # "serviceruntime.googleapis.com/allocation/reconciliation_delta"
        # The delta value is defined as:
        # new_usage_from_client - existing_value_in_spanner.
        # This metric is not defined in serviceruntime.yaml or in Cloud Monarch.
        # This metric is meant for callers' use only. Since this metric is not
        # defined in the monitoring backend, reporting on this metric will result in
        # an error.
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        # Indicates the decision of the reconciliation end.
        # Corresponds to the JSON property `reconciliationErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::QuotaError>]
        attr_accessor :reconciliation_errors
      
        # ID of the actual config used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
          @reconciliation_errors = args[:reconciliation_errors] if args.key?(:reconciliation_errors)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Describing buckets with arbitrary user-provided width.
      class ExplicitBuckets
        include Google::Apis::Core::Hashable
      
        # 'bound' is a list of strictly increasing boundaries between
        # buckets. Note that a list of length N-1 defines N buckets because
        # of fenceposting. See comments on `bucket_options` for details.
        # The i'th finite bucket covers the interval
        # [bound[i-1], bound[i])
        # where i ranges from 1 to bound_size() - 1. Note that there are no
        # finite buckets at all if 'bound' only contains a single element; in
        # that special case the single bound defines the boundary between the
        # underflow and overflow buckets.
        # bucket number                   lower bound    upper bound
        # i == 0 (underflow)              -inf           bound[i]
        # 0 < i < bound_size()            bound[i-1]     bound[i]
        # i == bound_size() (overflow)    bound[i-1]     +inf
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
      
        # The i'th exponential bucket covers the interval
        # [scale * growth_factor^(i-1), scale * growth_factor^i)
        # where i ranges from 1 to num_finite_buckets inclusive.
        # Must be larger than 1.0.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # The number of finite buckets. With the underflow and overflow buckets,
        # the total number of buckets is `num_finite_buckets` + 2.
        # See comments on `bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th exponential bucket covers the interval
        # [scale * growth_factor^(i-1), scale * growth_factor^i)
        # where i ranges from 1 to num_finite_buckets inclusive.
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
      
      # Describing buckets with constant width.
      class LinearBuckets
        include Google::Apis::Core::Hashable
      
        # The number of finite buckets. With the underflow and overflow buckets,
        # the total number of buckets is `num_finite_buckets` + 2.
        # See comments on `bucket_options` for details.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # The i'th linear bucket covers the interval
        # [offset + (i-1) * width, offset + i * width)
        # where i ranges from 1 to num_finite_buckets, inclusive.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # The i'th linear bucket covers the interval
        # [offset + (i-1) * width, offset + i * width)
        # where i ranges from 1 to num_finite_buckets, inclusive.
        # Must be strictly positive.
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
      
      # An individual log entry.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # A unique ID for the log entry used for deduplication. If omitted,
        # the implementation will generate one based on operation_id.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # A set of user-defined (key, value) data that provides additional
        # information about the log entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The log to which this log entry belongs. Examples: `"syslog"`,
        # `"book_log"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The log entry payload, represented as a protocol buffer that is
        # expressed as a JSON object. The only accepted type currently is
        # AuditLog.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # The severity of the log entry. The default value is
        # `LogSeverity.DEFAULT`.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The log entry payload, represented as a structure that
        # is expressed as a JSON object.
        # Corresponds to the JSON property `structPayload`
        # @return [Hash<String,Object>]
        attr_accessor :struct_payload
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The time the event described by the log entry occurred. If
        # omitted, defaults to operation start time.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @severity = args[:severity] if args.key?(:severity)
          @struct_payload = args[:struct_payload] if args.key?(:struct_payload)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
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
        # additional optional information:
        # - the arithmetic mean of the samples
        # - the minimum and maximum of the samples
        # - the sum-squared-deviation of the samples, used to compute variance
        # - a histogram of the values of the sample points
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::ServicecontrolV1::Distribution]
        attr_accessor :distribution_value
      
        # A double precision floating point value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # The end of the time period over which this metric value's measurement
        # applies.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A signed 64-bit integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # The labels describing the metric value.
        # See comments on google.api.servicecontrol.v1.Operation.labels for
        # the overriding relationship.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::ServicecontrolV1::Money]
        attr_accessor :money_value
      
        # The start of the time period over which this metric value's measurement
        # applies. The time period has different semantics for different metric
        # types (cumulative, delta, and gauge). See the metric definition
        # documentation in the service configuration for details.
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
      
      # Represents a set of metric values in the same metric.
      # Each metric value in the set should have a unique combination of start time,
      # end time, and label values.
      class MetricValueSet
        include Google::Apis::Core::Hashable
      
        # The metric name defined in the service configuration.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # The values in this metric.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValue>]
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
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
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
      
        # Identity of the consumer who is using the service.
        # This field should be filled in for the operations initiated by a
        # consumer, but not for service-initiated operations that are
        # not related to a specific consumer.
        # This can be in one of the following formats:
        # project:<project_id>,
        # project_number:<project_number>,
        # api_key:<api_key>.
        # Corresponds to the JSON property `consumerId`
        # @return [String]
        attr_accessor :consumer_id
      
        # End time of the operation.
        # Required when the operation is used in ServiceController.Report,
        # but optional when the operation is used in ServiceController.Check.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # DO NOT USE. This is an experimental field.
        # Corresponds to the JSON property `importance`
        # @return [String]
        attr_accessor :importance
      
        # Labels describing the operation. Only the following labels are allowed:
        # - Labels describing monitored resources as defined in
        # the service configuration.
        # - Default labels of metric values. When specified, labels defined in the
        # metric value override these default.
        # - The following labels defined by Google Cloud Platform:
        # - `cloud.googleapis.com/location` describing the location where the
        # operation happened,
        # - `servicecontrol.googleapis.com/user_agent` describing the user agent
        # of the API request,
        # - `servicecontrol.googleapis.com/service_agent` describing the service
        # used to handle the API request (e.g. ESP),
        # - `servicecontrol.googleapis.com/platform` describing the platform
        # where the API is served (e.g. GAE, GCE, GKE).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Represents information to be logged.
        # Corresponds to the JSON property `logEntries`
        # @return [Array<Google::Apis::ServicecontrolV1::LogEntry>]
        attr_accessor :log_entries
      
        # Represents information about this operation. Each MetricValueSet
        # corresponds to a metric defined in the service configuration.
        # The data type used in the MetricValueSet must agree with
        # the data type specified in the metric definition.
        # Within a single operation, it is not allowed to have more than one
        # MetricValue instances that have the same metric names and identical
        # label value combinations. If a request has such duplicated MetricValue
        # instances, the entire request is rejected with
        # an invalid argument error.
        # Corresponds to the JSON property `metricValueSets`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :metric_value_sets
      
        # Identity of the operation. This must be unique within the scope of the
        # service that generated the operation. If the service calls
        # Check() and Report() on the same operation, the two calls should carry
        # the same id.
        # UUID version 4 is recommended, though not required.
        # In scenarios where an operation is computed from existing information
        # and an idempotent id is desirable for deduplication purpose, UUID version 5
        # is recommended. See RFC 4122 for details.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Fully qualified name of the operation. Reserved for future use.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Represents the properties needed for quota operations.
        # Corresponds to the JSON property `quotaProperties`
        # @return [Google::Apis::ServicecontrolV1::QuotaProperties]
        attr_accessor :quota_properties
      
        # DO NOT USE. This field is deprecated, use "resources" field instead.
        # The resource name of the parent of a resource in the resource hierarchy.
        # This can be in one of the following formats:
        # - “projects/<project-id or project-number>”
        # - “folders/<folder-id>”
        # - “organizations/<organization-id>”
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # The resources that are involved in the operation.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ServicecontrolV1::ResourceInfo>]
        attr_accessor :resources
      
        # Required. Start time of the operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # User defined labels for the resource that this operation is associated
        # with. Only a combination of 1000 user labels per consumer project are
        # allowed.
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
          @importance = args[:importance] if args.key?(:importance)
          @labels = args[:labels] if args.key?(:labels)
          @log_entries = args[:log_entries] if args.key?(:log_entries)
          @metric_value_sets = args[:metric_value_sets] if args.key?(:metric_value_sets)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @quota_properties = args[:quota_properties] if args.key?(:quota_properties)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resources = args[:resources] if args.key?(:resources)
          @start_time = args[:start_time] if args.key?(:start_time)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Represents error information for QuotaOperation.
      class QuotaError
        include Google::Apis::Core::Hashable
      
        # Error code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Free-form text that provides details on the cause of the error.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Subject to whom this error applies. See the specific enum for more details
        # on this field. For example, "clientip:<ip address of client>" or
        # "project:<Google developer project id>".
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Contains the quota information for a quota check response.
      class QuotaInfo
        include Google::Apis::Core::Hashable
      
        # Quota Metrics that have exceeded quota limits.
        # For QuotaGroup-based quota, this is QuotaGroup.name
        # For QuotaLimit-based quota, this is QuotaLimit.name
        # See: google.api.Quota
        # Deprecated: Use quota_metrics to get per quota group limit exceeded status.
        # Corresponds to the JSON property `limitExceeded`
        # @return [Array<String>]
        attr_accessor :limit_exceeded
      
        # Map of quota group name to the actual number of tokens consumed. If the
        # quota check was not successful, then this will not be populated due to no
        # quota consumption.
        # We are not merging this field with 'quota_metrics' field because of the
        # complexity of scaling in Chemist client code base. For simplicity, we will
        # keep this field for Castor (that scales quota usage) and 'quota_metrics'
        # for SuperQuota (that doesn't scale quota usage).
        # Corresponds to the JSON property `quotaConsumed`
        # @return [Hash<String,Fixnum>]
        attr_accessor :quota_consumed
      
        # Quota metrics to indicate the usage. Depending on the check request, one or
        # more of the following metrics will be included:
        # 1. For rate quota, per quota group or per quota metric incremental usage
        # will be specified using the following delta metric:
        # "serviceruntime.googleapis.com/api/consumer/quota_used_count"
        # 2. For allocation quota, per quota metric total usage will be specified
        # using the following gauge metric:
        # "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
        # 3. For both rate quota and allocation quota, the quota limit reached
        # condition will be specified using the following boolean metric:
        # "serviceruntime.googleapis.com/quota/exceeded"
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limit_exceeded = args[:limit_exceeded] if args.key?(:limit_exceeded)
          @quota_consumed = args[:quota_consumed] if args.key?(:quota_consumed)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
        end
      end
      
      # Represents information regarding a quota operation.
      class QuotaOperation
        include Google::Apis::Core::Hashable
      
        # Identity of the consumer for whom this quota operation is being performed.
        # This can be in one of the following formats:
        # project:<project_id>,
        # project_number:<project_number>,
        # api_key:<api_key>.
        # Corresponds to the JSON property `consumerId`
        # @return [String]
        attr_accessor :consumer_id
      
        # Labels describing the operation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Fully qualified name of the API method for which this quota operation is
        # requested. This name is used for matching quota rules or metric rules and
        # billing status rules defined in service configuration. This field is not
        # required if the quota operation is performed on non-API resources.
        # Example of an RPC method name:
        # google.example.library.v1.LibraryService.CreateShelf
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Identity of the operation. This is expected to be unique within the scope
        # of the service that generated the operation, and guarantees idempotency in
        # case of retries.
        # UUID version 4 is recommended, though not required. In scenarios where an
        # operation is computed from existing information and an idempotent id is
        # desirable for deduplication purpose, UUID version 5 is recommended. See
        # RFC 4122 for details.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Represents information about this operation. Each MetricValueSet
        # corresponds to a metric defined in the service configuration.
        # The data type used in the MetricValueSet must agree with
        # the data type specified in the metric definition.
        # Within a single operation, it is not allowed to have more than one
        # MetricValue instances that have the same metric names and identical
        # label value combinations. If a request has such duplicated MetricValue
        # instances, the entire request is rejected with
        # an invalid argument error.
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        # Quota mode for this operation.
        # Corresponds to the JSON property `quotaMode`
        # @return [String]
        attr_accessor :quota_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_id = args[:consumer_id] if args.key?(:consumer_id)
          @labels = args[:labels] if args.key?(:labels)
          @method_name = args[:method_name] if args.key?(:method_name)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
          @quota_mode = args[:quota_mode] if args.key?(:quota_mode)
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
      
      # Request message for the ReleaseQuota method.
      class ReleaseQuotaRequest
        include Google::Apis::Core::Hashable
      
        # Represents information regarding a quota operation.
        # Corresponds to the JSON property `releaseOperation`
        # @return [Google::Apis::ServicecontrolV1::QuotaOperation]
        attr_accessor :release_operation
      
        # Specifies which version of service configuration should be used to process
        # the request. If unspecified or no matching version can be found, the latest
        # one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release_operation = args[:release_operation] if args.key?(:release_operation)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for the ReleaseQuota method.
      class ReleaseQuotaResponse
        include Google::Apis::Core::Hashable
      
        # The same operation_id value used in the ReleaseQuotaRequest. Used for
        # logging and diagnostics purposes.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Quota metrics to indicate the result of release. Depending on the
        # request, one or more of the following metrics will be included:
        # 1. For rate quota, per quota group or per quota metric released amount
        # will be specified using the following delta metric:
        # "serviceruntime.googleapis.com/api/consumer/quota_refund_count"
        # 2. For allocation quota, per quota metric total usage will be specified
        # using the following gauge metric:
        # "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
        # 3. For allocation quota, value for each quota limit associated with
        # the metrics will be specified using the following gauge metric:
        # "serviceruntime.googleapis.com/quota/limit"
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        # Indicates the decision of the release.
        # Corresponds to the JSON property `releaseErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::QuotaError>]
        attr_accessor :release_errors
      
        # ID of the actual config used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
          @release_errors = args[:release_errors] if args.key?(:release_errors)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Represents the processing error of one Operation in the request.
      class ReportError
        include Google::Apis::Core::Hashable
      
        # The Operation.operation_id value from the request.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ServicecontrolV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Contains additional info about the report operation.
      class ReportInfo
        include Google::Apis::Core::Hashable
      
        # The Operation.operation_id value from the request.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Contains the quota information for a quota check response.
        # Corresponds to the JSON property `quotaInfo`
        # @return [Google::Apis::ServicecontrolV1::QuotaInfo]
        attr_accessor :quota_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_info = args[:quota_info] if args.key?(:quota_info)
        end
      end
      
      # Request message for the Report method.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # Operations to be reported.
        # Typically the service should report one operation per request.
        # Putting multiple operations into a single request is allowed, but should
        # be used only when multiple operations are natually available at the time
        # of the report.
        # If multiple operations are in a single request, the total request size
        # should be no larger than 1MB. See ReportResponse.report_errors for
        # partial failure behavior.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ServicecontrolV1::Operation>]
        attr_accessor :operations
      
        # Specifies which version of service config should be used to process the
        # request.
        # If unspecified or no matching version can be found, the
        # latest one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for the Report method.
      class ReportResponse
        include Google::Apis::Core::Hashable
      
        # Partial failures, one for each `Operation` in the request that failed
        # processing. There are three possible combinations of the RPC status:
        # 1. The combination of a successful RPC status and an empty `report_errors`
        # list indicates a complete success where all `Operations` in the
        # request are processed successfully.
        # 2. The combination of a successful RPC status and a non-empty
        # `report_errors` list indicates a partial success where some
        # `Operations` in the request succeeded. Each
        # `Operation` that failed processing has a corresponding item
        # in this list.
        # 3. A failed RPC status indicates a general non-deterministic failure.
        # When this happens, it's impossible to know which of the
        # 'Operations' in the request succeeded or failed.
        # Corresponds to the JSON property `reportErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::ReportError>]
        attr_accessor :report_errors
      
        # Quota usage for each quota release `Operation` request.
        # Fully or partially failed quota release request may or may not be present
        # in `report_quota_info`. For example, a failed quota release request will
        # have the current quota usage info when precise quota library returns the
        # info. A deadline exceeded quota request will not have quota usage info.
        # If there is no quota release request, report_quota_info will be empty.
        # Corresponds to the JSON property `reportInfos`
        # @return [Array<Google::Apis::ServicecontrolV1::ReportInfo>]
        attr_accessor :report_infos
      
        # The actual config id used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_errors = args[:report_errors] if args.key?(:report_errors)
          @report_infos = args[:report_infos] if args.key?(:report_infos)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Metadata about the request.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # The IP address of the caller.
        # For caller from internet, this will be public IPv4 or IPv6 address.
        # For caller from a Compute Engine VM with external IP address, this
        # will be the VM's external IP address. For caller from a Compute
        # Engine VM without external IP address, if the VM is in the same
        # organization (or project) as the accessed resource, `caller_ip` will
        # be the VM's internal IPv4 address, otherwise the `caller_ip` will be
        # redacted to "gce-internal-ip".
        # See https://cloud.google.com/compute/docs/vpc/ for more information.
        # Corresponds to the JSON property `callerIp`
        # @return [String]
        attr_accessor :caller_ip
      
        # The network of the caller.
        # Set only if the network host project is part of the same GCP organization
        # (or project) as the accessed resource.
        # See https://cloud.google.com/compute/docs/vpc/ for more information.
        # This is a scheme-less URI full resource name. For example:
        # "//compute.googleapis.com/projects/PROJECT_ID/global/networks/NETWORK_ID"
        # Corresponds to the JSON property `callerNetwork`
        # @return [String]
        attr_accessor :caller_network
      
        # The user agent of the caller.
        # This information is not authenticated and should be treated accordingly.
        # For example:
        # +   `google-api-python-client/1.4.0`:
        # The request was made by the Google API client for Python.
        # +   `Cloud SDK Command Line Tool apitools-client/1.0 gcloud/0.9.62`:
        # The request was made by the Google Cloud SDK CLI (gcloud).
        # +   `AppEngine-Google; (+http://code.google.com/appengine; appid: s~my-project`
        # :
        # The request was made from the `my-project` App Engine app.
        # NOLINT
        # Corresponds to the JSON property `callerSuppliedUserAgent`
        # @return [String]
        attr_accessor :caller_supplied_user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caller_ip = args[:caller_ip] if args.key?(:caller_ip)
          @caller_network = args[:caller_network] if args.key?(:caller_network)
          @caller_supplied_user_agent = args[:caller_supplied_user_agent] if args.key?(:caller_supplied_user_agent)
        end
      end
      
      # Describes a resource associated with this operation.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # The identifier of the parent of this resource instance.
        # Must be in one of the following formats:
        # - “projects/<project-id or project-number>”
        # - “folders/<folder-id>”
        # - “organizations/<organization-id>”
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
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
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Request message for QuotaController.StartReconciliation.
      class StartReconciliationRequest
        include Google::Apis::Core::Hashable
      
        # Represents information regarding a quota operation.
        # Corresponds to the JSON property `reconciliationOperation`
        # @return [Google::Apis::ServicecontrolV1::QuotaOperation]
        attr_accessor :reconciliation_operation
      
        # Specifies which version of service configuration should be used to process
        # the request. If unspecified or no matching version can be found, the latest
        # one will be used.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reconciliation_operation = args[:reconciliation_operation] if args.key?(:reconciliation_operation)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # Response message for QuotaController.StartReconciliation.
      class StartReconciliationResponse
        include Google::Apis::Core::Hashable
      
        # The same operation_id value used in the StartReconciliationRequest. Used
        # for logging and diagnostics purposes.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Metric values as tracked by One Platform before the start of
        # reconciliation. The following metrics will be included:
        # 1. Per quota metric total usage will be specified using the following gauge
        # metric:
        # "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
        # 2. Value for each quota limit associated with the metrics will be specified
        # using the following gauge metric:
        # "serviceruntime.googleapis.com/quota/limit"
        # Corresponds to the JSON property `quotaMetrics`
        # @return [Array<Google::Apis::ServicecontrolV1::MetricValueSet>]
        attr_accessor :quota_metrics
      
        # Indicates the decision of the reconciliation start.
        # Corresponds to the JSON property `reconciliationErrors`
        # @return [Array<Google::Apis::ServicecontrolV1::QuotaError>]
        attr_accessor :reconciliation_errors
      
        # ID of the actual config used to process the request.
        # Corresponds to the JSON property `serviceConfigId`
        # @return [String]
        attr_accessor :service_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @quota_metrics = args[:quota_metrics] if args.key?(:quota_metrics)
          @reconciliation_errors = args[:reconciliation_errors] if args.key?(:reconciliation_errors)
          @service_config_id = args[:service_config_id] if args.key?(:service_config_id)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
    end
  end
end
