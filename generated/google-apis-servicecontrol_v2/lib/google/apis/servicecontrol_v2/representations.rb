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
    module ServicecontrolV2
      
      class Api
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Auth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EsfMigrationServerOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstPartyPrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrgPolicyViolationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Peer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyViolationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Request
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Response
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccountDelegationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpanContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThirdPartyPrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2LogEntryOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V2LogEntrySourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViolationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Api
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :protocol, as: 'protocol'
          property :service, as: 'service'
          property :version, as: 'version'
        end
      end
      
      class AttributeContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api, as: 'api', class: Google::Apis::ServicecontrolV2::Api, decorator: Google::Apis::ServicecontrolV2::Api::Representation
      
          property :destination, as: 'destination', class: Google::Apis::ServicecontrolV2::Peer, decorator: Google::Apis::ServicecontrolV2::Peer::Representation
      
          collection :extensions, as: 'extensions'
          property :origin, as: 'origin', class: Google::Apis::ServicecontrolV2::Peer, decorator: Google::Apis::ServicecontrolV2::Peer::Representation
      
          property :request, as: 'request', class: Google::Apis::ServicecontrolV2::Request, decorator: Google::Apis::ServicecontrolV2::Request::Representation
      
          property :resource, as: 'resource', class: Google::Apis::ServicecontrolV2::Resource, decorator: Google::Apis::ServicecontrolV2::Resource::Representation
      
          property :response, as: 'response', class: Google::Apis::ServicecontrolV2::Response, decorator: Google::Apis::ServicecontrolV2::Response::Representation
      
          property :source, as: 'source', class: Google::Apis::ServicecontrolV2::Peer, decorator: Google::Apis::ServicecontrolV2::Peer::Representation
      
        end
      end
      
      class AuditLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_info, as: 'authenticationInfo', class: Google::Apis::ServicecontrolV2::AuthenticationInfo, decorator: Google::Apis::ServicecontrolV2::AuthenticationInfo::Representation
      
          collection :authorization_info, as: 'authorizationInfo', class: Google::Apis::ServicecontrolV2::AuthorizationInfo, decorator: Google::Apis::ServicecontrolV2::AuthorizationInfo::Representation
      
          hash :metadata, as: 'metadata'
          property :method_name, as: 'methodName'
          property :num_response_items, :numeric_string => true, as: 'numResponseItems'
          property :policy_violation_info, as: 'policyViolationInfo', class: Google::Apis::ServicecontrolV2::PolicyViolationInfo, decorator: Google::Apis::ServicecontrolV2::PolicyViolationInfo::Representation
      
          hash :request, as: 'request'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::ServicecontrolV2::RequestMetadata, decorator: Google::Apis::ServicecontrolV2::RequestMetadata::Representation
      
          property :resource_location, as: 'resourceLocation', class: Google::Apis::ServicecontrolV2::ResourceLocation, decorator: Google::Apis::ServicecontrolV2::ResourceLocation::Representation
      
          property :resource_name, as: 'resourceName'
          hash :resource_original_state, as: 'resourceOriginalState'
          hash :response, as: 'response'
          hash :service_data, as: 'serviceData'
          property :service_name, as: 'serviceName'
          property :status, as: 'status', class: Google::Apis::ServicecontrolV2::Status, decorator: Google::Apis::ServicecontrolV2::Status::Representation
      
        end
      end
      
      class Auth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_levels, as: 'accessLevels'
          collection :audiences, as: 'audiences'
          hash :claims, as: 'claims'
          property :presenter, as: 'presenter'
          property :principal, as: 'principal'
        end
      end
      
      class AuthenticationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority_selector, as: 'authoritySelector'
          property :principal_email, as: 'principalEmail'
          property :principal_subject, as: 'principalSubject'
          collection :service_account_delegation_info, as: 'serviceAccountDelegationInfo', class: Google::Apis::ServicecontrolV2::ServiceAccountDelegationInfo, decorator: Google::Apis::ServicecontrolV2::ServiceAccountDelegationInfo::Representation
      
          property :service_account_key_name, as: 'serviceAccountKeyName'
          hash :third_party_principal, as: 'thirdPartyPrincipal'
        end
      end
      
      class AuthorizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :granted, as: 'granted'
          property :permission, as: 'permission'
          property :resource, as: 'resource'
          property :resource_attributes, as: 'resourceAttributes', class: Google::Apis::ServicecontrolV2::Resource, decorator: Google::Apis::ServicecontrolV2::Resource::Representation
      
        end
      end
      
      class CheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::ServicecontrolV2::AttributeContext, decorator: Google::Apis::ServicecontrolV2::AttributeContext::Representation
      
          property :flags, as: 'flags'
          collection :resources, as: 'resources', class: Google::Apis::ServicecontrolV2::ResourceInfo, decorator: Google::Apis::ServicecontrolV2::ResourceInfo::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class CheckResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :esf_migration_server_override, as: 'esfMigrationServerOverride', class: Google::Apis::ServicecontrolV2::EsfMigrationServerOverride, decorator: Google::Apis::ServicecontrolV2::EsfMigrationServerOverride::Representation
      
          hash :headers, as: 'headers'
          property :status, as: 'status', class: Google::Apis::ServicecontrolV2::Status, decorator: Google::Apis::ServicecontrolV2::Status::Representation
      
        end
      end
      
      class EsfMigrationServerOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :override_mode, as: 'overrideMode'
        end
      end
      
      class FirstPartyPrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          hash :service_metadata, as: 'serviceMetadata'
        end
      end
      
      class OrgPolicyViolationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :payload, as: 'payload'
          hash :resource_tags, as: 'resourceTags'
          property :resource_type, as: 'resourceType'
          collection :violation_info, as: 'violationInfo', class: Google::Apis::ServicecontrolV2::ViolationInfo, decorator: Google::Apis::ServicecontrolV2::ViolationInfo::Representation
      
        end
      end
      
      class Peer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip, as: 'ip'
          hash :labels, as: 'labels'
          property :port, :numeric_string => true, as: 'port'
          property :principal, as: 'principal'
          property :region_code, as: 'regionCode'
        end
      end
      
      class PolicyViolationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :org_policy_violation_info, as: 'orgPolicyViolationInfo', class: Google::Apis::ServicecontrolV2::OrgPolicyViolationInfo, decorator: Google::Apis::ServicecontrolV2::OrgPolicyViolationInfo::Representation
      
        end
      end
      
      class ReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ServicecontrolV2::AttributeContext, decorator: Google::Apis::ServicecontrolV2::AttributeContext::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class ReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Request
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth, as: 'auth', class: Google::Apis::ServicecontrolV2::Auth, decorator: Google::Apis::ServicecontrolV2::Auth::Representation
      
          hash :headers, as: 'headers'
          property :host, as: 'host'
          property :id, as: 'id'
          property :method_prop, as: 'method'
          property :path, as: 'path'
          property :protocol, as: 'protocol'
          property :query, as: 'query'
          property :reason, as: 'reason'
          property :scheme, as: 'scheme'
          property :size, :numeric_string => true, as: 'size'
          property :time, as: 'time'
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_ip, as: 'callerIp'
          property :caller_network, as: 'callerNetwork'
          property :caller_supplied_user_agent, as: 'callerSuppliedUserAgent'
          property :destination_attributes, as: 'destinationAttributes', class: Google::Apis::ServicecontrolV2::Peer, decorator: Google::Apis::ServicecontrolV2::Peer::Representation
      
          property :request_attributes, as: 'requestAttributes', class: Google::Apis::ServicecontrolV2::Request, decorator: Google::Apis::ServicecontrolV2::Request::Representation
      
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :name, as: 'name'
          property :service, as: 'service'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          property :location, as: 'location'
          property :name, as: 'name'
          property :permission, as: 'permission'
          property :type, as: 'type'
        end
      end
      
      class ResourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :current_locations, as: 'currentLocations'
          collection :original_locations, as: 'originalLocations'
        end
      end
      
      class Response
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_latency, as: 'backendLatency'
          property :code, :numeric_string => true, as: 'code'
          hash :headers, as: 'headers'
          property :size, :numeric_string => true, as: 'size'
          property :time, as: 'time'
        end
      end
      
      class ServiceAccountDelegationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_party_principal, as: 'firstPartyPrincipal', class: Google::Apis::ServicecontrolV2::FirstPartyPrincipal, decorator: Google::Apis::ServicecontrolV2::FirstPartyPrincipal::Representation
      
          property :principal_subject, as: 'principalSubject'
          property :third_party_principal, as: 'thirdPartyPrincipal', class: Google::Apis::ServicecontrolV2::ThirdPartyPrincipal, decorator: Google::Apis::ServicecontrolV2::ThirdPartyPrincipal::Representation
      
        end
      end
      
      class SpanContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :span_name, as: 'spanName'
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
      
      class ThirdPartyPrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :third_party_claims, as: 'thirdPartyClaims'
        end
      end
      
      class V2HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_fill_bytes, :numeric_string => true, as: 'cacheFillBytes'
          property :cache_hit, as: 'cacheHit'
          property :cache_lookup, as: 'cacheLookup'
          property :cache_validated_with_origin_server, as: 'cacheValidatedWithOriginServer'
          property :latency, as: 'latency'
          property :protocol, as: 'protocol'
          property :referer, as: 'referer'
          property :remote_ip, as: 'remoteIp'
          property :request_method, as: 'requestMethod'
          property :request_size, :numeric_string => true, as: 'requestSize'
          property :request_url, as: 'requestUrl'
          property :response_size, :numeric_string => true, as: 'responseSize'
          property :server_ip, as: 'serverIp'
          property :status, as: 'status'
          property :user_agent, as: 'userAgent'
        end
      end
      
      class V2LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::ServicecontrolV2::V2HttpRequest, decorator: Google::Apis::ServicecontrolV2::V2HttpRequest::Representation
      
          property :insert_id, as: 'insertId'
          hash :labels, as: 'labels'
          hash :monitored_resource_labels, as: 'monitoredResourceLabels'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::ServicecontrolV2::V2LogEntryOperation, decorator: Google::Apis::ServicecontrolV2::V2LogEntryOperation::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::ServicecontrolV2::V2LogEntrySourceLocation, decorator: Google::Apis::ServicecontrolV2::V2LogEntrySourceLocation::Representation
      
          hash :struct_payload, as: 'structPayload'
          property :text_payload, as: 'textPayload'
          property :timestamp, as: 'timestamp'
          property :trace, as: 'trace'
        end
      end
      
      class V2LogEntryOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first, as: 'first'
          property :id, as: 'id'
          property :last, as: 'last'
          property :producer, as: 'producer'
        end
      end
      
      class V2LogEntrySourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :function, as: 'function'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class ViolationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checked_value, as: 'checkedValue'
          property :constraint, as: 'constraint'
          property :error_message, as: 'errorMessage'
          property :policy_type, as: 'policyType'
        end
      end
    end
  end
end
