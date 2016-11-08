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
    module AppengineV1beta5
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AppengineV1beta5::Operation>]
        attr_accessor :operations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # If the value is `false`, it means the operation is still in progress. If true,
        # the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
        # use and understand for most users - Flexible enough to meet unexpected needs #
        # Overview The `Status` message contains three pieces of data: error code, error
        # message, and error details. The error code should be an enum value of google.
        # rpc.Code, but it may accept additional error codes if needed. The error
        # message should be a developer-facing English message that helps developers *
        # understand* and *resolve* the error. If a localized user-facing error message
        # is needed, put the localized message in the error details or localize it in
        # the client. The optional error details may contain arbitrary information about
        # the error. There is a predefined set of error detail types in the package `
        # google.rpc` which can be used for common error conditions. # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C. # Other uses The
        # error model and the `Status` message can be used in a variety of environments,
        # either with or without APIs, to provide a consistent developer experience
        # across different environments. Example uses of this error model include: -
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the `Status` in the normal response to indicate the partial errors. -
        # Workflow errors. A typical workflow has multiple steps. Each step may have a `
        # Status` message for error reporting purpose. - Batch operations. If a client
        # uses batch request and batch response, the `Status` message should be used
        # directly inside batch response, one for each error sub-response. -
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the `Status` message. - Logging. If some API errors are stored in logs,
        # the message `Status` could be used directly after any stripping needed for
        # security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AppengineV1beta5::Status]
        attr_accessor :error
      
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
          @name = args[:name] if args.key?(:name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
      # use and understand for most users - Flexible enough to meet unexpected needs #
      # Overview The `Status` message contains three pieces of data: error code, error
      # message, and error details. The error code should be an enum value of google.
      # rpc.Code, but it may accept additional error codes if needed. The error
      # message should be a developer-facing English message that helps developers *
      # understand* and *resolve* the error. If a localized user-facing error message
      # is needed, put the localized message in the error details or localize it in
      # the client. The optional error details may contain arbitrary information about
      # the error. There is a predefined set of error detail types in the package `
      # google.rpc` which can be used for common error conditions. # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C. # Other uses The
      # error model and the `Status` message can be used in a variety of environments,
      # either with or without APIs, to provide a consistent developer experience
      # across different environments. Example uses of this error model include: -
      # Partial errors. If a service needs to return partial errors to the client, it
      # may embed the `Status` in the normal response to indicate the partial errors. -
      # Workflow errors. A typical workflow has multiple steps. Each step may have a `
      # Status` message for error reporting purpose. - Batch operations. If a client
      # uses batch request and batch response, the `Status` message should be used
      # directly inside batch response, one for each error sub-response. -
      # Asynchronous operations. If an API call embeds asynchronous operation results
      # in its response, the status of those operations should be represented directly
      # using the `Status` message. - Logging. If some API errors are stored in logs,
      # the message `Status` could be used directly after any stripping needed for
      # security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A list of messages that carry the error details. There will be a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # An Application resource contains the top-level configuration of an App Engine
      # application.
      class Application
        include Google::Apis::Core::Hashable
      
        # Full path to the Application resource in the API. Example: `apps/myapp`. @
        # OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifier of the Application resource. This identifier is equivalent to the
        # project ID of the Google Cloud Platform project where you want to deploy your
        # application. Example: `myapp`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # HTTP path dispatch rules for requests to the application that do not
        # explicitly target a service or version. Rules are order-dependent. @OutputOnly
        # Corresponds to the JSON property `dispatchRules`
        # @return [Array<Google::Apis::AppengineV1beta5::UrlDispatchRule>]
        attr_accessor :dispatch_rules
      
        # Google Apps authentication domain that controls which users can access this
        # application. Defaults to open access for any Google Account.
        # Corresponds to the JSON property `authDomain`
        # @return [String]
        attr_accessor :auth_domain
      
        # Location from which this application will be run. Application instances will
        # run out of data centers in the chosen location, which is also where all of the
        # application's end user content is stored. Defaults to `us-central`. Options
        # are: `us-central` - Central US `europe-west` - Western Europe `us-east1` -
        # Eastern US
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A Google Cloud Storage bucket that can be used for storing files associated
        # with this application. This bucket is associated with the application and can
        # be used by the gcloud deployment commands. @OutputOnly
        # Corresponds to the JSON property `codeBucket`
        # @return [String]
        attr_accessor :code_bucket
      
        # Cookie expiration policy for this application. @OutputOnly
        # Corresponds to the JSON property `defaultCookieExpiration`
        # @return [String]
        attr_accessor :default_cookie_expiration
      
        # Hostname used to reach the application, as resolved by App Engine. @OutputOnly
        # Corresponds to the JSON property `defaultHostname`
        # @return [String]
        attr_accessor :default_hostname
      
        # A Google Cloud Storage bucket that can be used by the application to store
        # content. @OutputOnly
        # Corresponds to the JSON property `defaultBucket`
        # @return [String]
        attr_accessor :default_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @id = args[:id] if args.key?(:id)
          @dispatch_rules = args[:dispatch_rules] if args.key?(:dispatch_rules)
          @auth_domain = args[:auth_domain] if args.key?(:auth_domain)
          @location = args[:location] if args.key?(:location)
          @code_bucket = args[:code_bucket] if args.key?(:code_bucket)
          @default_cookie_expiration = args[:default_cookie_expiration] if args.key?(:default_cookie_expiration)
          @default_hostname = args[:default_hostname] if args.key?(:default_hostname)
          @default_bucket = args[:default_bucket] if args.key?(:default_bucket)
        end
      end
      
      # Rules to match an HTTP request and dispatch that request to a service.
      class UrlDispatchRule
        include Google::Apis::Core::Hashable
      
        # Domain name to match against. The wildcard "`*`" is supported if specified
        # before a period: "`*.`". Defaults to matching all domains: "`*`".
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Pathname within the host. Must start with a "`/`". A single "`*`" can be
        # included at the end of the path. The sum of the lengths of the domain and path
        # may not exceed 100 characters.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Resource id of a service in this application that should serve the matched
        # request. The service must already exist. Example: `default`.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @path = args[:path] if args.key?(:path)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A Version resource is a specific set of source code and configuration files
      # that are deployed into a service.
      class Version
        include Google::Apis::Core::Hashable
      
        # Full path to the Version resource in the API. Example: `apps/myapp/services/
        # default/versions/v1`. @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Relative name of the version within the module. Example: `v1`. Version names
        # can contain only lowercase letters, numbers, or hyphens. Reserved names: "
        # default", "latest", and any name with the prefix "ah-".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Automatic scaling is based on request rate, response latencies, and other
        # application metrics.
        # Corresponds to the JSON property `automaticScaling`
        # @return [Google::Apis::AppengineV1beta5::AutomaticScaling]
        attr_accessor :automatic_scaling
      
        # A service with basic scaling will create an instance when the application
        # receives a request. The instance will be turned down when the app becomes idle.
        # Basic scaling is ideal for work that is intermittent or driven by user
        # activity.
        # Corresponds to the JSON property `basicScaling`
        # @return [Google::Apis::AppengineV1beta5::BasicScaling]
        attr_accessor :basic_scaling
      
        # A service with manual scaling runs continuously, allowing you to perform
        # complex initialization and rely on the state of its memory over time.
        # Corresponds to the JSON property `manualScaling`
        # @return [Google::Apis::AppengineV1beta5::ManualScaling]
        attr_accessor :manual_scaling
      
        # Before an application can receive email or XMPP messages, the application must
        # be configured to enable the service.
        # Corresponds to the JSON property `inboundServices`
        # @return [Array<String>]
        attr_accessor :inbound_services
      
        # Instance class that is used to run this version. Valid values are: *
        # AutomaticScaling: `F1`, `F2`, `F4`, `F4_1G` * ManualScaling or BasicScaling: `
        # B1`, `B2`, `B4`, `B8`, `B4_1G` Defaults to `F1` for AutomaticScaling and `B1`
        # for ManualScaling or BasicScaling.
        # Corresponds to the JSON property `instanceClass`
        # @return [String]
        attr_accessor :instance_class
      
        # Extra network settings. Only applicable for VM runtimes.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::AppengineV1beta5::Network]
        attr_accessor :network
      
        # Machine resources for a version.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::AppengineV1beta5::Resources]
        attr_accessor :resources
      
        # Desired runtime. Example: `python27`.
        # Corresponds to the JSON property `runtime`
        # @return [String]
        attr_accessor :runtime
      
        # Whether multiple requests can be dispatched to this version at once.
        # Corresponds to the JSON property `threadsafe`
        # @return [Boolean]
        attr_accessor :threadsafe
        alias_method :threadsafe?, :threadsafe
      
        # Whether to deploy this version in a container on a virtual machine.
        # Corresponds to the JSON property `vm`
        # @return [Boolean]
        attr_accessor :vm
        alias_method :vm?, :vm
      
        # Metadata settings that are supplied to this version to enable beta runtime
        # features.
        # Corresponds to the JSON property `betaSettings`
        # @return [Hash<String,String>]
        attr_accessor :beta_settings
      
        # App Engine execution environment to use for this version. Defaults to `1`.
        # Corresponds to the JSON property `env`
        # @return [String]
        attr_accessor :env
      
        # Current serving status of this version. Only the versions with a `SERVING`
        # status create instances and can be billed. `SERVING_STATUS_UNSPECIFIED` is an
        # invalid value. Defaults to `SERVING`.
        # Corresponds to the JSON property `servingStatus`
        # @return [String]
        attr_accessor :serving_status
      
        # Email address of the user who created this version. @OutputOnly
        # Corresponds to the JSON property `deployer`
        # @return [String]
        attr_accessor :deployer
      
        # Time that this version was created. @OutputOnly
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Total size of version files hosted on App Engine disk in bytes. @OutputOnly
        # Corresponds to the JSON property `diskUsageBytes`
        # @return [String]
        attr_accessor :disk_usage_bytes
      
        # An ordered list of URL-matching patterns that should be applied to incoming
        # requests. The first matching URL handles the request and other request
        # handlers are not attempted. Only returned in `GET` requests if `view=FULL` is
        # set.
        # Corresponds to the JSON property `handlers`
        # @return [Array<Google::Apis::AppengineV1beta5::UrlMap>]
        attr_accessor :handlers
      
        # Custom static error pages. Limited to 10KB per page. Only returned in `GET`
        # requests if `view=FULL` is set.
        # Corresponds to the JSON property `errorHandlers`
        # @return [Array<Google::Apis::AppengineV1beta5::ErrorHandler>]
        attr_accessor :error_handlers
      
        # Configuration for third-party Python runtime libraries required by the
        # application. Only returned in `GET` requests if `view=FULL` is set.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::AppengineV1beta5::Library>]
        attr_accessor :libraries
      
        # [Google Cloud Endpoints](https://cloud.google.com/appengine/docs/python/
        # endpoints/) configuration for API handlers.
        # Corresponds to the JSON property `apiConfig`
        # @return [Google::Apis::AppengineV1beta5::ApiConfigHandler]
        attr_accessor :api_config
      
        # Environment variables made available to the application. Only returned in `GET`
        # requests if `view=FULL` is set.
        # Corresponds to the JSON property `envVariables`
        # @return [Hash<String,String>]
        attr_accessor :env_variables
      
        # Duration that static files should be cached by web proxies and browsers. Only
        # applicable if the corresponding [StaticFilesHandler](https://cloud.google.com/
        # appengine/docs/admin-api/reference/rest/v1/apps.services.versions#
        # staticfileshandler) does not specify its own expiration time. Only returned in
        # `GET` requests if `view=FULL` is set.
        # Corresponds to the JSON property `defaultExpiration`
        # @return [String]
        attr_accessor :default_expiration
      
        # Health checking configuration for VM instances. Unhealthy instances are killed
        # and replaced with new instances. Only applicable for instances in App Engine
        # flexible environment.
        # Corresponds to the JSON property `healthCheck`
        # @return [Google::Apis::AppengineV1beta5::HealthCheck]
        attr_accessor :health_check
      
        # Files that match this pattern will not be built into this version. Only
        # applicable for Go runtimes. Only returned in `GET` requests if `view=FULL` is
        # set.
        # Corresponds to the JSON property `nobuildFilesRegex`
        # @return [String]
        attr_accessor :nobuild_files_regex
      
        # Code and application artifacts used to deploy a version to App Engine.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::AppengineV1beta5::Deployment]
        attr_accessor :deployment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @id = args[:id] if args.key?(:id)
          @automatic_scaling = args[:automatic_scaling] if args.key?(:automatic_scaling)
          @basic_scaling = args[:basic_scaling] if args.key?(:basic_scaling)
          @manual_scaling = args[:manual_scaling] if args.key?(:manual_scaling)
          @inbound_services = args[:inbound_services] if args.key?(:inbound_services)
          @instance_class = args[:instance_class] if args.key?(:instance_class)
          @network = args[:network] if args.key?(:network)
          @resources = args[:resources] if args.key?(:resources)
          @runtime = args[:runtime] if args.key?(:runtime)
          @threadsafe = args[:threadsafe] if args.key?(:threadsafe)
          @vm = args[:vm] if args.key?(:vm)
          @beta_settings = args[:beta_settings] if args.key?(:beta_settings)
          @env = args[:env] if args.key?(:env)
          @serving_status = args[:serving_status] if args.key?(:serving_status)
          @deployer = args[:deployer] if args.key?(:deployer)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @disk_usage_bytes = args[:disk_usage_bytes] if args.key?(:disk_usage_bytes)
          @handlers = args[:handlers] if args.key?(:handlers)
          @error_handlers = args[:error_handlers] if args.key?(:error_handlers)
          @libraries = args[:libraries] if args.key?(:libraries)
          @api_config = args[:api_config] if args.key?(:api_config)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @default_expiration = args[:default_expiration] if args.key?(:default_expiration)
          @health_check = args[:health_check] if args.key?(:health_check)
          @nobuild_files_regex = args[:nobuild_files_regex] if args.key?(:nobuild_files_regex)
          @deployment = args[:deployment] if args.key?(:deployment)
        end
      end
      
      # Automatic scaling is based on request rate, response latencies, and other
      # application metrics.
      class AutomaticScaling
        include Google::Apis::Core::Hashable
      
        # Amount of time that the [Autoscaler](https://cloud.google.com/compute/docs/
        # autoscaler/) should wait between changes to the number of virtual machines.
        # Only applicable for VM runtimes.
        # Corresponds to the JSON property `coolDownPeriod`
        # @return [String]
        attr_accessor :cool_down_period
      
        # Target scaling by CPU usage.
        # Corresponds to the JSON property `cpuUtilization`
        # @return [Google::Apis::AppengineV1beta5::CpuUtilization]
        attr_accessor :cpu_utilization
      
        # Number of concurrent requests an automatic scaling instance can accept before
        # the scheduler spawns a new instance. Defaults to a runtime-specific value.
        # Corresponds to the JSON property `maxConcurrentRequests`
        # @return [Fixnum]
        attr_accessor :max_concurrent_requests
      
        # Maximum number of idle instances that should be maintained for this version.
        # Corresponds to the JSON property `maxIdleInstances`
        # @return [Fixnum]
        attr_accessor :max_idle_instances
      
        # Maximum number of instances that should be started to handle requests.
        # Corresponds to the JSON property `maxTotalInstances`
        # @return [Fixnum]
        attr_accessor :max_total_instances
      
        # Maximum amount of time that a request should wait in the pending queue before
        # starting a new instance to handle it.
        # Corresponds to the JSON property `maxPendingLatency`
        # @return [String]
        attr_accessor :max_pending_latency
      
        # Minimum number of idle instances that should be maintained for this version.
        # Only applicable for the default version of a module.
        # Corresponds to the JSON property `minIdleInstances`
        # @return [Fixnum]
        attr_accessor :min_idle_instances
      
        # Minimum number of instances that should be maintained for this version.
        # Corresponds to the JSON property `minTotalInstances`
        # @return [Fixnum]
        attr_accessor :min_total_instances
      
        # Minimum amount of time a request should wait in the pending queue before
        # starting a new instance to handle it.
        # Corresponds to the JSON property `minPendingLatency`
        # @return [String]
        attr_accessor :min_pending_latency
      
        # Target scaling by request utilization. Only applicable for VM runtimes.
        # Corresponds to the JSON property `requestUtilization`
        # @return [Google::Apis::AppengineV1beta5::RequestUtilization]
        attr_accessor :request_utilization
      
        # Target scaling by disk usage. Only applicable for VM runtimes.
        # Corresponds to the JSON property `diskUtilization`
        # @return [Google::Apis::AppengineV1beta5::DiskUtilization]
        attr_accessor :disk_utilization
      
        # Target scaling by network usage. Only applicable for VM runtimes.
        # Corresponds to the JSON property `networkUtilization`
        # @return [Google::Apis::AppengineV1beta5::NetworkUtilization]
        attr_accessor :network_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cool_down_period = args[:cool_down_period] if args.key?(:cool_down_period)
          @cpu_utilization = args[:cpu_utilization] if args.key?(:cpu_utilization)
          @max_concurrent_requests = args[:max_concurrent_requests] if args.key?(:max_concurrent_requests)
          @max_idle_instances = args[:max_idle_instances] if args.key?(:max_idle_instances)
          @max_total_instances = args[:max_total_instances] if args.key?(:max_total_instances)
          @max_pending_latency = args[:max_pending_latency] if args.key?(:max_pending_latency)
          @min_idle_instances = args[:min_idle_instances] if args.key?(:min_idle_instances)
          @min_total_instances = args[:min_total_instances] if args.key?(:min_total_instances)
          @min_pending_latency = args[:min_pending_latency] if args.key?(:min_pending_latency)
          @request_utilization = args[:request_utilization] if args.key?(:request_utilization)
          @disk_utilization = args[:disk_utilization] if args.key?(:disk_utilization)
          @network_utilization = args[:network_utilization] if args.key?(:network_utilization)
        end
      end
      
      # Target scaling by CPU usage.
      class CpuUtilization
        include Google::Apis::Core::Hashable
      
        # Period of time over which CPU utilization is calculated.
        # Corresponds to the JSON property `aggregationWindowLength`
        # @return [String]
        attr_accessor :aggregation_window_length
      
        # Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
        # Corresponds to the JSON property `targetUtilization`
        # @return [Float]
        attr_accessor :target_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_window_length = args[:aggregation_window_length] if args.key?(:aggregation_window_length)
          @target_utilization = args[:target_utilization] if args.key?(:target_utilization)
        end
      end
      
      # Target scaling by request utilization. Only applicable for VM runtimes.
      class RequestUtilization
        include Google::Apis::Core::Hashable
      
        # Target requests per second.
        # Corresponds to the JSON property `targetRequestCountPerSec`
        # @return [Fixnum]
        attr_accessor :target_request_count_per_sec
      
        # Target number of concurrent requests.
        # Corresponds to the JSON property `targetConcurrentRequests`
        # @return [Fixnum]
        attr_accessor :target_concurrent_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_request_count_per_sec = args[:target_request_count_per_sec] if args.key?(:target_request_count_per_sec)
          @target_concurrent_requests = args[:target_concurrent_requests] if args.key?(:target_concurrent_requests)
        end
      end
      
      # Target scaling by disk usage. Only applicable for VM runtimes.
      class DiskUtilization
        include Google::Apis::Core::Hashable
      
        # Target bytes written per second.
        # Corresponds to the JSON property `targetWriteBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_write_bytes_per_sec
      
        # Target ops written per second.
        # Corresponds to the JSON property `targetWriteOpsPerSec`
        # @return [Fixnum]
        attr_accessor :target_write_ops_per_sec
      
        # Target bytes read per second.
        # Corresponds to the JSON property `targetReadBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_read_bytes_per_sec
      
        # Target ops read per second.
        # Corresponds to the JSON property `targetReadOpsPerSec`
        # @return [Fixnum]
        attr_accessor :target_read_ops_per_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_write_bytes_per_sec = args[:target_write_bytes_per_sec] if args.key?(:target_write_bytes_per_sec)
          @target_write_ops_per_sec = args[:target_write_ops_per_sec] if args.key?(:target_write_ops_per_sec)
          @target_read_bytes_per_sec = args[:target_read_bytes_per_sec] if args.key?(:target_read_bytes_per_sec)
          @target_read_ops_per_sec = args[:target_read_ops_per_sec] if args.key?(:target_read_ops_per_sec)
        end
      end
      
      # Target scaling by network usage. Only applicable for VM runtimes.
      class NetworkUtilization
        include Google::Apis::Core::Hashable
      
        # Target bytes sent per second.
        # Corresponds to the JSON property `targetSentBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_sent_bytes_per_sec
      
        # Target packets sent per second.
        # Corresponds to the JSON property `targetSentPacketsPerSec`
        # @return [Fixnum]
        attr_accessor :target_sent_packets_per_sec
      
        # Target bytes received per second.
        # Corresponds to the JSON property `targetReceivedBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_received_bytes_per_sec
      
        # Target packets received per second.
        # Corresponds to the JSON property `targetReceivedPacketsPerSec`
        # @return [Fixnum]
        attr_accessor :target_received_packets_per_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_sent_bytes_per_sec = args[:target_sent_bytes_per_sec] if args.key?(:target_sent_bytes_per_sec)
          @target_sent_packets_per_sec = args[:target_sent_packets_per_sec] if args.key?(:target_sent_packets_per_sec)
          @target_received_bytes_per_sec = args[:target_received_bytes_per_sec] if args.key?(:target_received_bytes_per_sec)
          @target_received_packets_per_sec = args[:target_received_packets_per_sec] if args.key?(:target_received_packets_per_sec)
        end
      end
      
      # A service with basic scaling will create an instance when the application
      # receives a request. The instance will be turned down when the app becomes idle.
      # Basic scaling is ideal for work that is intermittent or driven by user
      # activity.
      class BasicScaling
        include Google::Apis::Core::Hashable
      
        # Duration of time after the last request that an instance must wait before the
        # instance is shut down.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # Maximum number of instances to create for this version.
        # Corresponds to the JSON property `maxInstances`
        # @return [Fixnum]
        attr_accessor :max_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idle_timeout = args[:idle_timeout] if args.key?(:idle_timeout)
          @max_instances = args[:max_instances] if args.key?(:max_instances)
        end
      end
      
      # A service with manual scaling runs continuously, allowing you to perform
      # complex initialization and rely on the state of its memory over time.
      class ManualScaling
        include Google::Apis::Core::Hashable
      
        # Number of instances to assign to the service at the start. This number can
        # later be altered by using the [Modules API](https://cloud.google.com/appengine/
        # docs/python/modules/functions) `set_num_instances()` function.
        # Corresponds to the JSON property `instances`
        # @return [Fixnum]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # Extra network settings. Only applicable for VM runtimes.
      class Network
        include Google::Apis::Core::Hashable
      
        # List of ports, or port pairs, to forward from the virtual machine to the
        # application container.
        # Corresponds to the JSON property `forwardedPorts`
        # @return [Array<String>]
        attr_accessor :forwarded_ports
      
        # Tag to apply to the VM instance during creation.
        # Corresponds to the JSON property `instanceTag`
        # @return [String]
        attr_accessor :instance_tag
      
        # Google Cloud Platform network where the virtual machines are created. Specify
        # the short name, not the resource path. Defaults to `default`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarded_ports = args[:forwarded_ports] if args.key?(:forwarded_ports)
          @instance_tag = args[:instance_tag] if args.key?(:instance_tag)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Machine resources for a version.
      class Resources
        include Google::Apis::Core::Hashable
      
        # Number of CPU cores needed.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # Disk size (GB) needed.
        # Corresponds to the JSON property `diskGb`
        # @return [Float]
        attr_accessor :disk_gb
      
        # Memory (GB) needed.
        # Corresponds to the JSON property `memoryGb`
        # @return [Float]
        attr_accessor :memory_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @disk_gb = args[:disk_gb] if args.key?(:disk_gb)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
        end
      end
      
      # URL pattern and description of how the URL should be handled. App Engine can
      # handle URLs by executing application code, or by serving static files uploaded
      # with the version, such as images, CSS, or JavaScript.
      class UrlMap
        include Google::Apis::Core::Hashable
      
        # A URL prefix. Uses regular expression syntax, which means regexp special
        # characters must be escaped, but should not contain groupings. All URLs that
        # begin with this prefix are handled by this handler, using the portion of the
        # URL after the prefix as part of the file path.
        # Corresponds to the JSON property `urlRegex`
        # @return [String]
        attr_accessor :url_regex
      
        # Files served directly to the user for a given URL, such as images, CSS
        # stylesheets, or JavaScript source files. Static file handlers describe which
        # files in the application directory are static files, and which URLs serve them.
        # Corresponds to the JSON property `staticFiles`
        # @return [Google::Apis::AppengineV1beta5::StaticFilesHandler]
        attr_accessor :static_files
      
        # Executes a script to handle the request that matches the URL pattern.
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::AppengineV1beta5::ScriptHandler]
        attr_accessor :script
      
        # Uses Google Cloud Endpoints to handle requests.
        # Corresponds to the JSON property `apiEndpoint`
        # @return [Google::Apis::AppengineV1beta5::ApiEndpointHandler]
        attr_accessor :api_endpoint
      
        # Security (HTTPS) enforcement for this URL.
        # Corresponds to the JSON property `securityLevel`
        # @return [String]
        attr_accessor :security_level
      
        # Level of login required to access this resource.
        # Corresponds to the JSON property `login`
        # @return [String]
        attr_accessor :login
      
        # Action to take when users access resources that require authentication.
        # Defaults to `redirect`.
        # Corresponds to the JSON property `authFailAction`
        # @return [String]
        attr_accessor :auth_fail_action
      
        # `30x` code to use when performing redirects for the `secure` field. Defaults
        # to `302`.
        # Corresponds to the JSON property `redirectHttpResponseCode`
        # @return [String]
        attr_accessor :redirect_http_response_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_regex = args[:url_regex] if args.key?(:url_regex)
          @static_files = args[:static_files] if args.key?(:static_files)
          @script = args[:script] if args.key?(:script)
          @api_endpoint = args[:api_endpoint] if args.key?(:api_endpoint)
          @security_level = args[:security_level] if args.key?(:security_level)
          @login = args[:login] if args.key?(:login)
          @auth_fail_action = args[:auth_fail_action] if args.key?(:auth_fail_action)
          @redirect_http_response_code = args[:redirect_http_response_code] if args.key?(:redirect_http_response_code)
        end
      end
      
      # Files served directly to the user for a given URL, such as images, CSS
      # stylesheets, or JavaScript source files. Static file handlers describe which
      # files in the application directory are static files, and which URLs serve them.
      class StaticFilesHandler
        include Google::Apis::Core::Hashable
      
        # Path to the static files matched by the URL pattern, from the application root
        # directory. The path can refer to text matched in groupings in the URL pattern.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Regular expression that matches the file paths for all files that should be
        # referenced by this handler.
        # Corresponds to the JSON property `uploadPathRegex`
        # @return [String]
        attr_accessor :upload_path_regex
      
        # HTTP headers to use for all responses from these URLs.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Hash<String,String>]
        attr_accessor :http_headers
      
        # MIME type used to serve all files served by this handler. Defaults to file-
        # specific MIME types, which are derived from each file's filename extension.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Time a static file served by this handler should be cached.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # Whether this handler should match the request if the file referenced by the
        # handler does not exist.
        # Corresponds to the JSON property `requireMatchingFile`
        # @return [Boolean]
        attr_accessor :require_matching_file
        alias_method :require_matching_file?, :require_matching_file
      
        # Whether files should also be uploaded as code data. By default, files declared
        # in static file handlers are uploaded as static data and are only served to end
        # users; they cannot be read by the application. If enabled, uploads are charged
        # against both your code and static data storage resource quotas.
        # Corresponds to the JSON property `applicationReadable`
        # @return [Boolean]
        attr_accessor :application_readable
        alias_method :application_readable?, :application_readable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @upload_path_regex = args[:upload_path_regex] if args.key?(:upload_path_regex)
          @http_headers = args[:http_headers] if args.key?(:http_headers)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @expiration = args[:expiration] if args.key?(:expiration)
          @require_matching_file = args[:require_matching_file] if args.key?(:require_matching_file)
          @application_readable = args[:application_readable] if args.key?(:application_readable)
        end
      end
      
      # Executes a script to handle the request that matches the URL pattern.
      class ScriptHandler
        include Google::Apis::Core::Hashable
      
        # Path to the script from the application root directory.
        # Corresponds to the JSON property `scriptPath`
        # @return [String]
        attr_accessor :script_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_path = args[:script_path] if args.key?(:script_path)
        end
      end
      
      # Uses Google Cloud Endpoints to handle requests.
      class ApiEndpointHandler
        include Google::Apis::Core::Hashable
      
        # Path to the script from the application root directory.
        # Corresponds to the JSON property `scriptPath`
        # @return [String]
        attr_accessor :script_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_path = args[:script_path] if args.key?(:script_path)
        end
      end
      
      # Custom static error page to be served when an error occurs.
      class ErrorHandler
        include Google::Apis::Core::Hashable
      
        # Error condition this handler applies to.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Static file content to be served for this error.
        # Corresponds to the JSON property `staticFile`
        # @return [String]
        attr_accessor :static_file
      
        # MIME type of file. Defaults to `text/html`.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @static_file = args[:static_file] if args.key?(:static_file)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Third-party Python runtime library that is required by the application.
      class Library
        include Google::Apis::Core::Hashable
      
        # Name of the library. Example: "django".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Version of the library to select, or "latest".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # [Google Cloud Endpoints](https://cloud.google.com/appengine/docs/python/
      # endpoints/) configuration for API handlers.
      class ApiConfigHandler
        include Google::Apis::Core::Hashable
      
        # Action to take when users access resources that require authentication.
        # Defaults to `redirect`.
        # Corresponds to the JSON property `authFailAction`
        # @return [String]
        attr_accessor :auth_fail_action
      
        # Level of login required to access this resource. Defaults to `optional`.
        # Corresponds to the JSON property `login`
        # @return [String]
        attr_accessor :login
      
        # Path to the script from the application root directory.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # Security (HTTPS) enforcement for this URL.
        # Corresponds to the JSON property `securityLevel`
        # @return [String]
        attr_accessor :security_level
      
        # URL to serve the endpoint at.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_fail_action = args[:auth_fail_action] if args.key?(:auth_fail_action)
          @login = args[:login] if args.key?(:login)
          @script = args[:script] if args.key?(:script)
          @security_level = args[:security_level] if args.key?(:security_level)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Health checking configuration for VM instances. Unhealthy instances are killed
      # and replaced with new instances. Only applicable for instances in App Engine
      # flexible environment.
      class HealthCheck
        include Google::Apis::Core::Hashable
      
        # Whether to explicitly disable health checks for this instance.
        # Corresponds to the JSON property `disableHealthCheck`
        # @return [Boolean]
        attr_accessor :disable_health_check
        alias_method :disable_health_check?, :disable_health_check
      
        # Host header to send when performing an HTTP health check. Example: "myapp.
        # appspot.com"
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Number of consecutive successful health checks required before receiving
        # traffic.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # Number of consecutive failed health checks required before removing traffic.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        # Number of consecutive failed health checks required before an instance is
        # restarted.
        # Corresponds to the JSON property `restartThreshold`
        # @return [Fixnum]
        attr_accessor :restart_threshold
      
        # Interval between health checks.
        # Corresponds to the JSON property `checkInterval`
        # @return [String]
        attr_accessor :check_interval
      
        # Time before the health check is considered failed.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_health_check = args[:disable_health_check] if args.key?(:disable_health_check)
          @host = args[:host] if args.key?(:host)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
          @restart_threshold = args[:restart_threshold] if args.key?(:restart_threshold)
          @check_interval = args[:check_interval] if args.key?(:check_interval)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Code and application artifacts used to deploy a version to App Engine.
      class Deployment
        include Google::Apis::Core::Hashable
      
        # Manifest of the files stored in Google Cloud Storage that are included as part
        # of this version. All files must be readable using the credentials supplied
        # with this call.
        # Corresponds to the JSON property `files`
        # @return [Hash<String,Google::Apis::AppengineV1beta5::FileInfo>]
        attr_accessor :files
      
        # Docker image that is used to start a VM container for the version you deploy.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::AppengineV1beta5::ContainerInfo]
        attr_accessor :container
      
        # Origin of the source code for this deployment. There can be more than one
        # source reference per version if source code is distributed among multiple
        # repositories.
        # Corresponds to the JSON property `sourceReferences`
        # @return [Array<Google::Apis::AppengineV1beta5::SourceReference>]
        attr_accessor :source_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
          @container = args[:container] if args.key?(:container)
          @source_references = args[:source_references] if args.key?(:source_references)
        end
      end
      
      # Single source file that is part of the version to be deployed. Each source
      # file that is deployed must be specified separately.
      class FileInfo
        include Google::Apis::Core::Hashable
      
        # URL source to use to fetch this file. Must be a URL to a resource in Google
        # Cloud Storage in the form 'http(s)://storage.googleapis.com/\/\'.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        # The SHA1 hash of the file, in hex.
        # Corresponds to the JSON property `sha1Sum`
        # @return [String]
        attr_accessor :sha1_sum
      
        # The MIME type of the file. Defaults to the value from Google Cloud Storage.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_url = args[:source_url] if args.key?(:source_url)
          @sha1_sum = args[:sha1_sum] if args.key?(:sha1_sum)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Docker image that is used to start a VM container for the version you deploy.
      class ContainerInfo
        include Google::Apis::Core::Hashable
      
        # URI to the hosted container image in a Docker repository. The URI must be
        # fully qualified and include a tag or digest. Examples: "gcr.io/my-project/
        # image:tag" or "gcr.io/my-project/image@digest"
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # Reference to a particular snapshot of the source tree used to build and deploy
      # the application.
      class SourceReference
        include Google::Apis::Core::Hashable
      
        # URI string identifying the repository. Example: "https://source.developers.
        # google.com/p/app-123/r/default"
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # The canonical, persistent identifier of the deployed revision. Aliases that
        # include tags or branch names are not allowed. Example (git): "
        # 2198322f89e0bb2e25021667c2ed489d1fd34e6b"
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] if args.key?(:repository)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Response message for `Versions.ListVersions`.
      class ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The versions belonging to the requested service.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::AppengineV1beta5::Version>]
        attr_accessor :versions
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @versions = args[:versions] if args.key?(:versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A Service resource is a logical component of an application that can share
      # state and communicate in a secure fashion with other services. For example, an
      # application that handles customer requests might include separate services to
      # handle other tasks such as API requests from mobile devices or backend data
      # analysis. Each service has a collection of versions that define a specific set
      # of code used to implement the functionality of that service.
      class Service
        include Google::Apis::Core::Hashable
      
        # Full path to the Service resource in the API. Example: `apps/myapp/services/
        # default`. @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Relative name of the service within the application. Example: `default`. @
        # OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Traffic routing configuration for versions within a single service. Traffic
        # splits define how traffic directed to the service is assigned to versions.
        # Corresponds to the JSON property `split`
        # @return [Google::Apis::AppengineV1beta5::TrafficSplit]
        attr_accessor :split
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @id = args[:id] if args.key?(:id)
          @split = args[:split] if args.key?(:split)
        end
      end
      
      # Traffic routing configuration for versions within a single service. Traffic
      # splits define how traffic directed to the service is assigned to versions.
      class TrafficSplit
        include Google::Apis::Core::Hashable
      
        # Mechanism used to determine which version a request is sent to. The traffic
        # selection algorithm will be stable for either type until allocations are
        # changed.
        # Corresponds to the JSON property `shardBy`
        # @return [String]
        attr_accessor :shard_by
      
        # Mapping from version IDs within the service to fractional (0.000, 1]
        # allocations of traffic for that version. Each version can be specified only
        # once, but some versions in the service may not have any traffic allocation.
        # Services that have traffic allocated cannot be deleted until either the
        # service is deleted or their traffic allocation is removed. Allocations must
        # sum to 1. Up to two decimal place precision is supported for IP-based splits
        # and up to three decimal places is supported for cookie-based splits.
        # Corresponds to the JSON property `allocations`
        # @return [Hash<String,Float>]
        attr_accessor :allocations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_by = args[:shard_by] if args.key?(:shard_by)
          @allocations = args[:allocations] if args.key?(:allocations)
        end
      end
      
      # Response message for `Services.ListServices`.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # The services belonging to the requested application.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::AppengineV1beta5::Service>]
        attr_accessor :services
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @services = args[:services] if args.key?(:services)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An Instance resource is the computing unit that App Engine uses to
      # automatically scale an application.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Full path to the Instance resource in the API. Example: `apps/myapp/services/
        # default/versions/v1/instances/instance-1`. @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Relative name of the instance within the version. Example: `instance-1`. @
        # OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # App Engine release this instance is running on. @OutputOnly
        # Corresponds to the JSON property `appEngineRelease`
        # @return [String]
        attr_accessor :app_engine_release
      
        # Availability of the instance. @OutputOnly
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Name of the virtual machine where this instance lives. Only applicable for
        # instances in App Engine flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # Zone where the virtual machine is located. Only applicable for instances in
        # App Engine flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmZoneName`
        # @return [String]
        attr_accessor :vm_zone_name
      
        # Virtual machine ID of this instance. Only applicable for instances in App
        # Engine flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmId`
        # @return [String]
        attr_accessor :vm_id
      
        # Time that this instance was started. @OutputOnly
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        # Number of requests since this instance was started. @OutputOnly
        # Corresponds to the JSON property `requests`
        # @return [Fixnum]
        attr_accessor :requests
      
        # Number of errors since this instance was started. @OutputOnly
        # Corresponds to the JSON property `errors`
        # @return [Fixnum]
        attr_accessor :errors
      
        # Average queries per second (QPS) over the last minute. @OutputOnly
        # Corresponds to the JSON property `qps`
        # @return [Float]
        attr_accessor :qps
      
        # Average latency (ms) over the last minute. @OutputOnly
        # Corresponds to the JSON property `averageLatency`
        # @return [Fixnum]
        attr_accessor :average_latency
      
        # Total memory in use (bytes). @OutputOnly
        # Corresponds to the JSON property `memoryUsage`
        # @return [String]
        attr_accessor :memory_usage
      
        # Status of the virtual machine where this instance lives. Only applicable for
        # instances in App Engine flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmStatus`
        # @return [String]
        attr_accessor :vm_status
      
        # Whether this instance is in debug mode. Only applicable for instances in App
        # Engine flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmUnlocked`
        # @return [Boolean]
        attr_accessor :vm_unlocked
        alias_method :vm_unlocked?, :vm_unlocked
      
        # The IP address of this instance. Only applicable for instances in App Engine
        # flexible environment. @OutputOnly
        # Corresponds to the JSON property `vmIp`
        # @return [String]
        attr_accessor :vm_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @id = args[:id] if args.key?(:id)
          @app_engine_release = args[:app_engine_release] if args.key?(:app_engine_release)
          @availability = args[:availability] if args.key?(:availability)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @vm_zone_name = args[:vm_zone_name] if args.key?(:vm_zone_name)
          @vm_id = args[:vm_id] if args.key?(:vm_id)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @requests = args[:requests] if args.key?(:requests)
          @errors = args[:errors] if args.key?(:errors)
          @qps = args[:qps] if args.key?(:qps)
          @average_latency = args[:average_latency] if args.key?(:average_latency)
          @memory_usage = args[:memory_usage] if args.key?(:memory_usage)
          @vm_status = args[:vm_status] if args.key?(:vm_status)
          @vm_unlocked = args[:vm_unlocked] if args.key?(:vm_unlocked)
          @vm_ip = args[:vm_ip] if args.key?(:vm_ip)
        end
      end
      
      # Response message for `Instances.ListInstances`.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The instances belonging to the requested version.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::AppengineV1beta5::Instance>]
        attr_accessor :instances
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for `Instances.DebugInstance`.
      class DebugInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Public SSH key to add to the instance. Example: `[USERNAME]:ssh-rsa KEY_VALUE`
        # or `[USERNAME]:ssh-rsa [KEY_VALUE] google-ssh `"userName":"[USERNAME]","
        # expireOn":"[EXPIRE_TIME]"`` For more information, see [Adding and Removing SSH
        # Keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys)
        # Corresponds to the JSON property `sshKey`
        # @return [String]
        attr_accessor :ssh_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssh_key = args[:ssh_key] if args.key?(:ssh_key)
        end
      end
      
      # The response message for LocationService.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::AppengineV1beta5::Location>]
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
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @location_id = args[:location_id] if args.key?(:location_id)
          @labels = args[:labels] if args.key?(:labels)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataExperimental
        include Google::Apis::Core::Hashable
      
        # API method that initiated this operation. Example: `google.appengine.
        # experimental.CustomDomains.CreateCustomDomain`. @OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Time that this operation was created. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Time that this operation completed. @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # User who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Name of the resource that this operation is acting on. Example: `apps/myapp/
        # customDomains/example.com`. @OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @user = args[:user] if args.key?(:user)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Type of this operation. Deprecated, use method field instead. Example: "
        # create_version". @OutputOnly
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Timestamp that this operation was created. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Timestamp that this operation completed. @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # User who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Name of the resource that this operation is acting on. Example: `apps/myapp/
        # modules/default`. @OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # API method that initiated this operation. Example: `google.appengine.v1beta4.
        # Version.CreateVersion`. @OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @user = args[:user] if args.key?(:user)
          @target = args[:target] if args.key?(:target)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataV1Beta5
        include Google::Apis::Core::Hashable
      
        # API method name that initiated this operation. Example: `google.appengine.
        # v1beta5.Version.CreateVersion`. @OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Timestamp that this operation was created. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Timestamp that this operation completed. @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # User who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Name of the resource that this operation is acting on. Example: `apps/myapp/
        # services/default`. @OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @user = args[:user] if args.key?(:user)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadataV1
        include Google::Apis::Core::Hashable
      
        # API method that initiated this operation. Example: `google.appengine.v1.
        # Versions.CreateVersion`. @OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Time that this operation was created. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Time that this operation completed. @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # User who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Name of the resource that this operation is acting on. Example: `apps/myapp/
        # services/default`. @OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @user = args[:user] if args.key?(:user)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Metadata for the given google.cloud.location.Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # App Engine Standard Environment is available in the given location. @
        # OutputOnly
        # Corresponds to the JSON property `standardEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :standard_environment_available
        alias_method :standard_environment_available?, :standard_environment_available
      
        # App Engine Flexible Environment is available in the given location. @
        # OutputOnly
        # Corresponds to the JSON property `flexibleEnvironmentAvailable`
        # @return [Boolean]
        attr_accessor :flexible_environment_available
        alias_method :flexible_environment_available?, :flexible_environment_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard_environment_available = args[:standard_environment_available] if args.key?(:standard_environment_available)
          @flexible_environment_available = args[:flexible_environment_available] if args.key?(:flexible_environment_available)
        end
      end
    end
  end
end
