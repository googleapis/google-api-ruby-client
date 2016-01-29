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
    module AppengineV1beta4
      
      # An Application contains the top-level configuration of an App Engine
      # application.
      class Application
        include Google::Apis::Core::Hashable
      
        # The full path to the application in the API. Example: "apps/myapp". @
        # OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative name/path of the application. Example: "myapp". @OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # HTTP path dispatch rules for requests to the app that do not explicitly target
        # a module or version. The rules are order-dependent.
        # Corresponds to the JSON property `dispatchRules`
        # @return [Array<Google::Apis::AppengineV1beta4::UrlDispatchRule>]
        attr_accessor :dispatch_rules
      
        # The location from which the application will be run. Choices are "us-central"
        # for United States and "europe-west" for European Union. Application instances
        # will run out of data centers in the chosen location and all of the application'
        # s End User Content will be stored at rest in the chosen location. The default
        # is "us-central".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A Google Cloud Storage bucket which can be used for storing files associated
        # with an application. This bucket is associated with the application and can be
        # used by the gcloud deployment commands. @OutputOnly
        # Corresponds to the JSON property `codeBucket`
        # @return [String]
        attr_accessor :code_bucket
      
        # A Google Cloud Storage bucket which can be used by the application to store
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
          @location = args[:location] if args.key?(:location)
          @code_bucket = args[:code_bucket] if args.key?(:code_bucket)
          @default_bucket = args[:default_bucket] if args.key?(:default_bucket)
        end
      end
      
      # Rules to match an HTTP request and dispatch that request to a module.
      class UrlDispatchRule
        include Google::Apis::Core::Hashable
      
        # The domain name to match on. Supports '*' (glob) wildcarding on the left-hand
        # side of a '.'. If empty, all domains will be matched (the same as '*').
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The pathname within the host. This must start with a '/'. A single '*' (glob)
        # can be included at the end of the path. The sum of the lengths of the domain
        # and path may not exceed 100 characters.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The resource id of a Module in this application that should service the
        # matched request. The Module must already exist. Example: "default".
        # Corresponds to the JSON property `module`
        # @return [String]
        attr_accessor :module
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @path = args[:path] if args.key?(:path)
          @module = args[:module] if args.key?(:module)
        end
      end
      
      # A Version is a specific set of source code and configuration files deployed to
      # a module.
      class Version
        include Google::Apis::Core::Hashable
      
        # The full path to the Version resource in the API. Example: "apps/myapp/modules/
        # default/versions/v1". @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative name/path of the Version within the module. Example: "v1".
        # Version specifiers can contain lowercase letters, digits, and hyphens. It
        # cannot begin with the prefix `ah-` and the names `default` and `latest` are
        # reserved and cannot be used.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Automatic scaling is the scaling policy that App Engine has used since its
        # inception. It is based on request rate, response latencies, and other
        # application metrics.
        # Corresponds to the JSON property `automaticScaling`
        # @return [Google::Apis::AppengineV1beta4::AutomaticScaling]
        attr_accessor :automatic_scaling
      
        # A module with basic scaling will create an instance when the application
        # receives a request. The instance will be turned down when the app becomes idle.
        # Basic scaling is ideal for work that is intermittent or driven by user
        # activity.
        # Corresponds to the JSON property `basicScaling`
        # @return [Google::Apis::AppengineV1beta4::BasicScaling]
        attr_accessor :basic_scaling
      
        # A module with manual scaling runs continuously, allowing you to perform
        # complex initialization and rely on the state of its memory over time.
        # Corresponds to the JSON property `manualScaling`
        # @return [Google::Apis::AppengineV1beta4::ManualScaling]
        attr_accessor :manual_scaling
      
        # Before an application can receive email or XMPP messages, the application must
        # be configured to enable the service.
        # Corresponds to the JSON property `inboundServices`
        # @return [Array<String>]
        attr_accessor :inbound_services
      
        # The frontend instance class to use to run this app. Valid values are `[F1, F2,
        # F4, F4_1G]`. Default: "F1"
        # Corresponds to the JSON property `instanceClass`
        # @return [String]
        attr_accessor :instance_class
      
        # Used to specify extra network settings (for VM runtimes only).
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::AppengineV1beta4::Network]
        attr_accessor :network
      
        # Used to specify how many machine resources an app version needs.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::AppengineV1beta4::Resources]
        attr_accessor :resources
      
        # The desired runtime. Values can include python27, java7, go, etc.
        # Corresponds to the JSON property `runtime`
        # @return [String]
        attr_accessor :runtime
      
        # If true, multiple requests can be dispatched to the app at once.
        # Corresponds to the JSON property `threadsafe`
        # @return [Boolean]
        attr_accessor :threadsafe
        alias_method :threadsafe?, :threadsafe
      
        # Whether to deploy this app in a VM container.
        # Corresponds to the JSON property `vm`
        # @return [Boolean]
        attr_accessor :vm
        alias_method :vm?, :vm
      
        # Beta settings supplied to the application via metadata.
        # Corresponds to the JSON property `betaSettings`
        # @return [Hash<String,String>]
        attr_accessor :beta_settings
      
        # The App Engine execution environment to use for this version. Default: "1"
        # Corresponds to the JSON property `env`
        # @return [String]
        attr_accessor :env
      
        # The current serving status of this version. Only `SERVING` versions will have
        # instances created or billed for. If this field is unset when a version is
        # created, `SERVING` status will be assumed. It is an error to explicitly set
        # this field to `SERVING_STATUS_UNSPECIFIED`.
        # Corresponds to the JSON property `servingStatus`
        # @return [String]
        attr_accessor :serving_status
      
        # The email address of the user who created this version. @OutputOnly
        # Corresponds to the JSON property `deployer`
        # @return [String]
        attr_accessor :deployer
      
        # Creation time of this version. This will be between the start and end times of
        # the operation that creates this version. @OutputOnly
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # An ordered list of URL Matching patterns that should be applied to incoming
        # requests. The first matching URL consumes the request, and subsequent handlers
        # are not attempted. Only returned in `GET` requests if `view=FULL` is set. May
        # only be set on create requests; once created, is immutable.
        # Corresponds to the JSON property `handlers`
        # @return [Array<Google::Apis::AppengineV1beta4::UrlMap>]
        attr_accessor :handlers
      
        # Custom static error pages instead of these generic error pages, (limit 10 KB/
        # page) Only returned in `GET` requests if `view=FULL` is set. May only be set
        # on create requests; once created, is immutable.
        # Corresponds to the JSON property `errorHandlers`
        # @return [Array<Google::Apis::AppengineV1beta4::ErrorHandler>]
        attr_accessor :error_handlers
      
        # Configuration for Python runtime third-party libraries required by the
        # application. Only returned in `GET` requests if `view=FULL` is set. May only
        # be set on create requests; once created, is immutable.
        # Corresponds to the JSON property `libraries`
        # @return [Array<Google::Apis::AppengineV1beta4::Library>]
        attr_accessor :libraries
      
        # API Serving configuration for Cloud Endpoints.
        # Corresponds to the JSON property `apiConfig`
        # @return [Google::Apis::AppengineV1beta4::ApiConfigHandler]
        attr_accessor :api_config
      
        # Environment variables made available to the application. Only returned in `GET`
        # requests if `view=FULL` is set. May only be set on create requests; once
        # created, is immutable.
        # Corresponds to the JSON property `envVariables`
        # @return [Hash<String,String>]
        attr_accessor :env_variables
      
        # The length of time a static file served by a static file handler ought to be
        # cached by web proxies and browsers, if the handler does not specify its own
        # expiration. Only returned in `GET` requests if `view=FULL` is set. May only be
        # set on create requests; once created, is immutable.
        # Corresponds to the JSON property `defaultExpiration`
        # @return [String]
        attr_accessor :default_expiration
      
        # Configure health checking for the VM instances. Unhealthy VM instances will be
        # killed and replaced with new instances.
        # Corresponds to the JSON property `healthCheck`
        # @return [Google::Apis::AppengineV1beta4::HealthCheck]
        attr_accessor :health_check
      
        # Go only. Files that match this pattern will not be built into the app. May
        # only be set on create requests.
        # Corresponds to the JSON property `nobuildFilesRegex`
        # @return [String]
        attr_accessor :nobuild_files_regex
      
        # Code and application artifacts used to deploy a version to App Engine.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::AppengineV1beta4::Deployment]
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
      
      # Automatic scaling is the scaling policy that App Engine has used since its
      # inception. It is based on request rate, response latencies, and other
      # application metrics.
      class AutomaticScaling
        include Google::Apis::Core::Hashable
      
        # The amount of time that the [Autoscaler](https://cloud.google.com/compute/docs/
        # autoscaler/) should wait between changes to the number of virtual machines.
        # Applies only to the VM runtime.
        # Corresponds to the JSON property `coolDownPeriod`
        # @return [String]
        attr_accessor :cool_down_period
      
        # Target scaling by CPU usage.
        # Corresponds to the JSON property `cpuUtilization`
        # @return [Google::Apis::AppengineV1beta4::CpuUtilization]
        attr_accessor :cpu_utilization
      
        # The number of concurrent requests an automatic scaling instance can accept
        # before the scheduler spawns a new instance. Default value is chosen based on
        # the runtime.
        # Corresponds to the JSON property `maxConcurrentRequests`
        # @return [Fixnum]
        attr_accessor :max_concurrent_requests
      
        # The maximum number of idle instances that App Engine should maintain for this
        # version.
        # Corresponds to the JSON property `maxIdleInstances`
        # @return [Fixnum]
        attr_accessor :max_idle_instances
      
        # Max number of instances that App Engine should start to handle requests.
        # Corresponds to the JSON property `maxTotalInstances`
        # @return [Fixnum]
        attr_accessor :max_total_instances
      
        # The maximum amount of time that App Engine should allow a request to wait in
        # the pending queue before starting a new instance to handle it.
        # Corresponds to the JSON property `maxPendingLatency`
        # @return [String]
        attr_accessor :max_pending_latency
      
        # The minimum number of idle instances that App Engine should maintain for this
        # version. Only applies to the default version of a module, since other versions
        # are not expected to receive significant traffic.
        # Corresponds to the JSON property `minIdleInstances`
        # @return [Fixnum]
        attr_accessor :min_idle_instances
      
        # Minimum number of instances that App Engine should maintain.
        # Corresponds to the JSON property `minTotalInstances`
        # @return [Fixnum]
        attr_accessor :min_total_instances
      
        # The minimum amount of time that App Engine should allow a request to wait in
        # the pending queue before starting a new instance to handle it.
        # Corresponds to the JSON property `minPendingLatency`
        # @return [String]
        attr_accessor :min_pending_latency
      
        # Target scaling by request utilization (for VM runtimes only).
        # Corresponds to the JSON property `requestUtilization`
        # @return [Google::Apis::AppengineV1beta4::RequestUtilization]
        attr_accessor :request_utilization
      
        # Target scaling by disk usage (for VM runtimes only).
        # Corresponds to the JSON property `diskUtilization`
        # @return [Google::Apis::AppengineV1beta4::DiskUtilization]
        attr_accessor :disk_utilization
      
        # Target scaling by network usage (for VM runtimes only).
        # Corresponds to the JSON property `networkUtilization`
        # @return [Google::Apis::AppengineV1beta4::NetworkUtilization]
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
      
        # The period of time over which CPU utilization is calculated.
        # Corresponds to the JSON property `aggregationWindowLength`
        # @return [String]
        attr_accessor :aggregation_window_length
      
        # Target (0-1) CPU utilization ratio to maintain when scaling.
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
      
      # Target scaling by request utilization (for VM runtimes only).
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
      
      # Target scaling by disk usage (for VM runtimes only).
      class DiskUtilization
        include Google::Apis::Core::Hashable
      
        # Target bytes per second written.
        # Corresponds to the JSON property `targetWriteBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_write_bytes_per_sec
      
        # Target ops per second written.
        # Corresponds to the JSON property `targetWriteOpsPerSec`
        # @return [Fixnum]
        attr_accessor :target_write_ops_per_sec
      
        # Target bytes per second read.
        # Corresponds to the JSON property `targetReadBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_read_bytes_per_sec
      
        # Target ops per second read.
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
      
      # Target scaling by network usage (for VM runtimes only).
      class NetworkUtilization
        include Google::Apis::Core::Hashable
      
        # Target bytes per second sent.
        # Corresponds to the JSON property `targetSentBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_sent_bytes_per_sec
      
        # Target packets per second sent.
        # Corresponds to the JSON property `targetSentPacketsPerSec`
        # @return [Fixnum]
        attr_accessor :target_sent_packets_per_sec
      
        # Target bytes per second received.
        # Corresponds to the JSON property `targetReceivedBytesPerSec`
        # @return [Fixnum]
        attr_accessor :target_received_bytes_per_sec
      
        # Target packets per second received.
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
      
      # A module with basic scaling will create an instance when the application
      # receives a request. The instance will be turned down when the app becomes idle.
      # Basic scaling is ideal for work that is intermittent or driven by user
      # activity.
      class BasicScaling
        include Google::Apis::Core::Hashable
      
        # The instance will be shut down this amount of time after receiving its last
        # request.
        # Corresponds to the JSON property `idleTimeout`
        # @return [String]
        attr_accessor :idle_timeout
      
        # The maximum number of instances for App Engine to create for this version.
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
      
      # A module with manual scaling runs continuously, allowing you to perform
      # complex initialization and rely on the state of its memory over time.
      class ManualScaling
        include Google::Apis::Core::Hashable
      
        # The number of instances to assign to the module at the start. This number can
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
      
      # Used to specify extra network settings (for VM runtimes only).
      class Network
        include Google::Apis::Core::Hashable
      
        # A list of ports (or port pairs) to forward from the VM into the app container.
        # Corresponds to the JSON property `forwardedPorts`
        # @return [Array<String>]
        attr_accessor :forwarded_ports
      
        # A tag to apply to the VM instance during creation.
        # Corresponds to the JSON property `instanceTag`
        # @return [String]
        attr_accessor :instance_tag
      
        # The Google Compute Engine network where the VMs will be created. If not
        # specified, or empty, the network named "default" will be used. (The short name
        # should be specified, not the resource path.)
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
      
      # Used to specify how many machine resources an app version needs.
      class Resources
        include Google::Apis::Core::Hashable
      
        # How many CPU cores an app version needs.
        # Corresponds to the JSON property `cpu`
        # @return [Float]
        attr_accessor :cpu
      
        # How much disk size, in GB, an app version needs.
        # Corresponds to the JSON property `diskGb`
        # @return [Float]
        attr_accessor :disk_gb
      
        # How much memory, in GB, an app version needs.
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
      
      # A URL pattern and description of how it should be handled. App Engine can
      # handle URLs by executing application code, or by serving static files uploaded
      # with the code, such as images, CSS or JavaScript.
      class UrlMap
        include Google::Apis::Core::Hashable
      
        # A URL prefix. This value uses regular expression syntax (and so regexp special
        # characters must be escaped), but it should not contain groupings. All URLs
        # that begin with this prefix are handled by this handler, using the portion of
        # the URL after the prefix as part of the file path. This is always required.
        # Corresponds to the JSON property `urlRegex`
        # @return [String]
        attr_accessor :url_regex
      
        # Files served directly to the user for a given URL, such as images, CSS
        # stylesheets, or JavaScript source files. Static file handlers describe which
        # files in the application directory are static files, and which URLs serve them.
        # Corresponds to the JSON property `staticFiles`
        # @return [Google::Apis::AppengineV1beta4::StaticFilesHandler]
        attr_accessor :static_files
      
        # Files served directly to the user for a given URL, such as images, CSS
        # stylesheets, or JavaScript source files. Static directory handlers make it
        # easy to serve the entire contents of a directory as static files.
        # Corresponds to the JSON property `staticDirectory`
        # @return [Google::Apis::AppengineV1beta4::StaticDirectoryHandler]
        attr_accessor :static_directory
      
        # Executes a script to handle the request that matches the URL pattern.
        # Corresponds to the JSON property `script`
        # @return [Google::Apis::AppengineV1beta4::ScriptHandler]
        attr_accessor :script
      
        # Use Google Cloud Endpoints to handle requests.
        # Corresponds to the JSON property `apiEndpoint`
        # @return [Google::Apis::AppengineV1beta4::ApiEndpointHandler]
        attr_accessor :api_endpoint
      
        # Configures whether security (HTTPS) should be enforced for this URL.
        # Corresponds to the JSON property `securityLevel`
        # @return [String]
        attr_accessor :security_level
      
        # What level of login is required to access this resource.
        # Corresponds to the JSON property `login`
        # @return [String]
        attr_accessor :login
      
        # For users not logged in, how to handle access to resources with required login.
        # Defaults to "redirect".
        # Corresponds to the JSON property `authFailAction`
        # @return [String]
        attr_accessor :auth_fail_action
      
        # `30x` code to use when performing redirects for the `secure` field. A `302` is
        # used by default.
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
          @static_directory = args[:static_directory] if args.key?(:static_directory)
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
      
        # The path to the static files matched by the URL pattern, from the application
        # root directory. The path can refer to text matched in groupings in the URL
        # pattern.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # A regular expression that matches the file paths for all files that will be
        # referenced by this handler.
        # Corresponds to the JSON property `uploadPathRegex`
        # @return [String]
        attr_accessor :upload_path_regex
      
        # HTTP headers to use for all responses from these URLs.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Hash<String,String>]
        attr_accessor :http_headers
      
        # If specified, all files served by this handler will be served using the
        # specified MIME type. If not specified, the MIME type for a file will be
        # derived from the file's filename extension.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The length of time a static file served by this handler ought to be cached by
        # web proxies and browsers.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # If true, this UrlMap entry does not match the request unless the file
        # referenced by the handler also exists. If no such file exists, processing will
        # continue with the next UrlMap that matches the requested URL.
        # Corresponds to the JSON property `requireMatchingFile`
        # @return [Boolean]
        attr_accessor :require_matching_file
        alias_method :require_matching_file?, :require_matching_file
      
        # By default, files declared in static file handlers are uploaded as static data
        # and are only served to end users, they cannot be read by an application. If
        # this field is set to true, the files are also uploaded as code data so your
        # application can read them. Both uploads are charged against your code and
        # static data storage resource quotas.
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
      
      # Files served directly to the user for a given URL, such as images, CSS
      # stylesheets, or JavaScript source files. Static directory handlers make it
      # easy to serve the entire contents of a directory as static files.
      class StaticDirectoryHandler
        include Google::Apis::Core::Hashable
      
        # The path to the directory containing the static files, from the application
        # root directory. Everything after the end of the matched url pattern is
        # appended to static_dir to form the full path to the requested file.
        # Corresponds to the JSON property `directory`
        # @return [String]
        attr_accessor :directory
      
        # HTTP headers to use for all responses from these URLs.
        # Corresponds to the JSON property `httpHeaders`
        # @return [Hash<String,String>]
        attr_accessor :http_headers
      
        # If specified, all files served by this handler will be served using the
        # specified MIME type. If not specified, the MIME type for a file will be
        # derived from the file's filename extension.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The length of time a static file served by this handler ought to be cached by
        # web proxies and browsers.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # If true, this UrlMap entry does not match the request unless the file
        # referenced by the handler also exists. If no such file exists, processing will
        # continue with the next UrlMap that matches the requested URL.
        # Corresponds to the JSON property `requireMatchingFile`
        # @return [Boolean]
        attr_accessor :require_matching_file
        alias_method :require_matching_file?, :require_matching_file
      
        # By default, files declared in static file handlers are uploaded as static data
        # and are only served to end users, they cannot be read by an application. If
        # this field is set to true, the files are also uploaded as code data so your
        # application can read them. Both uploads are charged against your code and
        # static data storage resource quotas.
        # Corresponds to the JSON property `applicationReadable`
        # @return [Boolean]
        attr_accessor :application_readable
        alias_method :application_readable?, :application_readable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory = args[:directory] if args.key?(:directory)
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
      
        # Specifies the path to the script from the application root directory.
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
      
      # Use Google Cloud Endpoints to handle requests.
      class ApiEndpointHandler
        include Google::Apis::Core::Hashable
      
        # Specifies the path to the script from the application root directory.
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
      
      # A custom static error page to be served when an error occurs.
      class ErrorHandler
        include Google::Apis::Core::Hashable
      
        # The error condition this handler applies to.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Static file content to be served for this error.
        # Corresponds to the JSON property `staticFile`
        # @return [String]
        attr_accessor :static_file
      
        # MIME type of file. If unspecified, "text/html" is assumed.
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
      
      # A Python runtime third-party library required by the application.
      class Library
        include Google::Apis::Core::Hashable
      
        # The name of the library, e.g. "PIL" or "django".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The version of the library to select, or "latest".
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
      
      # API Serving configuration for Cloud Endpoints.
      class ApiConfigHandler
        include Google::Apis::Core::Hashable
      
        # For users not logged in, how to handle access to resources with required login.
        # Defaults to "redirect".
        # Corresponds to the JSON property `authFailAction`
        # @return [String]
        attr_accessor :auth_fail_action
      
        # What level of login is required to access this resource. Default is "optional".
        # Corresponds to the JSON property `login`
        # @return [String]
        attr_accessor :login
      
        # Specifies the path to the script from the application root directory.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        # Configures whether security (HTTPS) should be enforced for this URL.
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
      
      # Configure health checking for the VM instances. Unhealthy VM instances will be
      # killed and replaced with new instances.
      class HealthCheck
        include Google::Apis::Core::Hashable
      
        # Whether to explicitly disable health checks for this instance.
        # Corresponds to the JSON property `disableHealthCheck`
        # @return [Boolean]
        attr_accessor :disable_health_check
        alias_method :disable_health_check?, :disable_health_check
      
        # The host header to send when performing an HTTP health check (e.g. myapp.
        # appspot.com)
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The number of consecutive successful health checks before receiving traffic.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # The number of consecutive failed health checks before removing traffic.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        # The number of consecutive failed health checks before an instance is restarted.
        # Corresponds to the JSON property `restartThreshold`
        # @return [Fixnum]
        attr_accessor :restart_threshold
      
        # The interval between health checks.
        # Corresponds to the JSON property `checkInterval`
        # @return [String]
        attr_accessor :check_interval
      
        # The amount of time before the health check is considered failed.
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
      
        # A manifest of files stored in Google Cloud Storage which should be included as
        # part of this application. All files must be readable using the credentials
        # supplied with this call.
        # Corresponds to the JSON property `files`
        # @return [Hash<String,Google::Apis::AppengineV1beta4::FileInfo>]
        attr_accessor :files
      
        # A Docker (container) image which should be used to start the application.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::AppengineV1beta4::ContainerInfo]
        attr_accessor :container
      
        # The origin of the source code for this deployment. There can be more than one
        # source reference per Version if source code is distributed among multiple
        # repositories.
        # Corresponds to the JSON property `sourceReferences`
        # @return [Array<Google::Apis::AppengineV1beta4::SourceReference>]
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
      
      # A single source file which is part of the application to be deployed.
      class FileInfo
        include Google::Apis::Core::Hashable
      
        # The URL source to use to fetch this file. Must be a URL to a resource in
        # Google Cloud Storage in the form 'http(s)://storage.googleapis.com/\/\'.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        # The SHA1 (160 bits) hash of the file in hex.
        # Corresponds to the JSON property `sha1Sum`
        # @return [String]
        attr_accessor :sha1_sum
      
        # The MIME type of the file; if unspecified, the value from Google Cloud Storage
        # will be used.
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
      
      # A Docker (container) image which should be used to start the application.
      class ContainerInfo
        include Google::Apis::Core::Hashable
      
        # Reference to a hosted container image. Must be a URI to a resource in a Docker
        # repository. Must be fully qualified, including tag or digest. e.g. gcr.io/my-
        # project/image:tag or gcr.io/my-project/image@digest
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
      
      # A reference to a particular snapshot of the source tree used to build and
      # deploy the application.
      class SourceReference
        include Google::Apis::Core::Hashable
      
        # Optional. A URI string identifying the repository. Example: "https://source.
        # developers.google.com/p/app-123/r/default"
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # The canonical (and persistent) identifier of the deployed revision, i.e. any
        # kind of aliases including tags or branch names are not allowed. Example (git):
        # "2198322f89e0bb2e25021667c2ed489d1fd34e6b"
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping above, the `name`
        # should have the format of `operations/some/unique/name`.
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
        # @return [Google::Apis::AppengineV1beta4::Status]
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
      
      # Response message for `Versions.ListVersions`.
      class ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The versions belonging to the requested application module.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::AppengineV1beta4::Version>]
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
      
      # A module is a component of an application that provides a single service or
      # configuration. A module has a collection of versions that define a specific
      # set of code used to implement the functionality of that module.
      class Module
        include Google::Apis::Core::Hashable
      
        # The full path to the Module resource in the API. Example: "apps/myapp/modules/
        # default" @OutputOnly
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative name/path of the module within the application. Example: "default"
        # @OutputOnly
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Configuration for traffic splitting for versions within a single module.
        # Traffic splitting allows traffic directed to the module to be assigned to one
        # of several versions in a fractional way, enabling experiments and canarying
        # new builds, for example.
        # Corresponds to the JSON property `split`
        # @return [Google::Apis::AppengineV1beta4::TrafficSplit]
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
      
      # Configuration for traffic splitting for versions within a single module.
      # Traffic splitting allows traffic directed to the module to be assigned to one
      # of several versions in a fractional way, enabling experiments and canarying
      # new builds, for example.
      class TrafficSplit
        include Google::Apis::Core::Hashable
      
        # Which mechanism should be used as a selector when choosing a version to send a
        # request to. The traffic selection algorithm will be stable for either type
        # until allocations are changed.
        # Corresponds to the JSON property `shardBy`
        # @return [String]
        attr_accessor :shard_by
      
        # Mapping from module version IDs within the module to fractional (0.000, 1]
        # allocations of traffic for that version. Each version may only be specified
        # once, but some versions in the module may not have any traffic allocation.
        # Modules that have traffic allocated in this field may not be deleted until the
        # module is deleted, or their traffic allocation is removed. Allocations must
        # sum to 1. Supports precision up to two decimal places for IP-based splits and
        # up to three decimal places for cookie-based splits.
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
      
      # Response message for `Modules.ListModules`.
      class ListModulesResponse
        include Google::Apis::Core::Hashable
      
        # The modules belonging to the requested application.
        # Corresponds to the JSON property `modules`
        # @return [Array<Google::Apis::AppengineV1beta4::Module>]
        attr_accessor :modules
      
        # Continuation token for fetching the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modules = args[:modules] if args.key?(:modules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AppengineV1beta4::Operation>]
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
      
      # Metadata for the given google.longrunning.Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The type of the operation (deprecated, use method field instead). Example: "
        # create_version". @OutputOnly
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Timestamp that this operation was received. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Timestamp that this operation was completed. (Not present if the operation is
        # still in progress.) @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The user who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Resource that this operation is acting on. Example: "apps/myapp/modules/
        # default". @OutputOnly
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # API method name that initiated the operation. Example: "google.appengine.
        # v1beta4.Version.CreateVersion". @OutputOnly
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
      
        # API method name that initiated the operation. Example: "google.appengine.
        # v1beta5.Version.CreateVersion". @OutputOnly
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Timestamp that this operation was received. @OutputOnly
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Timestamp that this operation was completed. (Not present if the operation is
        # still in progress.) @OutputOnly
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The user who requested this operation. @OutputOnly
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Resource that this operation is acting on. Example: "apps/myapp/services/
        # default". @OutputOnly
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
    end
  end
end
