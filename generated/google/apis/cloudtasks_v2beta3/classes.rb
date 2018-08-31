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
    module CloudtasksV2beta3
      
      # App Engine HTTP queue.
      # The task will be delivered to the App Engine application hostname
      # specified by its AppEngineHttpQueue and AppEngineHttpRequest.
      # The documentation for AppEngineHttpRequest explains how the
      # task's host URL is constructed.
      # Using AppEngineHttpQueue requires
      # [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-
      # api/access-control)
      # Google IAM permission for the project
      # and the following scope:
      # `https://www.googleapis.com/auth/cloud-platform`
      class AppEngineHttpQueue
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # Specifies the target URI. Since this target type dispatches tasks to secure
        # app handlers, unsecure app handlers, and URIs restricted with
        # [`login: admin`](https://cloud.google.com/appengine/docs/standard/python/
        # config/appref)
        # the protocol (for example, HTTP or HTTPS) cannot be explictly specified.
        # Task dispatches do not follow redirects and cannot target URI paths
        # restricted with
        # [`login: required`](https://cloud.google.com/appengine/docs/standard/python/
        # config/appref)
        # because tasks are not run as any user.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-
        # overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](https://cloud.google.com/
        # appengine/docs/python/microservices-on-app-engine),
        # [App Engine Standard request routing](https://cloud.google.com/appengine/docs/
        # standard/python/how-requests-are-routed),
        # and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/
        # flexible/python/how-requests-are-routed).
        # Corresponds to the JSON property `appEngineRoutingOverride`
        # @return [Google::Apis::CloudtasksV2beta3::AppEngineRouting]
        attr_accessor :app_engine_routing_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing_override = args[:app_engine_routing_override] if args.key?(:app_engine_routing_override)
        end
      end
      
      # App Engine HTTP request.
      # The message defines the HTTP request that is sent to an App Engine app when
      # the task is dispatched.
      # This proto can only be used for tasks in a queue which has
      # app_engine_http_queue set.
      # Using AppEngineHttpRequest requires
      # [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-
      # api/access-control)
      # Google IAM permission for the project
      # and the following scope:
      # `https://www.googleapis.com/auth/cloud-platform`
      # The task will be delivered to the App Engine app which belongs to the same
      # project as the queue. For more information, see
      # [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/
      # python/how-requests-are-routed)
      # and how routing is affected by
      # [dispatch files](https://cloud.google.com/appengine/docs/python/config/
      # dispatchref).
      # The AppEngineRouting used to construct the URL that the task is
      # delivered to can be set at the queue-level or task-level:
      # * If set,
      # app_engine_routing_override
      # is used for all tasks in the queue, no matter what the setting
      # is for the
      # task-level app_engine_routing.
      # The `url` that the task will be sent to is:
      # * `url =` host `+`
      # relative_uri
      # The task attempt has succeeded if the app's request handler returns
      # an HTTP response code in the range [`200` - `299`]. `503` is
      # considered an App Engine system error instead of an application
      # error. Requests returning error `503` will be retried regardless of
      # retry configuration and not counted against retry counts.
      # Any other response code or a failure to receive a response before the
      # deadline is a failed attempt.
      class AppEngineHttpRequest
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # Specifies the target URI. Since this target type dispatches tasks to secure
        # app handlers, unsecure app handlers, and URIs restricted with
        # [`login: admin`](https://cloud.google.com/appengine/docs/standard/python/
        # config/appref)
        # the protocol (for example, HTTP or HTTPS) cannot be explictly specified.
        # Task dispatches do not follow redirects and cannot target URI paths
        # restricted with
        # [`login: required`](https://cloud.google.com/appengine/docs/standard/python/
        # config/appref)
        # because tasks are not run as any user.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-
        # overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](https://cloud.google.com/
        # appengine/docs/python/microservices-on-app-engine),
        # [App Engine Standard request routing](https://cloud.google.com/appengine/docs/
        # standard/python/how-requests-are-routed),
        # and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/
        # flexible/python/how-requests-are-routed).
        # Corresponds to the JSON property `appEngineRouting`
        # @return [Google::Apis::CloudtasksV2beta3::AppEngineRouting]
        attr_accessor :app_engine_routing
      
        # HTTP request body.
        # A request body is allowed only if the HTTP method is POST or PUT. It is
        # an error to set a body on a task with an incompatible HttpMethod.
        # Corresponds to the JSON property `body`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :body
      
        # HTTP request headers.
        # This map contains the header field names and values.
        # Headers can be set when the
        # task is created.
        # Repeated headers are not supported but a header value can contain commas.
        # Cloud Tasks sets some headers to default values:
        # * `User-Agent`: By default, this header is
        # `"AppEngine-Google; (+http://code.google.com/appengine)"`.
        # This header can be modified, but Cloud Tasks will append
        # `"AppEngine-Google; (+http://code.google.com/appengine)"` to the
        # modified `User-Agent`.
        # If the task has a body, Cloud
        # Tasks sets the following headers:
        # * `Content-Type`: By default, the `Content-Type` header is set to
        # `"application/octet-stream"`. The default can be overridden by explicitly
        # setting `Content-Type` to a particular media type when the
        # task is created.
        # For example, `Content-Type` can be set to `"application/json"`.
        # * `Content-Length`: This is computed by Cloud Tasks. This value is
        # output only.   It cannot be changed.
        # The headers below cannot be set or overridden:
        # * `Host`
        # * `X-Google-*`
        # * `X-AppEngine-*`
        # In addition, Cloud Tasks sets some headers when the task is dispatched,
        # such as headers containing information about the task; see
        # [request headers](https://cloud.google.com/appengine/docs/python/taskqueue/
        # push/creating-handlers#reading_request_headers).
        # These headers are set only when the task is dispatched, so they are not
        # visible when the task is returned in a Cloud Tasks response.
        # Although there is no specific limit for the maximum number of headers or
        # the size, there is a limit on the maximum size of the Task. For more
        # information, see the CreateTask documentation.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The HTTP method to use for the request. The default is POST.
        # The app's request handler for the task's target URL must be able to handle
        # HTTP requests with this http_method, otherwise the task attempt will fail
        # with error code 405 (Method Not Allowed). See
        # [Writing a push task request handler](https://cloud.google.com/appengine/docs/
        # java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler)
        # and the documentation for the request handlers in the language your app is
        # written in e.g.
        # [Python Request Handler](https://cloud.google.com/appengine/docs/python/tools/
        # webapp/requesthandlerclass).
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # The relative URI.
        # The relative URI must begin with "/" and must be a valid HTTP relative URI.
        # It can contain a path and query string arguments.
        # If the relative URI is empty, then the root path "/" will be used.
        # No spaces are allowed, and the maximum length allowed is 2083 characters.
        # Corresponds to the JSON property `relativeUri`
        # @return [String]
        attr_accessor :relative_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing = args[:app_engine_routing] if args.key?(:app_engine_routing)
          @body = args[:body] if args.key?(:body)
          @headers = args[:headers] if args.key?(:headers)
          @http_method = args[:http_method] if args.key?(:http_method)
          @relative_uri = args[:relative_uri] if args.key?(:relative_uri)
        end
      end
      
      # App Engine Routing.
      # Specifies the target URI. Since this target type dispatches tasks to secure
      # app handlers, unsecure app handlers, and URIs restricted with
      # [`login: admin`](https://cloud.google.com/appengine/docs/standard/python/
      # config/appref)
      # the protocol (for example, HTTP or HTTPS) cannot be explictly specified.
      # Task dispatches do not follow redirects and cannot target URI paths
      # restricted with
      # [`login: required`](https://cloud.google.com/appengine/docs/standard/python/
      # config/appref)
      # because tasks are not run as any user.
      # For more information about services, versions, and instances see
      # [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-
      # overview-of-app-engine),
      # [Microservices Architecture on Google App Engine](https://cloud.google.com/
      # appengine/docs/python/microservices-on-app-engine),
      # [App Engine Standard request routing](https://cloud.google.com/appengine/docs/
      # standard/python/how-requests-are-routed),
      # and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/
      # flexible/python/how-requests-are-routed).
      class AppEngineRouting
        include Google::Apis::Core::Hashable
      
        # Output only. The host that the task is sent to.
        # The host is constructed from the domain name of the app associated with
        # the queue's project ID (for example <app-id>.appspot.com), and the
        # service, version,
        # and instance. Tasks which were created using
        # the App Engine SDK might have a custom domain name.
        # For more information, see
        # [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/
        # python/how-requests-are-routed).
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # App instance.
        # By default, the task is sent to an instance which is available when
        # the task is attempted.
        # Requests can only be sent to a specific instance if
        # [manual scaling is used in App Engine Standard](https://cloud.google.com/
        # appengine/docs/python/an-overview-of-app-engine?hl=en_US#
        # scaling_types_and_instance_classes).
        # App Engine Flex does not support instances. For more information, see
        # [App Engine Standard request routing](https://cloud.google.com/appengine/docs/
        # standard/python/how-requests-are-routed)
        # and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/
        # flexible/python/how-requests-are-routed).
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # App service.
        # By default, the task is sent to the service which is the default
        # service when the task is attempted.
        # For some queues or tasks which were created using the App Engine
        # Task Queue API, host is not parsable
        # into service,
        # version, and
        # instance. For example, some tasks
        # which were created using the App Engine SDK use a custom domain
        # name; custom domains are not parsed by Cloud Tasks. If
        # host is not parsable, then
        # service,
        # version, and
        # instance are the empty string.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # App version.
        # By default, the task is sent to the version which is the default
        # version when the task is attempted.
        # For some queues or tasks which were created using the App Engine
        # Task Queue API, host is not parsable
        # into service,
        # version, and
        # instance. For example, some tasks
        # which were created using the App Engine SDK use a custom domain
        # name; custom domains are not parsed by Cloud Tasks. If
        # host is not parsable, then
        # service,
        # version, and
        # instance are the empty string.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @instance = args[:instance] if args.key?(:instance)
          @service = args[:service] if args.key?(:service)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The status of a task attempt.
      class Attempt
        include Google::Apis::Core::Hashable
      
        # Output only. The time that this attempt was dispatched.
        # `dispatch_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `dispatchTime`
        # @return [String]
        attr_accessor :dispatch_time
      
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
        # Corresponds to the JSON property `responseStatus`
        # @return [Google::Apis::CloudtasksV2beta3::Status]
        attr_accessor :response_status
      
        # Output only. The time that this attempt response was received.
        # `response_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `responseTime`
        # @return [String]
        attr_accessor :response_time
      
        # Output only. The time that this attempt was scheduled.
        # `schedule_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dispatch_time = args[:dispatch_time] if args.key?(:dispatch_time)
          @response_status = args[:response_status] if args.key?(:response_status)
          @response_time = args[:response_time] if args.key?(:response_time)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::CloudtasksV2beta3::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # Request message for CreateTask.
      class CreateTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for FULL requires
        # `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        # permission on the Task resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # A unit of scheduled work.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::CloudtasksV2beta3::Task]
        attr_accessor :task
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_view = args[:response_view] if args.key?(:response_view)
          @task = args[:task] if args.key?(:task)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class Expr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudtasksV2beta3::Location>]
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
      
      # Response message for ListQueues.
      class ListQueuesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # To return the next page of results, call
        # ListQueues with this value as the
        # page_token.
        # If the next_page_token is empty, there are no more results.
        # The page token is valid for only 2 hours.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of queues.
        # Corresponds to the JSON property `queues`
        # @return [Array<Google::Apis::CloudtasksV2beta3::Queue>]
        attr_accessor :queues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @queues = args[:queues] if args.key?(:queues)
        end
      end
      
      # Response message for listing tasks using ListTasks.
      class ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # To return the next page of results, call
        # ListTasks with this value as the
        # page_token.
        # If the next_page_token is empty, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of tasks.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::CloudtasksV2beta3::Task>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
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
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
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
      
      # Request message for PauseQueue.
      class PauseQueueRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **JSON Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # **YAML Example**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-other-app@appspot.gserviceaccount.com
      # role: roles/owner
      # - members:
      # - user:sean@example.com
      # role: roles/viewer
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudtasksV2beta3::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Deprecated.
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
      
      # Request message for PurgeQueue.
      class PurgeQueueRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A queue is a container of related tasks. Queues are configured to manage
      # how those tasks are dispatched. Configurable properties include rate limits,
      # retry options, queue types, and others.
      class Queue
        include Google::Apis::Core::Hashable
      
        # App Engine HTTP queue.
        # The task will be delivered to the App Engine application hostname
        # specified by its AppEngineHttpQueue and AppEngineHttpRequest.
        # The documentation for AppEngineHttpRequest explains how the
        # task's host URL is constructed.
        # Using AppEngineHttpQueue requires
        # [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-
        # api/access-control)
        # Google IAM permission for the project
        # and the following scope:
        # `https://www.googleapis.com/auth/cloud-platform`
        # Corresponds to the JSON property `appEngineHttpQueue`
        # @return [Google::Apis::CloudtasksV2beta3::AppEngineHttpQueue]
        attr_accessor :app_engine_http_queue
      
        # Caller-specified and required in CreateQueue,
        # after which it becomes output only.
        # The queue name.
        # The queue name must have the following format:
        # `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        # * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
        # hyphens (-), colons (:), or periods (.).
        # For more information, see
        # [Identifying projects](https://cloud.google.com/resource-manager/docs/
        # creating-managing-projects#identifying_projects)
        # * `LOCATION_ID` is the canonical ID for the queue's location.
        # The list of available locations can be obtained by calling
        # ListLocations.
        # For more information, see https://cloud.google.com/about/locations/.
        # * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
        # hyphens (-). The maximum length is 100 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last time this queue was purged.
        # All tasks that were created before this time
        # were purged.
        # A queue can be purged using PurgeQueue, the
        # [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/
        # appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#
        # purging_all_tasks_from_a_queue).
        # Purge time will be truncated to the nearest microsecond. Purge
        # time will be unset if the queue has never been purged.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        # Rate limits.
        # This message determines the maximum rate that tasks can be dispatched by a
        # queue, regardless of whether the dispatch is a first task attempt or a retry.
        # Note: The debugging command, RunTask, will run a task
        # even if the queue has reached its RateLimits.
        # Corresponds to the JSON property `rateLimits`
        # @return [Google::Apis::CloudtasksV2beta3::RateLimits]
        attr_accessor :rate_limits
      
        # Retry config.
        # These settings determine when a failed task attempt is retried.
        # Corresponds to the JSON property `retryConfig`
        # @return [Google::Apis::CloudtasksV2beta3::RetryConfig]
        attr_accessor :retry_config
      
        # Output only. The state of the queue.
        # `state` can only be changed by called
        # PauseQueue,
        # ResumeQueue, or uploading
        # [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/
        # queueref).
        # UpdateQueue cannot be used to change `state`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_http_queue = args[:app_engine_http_queue] if args.key?(:app_engine_http_queue)
          @name = args[:name] if args.key?(:name)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
          @rate_limits = args[:rate_limits] if args.key?(:rate_limits)
          @retry_config = args[:retry_config] if args.key?(:retry_config)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Rate limits.
      # This message determines the maximum rate that tasks can be dispatched by a
      # queue, regardless of whether the dispatch is a first task attempt or a retry.
      # Note: The debugging command, RunTask, will run a task
      # even if the queue has reached its RateLimits.
      class RateLimits
        include Google::Apis::Core::Hashable
      
        # Output only. The max burst size.
        # Max burst size limits how fast tasks in queue are processed when
        # many tasks are in the queue and the rate is high. This field
        # allows the queue to have a high rate so processing starts shortly
        # after a task is enqueued, but still limits resource usage when
        # many tasks are enqueued in a short period of time.
        # The [token bucket](https://wikipedia.org/wiki/Token_Bucket)
        # algorithm is used to control the rate of task dispatches. Each
        # queue has a token bucket that holds tokens, up to the maximum
        # specified by `max_burst_size`. Each time a task is dispatched, a
        # token is removed from the bucket. Tasks will be dispatched until
        # the queue's bucket runs out of tokens. The bucket will be
        # continuously refilled with new tokens based on
        # max_dispatches_per_second.
        # Cloud Tasks will pick the value of `max_burst_size` based on the
        # value of
        # max_dispatches_per_second.
        # For App Engine queues that were created or updated using
        # `queue.yaml/xml`, `max_burst_size` is equal to
        # [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/
        # queueref#bucket_size).
        # Since `max_burst_size` is output only, if
        # UpdateQueue is called on a queue
        # created by `queue.yaml/xml`, `max_burst_size` will be reset based
        # on the value of
        # max_dispatches_per_second,
        # regardless of whether
        # max_dispatches_per_second
        # is updated.
        # Corresponds to the JSON property `maxBurstSize`
        # @return [Fixnum]
        attr_accessor :max_burst_size
      
        # The maximum number of concurrent tasks that Cloud Tasks allows
        # to be dispatched for this queue. After this threshold has been
        # reached, Cloud Tasks stops dispatching tasks until the number of
        # concurrent requests decreases.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # The maximum allowed value is 5,000.
        # This field has the same meaning as
        # [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/
        # docs/standard/python/config/queueref#max_concurrent_requests).
        # Corresponds to the JSON property `maxConcurrentDispatches`
        # @return [Fixnum]
        attr_accessor :max_concurrent_dispatches
      
        # The maximum rate at which tasks are dispatched from this queue.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # * For App Engine queues, the maximum allowed value
        # is 500.
        # This field has the same meaning as
        # [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/
        # python/config/queueref#rate).
        # Corresponds to the JSON property `maxDispatchesPerSecond`
        # @return [Float]
        attr_accessor :max_dispatches_per_second
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_burst_size = args[:max_burst_size] if args.key?(:max_burst_size)
          @max_concurrent_dispatches = args[:max_concurrent_dispatches] if args.key?(:max_concurrent_dispatches)
          @max_dispatches_per_second = args[:max_dispatches_per_second] if args.key?(:max_dispatches_per_second)
        end
      end
      
      # Request message for ResumeQueue.
      class ResumeQueueRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Retry config.
      # These settings determine when a failed task attempt is retried.
      class RetryConfig
        include Google::Apis::Core::Hashable
      
        # Number of attempts per task.
        # Cloud Tasks will attempt the task `max_attempts` times (that is, if the
        # first attempt fails, then there will be `max_attempts - 1` retries). Must
        # be >= -1.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # -1 indicates unlimited attempts.
        # This field has the same meaning as
        # [task_retry_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/
        # standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `maxAttempts`
        # @return [Fixnum]
        attr_accessor :max_attempts
      
        # A task will be scheduled for retry between
        # min_backoff and
        # max_backoff duration after it fails,
        # if the queue's RetryConfig specifies that the task should be
        # retried.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # `max_backoff` will be truncated to the nearest second.
        # This field has the same meaning as
        # [max_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/
        # docs/standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `maxBackoff`
        # @return [String]
        attr_accessor :max_backoff
      
        # The time between retries will double `max_doublings` times.
        # A task's retry interval starts at
        # min_backoff, then doubles
        # `max_doublings` times, then increases linearly, and finally
        # retries retries at intervals of
        # max_backoff up to
        # max_attempts times.
        # For example, if min_backoff is 10s,
        # max_backoff is 300s, and
        # `max_doublings` is 3, then the a task will first be retried in
        # 10s. The retry interval will double three times, and then
        # increase linearly by 2^3 * 10s.  Finally, the task will retry at
        # intervals of max_backoff until the
        # task has been attempted max_attempts
        # times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s,
        # 240s, 300s, 300s, ....
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # This field has the same meaning as
        # [max_doublings in queue.yaml/xml](https://cloud.google.com/appengine/docs/
        # standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `maxDoublings`
        # @return [Fixnum]
        attr_accessor :max_doublings
      
        # If positive, `max_retry_duration` specifies the time limit for
        # retrying a failed task, measured from when the task was first
        # attempted. Once `max_retry_duration` time has passed *and* the
        # task has been attempted max_attempts
        # times, no further attempts will be made and the task will be
        # deleted.
        # If zero, then the task age is unlimited.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # `max_retry_duration` will be truncated to the nearest second.
        # This field has the same meaning as
        # [task_age_limit in queue.yaml/xml](https://cloud.google.com/appengine/docs/
        # standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `maxRetryDuration`
        # @return [String]
        attr_accessor :max_retry_duration
      
        # A task will be scheduled for retry between
        # min_backoff and
        # max_backoff duration after it fails,
        # if the queue's RetryConfig specifies that the task should be
        # retried.
        # If unspecified when the queue is created, Cloud Tasks will pick the
        # default.
        # `min_backoff` will be truncated to the nearest second.
        # This field has the same meaning as
        # [min_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/
        # docs/standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `minBackoff`
        # @return [String]
        attr_accessor :min_backoff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_attempts = args[:max_attempts] if args.key?(:max_attempts)
          @max_backoff = args[:max_backoff] if args.key?(:max_backoff)
          @max_doublings = args[:max_doublings] if args.key?(:max_doublings)
          @max_retry_duration = args[:max_retry_duration] if args.key?(:max_retry_duration)
          @min_backoff = args[:min_backoff] if args.key?(:min_backoff)
        end
      end
      
      # Request message for forcing a task to run now using
      # RunTask.
      class RunTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for FULL requires
        # `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        # permission on the Task resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_view = args[:response_view] if args.key?(:response_view)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **JSON Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # **YAML Example**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-other-app@appspot.gserviceaccount.com
        # role: roles/owner
        # - members:
        # - user:sean@example.com
        # role: roles/viewer
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudtasksV2beta3::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # A unit of scheduled work.
      class Task
        include Google::Apis::Core::Hashable
      
        # App Engine HTTP request.
        # The message defines the HTTP request that is sent to an App Engine app when
        # the task is dispatched.
        # This proto can only be used for tasks in a queue which has
        # app_engine_http_queue set.
        # Using AppEngineHttpRequest requires
        # [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-
        # api/access-control)
        # Google IAM permission for the project
        # and the following scope:
        # `https://www.googleapis.com/auth/cloud-platform`
        # The task will be delivered to the App Engine app which belongs to the same
        # project as the queue. For more information, see
        # [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/
        # python/how-requests-are-routed)
        # and how routing is affected by
        # [dispatch files](https://cloud.google.com/appengine/docs/python/config/
        # dispatchref).
        # The AppEngineRouting used to construct the URL that the task is
        # delivered to can be set at the queue-level or task-level:
        # * If set,
        # app_engine_routing_override
        # is used for all tasks in the queue, no matter what the setting
        # is for the
        # task-level app_engine_routing.
        # The `url` that the task will be sent to is:
        # * `url =` host `+`
        # relative_uri
        # The task attempt has succeeded if the app's request handler returns
        # an HTTP response code in the range [`200` - `299`]. `503` is
        # considered an App Engine system error instead of an application
        # error. Requests returning error `503` will be retried regardless of
        # retry configuration and not counted against retry counts.
        # Any other response code or a failure to receive a response before the
        # deadline is a failed attempt.
        # Corresponds to the JSON property `appEngineHttpRequest`
        # @return [Google::Apis::CloudtasksV2beta3::AppEngineHttpRequest]
        attr_accessor :app_engine_http_request
      
        # Output only. The time that the task was created.
        # `create_time` will be truncated to the nearest second.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The number of attempts dispatched.
        # This count includes tasks which have been dispatched but haven't
        # received a response.
        # Corresponds to the JSON property `dispatchCount`
        # @return [Fixnum]
        attr_accessor :dispatch_count
      
        # The status of a task attempt.
        # Corresponds to the JSON property `firstAttempt`
        # @return [Google::Apis::CloudtasksV2beta3::Attempt]
        attr_accessor :first_attempt
      
        # The status of a task attempt.
        # Corresponds to the JSON property `lastAttempt`
        # @return [Google::Apis::CloudtasksV2beta3::Attempt]
        attr_accessor :last_attempt
      
        # Optionally caller-specified in CreateTask.
        # The task name.
        # The task name must have the following format:
        # `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
        # hyphens (-), colons (:), or periods (.).
        # For more information, see
        # [Identifying projects](https://cloud.google.com/resource-manager/docs/
        # creating-managing-projects#identifying_projects)
        # * `LOCATION_ID` is the canonical ID for the task's location.
        # The list of available locations can be obtained by calling
        # ListLocations.
        # For more information, see https://cloud.google.com/about/locations/.
        # * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
        # hyphens (-). The maximum length is 100 characters.
        # * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
        # hyphens (-), or underscores (_). The maximum length is 500 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of attempts which have received a response.
        # Corresponds to the JSON property `responseCount`
        # @return [Fixnum]
        attr_accessor :response_count
      
        # The time when the task is scheduled to be attempted.
        # For App Engine queues, this is when the task will be attempted or retried.
        # `schedule_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Output only. The view specifies which subset of the Task has
        # been returned.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_http_request = args[:app_engine_http_request] if args.key?(:app_engine_http_request)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dispatch_count = args[:dispatch_count] if args.key?(:dispatch_count)
          @first_attempt = args[:first_attempt] if args.key?(:first_attempt)
          @last_attempt = args[:last_attempt] if args.key?(:last_attempt)
          @name = args[:name] if args.key?(:name)
          @response_count = args[:response_count] if args.key?(:response_count)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
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
