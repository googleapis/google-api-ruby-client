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
      
      # Request message for acknowledging a task using AcknowledgeTask.
      class AcknowledgeTaskRequest
        include Google::Apis::Core::Hashable
      
        # Required. The task's current schedule time, available in the schedule_time
        # returned by LeaseTasks response or RenewLease response. This restriction is to
        # ensure that your worker currently holds the lease.
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
      
      # App Engine HTTP request. The message defines the HTTP request that is sent to
      # an App Engine app when the task is dispatched. This proto can only be used for
      # tasks in a queue which has app_engine_http_target set. Using
      # AppEngineHttpRequest requires [`appengine.applications.get`](https://cloud.
      # google.com/appengine/docs/admin-api/access-control) Google IAM permission for
      # the project and the following scope: `https://www.googleapis.com/auth/cloud-
      # platform` The task will be delivered to the App Engine app which belongs to
      # the same project as the queue. For more information, see [How Requests are
      # Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-
      # are-routed) and how routing is affected by [dispatch files](https://cloud.
      # google.com/appengine/docs/python/config/dispatchref). Traffic is encrypted
      # during transport and never leaves Google datacenters. Because this traffic is
      # carried over a communication mechanism internal to Google, you cannot
      # explicitly set the protocol (for example, HTTP or HTTPS). The request to the
      # handler, however, will appear to have used the HTTP protocol. The
      # AppEngineRouting used to construct the URL that the task is delivered to can
      # be set at the queue-level or task-level: * If set, app_engine_routing_override
      # is used for all tasks in the queue, no matter what the setting is for the task-
      # level app_engine_routing. The `url` that the task will be sent to is: * `url =`
      # host `+` relative_url Tasks can be dispatched to secure app handlers,
      # unsecure app handlers, and URIs restricted with [`login: admin`](https://cloud.
      # google.com/appengine/docs/standard/python/config/appref). Because tasks are
      # not run as any user, they cannot be dispatched to URIs restricted with [`login:
      # required`](https://cloud.google.com/appengine/docs/standard/python/config/
      # appref) Task dispatches also do not follow redirects. The task attempt has
      # succeeded if the app's request handler returns an HTTP response code in the
      # range [`200` - `299`]. The task attempt has failed if the app's handler
      # returns a non-2xx response code or Cloud Tasks does not receive response
      # before the deadline. Failed tasks will be retried according to the retry
      # configuration. `503` (Service Unavailable) is considered an App Engine system
      # error instead of an application error and will cause Cloud Tasks' traffic
      # congestion control to temporarily throttle the queue's dispatches. Unlike
      # other types of task targets, a `429` (Too Many Requests) response from an app
      # handler does not cause traffic congestion control to throttle the queue.
      class AppEngineHttpRequest
        include Google::Apis::Core::Hashable
      
        # App Engine Routing. Defines routing characteristics specific to App Engine -
        # service, version, and instance. For more information about services, versions,
        # and instances see [An Overview of App Engine](https://cloud.google.com/
        # appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture
        # on Google App Engine](https://cloud.google.com/appengine/docs/python/
        # microservices-on-app-engine), [App Engine Standard request routing](https://
        # cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [
        # App Engine Flex request routing](https://cloud.google.com/appengine/docs/
        # flexible/python/how-requests-are-routed).
        # Corresponds to the JSON property `appEngineRouting`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineRouting]
        attr_accessor :app_engine_routing
      
        # HTTP request headers. This map contains the header field names and values.
        # Headers can be set when the task is created. Repeated headers are not
        # supported but a header value can contain commas. Cloud Tasks sets some headers
        # to default values: * `User-Agent`: By default, this header is `"AppEngine-
        # Google; (+http://code.google.com/appengine)"`. This header can be modified,
        # but Cloud Tasks will append `"AppEngine-Google; (+http://code.google.com/
        # appengine)"` to the modified `User-Agent`. If the task has a payload, Cloud
        # Tasks sets the following headers: * `Content-Type`: By default, the `Content-
        # Type` header is set to `"application/octet-stream"`. The default can be
        # overridden by explicitly setting `Content-Type` to a particular media type
        # when the task is created. For example, `Content-Type` can be set to `"
        # application/json"`. * `Content-Length`: This is computed by Cloud Tasks. This
        # value is output only. It cannot be changed. The headers below cannot be set or
        # overridden: * `Host` * `X-Google-*` * `X-AppEngine-*` In addition, Cloud Tasks
        # sets some headers when the task is dispatched, such as headers containing
        # information about the task; see [request headers](https://cloud.google.com/
        # appengine/docs/python/taskqueue/push/creating-handlers#reading_request_headers)
        # . These headers are set only when the task is dispatched, so they are not
        # visible when the task is returned in a Cloud Tasks response. Although there is
        # no specific limit for the maximum number of headers or the size, there is a
        # limit on the maximum size of the Task. For more information, see the
        # CreateTask documentation.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The HTTP method to use for the request. The default is POST. The app's request
        # handler for the task's target URL must be able to handle HTTP requests with
        # this http_method, otherwise the task attempt fails with error code 405 (Method
        # Not Allowed). See [Writing a push task request handler](https://cloud.google.
        # com/appengine/docs/java/taskqueue/push/creating-handlers#
        # writing_a_push_task_request_handler) and the App Engine documentation for your
        # runtime on [How Requests are Handled](https://cloud.google.com/appengine/docs/
        # standard/python3/how-requests-are-handled).
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # Payload. The payload will be sent as the HTTP message body. A message body,
        # and thus a payload, is allowed only if the HTTP method is POST or PUT. It is
        # an error to set a data payload on a task with an incompatible HttpMethod.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # The relative URL. The relative URL must begin with "/" and must be a valid
        # HTTP relative URL. It can contain a path and query string arguments. If the
        # relative URL is empty, then the root path "/" will be used. No spaces are
        # allowed, and the maximum length allowed is 2083 characters.
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
      
      # App Engine HTTP target. The task will be delivered to the App Engine
      # application hostname specified by its AppEngineHttpTarget and
      # AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how
      # the task's host URL is constructed. Using AppEngineHttpTarget requires [`
      # appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/
      # access-control) Google IAM permission for the project and the following scope:
      # `https://www.googleapis.com/auth/cloud-platform`
      class AppEngineHttpTarget
        include Google::Apis::Core::Hashable
      
        # App Engine Routing. Defines routing characteristics specific to App Engine -
        # service, version, and instance. For more information about services, versions,
        # and instances see [An Overview of App Engine](https://cloud.google.com/
        # appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture
        # on Google App Engine](https://cloud.google.com/appengine/docs/python/
        # microservices-on-app-engine), [App Engine Standard request routing](https://
        # cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [
        # App Engine Flex request routing](https://cloud.google.com/appengine/docs/
        # flexible/python/how-requests-are-routed).
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
      
      # App Engine Routing. Defines routing characteristics specific to App Engine -
      # service, version, and instance. For more information about services, versions,
      # and instances see [An Overview of App Engine](https://cloud.google.com/
      # appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture
      # on Google App Engine](https://cloud.google.com/appengine/docs/python/
      # microservices-on-app-engine), [App Engine Standard request routing](https://
      # cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [
      # App Engine Flex request routing](https://cloud.google.com/appengine/docs/
      # flexible/python/how-requests-are-routed).
      class AppEngineRouting
        include Google::Apis::Core::Hashable
      
        # Output only. The host that the task is sent to. For more information, see [How
        # Requests are Routed](https://cloud.google.com/appengine/docs/standard/python/
        # how-requests-are-routed). The host is constructed as: * `host = [
        # application_domain_name]` `| [service] + '.' + [application_domain_name]` `| [
        # version] + '.' + [application_domain_name]` `| [version_dot_service]+ '.' + [
        # application_domain_name]` `| [instance] + '.' + [application_domain_name]` `| [
        # instance_dot_service] + '.' + [application_domain_name]` `| [
        # instance_dot_version] + '.' + [application_domain_name]` `| [
        # instance_dot_version_dot_service] + '.' + [application_domain_name]` * `
        # application_domain_name` = The domain name of the app, for example .appspot.
        # com, which is associated with the queue's project ID. Some tasks which were
        # created using the App Engine SDK use a custom domain name. * `service =`
        # service * `version =` version * `version_dot_service =` version `+ '.' +`
        # service * `instance =` instance * `instance_dot_service =` instance `+ '.' +`
        # service * `instance_dot_version =` instance `+ '.' +` version * `
        # instance_dot_version_dot_service =` instance `+ '.' +` version `+ '.' +`
        # service If service is empty, then the task will be sent to the service which
        # is the default service when the task is attempted. If version is empty, then
        # the task will be sent to the version which is the default version when the
        # task is attempted. If instance is empty, then the task will be sent to an
        # instance which is available when the task is attempted. If service, version,
        # or instance is invalid, then the task will be sent to the default version of
        # the default service when the task is attempted.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # App instance. By default, the task is sent to an instance which is available
        # when the task is attempted. Requests can only be sent to a specific instance
        # if [manual scaling is used in App Engine Standard](https://cloud.google.com/
        # appengine/docs/python/an-overview-of-app-engine?hl=en_US#
        # scaling_types_and_instance_classes). App Engine Flex does not support
        # instances. For more information, see [App Engine Standard request routing](
        # https://cloud.google.com/appengine/docs/standard/python/how-requests-are-
        # routed) and [App Engine Flex request routing](https://cloud.google.com/
        # appengine/docs/flexible/python/how-requests-are-routed).
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # App service. By default, the task is sent to the service which is the default
        # service when the task is attempted. For some queues or tasks which were
        # created using the App Engine Task Queue API, host is not parsable into service,
        # version, and instance. For example, some tasks which were created using the
        # App Engine SDK use a custom domain name; custom domains are not parsed by
        # Cloud Tasks. If host is not parsable, then service, version, and instance are
        # the empty string.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # App version. By default, the task is sent to the version which is the default
        # version when the task is attempted. For some queues or tasks which were
        # created using the App Engine Task Queue API, host is not parsable into service,
        # version, and instance. For example, some tasks which were created using the
        # App Engine SDK use a custom domain name; custom domains are not parsed by
        # Cloud Tasks. If host is not parsable, then service, version, and instance are
        # the empty string.
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
      class AttemptStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The time that this attempt was dispatched. `dispatch_time` will
        # be truncated to the nearest microsecond.
        # Corresponds to the JSON property `dispatchTime`
        # @return [String]
        attr_accessor :dispatch_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `responseStatus`
        # @return [Google::Apis::CloudtasksV2beta2::Status]
        attr_accessor :response_status
      
        # Output only. The time that this attempt response was received. `response_time`
        # will be truncated to the nearest microsecond.
        # Corresponds to the JSON property `responseTime`
        # @return [String]
        attr_accessor :response_time
      
        # Output only. The time that this attempt was scheduled. `schedule_time` will be
        # truncated to the nearest microsecond.
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
        # @return [Google::Apis::CloudtasksV2beta2::Expr]
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
      
      # Request message for canceling a lease using CancelLease.
      class CancelLeaseRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be returned. By
        # default response_view is BASIC; not all information is retrieved by default
        # because some data, such as payloads, might be desirable to return only when
        # needed because of its large size or because of the sensitivity of data that it
        # contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google
        # IAM](https://cloud.google.com/iam/) permission on the Task resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # Required. The task's current schedule time, available in the schedule_time
        # returned by LeaseTasks response or RenewLease response. This restriction is to
        # ensure that your worker currently holds the lease.
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
      
      # Request message for CreateTask.
      class CreateTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be returned. By
        # default response_view is BASIC; not all information is retrieved by default
        # because some data, such as payloads, might be desirable to return only when
        # needed because of its large size or because of the sensitivity of data that it
        # contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google
        # IAM](https://cloud.google.com/iam/) permission on the Task resource.
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudtasksV2beta2::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned. Valid values are 0, 1, and
        # 3. Requests specifying an invalid value will be rejected. Requests for
        # policies with any conditional bindings must specify version 3. Policies
        # without any conditional bindings may specify any valid value or leave the
        # field unset. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Request message for leasing tasks using LeaseTasks.
      class LeaseTasksRequest
        include Google::Apis::Core::Hashable
      
        # `filter` can be used to specify a subset of tasks to lease. When `filter` is
        # set to `tag=` then the response will contain only tasks whose tag is equal to `
        # `. `` must be less than 500 characters. When `filter` is set to `tag_function=
        # oldest_tag()`, only tasks which have the same tag as the task with the oldest
        # schedule_time will be returned. Grammar Syntax: * `filter = "tag=" tag | "
        # tag_function=" function` * `tag = string` * `function = "oldest_tag()"` The `
        # oldest_tag()` function returns tasks which have the same tag as the oldest
        # task (ordered by schedule time). SDK compatibility: Although the SDK allows
        # tags to be either string or [bytes](https://cloud.google.com/appengine/docs/
        # standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-
        # byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. Tag which aren't
        # UTF-8 encoded can't be used in the filter and the task's tag will be displayed
        # as empty in Cloud Tasks.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The duration of the lease. Each task returned in the response will
        # have its schedule_time set to the current time plus the `lease_duration`. The
        # task is leased until its schedule_time; thus, the task will not be returned to
        # another LeaseTasks call before its schedule_time. After the worker has
        # successfully finished the work associated with the task, the worker must call
        # via AcknowledgeTask before the schedule_time. Otherwise the task will be
        # returned to a later LeaseTasks call so that another worker can retry it. The
        # maximum lease duration is 1 week. `lease_duration` will be truncated to the
        # nearest second.
        # Corresponds to the JSON property `leaseDuration`
        # @return [String]
        attr_accessor :lease_duration
      
        # The maximum number of tasks to lease. The system will make a best effort to
        # return as close to as `max_tasks` as possible. The largest that `max_tasks`
        # can be is 1000. The maximum total size of a lease tasks response is 32 MB. If
        # the sum of all task sizes requested reaches this limit, fewer tasks than
        # requested are returned.
        # Corresponds to the JSON property `maxTasks`
        # @return [Fixnum]
        attr_accessor :max_tasks
      
        # The response_view specifies which subset of the Task will be returned. By
        # default response_view is BASIC; not all information is retrieved by default
        # because some data, such as payloads, might be desirable to return only when
        # needed because of its large size or because of the sensitivity of data that it
        # contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google
        # IAM](https://cloud.google.com/iam/) permission on the Task resource.
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
      
      # Response message for leasing tasks using LeaseTasks.
      class LeaseTasksResponse
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
      
      # Response message for ListQueues.
      class ListQueuesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. To return the next page of results,
        # call ListQueues with this value as the page_token. If the next_page_token is
        # empty, there are no more results. The page token is valid for only 2 hours.
        # Corresponds to the JSON property `nextPageToken`
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
      
      # Response message for listing tasks using ListTasks.
      class ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. To return the next page of results,
        # call ListTasks with this value as the page_token. If the next_page_token is
        # empty, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
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
        # @return [Array<Google::Apis::CloudtasksV2beta2::Binding>]
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
      
      # The pull message contains data that can be used by the caller of LeaseTasks to
      # process the task. This proto can only be used for tasks in a queue which has
      # pull_target set.
      class PullMessage
        include Google::Apis::Core::Hashable
      
        # A data payload consumed by the worker to execute the task.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # The task's tag. Tags allow similar tasks to be processed in a batch. If you
        # label tasks with a tag, your worker can lease tasks with the same tag using
        # filter. For example, if you want to aggregate the events associated with a
        # specific user once a day, you could tag tasks with the user ID. The task's tag
        # can only be set when the task is created. The tag must be less than 500
        # characters. SDK compatibility: Although the SDK allows tags to be either
        # string or [bytes](https://cloud.google.com/appengine/docs/standard/java/
        # javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only
        # UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded,
        # the tag will be empty when the task is returned by Cloud Tasks.
        # Corresponds to the JSON property `tag`
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
      
      # A queue is a container of related tasks. Queues are configured to manage how
      # those tasks are dispatched. Configurable properties include rate limits, retry
      # options, target types, and others.
      class Queue
        include Google::Apis::Core::Hashable
      
        # App Engine HTTP target. The task will be delivered to the App Engine
        # application hostname specified by its AppEngineHttpTarget and
        # AppEngineHttpRequest. The documentation for AppEngineHttpRequest explains how
        # the task's host URL is constructed. Using AppEngineHttpTarget requires [`
        # appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/
        # access-control) Google IAM permission for the project and the following scope:
        # `https://www.googleapis.com/auth/cloud-platform`
        # Corresponds to the JSON property `appEngineHttpTarget`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineHttpTarget]
        attr_accessor :app_engine_http_target
      
        # Caller-specified and required in CreateQueue, after which it becomes output
        # only. The queue name. The queue name must have the following format: `projects/
        # PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain
        # letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.).
        # For more information, see [Identifying projects](https://cloud.google.com/
        # resource-manager/docs/creating-managing-projects#identifying_projects) * `
        # LOCATION_ID` is the canonical ID for the queue's location. The list of
        # available locations can be obtained by calling ListLocations. For more
        # information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can
        # contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum
        # length is 100 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Pull target.
        # Corresponds to the JSON property `pullTarget`
        # @return [Google::Apis::CloudtasksV2beta2::PullTarget]
        attr_accessor :pull_target
      
        # Output only. The last time this queue was purged. All tasks that were created
        # before this time were purged. A queue can be purged using PurgeQueue, the [App
        # Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/
        # appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#
        # purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest
        # microsecond. Purge time will be unset if the queue has never been purged.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        # Rate limits. This message determines the maximum rate that tasks can be
        # dispatched by a queue, regardless of whether the dispatch is a first task
        # attempt or a retry. Note: The debugging command, RunTask, will run a task even
        # if the queue has reached its RateLimits.
        # Corresponds to the JSON property `rateLimits`
        # @return [Google::Apis::CloudtasksV2beta2::RateLimits]
        attr_accessor :rate_limits
      
        # Retry config. These settings determine how a failed task attempt is retried.
        # Corresponds to the JSON property `retryConfig`
        # @return [Google::Apis::CloudtasksV2beta2::RetryConfig]
        attr_accessor :retry_config
      
        # Output only. The state of the queue. `state` can only be changed by called
        # PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.
        # com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to
        # change `state`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Statistics for a queue.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::CloudtasksV2beta2::QueueStats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_http_target = args[:app_engine_http_target] if args.key?(:app_engine_http_target)
          @name = args[:name] if args.key?(:name)
          @pull_target = args[:pull_target] if args.key?(:pull_target)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
          @rate_limits = args[:rate_limits] if args.key?(:rate_limits)
          @retry_config = args[:retry_config] if args.key?(:retry_config)
          @state = args[:state] if args.key?(:state)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Statistics for a queue.
      class QueueStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of requests that the queue has dispatched but has not
        # received a reply for yet.
        # Corresponds to the JSON property `concurrentDispatchesCount`
        # @return [Fixnum]
        attr_accessor :concurrent_dispatches_count
      
        # Output only. The current maximum number of tasks per second executed by the
        # queue. The maximum value of this variable is controlled by the RateLimits of
        # the Queue. However, this value could be less to avoid overloading the
        # endpoints tasks in the queue are targeting.
        # Corresponds to the JSON property `effectiveExecutionRate`
        # @return [Float]
        attr_accessor :effective_execution_rate
      
        # Output only. The number of tasks that the queue has dispatched and received a
        # reply for during the last minute. This variable counts both successful and non-
        # successful executions.
        # Corresponds to the JSON property `executedLastMinuteCount`
        # @return [Fixnum]
        attr_accessor :executed_last_minute_count
      
        # Output only. An estimation of the nearest time in the future where a task in
        # the queue is scheduled to be executed.
        # Corresponds to the JSON property `oldestEstimatedArrivalTime`
        # @return [String]
        attr_accessor :oldest_estimated_arrival_time
      
        # Output only. An estimation of the number of tasks in the queue, that is, the
        # tasks in the queue that haven't been executed, the tasks in the queue which
        # the queue has dispatched but has not yet received a reply for, and the failed
        # tasks that the queue is retrying.
        # Corresponds to the JSON property `tasksCount`
        # @return [Fixnum]
        attr_accessor :tasks_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrent_dispatches_count = args[:concurrent_dispatches_count] if args.key?(:concurrent_dispatches_count)
          @effective_execution_rate = args[:effective_execution_rate] if args.key?(:effective_execution_rate)
          @executed_last_minute_count = args[:executed_last_minute_count] if args.key?(:executed_last_minute_count)
          @oldest_estimated_arrival_time = args[:oldest_estimated_arrival_time] if args.key?(:oldest_estimated_arrival_time)
          @tasks_count = args[:tasks_count] if args.key?(:tasks_count)
        end
      end
      
      # Rate limits. This message determines the maximum rate that tasks can be
      # dispatched by a queue, regardless of whether the dispatch is a first task
      # attempt or a retry. Note: The debugging command, RunTask, will run a task even
      # if the queue has reached its RateLimits.
      class RateLimits
        include Google::Apis::Core::Hashable
      
        # The max burst size. Max burst size limits how fast tasks in queue are
        # processed when many tasks are in the queue and the rate is high. This field
        # allows the queue to have a high rate so processing starts shortly after a task
        # is enqueued, but still limits resource usage when many tasks are enqueued in a
        # short period of time. The [token bucket](https://wikipedia.org/wiki/
        # Token_Bucket) algorithm is used to control the rate of task dispatches. Each
        # queue has a token bucket that holds tokens, up to the maximum specified by `
        # max_burst_size`. Each time a task is dispatched, a token is removed from the
        # bucket. Tasks will be dispatched until the queue's bucket runs out of tokens.
        # The bucket will be continuously refilled with new tokens based on
        # max_dispatches_per_second. The default value of `max_burst_size` is picked by
        # Cloud Tasks based on the value of max_dispatches_per_second. The maximum value
        # of `max_burst_size` is 500. For App Engine queues that were created or updated
        # using `queue.yaml/xml`, `max_burst_size` is equal to [bucket_size](https://
        # cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size).
        # If UpdateQueue is called on a queue without explicitly setting a value for `
        # max_burst_size`, `max_burst_size` value will get updated if UpdateQueue is
        # updating max_dispatches_per_second.
        # Corresponds to the JSON property `maxBurstSize`
        # @return [Fixnum]
        attr_accessor :max_burst_size
      
        # The maximum number of concurrent tasks that Cloud Tasks allows to be
        # dispatched for this queue. After this threshold has been reached, Cloud Tasks
        # stops dispatching tasks until the number of concurrent requests decreases. If
        # unspecified when the queue is created, Cloud Tasks will pick the default. The
        # maximum allowed value is 5,000. This field is output only for pull queues and
        # always -1, which indicates no limit. No other queue types can have `
        # max_concurrent_tasks` set to -1. This field has the same meaning as [
        # max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/
        # docs/standard/python/config/queueref#max_concurrent_requests).
        # Corresponds to the JSON property `maxConcurrentTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_tasks
      
        # The maximum rate at which tasks are dispatched from this queue. If unspecified
        # when the queue is created, Cloud Tasks will pick the default. * For App Engine
        # queues, the maximum allowed value is 500. * This field is output only for pull
        # queues. In addition to the `max_tasks_dispatched_per_second` limit, a maximum
        # of 10 QPS of LeaseTasks requests are allowed per pull queue. This field has
        # the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/
        # appengine/docs/standard/python/config/queueref#rate).
        # Corresponds to the JSON property `maxTasksDispatchedPerSecond`
        # @return [Float]
        attr_accessor :max_tasks_dispatched_per_second
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_burst_size = args[:max_burst_size] if args.key?(:max_burst_size)
          @max_concurrent_tasks = args[:max_concurrent_tasks] if args.key?(:max_concurrent_tasks)
          @max_tasks_dispatched_per_second = args[:max_tasks_dispatched_per_second] if args.key?(:max_tasks_dispatched_per_second)
        end
      end
      
      # Request message for renewing a lease using RenewLease.
      class RenewLeaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The desired new lease duration, starting from now. The maximum lease
        # duration is 1 week. `lease_duration` will be truncated to the nearest second.
        # Corresponds to the JSON property `leaseDuration`
        # @return [String]
        attr_accessor :lease_duration
      
        # The response_view specifies which subset of the Task will be returned. By
        # default response_view is BASIC; not all information is retrieved by default
        # because some data, such as payloads, might be desirable to return only when
        # needed because of its large size or because of the sensitivity of data that it
        # contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google
        # IAM](https://cloud.google.com/iam/) permission on the Task resource.
        # Corresponds to the JSON property `responseView`
        # @return [String]
        attr_accessor :response_view
      
        # Required. The task's current schedule time, available in the schedule_time
        # returned by LeaseTasks response or RenewLease response. This restriction is to
        # ensure that your worker currently holds the lease.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lease_duration = args[:lease_duration] if args.key?(:lease_duration)
          @response_view = args[:response_view] if args.key?(:response_view)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
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
      
      # Retry config. These settings determine how a failed task attempt is retried.
      class RetryConfig
        include Google::Apis::Core::Hashable
      
        # The maximum number of attempts for a task. Cloud Tasks will attempt the task `
        # max_attempts` times (that is, if the first attempt fails, then there will be `
        # max_attempts - 1` retries). Must be > 0.
        # Corresponds to the JSON property `maxAttempts`
        # @return [Fixnum]
        attr_accessor :max_attempts
      
        # A task will be scheduled for retry between min_backoff and max_backoff
        # duration after it fails, if the queue's RetryConfig specifies that the task
        # should be retried. If unspecified when the queue is created, Cloud Tasks will
        # pick the default. This field is output only for pull queues. `max_backoff`
        # will be truncated to the nearest second. This field has the same meaning as [
        # max_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/
        # standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `maxBackoff`
        # @return [String]
        attr_accessor :max_backoff
      
        # The time between retries will double `max_doublings` times. A task's retry
        # interval starts at min_backoff, then doubles `max_doublings` times, then
        # increases linearly, and finally retries at intervals of max_backoff up to
        # max_attempts times. For example, if min_backoff is 10s, max_backoff is 300s,
        # and `max_doublings` is 3, then the a task will first be retried in 10s. The
        # retry interval will double three times, and then increase linearly by 2^3 *
        # 10s. Finally, the task will retry at intervals of max_backoff until the task
        # has been attempted max_attempts times. Thus, the requests will retry at 10s,
        # 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... If unspecified when the queue is
        # created, Cloud Tasks will pick the default. This field is output only for pull
        # queues. This field has the same meaning as [max_doublings in queue.yaml/xml](
        # https://cloud.google.com/appengine/docs/standard/python/config/queueref#
        # retry_parameters).
        # Corresponds to the JSON property `maxDoublings`
        # @return [Fixnum]
        attr_accessor :max_doublings
      
        # If positive, `max_retry_duration` specifies the time limit for retrying a
        # failed task, measured from when the task was first attempted. Once `
        # max_retry_duration` time has passed *and* the task has been attempted
        # max_attempts times, no further attempts will be made and the task will be
        # deleted. If zero, then the task age is unlimited. If unspecified when the
        # queue is created, Cloud Tasks will pick the default. This field is output only
        # for pull queues. `max_retry_duration` will be truncated to the nearest second.
        # This field has the same meaning as [task_age_limit in queue.yaml/xml](https://
        # cloud.google.com/appengine/docs/standard/python/config/queueref#
        # retry_parameters).
        # Corresponds to the JSON property `maxRetryDuration`
        # @return [String]
        attr_accessor :max_retry_duration
      
        # A task will be scheduled for retry between min_backoff and max_backoff
        # duration after it fails, if the queue's RetryConfig specifies that the task
        # should be retried. If unspecified when the queue is created, Cloud Tasks will
        # pick the default. This field is output only for pull queues. `min_backoff`
        # will be truncated to the nearest second. This field has the same meaning as [
        # min_backoff_seconds in queue.yaml/xml](https://cloud.google.com/appengine/docs/
        # standard/python/config/queueref#retry_parameters).
        # Corresponds to the JSON property `minBackoff`
        # @return [String]
        attr_accessor :min_backoff
      
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
          @max_retry_duration = args[:max_retry_duration] if args.key?(:max_retry_duration)
          @min_backoff = args[:min_backoff] if args.key?(:min_backoff)
          @unlimited_attempts = args[:unlimited_attempts] if args.key?(:unlimited_attempts)
        end
      end
      
      # Request message for forcing a task to run now using RunTask.
      class RunTaskRequest
        include Google::Apis::Core::Hashable
      
        # The response_view specifies which subset of the Task will be returned. By
        # default response_view is BASIC; not all information is retrieved by default
        # because some data, such as payloads, might be desirable to return only when
        # needed because of its large size or because of the sensitivity of data that it
        # contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google
        # IAM](https://cloud.google.com/iam/) permission on the Task resource.
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
      
      # A unit of scheduled work.
      class Task
        include Google::Apis::Core::Hashable
      
        # App Engine HTTP request. The message defines the HTTP request that is sent to
        # an App Engine app when the task is dispatched. This proto can only be used for
        # tasks in a queue which has app_engine_http_target set. Using
        # AppEngineHttpRequest requires [`appengine.applications.get`](https://cloud.
        # google.com/appengine/docs/admin-api/access-control) Google IAM permission for
        # the project and the following scope: `https://www.googleapis.com/auth/cloud-
        # platform` The task will be delivered to the App Engine app which belongs to
        # the same project as the queue. For more information, see [How Requests are
        # Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-
        # are-routed) and how routing is affected by [dispatch files](https://cloud.
        # google.com/appengine/docs/python/config/dispatchref). Traffic is encrypted
        # during transport and never leaves Google datacenters. Because this traffic is
        # carried over a communication mechanism internal to Google, you cannot
        # explicitly set the protocol (for example, HTTP or HTTPS). The request to the
        # handler, however, will appear to have used the HTTP protocol. The
        # AppEngineRouting used to construct the URL that the task is delivered to can
        # be set at the queue-level or task-level: * If set, app_engine_routing_override
        # is used for all tasks in the queue, no matter what the setting is for the task-
        # level app_engine_routing. The `url` that the task will be sent to is: * `url =`
        # host `+` relative_url Tasks can be dispatched to secure app handlers,
        # unsecure app handlers, and URIs restricted with [`login: admin`](https://cloud.
        # google.com/appengine/docs/standard/python/config/appref). Because tasks are
        # not run as any user, they cannot be dispatched to URIs restricted with [`login:
        # required`](https://cloud.google.com/appengine/docs/standard/python/config/
        # appref) Task dispatches also do not follow redirects. The task attempt has
        # succeeded if the app's request handler returns an HTTP response code in the
        # range [`200` - `299`]. The task attempt has failed if the app's handler
        # returns a non-2xx response code or Cloud Tasks does not receive response
        # before the deadline. Failed tasks will be retried according to the retry
        # configuration. `503` (Service Unavailable) is considered an App Engine system
        # error instead of an application error and will cause Cloud Tasks' traffic
        # congestion control to temporarily throttle the queue's dispatches. Unlike
        # other types of task targets, a `429` (Too Many Requests) response from an app
        # handler does not cause traffic congestion control to throttle the queue.
        # Corresponds to the JSON property `appEngineHttpRequest`
        # @return [Google::Apis::CloudtasksV2beta2::AppEngineHttpRequest]
        attr_accessor :app_engine_http_request
      
        # Output only. The time that the task was created. `create_time` will be
        # truncated to the nearest second.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optionally caller-specified in CreateTask. The task name. The task name must
        # have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/
        # QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers
        # ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [
        # Identifying projects](https://cloud.google.com/resource-manager/docs/creating-
        # managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID
        # for the task's location. The list of available locations can be obtained by
        # calling ListLocations. For more information, see https://cloud.google.com/
        # about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
        # or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain
        # only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The
        # maximum length is 500 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The pull message contains data that can be used by the caller of LeaseTasks to
        # process the task. This proto can only be used for tasks in a queue which has
        # pull_target set.
        # Corresponds to the JSON property `pullMessage`
        # @return [Google::Apis::CloudtasksV2beta2::PullMessage]
        attr_accessor :pull_message
      
        # The time when the task is scheduled to be attempted. For App Engine queues,
        # this is when the task will be attempted or retried. For pull queues, this is
        # the time when the task is available to be leased; if a task is currently
        # leased, this is the time when the current lease expires, that is, the time
        # that the task was leased plus the lease_duration. `schedule_time` will be
        # truncated to the nearest microsecond.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Status of the task.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudtasksV2beta2::TaskStatus]
        attr_accessor :status
      
        # Output only. The view specifies which subset of the Task has been returned.
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
          @name = args[:name] if args.key?(:name)
          @pull_message = args[:pull_message] if args.key?(:pull_message)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @status = args[:status] if args.key?(:status)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Status of the task.
      class TaskStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The number of attempts dispatched. This count includes attempts
        # which have been dispatched but haven't received a response.
        # Corresponds to the JSON property `attemptDispatchCount`
        # @return [Fixnum]
        attr_accessor :attempt_dispatch_count
      
        # Output only. The number of attempts which have received a response. This field
        # is not calculated for pull tasks.
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
