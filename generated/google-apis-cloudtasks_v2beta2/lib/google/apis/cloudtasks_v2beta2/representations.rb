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
    module CloudtasksV2beta2
      
      class AcknowledgeTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineHttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineHttpTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineRouting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttemptStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BufferTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BufferTaskResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelLeaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Header
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeaderOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseTasksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LeaseTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQueuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OidcToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PauseQueueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PurgeQueueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Queue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueueStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RateLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenewLeaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeQueueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UriOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcknowledgeTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class AppEngineHttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_routing, as: 'appEngineRouting', class: Google::Apis::CloudtasksV2beta2::AppEngineRouting, decorator: Google::Apis::CloudtasksV2beta2::AppEngineRouting::Representation
      
          hash :headers, as: 'headers'
          property :http_method, as: 'httpMethod'
          property :payload, :base64 => true, as: 'payload'
          property :relative_url, as: 'relativeUrl'
        end
      end
      
      class AppEngineHttpTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_routing_override, as: 'appEngineRoutingOverride', class: Google::Apis::CloudtasksV2beta2::AppEngineRouting, decorator: Google::Apis::CloudtasksV2beta2::AppEngineRouting::Representation
      
        end
      end
      
      class AppEngineRouting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :instance, as: 'instance'
          property :service, as: 'service'
          property :version, as: 'version'
        end
      end
      
      class AttemptStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dispatch_time, as: 'dispatchTime'
          property :response_status, as: 'responseStatus', class: Google::Apis::CloudtasksV2beta2::Status, decorator: Google::Apis::CloudtasksV2beta2::Status::Representation
      
          property :response_time, as: 'responseTime'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudtasksV2beta2::Expr, decorator: Google::Apis::CloudtasksV2beta2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BufferTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::CloudtasksV2beta2::HttpBody, decorator: Google::Apis::CloudtasksV2beta2::HttpBody::Representation
      
        end
      end
      
      class BufferTaskResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :task, as: 'task', class: Google::Apis::CloudtasksV2beta2::Task, decorator: Google::Apis::CloudtasksV2beta2::Task::Representation
      
        end
      end
      
      class CancelLeaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_view, as: 'responseView'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class CmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :name, as: 'name'
        end
      end
      
      class CreateTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_view, as: 'responseView'
          property :task, as: 'task', class: Google::Apis::CloudtasksV2beta2::Task, decorator: Google::Apis::CloudtasksV2beta2::Task::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::CloudtasksV2beta2::GetPolicyOptions, decorator: Google::Apis::CloudtasksV2beta2::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class Header
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class HeaderOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::CloudtasksV2beta2::Header, decorator: Google::Apis::CloudtasksV2beta2::Header::Representation
      
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, :base64 => true, as: 'body'
          hash :headers, as: 'headers'
          property :http_method, as: 'httpMethod'
          property :oauth_token, as: 'oauthToken', class: Google::Apis::CloudtasksV2beta2::OAuthToken, decorator: Google::Apis::CloudtasksV2beta2::OAuthToken::Representation
      
          property :oidc_token, as: 'oidcToken', class: Google::Apis::CloudtasksV2beta2::OidcToken, decorator: Google::Apis::CloudtasksV2beta2::OidcToken::Representation
      
          property :url, as: 'url'
        end
      end
      
      class HttpTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :header_overrides, as: 'headerOverrides', class: Google::Apis::CloudtasksV2beta2::HeaderOverride, decorator: Google::Apis::CloudtasksV2beta2::HeaderOverride::Representation
      
          property :http_method, as: 'httpMethod'
          property :oauth_token, as: 'oauthToken', class: Google::Apis::CloudtasksV2beta2::OAuthToken, decorator: Google::Apis::CloudtasksV2beta2::OAuthToken::Representation
      
          property :oidc_token, as: 'oidcToken', class: Google::Apis::CloudtasksV2beta2::OidcToken, decorator: Google::Apis::CloudtasksV2beta2::OidcToken::Representation
      
          property :uri_override, as: 'uriOverride', class: Google::Apis::CloudtasksV2beta2::UriOverride, decorator: Google::Apis::CloudtasksV2beta2::UriOverride::Representation
      
        end
      end
      
      class LeaseTasksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :lease_duration, as: 'leaseDuration'
          property :max_tasks, as: 'maxTasks'
          property :response_view, as: 'responseView'
        end
      end
      
      class LeaseTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tasks, as: 'tasks', class: Google::Apis::CloudtasksV2beta2::Task, decorator: Google::Apis::CloudtasksV2beta2::Task::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudtasksV2beta2::Location, decorator: Google::Apis::CloudtasksV2beta2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListQueuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :queues, as: 'queues', class: Google::Apis::CloudtasksV2beta2::Queue, decorator: Google::Apis::CloudtasksV2beta2::Queue::Representation
      
        end
      end
      
      class ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tasks, as: 'tasks', class: Google::Apis::CloudtasksV2beta2::Task, decorator: Google::Apis::CloudtasksV2beta2::Task::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class OAuthToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class OidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class PathOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class PauseQueueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::CloudtasksV2beta2::Binding, decorator: Google::Apis::CloudtasksV2beta2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PullMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, :base64 => true, as: 'payload'
          property :tag, as: 'tag'
        end
      end
      
      class PullTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PurgeQueueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class QueryOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_params, as: 'queryParams'
        end
      end
      
      class Queue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_http_target, as: 'appEngineHttpTarget', class: Google::Apis::CloudtasksV2beta2::AppEngineHttpTarget, decorator: Google::Apis::CloudtasksV2beta2::AppEngineHttpTarget::Representation
      
          property :http_target, as: 'httpTarget', class: Google::Apis::CloudtasksV2beta2::HttpTarget, decorator: Google::Apis::CloudtasksV2beta2::HttpTarget::Representation
      
          property :name, as: 'name'
          property :pull_target, as: 'pullTarget', class: Google::Apis::CloudtasksV2beta2::PullTarget, decorator: Google::Apis::CloudtasksV2beta2::PullTarget::Representation
      
          property :purge_time, as: 'purgeTime'
          property :rate_limits, as: 'rateLimits', class: Google::Apis::CloudtasksV2beta2::RateLimits, decorator: Google::Apis::CloudtasksV2beta2::RateLimits::Representation
      
          property :retry_config, as: 'retryConfig', class: Google::Apis::CloudtasksV2beta2::RetryConfig, decorator: Google::Apis::CloudtasksV2beta2::RetryConfig::Representation
      
          property :state, as: 'state'
          property :stats, as: 'stats', class: Google::Apis::CloudtasksV2beta2::QueueStats, decorator: Google::Apis::CloudtasksV2beta2::QueueStats::Representation
      
          property :task_ttl, as: 'taskTtl'
          property :tombstone_ttl, as: 'tombstoneTtl'
        end
      end
      
      class QueueStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrent_dispatches_count, :numeric_string => true, as: 'concurrentDispatchesCount'
          property :effective_execution_rate, as: 'effectiveExecutionRate'
          property :executed_last_minute_count, :numeric_string => true, as: 'executedLastMinuteCount'
          property :oldest_estimated_arrival_time, as: 'oldestEstimatedArrivalTime'
          property :tasks_count, :numeric_string => true, as: 'tasksCount'
        end
      end
      
      class RateLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_burst_size, as: 'maxBurstSize'
          property :max_concurrent_tasks, as: 'maxConcurrentTasks'
          property :max_tasks_dispatched_per_second, as: 'maxTasksDispatchedPerSecond'
        end
      end
      
      class RenewLeaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lease_duration, as: 'leaseDuration'
          property :response_view, as: 'responseView'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class ResumeQueueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RetryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_attempts, as: 'maxAttempts'
          property :max_backoff, as: 'maxBackoff'
          property :max_doublings, as: 'maxDoublings'
          property :max_retry_duration, as: 'maxRetryDuration'
          property :min_backoff, as: 'minBackoff'
          property :unlimited_attempts, as: 'unlimitedAttempts'
        end
      end
      
      class RunTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_view, as: 'responseView'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudtasksV2beta2::Policy, decorator: Google::Apis::CloudtasksV2beta2::Policy::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_http_request, as: 'appEngineHttpRequest', class: Google::Apis::CloudtasksV2beta2::AppEngineHttpRequest, decorator: Google::Apis::CloudtasksV2beta2::AppEngineHttpRequest::Representation
      
          property :create_time, as: 'createTime'
          property :http_request, as: 'httpRequest', class: Google::Apis::CloudtasksV2beta2::HttpRequest, decorator: Google::Apis::CloudtasksV2beta2::HttpRequest::Representation
      
          property :name, as: 'name'
          property :pull_message, as: 'pullMessage', class: Google::Apis::CloudtasksV2beta2::PullMessage, decorator: Google::Apis::CloudtasksV2beta2::PullMessage::Representation
      
          property :schedule_time, as: 'scheduleTime'
          property :status, as: 'status', class: Google::Apis::CloudtasksV2beta2::TaskStatus, decorator: Google::Apis::CloudtasksV2beta2::TaskStatus::Representation
      
          property :view, as: 'view'
        end
      end
      
      class TaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attempt_dispatch_count, as: 'attemptDispatchCount'
          property :attempt_response_count, as: 'attemptResponseCount'
          property :first_attempt_status, as: 'firstAttemptStatus', class: Google::Apis::CloudtasksV2beta2::AttemptStatus, decorator: Google::Apis::CloudtasksV2beta2::AttemptStatus::Representation
      
          property :last_attempt_status, as: 'lastAttemptStatus', class: Google::Apis::CloudtasksV2beta2::AttemptStatus, decorator: Google::Apis::CloudtasksV2beta2::AttemptStatus::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UriOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :path_override, as: 'pathOverride', class: Google::Apis::CloudtasksV2beta2::PathOverride, decorator: Google::Apis::CloudtasksV2beta2::PathOverride::Representation
      
          property :port, :numeric_string => true, as: 'port'
          property :query_override, as: 'queryOverride', class: Google::Apis::CloudtasksV2beta2::QueryOverride, decorator: Google::Apis::CloudtasksV2beta2::QueryOverride::Representation
      
          property :scheme, as: 'scheme'
          property :uri_override_enforce_mode, as: 'uriOverrideEnforceMode'
        end
      end
    end
  end
end
