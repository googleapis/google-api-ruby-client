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
    module FirebasedataconnectV1beta
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Datasource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteMutationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteMutationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GraphqlError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GraphqlErrorExtensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GraphqlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GraphqlRequestExtensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GraphqlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpGraphql
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImpersonateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Impersonation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class PostgreSql
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workaround
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudSqlInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
        end
      end
      
      class Connector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :source, as: 'source', class: Google::Apis::FirebasedataconnectV1beta::Source, decorator: Google::Apis::FirebasedataconnectV1beta::Source::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Datasource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_graphql, as: 'httpGraphql', class: Google::Apis::FirebasedataconnectV1beta::HttpGraphql, decorator: Google::Apis::FirebasedataconnectV1beta::HttpGraphql::Representation
      
          property :postgresql, as: 'postgresql', class: Google::Apis::FirebasedataconnectV1beta::PostgreSql, decorator: Google::Apis::FirebasedataconnectV1beta::PostgreSql::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecuteMutationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_name, as: 'operationName'
          hash :variables, as: 'variables'
        end
      end
      
      class ExecuteMutationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          collection :errors, as: 'errors', class: Google::Apis::FirebasedataconnectV1beta::GraphqlError, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlError::Representation
      
        end
      end
      
      class ExecuteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_name, as: 'operationName'
          hash :variables, as: 'variables'
        end
      end
      
      class ExecuteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          collection :errors, as: 'errors', class: Google::Apis::FirebasedataconnectV1beta::GraphqlError, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlError::Representation
      
        end
      end
      
      class File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :path, as: 'path'
        end
      end
      
      class GraphqlError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extensions, as: 'extensions', class: Google::Apis::FirebasedataconnectV1beta::GraphqlErrorExtensions, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlErrorExtensions::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::FirebasedataconnectV1beta::SourceLocation, decorator: Google::Apis::FirebasedataconnectV1beta::SourceLocation::Representation
      
          property :message, as: 'message'
          collection :path, as: 'path'
        end
      end
      
      class GraphqlErrorExtensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :debug_details, as: 'debugDetails'
          property :file, as: 'file'
          property :warning_level, as: 'warningLevel'
          collection :workarounds, as: 'workarounds', class: Google::Apis::FirebasedataconnectV1beta::Workaround, decorator: Google::Apis::FirebasedataconnectV1beta::Workaround::Representation
      
        end
      end
      
      class GraphqlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extensions, as: 'extensions', class: Google::Apis::FirebasedataconnectV1beta::GraphqlRequestExtensions, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlRequestExtensions::Representation
      
          property :operation_name, as: 'operationName'
          property :query, as: 'query'
          hash :variables, as: 'variables'
        end
      end
      
      class GraphqlRequestExtensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impersonate, as: 'impersonate', class: Google::Apis::FirebasedataconnectV1beta::Impersonation, decorator: Google::Apis::FirebasedataconnectV1beta::Impersonation::Representation
      
        end
      end
      
      class GraphqlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          collection :errors, as: 'errors', class: Google::Apis::FirebasedataconnectV1beta::GraphqlError, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlError::Representation
      
        end
      end
      
      class HttpGraphql
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
          property :uri, as: 'uri'
        end
      end
      
      class ImpersonateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extensions, as: 'extensions', class: Google::Apis::FirebasedataconnectV1beta::GraphqlRequestExtensions, decorator: Google::Apis::FirebasedataconnectV1beta::GraphqlRequestExtensions::Representation
      
          property :operation_name, as: 'operationName'
          hash :variables, as: 'variables'
        end
      end
      
      class Impersonation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :auth_claims, as: 'authClaims'
          property :include_debug_details, as: 'includeDebugDetails'
          property :unauthenticated, as: 'unauthenticated'
        end
      end
      
      class ListConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connectors, as: 'connectors', class: Google::Apis::FirebasedataconnectV1beta::Connector, decorator: Google::Apis::FirebasedataconnectV1beta::Connector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FirebasedataconnectV1beta::Location, decorator: Google::Apis::FirebasedataconnectV1beta::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FirebasedataconnectV1beta::Operation, decorator: Google::Apis::FirebasedataconnectV1beta::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::FirebasedataconnectV1beta::Schema, decorator: Google::Apis::FirebasedataconnectV1beta::Schema::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::FirebasedataconnectV1beta::Service, decorator: Google::Apis::FirebasedataconnectV1beta::Service::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirebasedataconnectV1beta::Status, decorator: Google::Apis::FirebasedataconnectV1beta::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PostgreSql
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql, as: 'cloudSql', class: Google::Apis::FirebasedataconnectV1beta::CloudSqlInstance, decorator: Google::Apis::FirebasedataconnectV1beta::CloudSqlInstance::Representation
      
          property :database, as: 'database'
          property :ephemeral, as: 'ephemeral'
          property :schema_migration, as: 'schemaMigration'
          property :schema_validation, as: 'schemaValidation'
          property :unlinked, as: 'unlinked'
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          collection :datasources, as: 'datasources', class: Google::Apis::FirebasedataconnectV1beta::Datasource, decorator: Google::Apis::FirebasedataconnectV1beta::Datasource::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :source, as: 'source', class: Google::Apis::FirebasedataconnectV1beta::Source, decorator: Google::Apis::FirebasedataconnectV1beta::Source::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::FirebasedataconnectV1beta::File, decorator: Google::Apis::FirebasedataconnectV1beta::File::Representation
      
        end
      end
      
      class SourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :line, as: 'line'
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
      
      class Workaround
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :reason, as: 'reason'
          property :replace, as: 'replace'
        end
      end
    end
  end
end
