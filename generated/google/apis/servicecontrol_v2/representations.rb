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
      
      class FirstPartyPrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Peer
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
      
          collection :resources, as: 'resources', class: Google::Apis::ServicecontrolV2::ResourceInfo, decorator: Google::Apis::ServicecontrolV2::ResourceInfo::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class CheckResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :headers, as: 'headers'
          property :status, as: 'status', class: Google::Apis::ServicecontrolV2::Status, decorator: Google::Apis::ServicecontrolV2::Status::Representation
      
        end
      end
      
      class FirstPartyPrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          hash :service_metadata, as: 'serviceMetadata'
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
    end
  end
end
