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
    module ServicemanagementV1
      
      class Advice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficPercentStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthRequirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Documentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteServiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Api
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataAccessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomHttpPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameterRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VisibilityRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Visibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConfigReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteServiceStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Step
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Logging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceRolloutsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mixin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlowOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Http
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Monitoring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Diagnostic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateConfigReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Experimental
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitConfigSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAuditOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Usage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomErrorRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaDownload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAuthRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangeReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitConfigSourceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaUpload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Advice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class ManagedService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_project_id, as: 'producerProjectId'
          property :service_name, as: 'serviceName'
        end
      end
      
      class UsageRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          property :allow_unregistered_calls, as: 'allowUnregisteredCalls'
        end
      end
      
      class TrafficPercentStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :percentages, as: 'percentages'
        end
      end
      
      class AuthRequirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider_id, as: 'providerId'
          property :audiences, as: 'audiences'
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          collection :values, as: 'values'
          property :op, as: 'op'
          property :svc, as: 'svc'
          property :sys, as: 'sys'
          property :value, as: 'value'
        end
      end
      
      class Documentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::DocumentationRule, decorator: Google::Apis::ServicemanagementV1::DocumentationRule::Representation
      
          property :overview, as: 'overview'
          collection :pages, as: 'pages', class: Google::Apis::ServicemanagementV1::Page, decorator: Google::Apis::ServicemanagementV1::Page::Representation
      
          property :summary, as: 'summary'
          property :documentation_root_url, as: 'documentationRootUrl'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class ConfigSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :files, as: 'files', class: Google::Apis::ServicemanagementV1::ConfigFile, decorator: Google::Apis::ServicemanagementV1::ConfigFile::Representation
      
        end
      end
      
      class BackendRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_deadline, as: 'minDeadline'
          property :address, as: 'address'
          property :selector, as: 'selector'
          property :deadline, as: 'deadline'
        end
      end
      
      class AuthenticationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :oauth, as: 'oauth', class: Google::Apis::ServicemanagementV1::OAuthRequirements, decorator: Google::Apis::ServicemanagementV1::OAuthRequirements::Representation
      
          property :custom_auth, as: 'customAuth', class: Google::Apis::ServicemanagementV1::CustomAuthRequirements, decorator: Google::Apis::ServicemanagementV1::CustomAuthRequirements::Representation
      
          collection :requirements, as: 'requirements', class: Google::Apis::ServicemanagementV1::AuthRequirement, decorator: Google::Apis::ServicemanagementV1::AuthRequirement::Representation
      
          property :selector, as: 'selector'
          property :allow_without_credential, as: 'allowWithoutCredential'
        end
      end
      
      class UndeleteServiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service', class: Google::Apis::ServicemanagementV1::ManagedService, decorator: Google::Apis::ServicemanagementV1::ManagedService::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ServicemanagementV1::AuditConfig, decorator: Google::Apis::ServicemanagementV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ServicemanagementV1::Binding, decorator: Google::Apis::ServicemanagementV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :iam_owned, as: 'iamOwned'
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::Rule, decorator: Google::Apis::ServicemanagementV1::Rule::Representation
      
        end
      end
      
      class Api
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_context, as: 'sourceContext', class: Google::Apis::ServicemanagementV1::SourceContext, decorator: Google::Apis::ServicemanagementV1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
          property :version, as: 'version'
          collection :mixins, as: 'mixins', class: Google::Apis::ServicemanagementV1::Mixin, decorator: Google::Apis::ServicemanagementV1::Mixin::Representation
      
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
          collection :methods_prop, as: 'methods', class: Google::Apis::ServicemanagementV1::MethodProp, decorator: Google::Apis::ServicemanagementV1::MethodProp::Representation
      
          property :name, as: 'name'
        end
      end
      
      class DataAccessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MetricRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          hash :metric_costs, as: 'metricCosts'
        end
      end
      
      class Authentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::AuthenticationRule, decorator: Google::Apis::ServicemanagementV1::AuthenticationRule::Representation
      
          collection :providers, as: 'providers', class: Google::Apis::ServicemanagementV1::AuthProvider, decorator: Google::Apis::ServicemanagementV1::AuthProvider::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::ServicemanagementV1::Status, decorator: Google::Apis::ServicemanagementV1::Status::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :content, as: 'content'
          collection :subpages, as: 'subpages', class: Google::Apis::ServicemanagementV1::Page, decorator: Google::Apis::ServicemanagementV1::Page::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class AuthProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audiences, as: 'audiences'
          property :id, as: 'id'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwksUri'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documentation, as: 'documentation', class: Google::Apis::ServicemanagementV1::Documentation, decorator: Google::Apis::ServicemanagementV1::Documentation::Representation
      
          property :logging, as: 'logging', class: Google::Apis::ServicemanagementV1::Logging, decorator: Google::Apis::ServicemanagementV1::Logging::Representation
      
          collection :monitored_resources, as: 'monitoredResources', class: Google::Apis::ServicemanagementV1::MonitoredResourceDescriptor, decorator: Google::Apis::ServicemanagementV1::MonitoredResourceDescriptor::Representation
      
          property :context, as: 'context', class: Google::Apis::ServicemanagementV1::Context, decorator: Google::Apis::ServicemanagementV1::Context::Representation
      
          collection :enums, as: 'enums', class: Google::Apis::ServicemanagementV1::Enum, decorator: Google::Apis::ServicemanagementV1::Enum::Representation
      
          property :id, as: 'id'
          property :usage, as: 'usage', class: Google::Apis::ServicemanagementV1::Usage, decorator: Google::Apis::ServicemanagementV1::Usage::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::ServicemanagementV1::MetricDescriptor, decorator: Google::Apis::ServicemanagementV1::MetricDescriptor::Representation
      
          property :authentication, as: 'authentication', class: Google::Apis::ServicemanagementV1::Authentication, decorator: Google::Apis::ServicemanagementV1::Authentication::Representation
      
          property :experimental, as: 'experimental', class: Google::Apis::ServicemanagementV1::Experimental, decorator: Google::Apis::ServicemanagementV1::Experimental::Representation
      
          property :control, as: 'control', class: Google::Apis::ServicemanagementV1::Control, decorator: Google::Apis::ServicemanagementV1::Control::Representation
      
          property :config_version, as: 'configVersion'
          property :monitoring, as: 'monitoring', class: Google::Apis::ServicemanagementV1::Monitoring, decorator: Google::Apis::ServicemanagementV1::Monitoring::Representation
      
          collection :system_types, as: 'systemTypes', class: Google::Apis::ServicemanagementV1::Type, decorator: Google::Apis::ServicemanagementV1::Type::Representation
      
          property :producer_project_id, as: 'producerProjectId'
          property :visibility, as: 'visibility', class: Google::Apis::ServicemanagementV1::Visibility, decorator: Google::Apis::ServicemanagementV1::Visibility::Representation
      
          property :quota, as: 'quota', class: Google::Apis::ServicemanagementV1::Quota, decorator: Google::Apis::ServicemanagementV1::Quota::Representation
      
          property :name, as: 'name'
          property :custom_error, as: 'customError', class: Google::Apis::ServicemanagementV1::CustomError, decorator: Google::Apis::ServicemanagementV1::CustomError::Representation
      
          property :title, as: 'title'
          collection :endpoints, as: 'endpoints', class: Google::Apis::ServicemanagementV1::Endpoint, decorator: Google::Apis::ServicemanagementV1::Endpoint::Representation
      
          collection :apis, as: 'apis', class: Google::Apis::ServicemanagementV1::Api, decorator: Google::Apis::ServicemanagementV1::Api::Representation
      
          collection :logs, as: 'logs', class: Google::Apis::ServicemanagementV1::LogDescriptor, decorator: Google::Apis::ServicemanagementV1::LogDescriptor::Representation
      
          collection :types, as: 'types', class: Google::Apis::ServicemanagementV1::Type, decorator: Google::Apis::ServicemanagementV1::Type::Representation
      
          property :source_info, as: 'sourceInfo', class: Google::Apis::ServicemanagementV1::SourceInfo, decorator: Google::Apis::ServicemanagementV1::SourceInfo::Representation
      
          property :http, as: 'http', class: Google::Apis::ServicemanagementV1::Http, decorator: Google::Apis::ServicemanagementV1::Http::Representation
      
          property :system_parameters, as: 'systemParameters', class: Google::Apis::ServicemanagementV1::SystemParameters, decorator: Google::Apis::ServicemanagementV1::SystemParameters::Representation
      
          property :backend, as: 'backend', class: Google::Apis::ServicemanagementV1::Backend, decorator: Google::Apis::ServicemanagementV1::Backend::Representation
      
        end
      end
      
      class EnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
          property :number, as: 'number'
          property :name, as: 'name'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ServicemanagementV1::Operation, decorator: Google::Apis::ServicemanagementV1::Operation::Representation
      
        end
      end
      
      class CustomHttpPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :kind, as: 'kind'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
          collection :resource_names, as: 'resourceNames'
          collection :steps, as: 'steps', class: Google::Apis::ServicemanagementV1::Step, decorator: Google::Apis::ServicemanagementV1::Step::Representation
      
          property :progress_percentage, as: 'progressPercentage'
        end
      end
      
      class SystemParameterRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          collection :parameters, as: 'parameters', class: Google::Apis::ServicemanagementV1::SystemParameter, decorator: Google::Apis::ServicemanagementV1::SystemParameter::Representation
      
        end
      end
      
      class HttpRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :put, as: 'put'
          property :delete, as: 'delete'
          property :body, as: 'body'
          property :post, as: 'post'
          property :media_download, as: 'mediaDownload', class: Google::Apis::ServicemanagementV1::MediaDownload, decorator: Google::Apis::ServicemanagementV1::MediaDownload::Representation
      
          property :rest_method_name, as: 'restMethodName'
          collection :additional_bindings, as: 'additionalBindings', class: Google::Apis::ServicemanagementV1::HttpRule, decorator: Google::Apis::ServicemanagementV1::HttpRule::Representation
      
          property :response_body, as: 'responseBody'
          property :rest_collection, as: 'restCollection'
          property :media_upload, as: 'mediaUpload', class: Google::Apis::ServicemanagementV1::MediaUpload, decorator: Google::Apis::ServicemanagementV1::MediaUpload::Representation
      
          property :selector, as: 'selector'
          property :custom, as: 'custom', class: Google::Apis::ServicemanagementV1::CustomHttpPattern, decorator: Google::Apis::ServicemanagementV1::CustomHttpPattern::Representation
      
          property :patch, as: 'patch'
          property :get, as: 'get'
        end
      end
      
      class VisibilityRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          property :restriction, as: 'restriction'
        end
      end
      
      class MonitoringDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :monitored_resource, as: 'monitoredResource'
          collection :metrics, as: 'metrics'
        end
      end
      
      class Visibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::VisibilityRule, decorator: Google::Apis::ServicemanagementV1::VisibilityRule::Representation
      
        end
      end
      
      class SystemParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::SystemParameterRule, decorator: Google::Apis::ServicemanagementV1::SystemParameterRule::Representation
      
        end
      end
      
      class ConfigChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :change_type, as: 'changeType'
          property :element, as: 'element'
          property :old_value, as: 'oldValue'
          collection :advices, as: 'advices', class: Google::Apis::ServicemanagementV1::Advice, decorator: Google::Apis::ServicemanagementV1::Advice::Representation
      
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :limits, as: 'limits', class: Google::Apis::ServicemanagementV1::QuotaLimit, decorator: Google::Apis::ServicemanagementV1::QuotaLimit::Representation
      
          collection :metric_rules, as: 'metricRules', class: Google::Apis::ServicemanagementV1::MetricRule, decorator: Google::Apis::ServicemanagementV1::MetricRule::Representation
      
        end
      end
      
      class Rollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rollout_id, as: 'rolloutId'
          property :delete_service_strategy, as: 'deleteServiceStrategy', class: Google::Apis::ServicemanagementV1::DeleteServiceStrategy, decorator: Google::Apis::ServicemanagementV1::DeleteServiceStrategy::Representation
      
          property :create_time, as: 'createTime'
          property :status, as: 'status'
          property :service_name, as: 'serviceName'
          property :traffic_percent_strategy, as: 'trafficPercentStrategy', class: Google::Apis::ServicemanagementV1::TrafficPercentStrategy, decorator: Google::Apis::ServicemanagementV1::TrafficPercentStrategy::Representation
      
          property :created_by, as: 'createdBy'
        end
      end
      
      class GenerateConfigReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :old_config, as: 'oldConfig'
          hash :new_config, as: 'newConfig'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ServicemanagementV1::Policy, decorator: Google::Apis::ServicemanagementV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class DeleteServiceStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :status, as: 'status'
        end
      end
      
      class LoggingDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logs, as: 'logs'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :value, as: 'value'
          property :name, as: 'name'
        end
      end
      
      class Logging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServicemanagementV1::LoggingDestination, decorator: Google::Apis::ServicemanagementV1::LoggingDestination::Representation
      
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServicemanagementV1::LoggingDestination, decorator: Google::Apis::ServicemanagementV1::LoggingDestination::Representation
      
        end
      end
      
      class QuotaLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_limit, :numeric_string => true, as: 'defaultLimit'
          property :metric, as: 'metric'
          property :display_name, as: 'displayName'
          property :description, as: 'description'
          hash :values, as: 'values'
          property :unit, as: 'unit'
          property :max_limit, :numeric_string => true, as: 'maxLimit'
          property :name, as: 'name'
          property :duration, as: 'duration'
          property :free_tier, :numeric_string => true, as: 'freeTier'
        end
      end
      
      class MethodProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_type_url, as: 'responseTypeUrl'
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
          property :response_streaming, as: 'responseStreaming'
          property :name, as: 'name'
          property :request_type_url, as: 'requestTypeUrl'
          property :request_streaming, as: 'requestStreaming'
          property :syntax, as: 'syntax'
        end
      end
      
      class ListServiceRolloutsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollouts, as: 'rollouts', class: Google::Apis::ServicemanagementV1::Rollout, decorator: Google::Apis::ServicemanagementV1::Rollout::Representation
      
        end
      end
      
      class ConfigRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Mixin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :root, as: 'root'
        end
      end
      
      class FlowOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_state, as: 'cancelState'
          property :deadline, as: 'deadline'
          property :start_time, as: 'startTime'
          property :flow_name, as: 'flowName'
          collection :resource_names, as: 'resourceNames'
        end
      end
      
      class CustomError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::CustomErrorRule, decorator: Google::Apis::ServicemanagementV1::CustomErrorRule::Representation
      
          collection :types, as: 'types'
        end
      end
      
      class CounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          property :field, as: 'field'
        end
      end
      
      class Http
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_decode_reserved_expansion, as: 'fullyDecodeReservedExpansion'
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::HttpRule, decorator: Google::Apis::ServicemanagementV1::HttpRule::Representation
      
        end
      end
      
      class SourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_files, as: 'sourceFiles'
        end
      end
      
      class Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class SystemParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_header, as: 'httpHeader'
          property :name, as: 'name'
          property :url_query_parameter, as: 'urlQueryParameter'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :json_name, as: 'jsonName'
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
          property :oneof_index, as: 'oneofIndex'
          property :cardinality, as: 'cardinality'
          property :packed, as: 'packed'
          property :default_value, as: 'defaultValue'
          property :name, as: 'name'
          property :type_url, as: 'typeUrl'
          property :number, as: 'number'
        end
      end
      
      class Monitoring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServicemanagementV1::MonitoringDestination, decorator: Google::Apis::ServicemanagementV1::MonitoringDestination::Representation
      
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServicemanagementV1::MonitoringDestination, decorator: Google::Apis::ServicemanagementV1::MonitoringDestination::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Enum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :enumvalue, as: 'enumvalue', class: Google::Apis::ServicemanagementV1::EnumValue, decorator: Google::Apis::ServicemanagementV1::EnumValue::Representation
      
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServicemanagementV1::SourceContext, decorator: Google::Apis::ServicemanagementV1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value_type, as: 'valueType'
          property :key, as: 'key'
          property :description, as: 'description'
        end
      end
      
      class Diagnostic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :location, as: 'location'
          property :kind, as: 'kind'
        end
      end
      
      class EnableServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_id, as: 'consumerId'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::ServicemanagementV1::Field, decorator: Google::Apis::ServicemanagementV1::Field::Representation
      
          property :name, as: 'name'
          collection :oneofs, as: 'oneofs'
          property :syntax, as: 'syntax'
          property :source_context, as: 'sourceContext', class: Google::Apis::ServicemanagementV1::SourceContext, decorator: Google::Apis::ServicemanagementV1::SourceContext::Representation
      
          collection :options, as: 'options', class: Google::Apis::ServicemanagementV1::Option, decorator: Google::Apis::ServicemanagementV1::Option::Representation
      
        end
      end
      
      class GenerateConfigReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :diagnostics, as: 'diagnostics', class: Google::Apis::ServicemanagementV1::Diagnostic, decorator: Google::Apis::ServicemanagementV1::Diagnostic::Representation
      
          property :service_name, as: 'serviceName'
          collection :change_reports, as: 'changeReports', class: Google::Apis::ServicemanagementV1::ChangeReport, decorator: Google::Apis::ServicemanagementV1::ChangeReport::Representation
      
        end
      end
      
      class ListServiceConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_configs, as: 'serviceConfigs', class: Google::Apis::ServicemanagementV1::Service, decorator: Google::Apis::ServicemanagementV1::Service::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Experimental
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization, as: 'authorization', class: Google::Apis::ServicemanagementV1::AuthorizationConfig, decorator: Google::Apis::ServicemanagementV1::AuthorizationConfig::Representation
      
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::BackendRule, decorator: Google::Apis::ServicemanagementV1::BackendRule::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ServicemanagementV1::AuditLogConfig, decorator: Google::Apis::ServicemanagementV1::AuditLogConfig::Representation
      
          collection :exempted_members, as: 'exemptedMembers'
        end
      end
      
      class SubmitConfigSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_source, as: 'configSource', class: Google::Apis::ServicemanagementV1::ConfigSource, decorator: Google::Apis::ServicemanagementV1::ConfigSource::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class AuthorizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
        end
      end
      
      class DocumentationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :deprecation_description, as: 'deprecationDescription'
          property :selector, as: 'selector'
        end
      end
      
      class CloudAuditOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_name, as: 'logName'
        end
      end
      
      class ContextRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          collection :provided, as: 'provided'
          collection :requested, as: 'requested'
        end
      end
      
      class MetricDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_kind, as: 'metricKind'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :unit, as: 'unit'
          collection :labels, as: 'labels', class: Google::Apis::ServicemanagementV1::LabelDescriptor, decorator: Google::Apis::ServicemanagementV1::LabelDescriptor::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :value_type, as: 'valueType'
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::ServicemanagementV1::ManagedService, decorator: Google::Apis::ServicemanagementV1::ManagedService::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis'
          property :allow_cors, as: 'allowCors'
          collection :aliases, as: 'aliases'
          property :name, as: 'name'
          property :target, as: 'target'
          collection :features, as: 'features'
        end
      end
      
      class OAuthRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_scopes, as: 'canonicalScopes'
        end
      end
      
      class Usage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_notification_channel, as: 'producerNotificationChannel'
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::UsageRule, decorator: Google::Apis::ServicemanagementV1::UsageRule::Representation
      
          collection :requirements, as: 'requirements'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServicemanagementV1::ContextRule, decorator: Google::Apis::ServicemanagementV1::ContextRule::Representation
      
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :conditions, as: 'conditions', class: Google::Apis::ServicemanagementV1::Condition, decorator: Google::Apis::ServicemanagementV1::Condition::Representation
      
          collection :log_config, as: 'logConfig', class: Google::Apis::ServicemanagementV1::LogConfig, decorator: Google::Apis::ServicemanagementV1::LogConfig::Representation
      
          collection :in, as: 'in'
          collection :permissions, as: 'permissions'
          property :action, as: 'action'
          collection :not_in, as: 'notIn'
        end
      end
      
      class LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_access, as: 'dataAccess', class: Google::Apis::ServicemanagementV1::DataAccessOptions, decorator: Google::Apis::ServicemanagementV1::DataAccessOptions::Representation
      
          property :cloud_audit, as: 'cloudAudit', class: Google::Apis::ServicemanagementV1::CloudAuditOptions, decorator: Google::Apis::ServicemanagementV1::CloudAuditOptions::Representation
      
          property :counter, as: 'counter', class: Google::Apis::ServicemanagementV1::CounterOptions, decorator: Google::Apis::ServicemanagementV1::CounterOptions::Representation
      
        end
      end
      
      class LogDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServicemanagementV1::LabelDescriptor, decorator: Google::Apis::ServicemanagementV1::LabelDescriptor::Representation
      
        end
      end
      
      class ConfigFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
          property :file_type, as: 'fileType'
          property :file_contents, :base64 => true, as: 'fileContents'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::ServicemanagementV1::LabelDescriptor, decorator: Google::Apis::ServicemanagementV1::LabelDescriptor::Representation
      
          property :name, as: 'name'
          property :display_name, as: 'displayName'
          property :description, as: 'description'
          property :type, as: 'type'
        end
      end
      
      class CustomErrorRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selector, as: 'selector'
          property :is_error_type, as: 'isErrorType'
        end
      end
      
      class MediaDownload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :download_service, as: 'downloadService'
          property :complete_notification, as: 'completeNotification'
          property :max_direct_download_size, :numeric_string => true, as: 'maxDirectDownloadSize'
          property :dropzone, as: 'dropzone'
          property :use_direct_download, as: 'useDirectDownload'
        end
      end
      
      class CustomAuthRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
        end
      end
      
      class ChangeReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :config_changes, as: 'configChanges', class: Google::Apis::ServicemanagementV1::ConfigChange, decorator: Google::Apis::ServicemanagementV1::ConfigChange::Representation
      
        end
      end
      
      class DisableServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_id, as: 'consumerId'
        end
      end
      
      class SubmitConfigSourceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_config, as: 'serviceConfig', class: Google::Apis::ServicemanagementV1::Service, decorator: Google::Apis::ServicemanagementV1::Service::Representation
      
        end
      end
      
      class MediaUpload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_notification, as: 'completeNotification'
          property :progress_notification, as: 'progressNotification'
          property :enabled, as: 'enabled'
          property :dropzone, as: 'dropzone'
          property :start_notification, as: 'startNotification'
          property :upload_service, as: 'uploadService'
          property :max_size, :numeric_string => true, as: 'maxSize'
          collection :mime_types, as: 'mimeTypes'
        end
      end
    end
  end
end
