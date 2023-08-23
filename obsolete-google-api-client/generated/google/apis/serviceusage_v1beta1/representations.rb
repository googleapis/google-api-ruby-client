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
    module ServiceusageV1beta1
      
      class AdminQuotaPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Api
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthRequirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateAdminOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateConsumerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchEnableServicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchEnableServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Billing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerQuotaLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumerQuotaMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomErrorRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomHttpPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableServiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Documentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableServiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetServiceIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServiceusageV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServiceusageV1Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServiceusageV1ServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServiceusageV1beta1GetServiceIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServiceusageV1beta1ServiceIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Http
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAdminOverridesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAdminOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAdminQuotaPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportConsumerOverridesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportConsumerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdminOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsumerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsumerQuotaMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Logging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mixin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Monitoring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OverrideInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameterRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Usage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminQuotaPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          hash :dimensions, as: 'dimensions'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :policy_value, :numeric_string => true, as: 'policyValue'
          property :unit, as: 'unit'
        end
      end
      
      class Api
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :methods_prop, as: 'methods', class: Google::Apis::ServiceusageV1beta1::MethodProp, decorator: Google::Apis::ServiceusageV1beta1::MethodProp::Representation
      
          collection :mixins, as: 'mixins', class: Google::Apis::ServiceusageV1beta1::Mixin, decorator: Google::Apis::ServiceusageV1beta1::Mixin::Representation
      
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceusageV1beta1::SourceContext, decorator: Google::Apis::ServiceusageV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
          property :version, as: 'version'
        end
      end
      
      class AuthProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audiences, as: 'audiences'
          property :authorization_url, as: 'authorizationUrl'
          property :id, as: 'id'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwksUri'
          collection :jwt_locations, as: 'jwtLocations', class: Google::Apis::ServiceusageV1beta1::JwtLocation, decorator: Google::Apis::ServiceusageV1beta1::JwtLocation::Representation
      
        end
      end
      
      class AuthRequirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audiences, as: 'audiences'
          property :provider_id, as: 'providerId'
        end
      end
      
      class Authentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :providers, as: 'providers', class: Google::Apis::ServiceusageV1beta1::AuthProvider, decorator: Google::Apis::ServiceusageV1beta1::AuthProvider::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::AuthenticationRule, decorator: Google::Apis::ServiceusageV1beta1::AuthenticationRule::Representation
      
        end
      end
      
      class AuthenticationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_without_credential, as: 'allowWithoutCredential'
          property :oauth, as: 'oauth', class: Google::Apis::ServiceusageV1beta1::OAuthRequirements, decorator: Google::Apis::ServiceusageV1beta1::OAuthRequirements::Representation
      
          collection :requirements, as: 'requirements', class: Google::Apis::ServiceusageV1beta1::AuthRequirement, decorator: Google::Apis::ServiceusageV1beta1::AuthRequirement::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::BackendRule, decorator: Google::Apis::ServiceusageV1beta1::BackendRule::Representation
      
        end
      end
      
      class BackendRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :deadline, as: 'deadline'
          property :disable_auth, as: 'disableAuth'
          property :jwt_audience, as: 'jwtAudience'
          property :min_deadline, as: 'minDeadline'
          property :operation_deadline, as: 'operationDeadline'
          property :path_translation, as: 'pathTranslation'
          property :protocol, as: 'protocol'
          property :selector, as: 'selector'
        end
      end
      
      class BatchCreateAdminOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class BatchCreateConsumerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class BatchEnableServicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_ids, as: 'serviceIds'
        end
      end
      
      class BatchEnableServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failures, as: 'failures', class: Google::Apis::ServiceusageV1beta1::EnableFailure, decorator: Google::Apis::ServiceusageV1beta1::EnableFailure::Representation
      
          collection :services, as: 'services', class: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service, decorator: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service::Representation
      
        end
      end
      
      class Billing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceusageV1beta1::BillingDestination, decorator: Google::Apis::ServiceusageV1beta1::BillingDestination::Representation
      
        end
      end
      
      class BillingDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class ConsumerQuotaLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allows_admin_overrides, as: 'allowsAdminOverrides'
          property :is_precise, as: 'isPrecise'
          property :metric, as: 'metric'
          property :name, as: 'name'
          collection :quota_buckets, as: 'quotaBuckets', class: Google::Apis::ServiceusageV1beta1::QuotaBucket, decorator: Google::Apis::ServiceusageV1beta1::QuotaBucket::Representation
      
          property :unit, as: 'unit'
        end
      end
      
      class ConsumerQuotaMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_quota_limits, as: 'consumerQuotaLimits', class: Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit, decorator: Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit::Representation
      
          property :display_name, as: 'displayName'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :unit, as: 'unit'
        end
      end
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::ContextRule, decorator: Google::Apis::ServiceusageV1beta1::ContextRule::Representation
      
        end
      end
      
      class ContextRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_request_extensions, as: 'allowedRequestExtensions'
          collection :allowed_response_extensions, as: 'allowedResponseExtensions'
          collection :provided, as: 'provided'
          collection :requested, as: 'requested'
          property :selector, as: 'selector'
        end
      end
      
      class Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class CustomError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::CustomErrorRule, decorator: Google::Apis::ServiceusageV1beta1::CustomErrorRule::Representation
      
          collection :types, as: 'types'
        end
      end
      
      class CustomErrorRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_error_type, as: 'isErrorType'
          property :selector, as: 'selector'
        end
      end
      
      class CustomHttpPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :path, as: 'path'
        end
      end
      
      class DisableServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisableServiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service', class: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service, decorator: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service::Representation
      
        end
      end
      
      class Documentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documentation_root_url, as: 'documentationRootUrl'
          property :overview, as: 'overview'
          collection :pages, as: 'pages', class: Google::Apis::ServiceusageV1beta1::Page, decorator: Google::Apis::ServiceusageV1beta1::Page::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::DocumentationRule, decorator: Google::Apis::ServiceusageV1beta1::DocumentationRule::Representation
      
          property :service_root_url, as: 'serviceRootUrl'
          property :summary, as: 'summary'
        end
      end
      
      class DocumentationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecation_description, as: 'deprecationDescription'
          property :description, as: 'description'
          property :selector, as: 'selector'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :service_id, as: 'serviceId'
        end
      end
      
      class EnableServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableServiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service', class: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service, decorator: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1Service::Representation
      
        end
      end
      
      class Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          property :allow_cors, as: 'allowCors'
          property :name, as: 'name'
          property :target, as: 'target'
        end
      end
      
      class Enum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enumvalue, as: 'enumvalue', class: Google::Apis::ServiceusageV1beta1::EnumValue, decorator: Google::Apis::ServiceusageV1beta1::EnumValue::Representation
      
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceusageV1beta1::SourceContext, decorator: Google::Apis::ServiceusageV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class EnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :number, as: 'number'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardinality, as: 'cardinality'
          property :default_value, as: 'defaultValue'
          property :json_name, as: 'jsonName'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :number, as: 'number'
          property :oneof_index, as: 'oneofIndex'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
          property :packed, as: 'packed'
          property :type_url, as: 'typeUrl'
        end
      end
      
      class GetServiceIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity', class: Google::Apis::ServiceusageV1beta1::ServiceIdentity, decorator: Google::Apis::ServiceusageV1beta1::ServiceIdentity::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleApiService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis', class: Google::Apis::ServiceusageV1beta1::Api, decorator: Google::Apis::ServiceusageV1beta1::Api::Representation
      
          property :authentication, as: 'authentication', class: Google::Apis::ServiceusageV1beta1::Authentication, decorator: Google::Apis::ServiceusageV1beta1::Authentication::Representation
      
          property :backend, as: 'backend', class: Google::Apis::ServiceusageV1beta1::Backend, decorator: Google::Apis::ServiceusageV1beta1::Backend::Representation
      
          property :billing, as: 'billing', class: Google::Apis::ServiceusageV1beta1::Billing, decorator: Google::Apis::ServiceusageV1beta1::Billing::Representation
      
          property :config_version, as: 'configVersion'
          property :context, as: 'context', class: Google::Apis::ServiceusageV1beta1::Context, decorator: Google::Apis::ServiceusageV1beta1::Context::Representation
      
          property :control, as: 'control', class: Google::Apis::ServiceusageV1beta1::Control, decorator: Google::Apis::ServiceusageV1beta1::Control::Representation
      
          property :custom_error, as: 'customError', class: Google::Apis::ServiceusageV1beta1::CustomError, decorator: Google::Apis::ServiceusageV1beta1::CustomError::Representation
      
          property :documentation, as: 'documentation', class: Google::Apis::ServiceusageV1beta1::Documentation, decorator: Google::Apis::ServiceusageV1beta1::Documentation::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ServiceusageV1beta1::Endpoint, decorator: Google::Apis::ServiceusageV1beta1::Endpoint::Representation
      
          collection :enums, as: 'enums', class: Google::Apis::ServiceusageV1beta1::Enum, decorator: Google::Apis::ServiceusageV1beta1::Enum::Representation
      
          property :http, as: 'http', class: Google::Apis::ServiceusageV1beta1::Http, decorator: Google::Apis::ServiceusageV1beta1::Http::Representation
      
          property :id, as: 'id'
          property :logging, as: 'logging', class: Google::Apis::ServiceusageV1beta1::Logging, decorator: Google::Apis::ServiceusageV1beta1::Logging::Representation
      
          collection :logs, as: 'logs', class: Google::Apis::ServiceusageV1beta1::LogDescriptor, decorator: Google::Apis::ServiceusageV1beta1::LogDescriptor::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::ServiceusageV1beta1::MetricDescriptor, decorator: Google::Apis::ServiceusageV1beta1::MetricDescriptor::Representation
      
          collection :monitored_resources, as: 'monitoredResources', class: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor, decorator: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::ServiceusageV1beta1::Monitoring, decorator: Google::Apis::ServiceusageV1beta1::Monitoring::Representation
      
          property :name, as: 'name'
          property :producer_project_id, as: 'producerProjectId'
          property :quota, as: 'quota', class: Google::Apis::ServiceusageV1beta1::Quota, decorator: Google::Apis::ServiceusageV1beta1::Quota::Representation
      
          property :source_info, as: 'sourceInfo', class: Google::Apis::ServiceusageV1beta1::SourceInfo, decorator: Google::Apis::ServiceusageV1beta1::SourceInfo::Representation
      
          property :system_parameters, as: 'systemParameters', class: Google::Apis::ServiceusageV1beta1::SystemParameters, decorator: Google::Apis::ServiceusageV1beta1::SystemParameters::Representation
      
          collection :system_types, as: 'systemTypes', class: Google::Apis::ServiceusageV1beta1::Type, decorator: Google::Apis::ServiceusageV1beta1::Type::Representation
      
          property :title, as: 'title'
          collection :types, as: 'types', class: Google::Apis::ServiceusageV1beta1::Type, decorator: Google::Apis::ServiceusageV1beta1::Type::Representation
      
          property :usage, as: 'usage', class: Google::Apis::ServiceusageV1beta1::Usage, decorator: Google::Apis::ServiceusageV1beta1::Usage::Representation
      
        end
      end
      
      class GoogleApiServiceusageV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_names, as: 'resourceNames'
        end
      end
      
      class GoogleApiServiceusageV1Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1ServiceConfig, decorator: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1ServiceConfig::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :state, as: 'state'
        end
      end
      
      class GoogleApiServiceusageV1ServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis', class: Google::Apis::ServiceusageV1beta1::Api, decorator: Google::Apis::ServiceusageV1beta1::Api::Representation
      
          property :authentication, as: 'authentication', class: Google::Apis::ServiceusageV1beta1::Authentication, decorator: Google::Apis::ServiceusageV1beta1::Authentication::Representation
      
          property :documentation, as: 'documentation', class: Google::Apis::ServiceusageV1beta1::Documentation, decorator: Google::Apis::ServiceusageV1beta1::Documentation::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ServiceusageV1beta1::Endpoint, decorator: Google::Apis::ServiceusageV1beta1::Endpoint::Representation
      
          collection :monitored_resources, as: 'monitoredResources', class: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor, decorator: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::ServiceusageV1beta1::Monitoring, decorator: Google::Apis::ServiceusageV1beta1::Monitoring::Representation
      
          property :name, as: 'name'
          property :quota, as: 'quota', class: Google::Apis::ServiceusageV1beta1::Quota, decorator: Google::Apis::ServiceusageV1beta1::Quota::Representation
      
          property :title, as: 'title'
          property :usage, as: 'usage', class: Google::Apis::ServiceusageV1beta1::Usage, decorator: Google::Apis::ServiceusageV1beta1::Usage::Representation
      
        end
      end
      
      class GoogleApiServiceusageV1beta1GetServiceIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity', class: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1beta1ServiceIdentity, decorator: Google::Apis::ServiceusageV1beta1::GoogleApiServiceusageV1beta1ServiceIdentity::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleApiServiceusageV1beta1ServiceIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class Http
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_decode_reserved_expansion, as: 'fullyDecodeReservedExpansion'
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::HttpRule, decorator: Google::Apis::ServiceusageV1beta1::HttpRule::Representation
      
        end
      end
      
      class HttpRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_bindings, as: 'additionalBindings', class: Google::Apis::ServiceusageV1beta1::HttpRule, decorator: Google::Apis::ServiceusageV1beta1::HttpRule::Representation
      
          property :body, as: 'body'
          property :custom, as: 'custom', class: Google::Apis::ServiceusageV1beta1::CustomHttpPattern, decorator: Google::Apis::ServiceusageV1beta1::CustomHttpPattern::Representation
      
          property :delete, as: 'delete'
          property :get, as: 'get'
          property :patch, as: 'patch'
          property :post, as: 'post'
          property :put, as: 'put'
          property :response_body, as: 'responseBody'
          property :selector, as: 'selector'
        end
      end
      
      class ImportAdminOverridesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          property :inline_source, as: 'inlineSource', class: Google::Apis::ServiceusageV1beta1::OverrideInlineSource, decorator: Google::Apis::ServiceusageV1beta1::OverrideInlineSource::Representation
      
        end
      end
      
      class ImportAdminOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class ImportAdminQuotaPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policies, as: 'policies', class: Google::Apis::ServiceusageV1beta1::AdminQuotaPolicy, decorator: Google::Apis::ServiceusageV1beta1::AdminQuotaPolicy::Representation
      
        end
      end
      
      class ImportConsumerOverridesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          property :inline_source, as: 'inlineSource', class: Google::Apis::ServiceusageV1beta1::OverrideInlineSource, decorator: Google::Apis::ServiceusageV1beta1::OverrideInlineSource::Representation
      
        end
      end
      
      class ImportConsumerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class JwtLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          property :query, as: 'query'
          property :value_prefix, as: 'valuePrefix'
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :key, as: 'key'
          property :value_type, as: 'valueType'
        end
      end
      
      class ListAdminOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class ListConsumerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class ListConsumerQuotaMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric, decorator: Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ServiceusageV1beta1::Operation, decorator: Google::Apis::ServiceusageV1beta1::Operation::Representation
      
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::ServiceusageV1beta1::Service, decorator: Google::Apis::ServiceusageV1beta1::Service::Representation
      
        end
      end
      
      class LogDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceusageV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceusageV1beta1::LabelDescriptor::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Logging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceusageV1beta1::LoggingDestination, decorator: Google::Apis::ServiceusageV1beta1::LoggingDestination::Representation
      
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServiceusageV1beta1::LoggingDestination, decorator: Google::Apis::ServiceusageV1beta1::LoggingDestination::Representation
      
        end
      end
      
      class LoggingDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logs, as: 'logs'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class MethodProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
          property :request_streaming, as: 'requestStreaming'
          property :request_type_url, as: 'requestTypeUrl'
          property :response_streaming, as: 'responseStreaming'
          property :response_type_url, as: 'responseTypeUrl'
          property :syntax, as: 'syntax'
        end
      end
      
      class MetricDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceusageV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceusageV1beta1::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :metadata, as: 'metadata', class: Google::Apis::ServiceusageV1beta1::MetricDescriptorMetadata, decorator: Google::Apis::ServiceusageV1beta1::MetricDescriptorMetadata::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :monitored_resource_types, as: 'monitoredResourceTypes'
          property :name, as: 'name'
          property :type, as: 'type'
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class MetricDescriptorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingest_delay, as: 'ingestDelay'
          property :launch_stage, as: 'launchStage'
          property :sample_period, as: 'samplePeriod'
        end
      end
      
      class MetricRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metric_costs, as: 'metricCosts'
          property :selector, as: 'selector'
        end
      end
      
      class Mixin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :root, as: 'root'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceusageV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceusageV1beta1::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class Monitoring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceusageV1beta1::MonitoringDestination, decorator: Google::Apis::ServiceusageV1beta1::MonitoringDestination::Representation
      
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServiceusageV1beta1::MonitoringDestination, decorator: Google::Apis::ServiceusageV1beta1::MonitoringDestination::Representation
      
        end
      end
      
      class MonitoringDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class OAuthRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_scopes, as: 'canonicalScopes'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ServiceusageV1beta1::Status, decorator: Google::Apis::ServiceusageV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_names, as: 'resourceNames'
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :value, as: 'value'
        end
      end
      
      class OverrideInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :name, as: 'name'
          collection :subpages, as: 'subpages', class: Google::Apis::ServiceusageV1beta1::Page, decorator: Google::Apis::ServiceusageV1beta1::Page::Representation
      
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :limits, as: 'limits', class: Google::Apis::ServiceusageV1beta1::QuotaLimit, decorator: Google::Apis::ServiceusageV1beta1::QuotaLimit::Representation
      
          collection :metric_rules, as: 'metricRules', class: Google::Apis::ServiceusageV1beta1::MetricRule, decorator: Google::Apis::ServiceusageV1beta1::MetricRule::Representation
      
        end
      end
      
      class QuotaBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_override, as: 'adminOverride', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
          property :consumer_override, as: 'consumerOverride', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
          property :default_limit, :numeric_string => true, as: 'defaultLimit'
          hash :dimensions, as: 'dimensions'
          property :effective_limit, :numeric_string => true, as: 'effectiveLimit'
          property :producer_override, as: 'producerOverride', class: Google::Apis::ServiceusageV1beta1::QuotaOverride, decorator: Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
      
        end
      end
      
      class QuotaLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_limit, :numeric_string => true, as: 'defaultLimit'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :duration, as: 'duration'
          property :free_tier, :numeric_string => true, as: 'freeTier'
          property :max_limit, :numeric_string => true, as: 'maxLimit'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :unit, as: 'unit'
          hash :values, as: 'values'
        end
      end
      
      class QuotaOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_override_ancestor, as: 'adminOverrideAncestor'
          hash :dimensions, as: 'dimensions'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :override_value, :numeric_string => true, as: 'overrideValue'
          property :unit, as: 'unit'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ServiceusageV1beta1::ServiceConfig, decorator: Google::Apis::ServiceusageV1beta1::ServiceConfig::Representation
      
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :state, as: 'state'
        end
      end
      
      class ServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis', class: Google::Apis::ServiceusageV1beta1::Api, decorator: Google::Apis::ServiceusageV1beta1::Api::Representation
      
          property :authentication, as: 'authentication', class: Google::Apis::ServiceusageV1beta1::Authentication, decorator: Google::Apis::ServiceusageV1beta1::Authentication::Representation
      
          property :documentation, as: 'documentation', class: Google::Apis::ServiceusageV1beta1::Documentation, decorator: Google::Apis::ServiceusageV1beta1::Documentation::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ServiceusageV1beta1::Endpoint, decorator: Google::Apis::ServiceusageV1beta1::Endpoint::Representation
      
          collection :monitored_resources, as: 'monitoredResources', class: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor, decorator: Google::Apis::ServiceusageV1beta1::MonitoredResourceDescriptor::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::ServiceusageV1beta1::Monitoring, decorator: Google::Apis::ServiceusageV1beta1::Monitoring::Representation
      
          property :name, as: 'name'
          property :quota, as: 'quota', class: Google::Apis::ServiceusageV1beta1::Quota, decorator: Google::Apis::ServiceusageV1beta1::Quota::Representation
      
          property :title, as: 'title'
          property :usage, as: 'usage', class: Google::Apis::ServiceusageV1beta1::Usage, decorator: Google::Apis::ServiceusageV1beta1::Usage::Representation
      
        end
      end
      
      class ServiceIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
        end
      end
      
      class SourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_files, as: 'sourceFiles'
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
      
      class SystemParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_header, as: 'httpHeader'
          property :name, as: 'name'
          property :url_query_parameter, as: 'urlQueryParameter'
        end
      end
      
      class SystemParameterRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::ServiceusageV1beta1::SystemParameter, decorator: Google::Apis::ServiceusageV1beta1::SystemParameter::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class SystemParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::SystemParameterRule, decorator: Google::Apis::ServiceusageV1beta1::SystemParameterRule::Representation
      
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::ServiceusageV1beta1::Field, decorator: Google::Apis::ServiceusageV1beta1::Field::Representation
      
          property :name, as: 'name'
          collection :oneofs, as: 'oneofs'
          collection :options, as: 'options', class: Google::Apis::ServiceusageV1beta1::Option, decorator: Google::Apis::ServiceusageV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceusageV1beta1::SourceContext, decorator: Google::Apis::ServiceusageV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class Usage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_notification_channel, as: 'producerNotificationChannel'
          collection :requirements, as: 'requirements'
          collection :rules, as: 'rules', class: Google::Apis::ServiceusageV1beta1::UsageRule, decorator: Google::Apis::ServiceusageV1beta1::UsageRule::Representation
      
        end
      end
      
      class UsageRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_unregistered_calls, as: 'allowUnregisteredCalls'
          property :selector, as: 'selector'
          property :skip_service_control, as: 'skipServiceControl'
        end
      end
    end
  end
end
