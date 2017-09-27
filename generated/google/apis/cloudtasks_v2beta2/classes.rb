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
    module CloudtasksV2beta2
      
      # Request message for acknowledging a task using
      # CloudTasks.AcknowledgeTask.
      class AcknowledgeTaskRequest
        include Google::Apis::Core::Hashable
      
        # Required.
        # The task's current schedule time, available in the Task.schedule_time
        # returned in PullTasksResponse.tasks or
        # CloudTasks.RenewLease. This restriction is to check that
        # the caller is acknowledging the correct task.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
        end
      end
      
      # App Engine HTTP request.
      # The message defines the HTTP request that is sent to an App Engine app when
      # the task is dispatched.
      # This proto can only be used for tasks in a queue which has
      # Queue.app_engine_http_target set.
      # Using AppEngineHttpRequest requires
      # [`appengine.applications.get`](/appengine/docs/admin-api/access-control)
      # Google IAM permission for the project
      # and the following scope:
      # `https://www.googleapis.com/auth/cloud-platform`
      # The task will be delivered to the App Engine app which belongs to the same
      # project as the queue. For more information, see
      # [How Requests are Routed](/appengine/docs/standard/python/how-requests-are-
      # routed)
      # and how routing is affected by
      # [dispatch files](/appengine/docs/python/config/dispatchref).
      # The AppEngineRouting used to construct the URL that the task is
      # delivered to can be set at the queue-level or task-level:
      # *  If set, AppEngineHttpTarget.app_engine_routing_override is used for
      # all tasks in the queue, no matter what the setting is for the
      # task-level app_engine_routing.
      # The `url` that the task will be sent to is:
      # * `url =` AppEngineRouting.host `+` AppEngineHttpRequest.relative_url
      # The task will be sent to a task handler by an HTTP
      # request using the specified AppEngineHttpRequest.http_method (for example
      # POST, HTTP GET, etc). The task attempt has succeeded if the task handler
      # returns an HTTP response code in the range [200 - 299]. Error 503 is
      # considered an App Engine system error instead of an application error.
      # Requests returning error 503 will be retried regardless of retry
      # configuration and not counted against retry counts.
      # Any other response code or a failure to receive a response before the
      # deadline is a failed attempt.
      class AppEngineHttpRequest
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](/appengine/docs/python/an-overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](/appengine/docs/python/
        # microservices-on-app-engine),
        # [App Engine Standard request routing](/appengine/docs/standard/python/how-
        # requests-are-routed),
        # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
        # requests-are-routed).
        # Corresponds to the JSON property `appEngineRouting`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineRouting]
        attr_accessor :app_engine_routing
      
        # HTTP request headers.
        # This map contains the header field names and values.
        # Headers can be set when the
        # [task is created](google.cloud.tasks.v2beta2.CloudTasks.CreateTask).
        # Repeated headers are not supported but a header value can contain commas.
        # Cloud Tasks sets some headers to default values:
        # * `User-Agent`: By default, this header is
        # `"AppEngine-Google; (+http://code.google.com/appengine)"`.
        # This header can be modified, but Cloud Tasks will append
        # `"AppEngine-Google; (+http://code.google.com/appengine)"` to the
        # modified `User-Agent`.
        # If the task has an AppEngineHttpRequest.payload, Cloud Tasks sets the
        # following headers:
        # * `Content-Type`: By default, the `Content-Type` header is set to
        # `"application/octet-stream"`. The default can be overridden by explictly
        # setting `Content-Type` to a particular media type when the
        # [task is created](google.cloud.tasks.v2beta2.CloudTasks.CreateTask).
        # For example, `Content-Type` can be set to `"application/json"`.
        # * `Content-Length`: This is computed by Cloud Tasks. This value is
        # output only. It cannot be changed.
        # The headers below cannot be set or overridden:
        # * `Host`
        # * `X-Google-*`
        # * `X-AppEngine-*`
        # In addition, some App Engine headers, which contain
        # task-specific information, are also be sent to the task handler; see
        # [request headers](/appengine/docs/python/taskqueue/push/creating-handlers#
        # reading_request_headers).
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The HTTP method to use for the request. The default is POST.
        # The app's request handler for the task's target URL must be able to handle
        # HTTP requests with this http_method, otherwise the task attempt will fail
        # with error code 405 "Method Not Allowed" because "the method specified in
        # the Request-Line is not allowed for the resource identified by the
        # Request-URI". See
        # [Writing a push task request handler](/appengine/docs/java/taskqueue/push/
        # creating-handlers#writing_a_push_task_request_handler)
        # and the documentation for the request handlers in the language your app is
        # written in e.g.
        # [python RequestHandler](/appengine/docs/python/tools/webapp/
        # requesthandlerclass).
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # Payload.
        # The payload will be sent as the HTTP message body. A message
        # body, and thus a payload, is allowed only if the HTTP method is
        # POST or PUT. It is an error to set a data payload on a task with
        # an incompatible HttpMethod.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # The relative URL.
        # The relative URL must begin with "/" and must be a valid HTTP relative URL.
        # It can contain a path, query string arguments, and `#` fragments.
        # If the relative URL is empty, then the root path "/" will be used.
        # No spaces are allowed, and the maximum length allowed is 2083 characters.
        # Corresponds to the JSON property `relativeUrl`
        # @return [String]
        attr_accessor :relative_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing = args[:app_engine_routing] if args.key?(:app_engine_routing)
          @headers = args[:headers] if args.key?(:headers)
          @http_method = args[:http_method] if args.key?(:http_method)
          @payload = args[:payload] if args.key?(:payload)
          @relative_url = args[:relative_url] if args.key?(:relative_url)
        end
      end
      
      # App Engine HTTP target.
      # The task will be delivered to the App Engine application hostname
      # specified by its AppEngineHttpTarget and AppEngineHttpRequest.
      # The documentation for AppEngineHttpRequest explains how the
      # task's host URL is constructed.
      # Using AppEngineHttpTarget requires
      # [`appengine.applications.get`](/appengine/docs/admin-api/access-control)
      # Google IAM permission for the project
      # and the following scope:
      # `https://www.googleapis.com/auth/cloud-platform`
      class AppEngineHttpTarget
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](/appengine/docs/python/an-overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](/appengine/docs/python/
        # microservices-on-app-engine),
        # [App Engine Standard request routing](/appengine/docs/standard/python/how-
        # requests-are-routed),
        # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
        # requests-are-routed).
        # Corresponds to the JSON property `appEngineRoutingOverride`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineRouting]
        attr_accessor :app_engine_routing_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing_override = args[:app_engine_routing_override] if args.key?(:app_engine_routing_override)
        end
      end
      
      # Deprecated. Use AppEngineTarget.
      class AppEngineQueueConfig
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](/appengine/docs/python/an-overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](/appengine/docs/python/
        # microservices-on-app-engine),
        # [App Engine Standard request routing](/appengine/docs/standard/python/how-
        # requests-are-routed),
        # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
        # requests-are-routed).
        # Corresponds to the JSON property `appEngineRoutingOverride`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineRouting]
        attr_accessor :app_engine_routing_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing_override = args[:app_engine_routing_override] if args.key?(:app_engine_routing_override)
        end
      end
      
      # App Engine Routing.
      # For more information about services, versions, and instances see
      # [An Overview of App Engine](/appengine/docs/python/an-overview-of-app-engine),
      # [Microservices Architecture on Google App Engine](/appengine/docs/python/
      # microservices-on-app-engine),
      # [App Engine Standard request routing](/appengine/docs/standard/python/how-
      # requests-are-routed),
      # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
      # requests-are-routed).
      class AppEngineRouting
        include Google::Apis::Core::Hashable
      
        # Output only.
        # The host that the task is sent to. For more information, see
        # [How Requests are Routed](/appengine/docs/standard/python/how-requests-are-
        # routed).
        # The host is constructed as:
        # * `host = [application_domain_name]`</br>
        # `| [service] + '.' + [application_domain_name]`</br>
        # `| [version] + '.' + [application_domain_name]`</br>
        # `| [version_dot_service]+ '.' + [application_domain_name]`</br>
        # `| [instance] + '.' + [application_domain_name]`</br>
        # `| [instance_dot_service] + '.' + [application_domain_name]`</br>
        # `| [instance_dot_version] + '.' + [application_domain_name]`</br>
        # `| [instance_dot_version_dot_service] + '.' + [application_domain_name]`
        # * `application_domain_name` = The domain name of the app, for
        # example <app-id>.appspot.com, which is associated with the
        # queue's project ID. Some tasks which were created using the App Engine
        # SDK use a custom domain name.
        # * `service =` AppEngineRouting.service
        # * `version =` AppEngineRouting.version
        # * `version_dot_service =`
        # AppEngineRouting.version `+ '.' +` AppEngineRouting.service
        # * `instance =` AppEngineRouting.instance
        # * `instance_dot_service =`
        # AppEngineRouting.instance `+ '.' +` AppEngineRouting.service
        # * `instance_dot_version =`
        # AppEngineRouting.instance `+ '.' +` AppEngineRouting.version
        # * `instance_dot_version_dot_service =`
        # AppEngineRouting.instance `+ '.' +`
        # AppEngineRouting.version `+ '.' +` AppEngineRouting.service
        # If AppEngineRouting.service is empty, then the task will be sent
        # to the service which is the default service when the task is attempted.
        # If AppEngineRouting.version is empty, then the task will be sent
        # to the version which is the default version when the task is attempted.
        # If AppEngineRouting.instance is empty, then the task will be sent
        # to an instance which is available when the task is attempted.
        # When AppEngineRouting.service is "default",
        # AppEngineRouting.version is "default", and
        # AppEngineRouting.instance is empty, AppEngineRouting.host is
        # shortened to just the `application_domain_name`.
        # If AppEngineRouting.service, AppEngineRouting.version, or
        # AppEngineRouting.instance is invalid, then the task will be sent
        # to the default version of the default service when the task is attempted.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # App instance.
        # By default, the task is sent to an instance which is available when
        # the task is attempted.
        # Requests can only be sent to a specific instance if
        # [manual scaling is used in App Engine Standard](/appengine/docs/python/an-
        # overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes).
        # App Engine Flex does not support instances. For more information, see
        # [App Engine Standard request routing](/appengine/docs/standard/python/how-
        # requests-are-routed)
        # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
        # requests-are-routed).
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # App service.
        # By default, the task is sent to the service which is the default
        # service when the task is attempted ("default").
        # For some queues or tasks which were created using the App Engine Task Queue
        # API, AppEngineRouting.host is not parsable into
        # AppEngineRouting.service, AppEngineRouting.version, and
        # AppEngineRouting.instance. For example, some tasks which were created
        # using the App Engine SDK use a custom domain name; custom domains are not
        # parsed by Cloud Tasks. If AppEngineRouting.host is not parsable, then
        # AppEngineRouting.service, AppEngineRouting.version, and
        # AppEngineRouting.instance are the empty string.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # App version.
        # By default, the task is sent to the version which is the default
        # version when the task is attempted ("default").
        # For some queues or tasks which were created using the App Engine Task Queue
        # API, AppEngineRouting.host is not parsable into
        # AppEngineRouting.service, AppEngineRouting.version, and
        # AppEngineRouting.instance. For example, some tasks which were created
        # using the App Engine SDK use a custom domain name; custom domains are not
        # parsed by Cloud Tasks. If AppEngineRouting.host is not parsable, then
        # AppEngineRouting.service, AppEngineRouting.version, and
        # AppEngineRouting.instance are the empty string.
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
      
      # Deprecated. Use AppEngineHttpRequest.
      class AppEngineTaskTarget
        include Google::Apis::Core::Hashable
      
        # App Engine Routing.
        # For more information about services, versions, and instances see
        # [An Overview of App Engine](/appengine/docs/python/an-overview-of-app-engine),
        # [Microservices Architecture on Google App Engine](/appengine/docs/python/
        # microservices-on-app-engine),
        # [App Engine Standard request routing](/appengine/docs/standard/python/how-
        # requests-are-routed),
        # and [App Engine Flex request routing](/appengine/docs/flexible/python/how-
        # requests-are-routed).
        # Corresponds to the JSON property `appEngineRouting`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineRouting]
        attr_accessor :app_engine_routing
      
        # Deprecated. Use AppEngineHttpRequest.headers.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # Deprecated. Use AppEngineHttpRequest.http_method.
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # Deprecated. Use AppEngineHttpRequest.payload.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Deprecated. Use AppEngineHttpRequest.relative_url.
        # Corresponds to the JSON property `relativeUrl`
        # @return [String]
        attr_accessor :relative_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_routing = args[:app_engine_routing] if args.key?(:app_engine_routing)
          @headers = args[:headers] if args.key?(:headers)
          @http_method = args[:http_method] if args.key?(:http_method)
          @payload = args[:payload] if args.key?(:payload)
          @relative_url = args[:relative_url] if args.key?(:relative_url)
        end
      end
      
      # The status of a task attempt.
      class AttemptStatus
        include Google::Apis::Core::Hashable
      
        # Output only.
        # The time that this attempt was dispatched.
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
        # @return [Google::Apis::CloudtasksV2beta2::Status]
        attr_accessor :response_status
      
        # Output only.
        # The time that this attempt response was received.
        # `response_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `responseTime`
        # @return [String]
        attr_accessor :response_time
      
        # Output only.
        # The time that this attempt was scheduled.
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
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` or `joe@example.com`.
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
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for canceling a lease using
      # CloudTasks.CancelLease.
      class CancelLeaseRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is Task.View.BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for Task.View.FULL requires `cloudtasks.tasks.fullView`
        # [Google IAM](/iam/) permission on the
        # Task.name resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # Required.
        # The task's current schedule time, available in the Task.schedule_time
        # returned in PullTasksResponse.tasks or
        # CloudTasks.RenewLease. This restriction is to check that
        # the caller is canceling the correct task.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_view = args[:response_view] if args.key?(:response_view)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
        end
      end
      
      # Request message for CloudTasks.CreateTask.
      class CreateTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is Task.View.BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for Task.View.FULL requires `cloudtasks.tasks.fullView`
        # [Google IAM](/iam/) permission on the
        # Task.name resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # A unit of scheduled work.
        # Corresponds to the JSON property `task`
        # @return [Google::Apis::CloudtasksV2beta2::Task]
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
        # @return [Array<Google::Apis::CloudtasksV2beta2::Location>]
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
      
      # Response message for CloudTasks.ListQueues.
      class ListQueuesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # To return the next page of results, call
        # CloudTasks.ListQueues with this value as the
        # ListQueuesRequest.page_token.
        # If the next_page_token is empty, there are no more results.
        # The page token is valid for only 2 hours.
        # Corresponds to the JSON property `nextPageToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of queues.
        # Corresponds to the JSON property `queues`
        # @return [Array<Google::Apis::CloudtasksV2beta2::Queue>]
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
      
      # Response message for listing tasks using CloudTasks.ListTasks.
      class ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results.
        # To return the next page of results, call
        # CloudTasks.ListTasks with this value as the
        # ListTasksRequest.page_token.
        # If the next_page_token is empty, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of tasks.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::CloudtasksV2beta2::Task>]
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
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for CloudTasks.PauseQueue.
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
      # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudtasksV2beta2::Binding>]
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
      
        # Version of the `Policy`. The default version is 0.
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
      
      # The pull message contains data that can be used by the caller of
      # CloudTasks.PullTasks to process the task.
      # This proto can only be used for tasks in a queue which has
      # Queue.pull_target set.
      class PullMessage
        include Google::Apis::Core::Hashable
      
        # A data payload consumed by the task worker to execute the task.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # A meta-data tag for this task.
        # This value is used by CloudTasks.PullTasks calls when
        # PullTasksRequest.filter is `tag=<tag>`.
        # The tag must be less than 500 bytes.
        # Corresponds to the JSON property `tag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Deprecated. Use PullTarget.
      class PullQueueConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Pull target.
      class PullTarget
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Deprecated. Use PullMessage.
      class PullTaskTarget
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use PullMessage.payload.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Deprecated. Use PullMessage.tag.
        # Corresponds to the JSON property `tag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # Request message for pulling tasks using CloudTasks.PullTasks.
      class PullTasksRequest
        include Google::Apis::Core::Hashable
      
        # `filter` can be used to specify a subset of tasks to lease.
        # When `filter` is set to `tag=<my-tag>` then the
        # PullTasksResponse will contain only tasks whose
        # PullMessage.tag is equal to `<my-tag>`. `<my-tag>` can be
        # a bytes encoded as a string and must be less than 500 bytes.
        # If `<my-tag>` includes whitespace or special characters (characters which
        # aren't letters, numbers, or underscores), then it must be double-quoted.
        # Double quotes and backslashes in quoted strings must be escaped by
        # preceding it with a backslash (`\`).
        # When `filter` is set to `tag=oldest_tag()`, only tasks which have the same
        # tag as the task with the oldest schedule_time will be returned.
        # Grammar Syntax:
        # * `filter = "tag=" comparable`
        # *  `comparable = tag | function`
        # * `tag = string | bytes`
        # * `function = "oldest_tag()"`
        # The `oldest_tag()` function returns tasks which have the same tag as the
        # oldest task (ordered by schedule time).
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The duration of the lease.
        # Each task returned in the PullTasksResponse will have its
        # Task.schedule_time set to the current time plus the
        # `lease_duration`. A task that has been returned in a
        # PullTasksResponse is leased -- that task will not be
        # returned in a different PullTasksResponse before the
        # Task.schedule_time.
        # After the lease holder has successfully finished the work
        # associated with the task, the lease holder must call
        # CloudTasks.AcknowledgeTask. If the task is not acknowledged
        # via CloudTasks.AcknowledgeTask before the
        # Task.schedule_time then it will be returned in a later
        # PullTasksResponse so that another lease holder can process
        # it.
        # The maximum lease duration is 1 week.
        # `lease_duration` will be truncated to the nearest second.
        # Corresponds to the JSON property `leaseDuration`
        # @return [String]
        attr_accessor :lease_duration
      
        # The maximum number of tasks to lease. The maximum that can be
        # requested is 1000.
        # Corresponds to the JSON property `maxTasks`
        # @return [Fixnum]
        attr_accessor :max_tasks
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is Task.View.BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for Task.View.FULL requires `cloudtasks.tasks.fullView`
        # [Google IAM](/iam/) permission on the
        # Task.name resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @lease_duration = args[:lease_duration] if args.key?(:lease_duration)
          @max_tasks = args[:max_tasks] if args.key?(:max_tasks)
          @response_view = args[:response_view] if args.key?(:response_view)
        end
      end
      
      # Response message for pulling tasks using CloudTasks.PullTasks.
      class PullTasksResponse
        include Google::Apis::Core::Hashable
      
        # The leased tasks.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::CloudtasksV2beta2::Task>]
        attr_accessor :tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tasks = args[:tasks] if args.key?(:tasks)
        end
      end
      
      # Request message for CloudTasks.PurgeQueue.
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
      # retry options, target types, and others.
      class Queue
        include Google::Apis::Core::Hashable
      
        # App Engine HTTP target.
        # The task will be delivered to the App Engine application hostname
        # specified by its AppEngineHttpTarget and AppEngineHttpRequest.
        # The documentation for AppEngineHttpRequest explains how the
        # task's host URL is constructed.
        # Using AppEngineHttpTarget requires
        # [`appengine.applications.get`](/appengine/docs/admin-api/access-control)
        # Google IAM permission for the project
        # and the following scope:
        # `https://www.googleapis.com/auth/cloud-platform`
        # Corresponds to the JSON property `appEngineHttpTarget`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineHttpTarget]
        attr_accessor :app_engine_http_target
      
        # Deprecated. Use AppEngineTarget.
        # Corresponds to the JSON property `appEngineQueueConfig`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineQueueConfig]
        attr_accessor :app_engine_queue_config
      
        # The queue name.
        # The queue name must have the following format:
        # `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        # * `PROJECT_ID` can contain uppercase and lowercase letters,
        # numbers, hyphens, colons, and periods; that is, it must match
        # the regular expression: `[a-zA-Z\\d-:\\.]+`.
        # * `QUEUE_ID` can contain uppercase and lowercase letters,
        # numbers, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d-]+`. The maximum length is 100
        # characters.
        # Caller-specified and required in CreateQueueRequest, after which
        # it becomes output only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated. Use PullTarget.
        # Corresponds to the JSON property `pullQueueConfig`
        # @return [Google::Apis::CloudtasksV2beta2::PullQueueConfig]
        attr_accessor :pull_queue_config
      
        # Pull target.
        # Corresponds to the JSON property `pullTarget`
        # @return [Google::Apis::CloudtasksV2beta2::PullTarget]
        attr_accessor :pull_target
      
        # Output only.
        # The last time this queue was purged. All tasks that were
        # created before this time were purged.
        # A queue can be purged using CloudTasks.PurgeQueue, the
        # [App Engine Task Queue SDK, or the Cloud Console](/appengine/docs/standard/
        # python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue)
        # .
        # Purge time will be truncated to the nearest microsecond. Purge
        # time will be zero if the queue has never been purged.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        # Output only.
        # The state of the queue.
        # `queue_state` can only be changed by called
        # CloudTasks.PauseQueue, CloudTasks.ResumeQueue, or uploading
        # [queue.yaml](/appengine/docs/python/config/queueref).
        # CloudTasks.UpdateQueue cannot be used to change `queue_state`.
        # Corresponds to the JSON property `queueState`
        # @return [String]
        attr_accessor :queue_state
      
        # Retry config.
        # These settings determine retry behavior.
        # If a task does not complete successfully, meaning that an
        # acknowledgement is not received from the handler before the
        # [deadline](/appengine/docs/python/taskqueue/push/#the_task_deadline),
        # then it will be retried with exponential backoff according to the
        # settings in RetryConfig.
        # Corresponds to the JSON property `retryConfig`
        # @return [Google::Apis::CloudtasksV2beta2::RetryConfig]
        attr_accessor :retry_config
      
        # Throttle config.
        # These settings determine the throttling behavior.
        # Corresponds to the JSON property `throttleConfig`
        # @return [Google::Apis::CloudtasksV2beta2::ThrottleConfig]
        attr_accessor :throttle_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_http_target = args[:app_engine_http_target] if args.key?(:app_engine_http_target)
          @app_engine_queue_config = args[:app_engine_queue_config] if args.key?(:app_engine_queue_config)
          @name = args[:name] if args.key?(:name)
          @pull_queue_config = args[:pull_queue_config] if args.key?(:pull_queue_config)
          @pull_target = args[:pull_target] if args.key?(:pull_target)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
          @queue_state = args[:queue_state] if args.key?(:queue_state)
          @retry_config = args[:retry_config] if args.key?(:retry_config)
          @throttle_config = args[:throttle_config] if args.key?(:throttle_config)
        end
      end
      
      # Request message for renewing a lease using CloudTasks.RenewLease.
      class RenewLeaseRequest
        include Google::Apis::Core::Hashable
      
        # Required.
        # The desired new lease duration, starting from now.
        # The maximum lease duration is 1 week.
        # `new_lease_duration` will be truncated to the nearest second.
        # Corresponds to the JSON property `newLeaseDuration`
        # @return [String]
        attr_accessor :new_lease_duration
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is Task.View.BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for Task.View.FULL requires `cloudtasks.tasks.fullView`
        # [Google IAM](/iam/) permission on the
        # Task.name resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # Required.
        # The task's current schedule time, available in the Task.schedule_time
        # returned in PullTasksResponse.tasks or
        # CloudTasks.RenewLease. This restriction is to check that
        # the caller is renewing the correct task.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_lease_duration = args[:new_lease_duration] if args.key?(:new_lease_duration)
          @response_view = args[:response_view] if args.key?(:response_view)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
        end
      end
      
      # Request message for CloudTasks.ResumeQueue.
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
      # These settings determine retry behavior.
      # If a task does not complete successfully, meaning that an
      # acknowledgement is not received from the handler before the
      # [deadline](/appengine/docs/python/taskqueue/push/#the_task_deadline),
      # then it will be retried with exponential backoff according to the
      # settings in RetryConfig.
      class RetryConfig
        include Google::Apis::Core::Hashable
      
        # The maximum number of attempts for a task.
        # Cloud Tasks will attempt the task `max_attempts` times (that
        # is, if the first attempt fails, then there will be
        # `max_attempts - 1` retries).  Must be > 0.
        # Corresponds to the JSON property `maxAttempts`
        # @return [Fixnum]
        attr_accessor :max_attempts
      
        # The maximum amount of time to wait before retrying a task after
        # it fails. The default is 1 hour.
        # * For [App Engine queues](google.cloud.tasks.v2beta2.AppEngineHttpTarget),
        # this field is 1 hour by default.
        # * For [pull queues](google.cloud.tasks.v2beta2.PullTarget), this field
        # is output only and always 0.
        # `max_backoff` will be truncated to the nearest second.
        # Corresponds to the JSON property `maxBackoff`
        # @return [String]
        attr_accessor :max_backoff
      
        # The maximum number of times that the interval between failed task
        # retries will be doubled before the increase becomes constant. The
        # constant is: 2**(max_doublings - 1) *
        # RetryConfig.min_backoff.
        # * For [App Engine queues](google.cloud.tasks.v2beta2.AppEngineHttpTarget),
        # this field is 16 by default.
        # * For [pull queues](google.cloud.tasks.v2beta2.PullTarget), this field
        # is output only and always 0.
        # Corresponds to the JSON property `maxDoublings`
        # @return [Fixnum]
        attr_accessor :max_doublings
      
        # The minimum amount of time to wait before retrying a task after
        # it fails.
        # * For [App Engine queues](google.cloud.tasks.v2beta2.AppEngineHttpTarget),
        # this field is 0.1 seconds by default.
        # * For [pull queues](google.cloud.tasks.v2beta2.PullTarget), this
        # field is output only and always 0.
        # `min_backoff` will be truncated to the nearest second.
        # Corresponds to the JSON property `minBackoff`
        # @return [String]
        attr_accessor :min_backoff
      
        # If positive, task_age_limit specifies the time limit for retrying a failed
        # task, measured from when the task was first run. If specified with
        # RetryConfig.max_attempts, the task will be retried until both
        # limits are reached.
        # If zero, then the task age is unlimited. This field is zero by default.
        # `task_age_limit` will be truncated to the nearest second.
        # Corresponds to the JSON property `taskAgeLimit`
        # @return [String]
        attr_accessor :task_age_limit
      
        # If true, then the number of attempts is unlimited.
        # Corresponds to the JSON property `unlimitedAttempts`
        # @return [Boolean]
        attr_accessor :unlimited_attempts
        alias_method :unlimited_attempts?, :unlimited_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_attempts = args[:max_attempts] if args.key?(:max_attempts)
          @max_backoff = args[:max_backoff] if args.key?(:max_backoff)
          @max_doublings = args[:max_doublings] if args.key?(:max_doublings)
          @min_backoff = args[:min_backoff] if args.key?(:min_backoff)
          @task_age_limit = args[:task_age_limit] if args.key?(:task_age_limit)
          @unlimited_attempts = args[:unlimited_attempts] if args.key?(:unlimited_attempts)
        end
      end
      
      # Request message for forcing a task to run now using
      # CloudTasks.RunTask.
      class RunTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be
        # returned.
        # By default response_view is Task.View.BASIC; not all
        # information is retrieved by default because some data, such as
        # payloads, might be desirable to return only when needed because
        # of its large size or because of the sensitivity of data that it
        # contains.
        # Authorization for Task.View.FULL requires `cloudtasks.tasks.fullView`
        # [Google IAM](/iam/) permission on the
        # Task.name resource.
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
        # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudtasksV2beta2::Policy]
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
        # Queue.app_engine_http_target set.
        # Using AppEngineHttpRequest requires
        # [`appengine.applications.get`](/appengine/docs/admin-api/access-control)
        # Google IAM permission for the project
        # and the following scope:
        # `https://www.googleapis.com/auth/cloud-platform`
        # The task will be delivered to the App Engine app which belongs to the same
        # project as the queue. For more information, see
        # [How Requests are Routed](/appengine/docs/standard/python/how-requests-are-
        # routed)
        # and how routing is affected by
        # [dispatch files](/appengine/docs/python/config/dispatchref).
        # The AppEngineRouting used to construct the URL that the task is
        # delivered to can be set at the queue-level or task-level:
        # *  If set, AppEngineHttpTarget.app_engine_routing_override is used for
        # all tasks in the queue, no matter what the setting is for the
        # task-level app_engine_routing.
        # The `url` that the task will be sent to is:
        # * `url =` AppEngineRouting.host `+` AppEngineHttpRequest.relative_url
        # The task will be sent to a task handler by an HTTP
        # request using the specified AppEngineHttpRequest.http_method (for example
        # POST, HTTP GET, etc). The task attempt has succeeded if the task handler
        # returns an HTTP response code in the range [200 - 299]. Error 503 is
        # considered an App Engine system error instead of an application error.
        # Requests returning error 503 will be retried regardless of retry
        # configuration and not counted against retry counts.
        # Any other response code or a failure to receive a response before the
        # deadline is a failed attempt.
        # Corresponds to the JSON property `appEngineHttpRequest`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineHttpRequest]
        attr_accessor :app_engine_http_request
      
        # Deprecated. Use AppEngineHttpRequest.
        # Corresponds to the JSON property `appEngineTaskTarget`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineTaskTarget]
        attr_accessor :app_engine_task_target
      
        # Output only.
        # The time that the task was created.
        # `create_time` will be truncated to the nearest second.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The task name.
        # The task name must have the following format:
        # `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # * `PROJECT_ID` can contain uppercase and lowercase letters,
        # numbers, hyphens, colons, and periods; that is, it must match
        # the regular expression: `[a-zA-Z\\d-:\\.]+`.
        # * `QUEUE_ID` can contain uppercase and lowercase letters,
        # numbers, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d-]+`. The maximum length is 100
        # characters.
        # * `TASK_ID` contain uppercase and lowercase letters, numbers,
        # underscores, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d_-]+`. The maximum length is 500
        # characters.
        # Optionally caller-specified in CreateTaskRequest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The pull message contains data that can be used by the caller of
        # CloudTasks.PullTasks to process the task.
        # This proto can only be used for tasks in a queue which has
        # Queue.pull_target set.
        # Corresponds to the JSON property `pullMessage`
        # @return [Google::Apis::CloudtasksV2beta2::PullMessage]
        attr_accessor :pull_message
      
        # Deprecated. Use PullMessage.
        # Corresponds to the JSON property `pullTaskTarget`
        # @return [Google::Apis::CloudtasksV2beta2::PullTaskTarget]
        attr_accessor :pull_task_target
      
        # The time when the task is scheduled to be attempted.
        # For pull queues, this is the time when the task is available to
        # be leased; if a task is currently leased, this is the time when
        # the current lease expires, that is, the time that the task was
        # leased plus the PullTasksRequest.lease_duration.
        # For App Engine queues, this is when the task will be attempted or retried.
        # `schedule_time` will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Status of the task.
        # Corresponds to the JSON property `taskStatus`
        # @return [Google::Apis::CloudtasksV2beta2::TaskStatus]
        attr_accessor :task_status
      
        # Output only.
        # The view specifies which subset of the Task has been
        # returned.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_http_request = args[:app_engine_http_request] if args.key?(:app_engine_http_request)
          @app_engine_task_target = args[:app_engine_task_target] if args.key?(:app_engine_task_target)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @pull_message = args[:pull_message] if args.key?(:pull_message)
          @pull_task_target = args[:pull_task_target] if args.key?(:pull_task_target)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @task_status = args[:task_status] if args.key?(:task_status)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Status of the task.
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Output only.
        # The number of attempts dispatched. This count includes tasks which have
        # been dispatched but haven't received a response.
        # Corresponds to the JSON property `attemptDispatchCount`
        # @return [Fixnum]
        attr_accessor :attempt_dispatch_count
      
        # Output only.
        # The number of attempts which have received a response.
        # This field is not calculated for
        # [pull tasks](google.cloud.tasks.v2beta2.PullTaskTarget).
        # Corresponds to the JSON property `attemptResponseCount`
        # @return [Fixnum]
        attr_accessor :attempt_response_count
      
        # The status of a task attempt.
        # Corresponds to the JSON property `firstAttemptStatus`
        # @return [Google::Apis::CloudtasksV2beta2::AttemptStatus]
        attr_accessor :first_attempt_status
      
        # The status of a task attempt.
        # Corresponds to the JSON property `lastAttemptStatus`
        # @return [Google::Apis::CloudtasksV2beta2::AttemptStatus]
        attr_accessor :last_attempt_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attempt_dispatch_count = args[:attempt_dispatch_count] if args.key?(:attempt_dispatch_count)
          @attempt_response_count = args[:attempt_response_count] if args.key?(:attempt_response_count)
          @first_attempt_status = args[:first_attempt_status] if args.key?(:first_attempt_status)
          @last_attempt_status = args[:last_attempt_status] if args.key?(:last_attempt_status)
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
      
      # Throttle config.
      # These settings determine the throttling behavior.
      class ThrottleConfig
        include Google::Apis::Core::Hashable
      
        # Output only.
        # The max burst size limits how fast the queue is processed when
        # many tasks are in the queue and the rate is high. This field
        # allows the queue to have a high rate so processing starts shortly
        # after a task is enqueued, but still limits resource usage when
        # many tasks are enqueued in a short period of time.
        # * For App Engine queues, if
        # ThrottleConfig.max_tasks_dispatched_per_second is 1, this
        # field is 10; otherwise this field is
        # ThrottleConfig.max_tasks_dispatched_per_second / 5.
        # * For pull queues, this field is output only and always 10,000.
        # Note: For App Engine queues that were created through
        # `queue.yaml/xml`, `max_burst_size` might not have the same
        # settings as specified above; CloudTasks.UpdateQueue can be
        # used to set `max_burst_size` only to the values specified above.
        # This field has the same meaning as
        # [bucket_size in queue.yaml](/appengine/docs/standard/python/config/queueref#
        # bucket_size).
        # Corresponds to the JSON property `maxBurstSize`
        # @return [Fixnum]
        attr_accessor :max_burst_size
      
        # The maximum number of outstanding tasks that Cloud Tasks allows
        # to be dispatched for this queue. After this threshold has been
        # reached, Cloud Tasks stops dispatching tasks until the number of
        # outstanding requests decreases.
        # The maximum allowed value is 5,000.
        # * For App Engine queues, this field is 10 by default.
        # * For pull queues, this field is output only and always -1, which
        # indicates no limit.
        # This field has the same meaning as
        # [max_concurrent_requests in queue.yaml](/appengine/docs/standard/python/config/
        # queueref#max_concurrent_requests).
        # Corresponds to the JSON property `maxOutstandingTasks`
        # @return [Fixnum]
        attr_accessor :max_outstanding_tasks
      
        # The maximum rate at which tasks are dispatched from this
        # queue.
        # The maximum allowed value is 500.
        # * For App Engine queues, this field is 1 by default.
        # * For pull queues, this field is output only and always 10,000.
        # This field has the same meaning as
        # [rate in queue.yaml](/appengine/docs/standard/python/config/queueref#rate).
        # Corresponds to the JSON property `maxTasksDispatchedPerSecond`
        # @return [Float]
        attr_accessor :max_tasks_dispatched_per_second
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_burst_size = args[:max_burst_size] if args.key?(:max_burst_size)
          @max_outstanding_tasks = args[:max_outstanding_tasks] if args.key?(:max_outstanding_tasks)
          @max_tasks_dispatched_per_second = args[:max_tasks_dispatched_per_second] if args.key?(:max_tasks_dispatched_per_second)
        end
      end
    end
  end
end
