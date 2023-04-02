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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContentwarehouseV1
      # Document AI Warehouse API
      #
      # 
      #
      # @example
      #    require 'google/apis/contentwarehouse_v1'
      #
      #    Contentwarehouse = Google::Apis::ContentwarehouseV1 # Alias the module
      #    service = Contentwarehouse::ContentwarehouseService.new
      #
      # @see https://cloud.google.com/document-warehouse
      class ContentwarehouseService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://contentwarehouse.googleapis.com/', '',
                client_name: 'google-apis-contentwarehouse_v1',
                client_version: Google::Apis::ContentwarehouseV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the access control policy for a resource. Returns NOT_FOUND error if the
        # resource does not exist. Returns an empty policy if the resource exists but
        # does not have a policy set.
        # @param [String] resource
        #   Required. REQUIRED: The resource for which the policy is being requested.
        #   Format for document: projects/`project_number`/locations/`location`/documents/`
        #   document_id`. Format for collection: projects/`project_number`/locations/`
        #   location`/collections/`collection_id`. Format for project: projects/`
        #   project_number`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclRequest] google_cloud_contentwarehouse_v1_fetch_acl_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_acl(resource, google_cloud_contentwarehouse_v1_fetch_acl_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:fetchAcl', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_fetch_acl_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for a resource. Replaces any existing policy.
        # @param [String] resource
        #   Required. REQUIRED: The resource for which the policy is being requested.
        #   Format for document: projects/`project_number`/locations/`location`/documents/`
        #   document_id`. Format for collection: projects/`project_number`/locations/`
        #   location`/collections/`collection_id`. Format for project: projects/`
        #   project_number`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclRequest] google_cloud_contentwarehouse_v1_set_acl_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_acl(resource, google_cloud_contentwarehouse_v1_set_acl_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setAcl', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_set_acl_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions resources for given tenant project. Returns a long running
        # operation.
        # @param [String] location
        #   Required. The location to be initialized Format: projects/`project_number`/
        #   locations/`location`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1InitializeProjectRequest] google_cloud_contentwarehouse_v1_initialize_project_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initialize_project_location(location, google_cloud_contentwarehouse_v1_initialize_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:initialize', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1InitializeProjectRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_initialize_project_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a document schema.
        # @param [String] parent
        #   Required. The parent name.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema] google_cloud_contentwarehouse_v1_document_schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_document_schema(parent, google_cloud_contentwarehouse_v1_document_schema_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/documentSchemas', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema::Representation
          command.request_object = google_cloud_contentwarehouse_v1_document_schema_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a document schema. Returns NOT_FOUND if the document schema does not
        # exist. Returns BAD_REQUEST if the document schema has documents depending on
        # it.
        # @param [String] name
        #   Required. The name of the document schema to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_document_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a document schema. Returns NOT_FOUND if the document schema does not
        # exist.
        # @param [String] name
        #   Required. The name of the document schema to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_document_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists document schemas.
        # @param [String] parent
        #   Required. The parent, which owns this collection of document schemas. Format:
        #   projects/`project_number`/locations/`location`.
        # @param [Fixnum] page_size
        #   The maximum number of document schemas to return. The service may return fewer
        #   than this value. If unspecified, at most 50 document schemas will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListDocumentSchemas` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListDocumentSchemas` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListDocumentSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListDocumentSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_document_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/documentSchemas', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListDocumentSchemasResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListDocumentSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document Schema. Returns INVALID_ARGUMENT if the name of the
        # Document Schema is non-empty and does not equal the existing name. Supports
        # only appending new properties, adding new ENUM possible values, and updating
        # the EnumTypeOptions.validation_check_disabled flag for ENUM possible values.
        # Updating existing properties will result into INVALID_ARGUMENT.
        # @param [String] name
        #   Required. The name of the document schema to update. Format: projects/`
        #   project_number`/locations/`location`/documentSchemas/`document_schema_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest] google_cloud_contentwarehouse_v1_update_document_schema_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_document_schema(name, google_cloud_contentwarehouse_v1_update_document_schema_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_update_document_schema_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a document.
        # @param [String] parent
        #   Required. The parent name. Format: projects/`project_number`/locations/`
        #   location`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentRequest] google_cloud_contentwarehouse_v1_create_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_document(parent, google_cloud_contentwarehouse_v1_create_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/documents', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_create_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a document. Returns NOT_FOUND if the document does not exist.
        # @param [String] name
        #   Required. The name of the document to delete. Format: projects/`project_number`
        #   /locations/`location`/documents/`document_id` or projects/`project_number`/
        #   locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentRequest] google_cloud_contentwarehouse_v1_delete_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_document(name, google_cloud_contentwarehouse_v1_delete_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:delete', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_delete_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns NOT_FOUND error if the
        # resource does not exist. Returns an empty policy if the resource exists but
        # does not have a policy set.
        # @param [String] resource
        #   Required. REQUIRED: The resource for which the policy is being requested.
        #   Format for document: projects/`project_number`/locations/`location`/documents/`
        #   document_id`. Format for collection: projects/`project_number`/locations/`
        #   location`/collections/`collection_id`. Format for project: projects/`
        #   project_number`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclRequest] google_cloud_contentwarehouse_v1_fetch_acl_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_document_acl(resource, google_cloud_contentwarehouse_v1_fetch_acl_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:fetchAcl', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_fetch_acl_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FetchAclResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a document. Returns NOT_FOUND if the document does not exist.
        # @param [String] name
        #   Required. The name of the document to retrieve. Format: projects/`
        #   project_number`/locations/`location`/documents/`document_id` or projects/`
        #   project_number`/locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GetDocumentRequest] google_cloud_contentwarehouse_v1_get_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_document(name, google_cloud_contentwarehouse_v1_get_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:get', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GetDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_get_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all source document-links from the document.
        # @param [String] parent
        #   Required. The name of the document, for which all source links are returned.
        #   Format: projects/`project_number`/locations/`location`/documents/`
        #   source_document_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesRequest] google_cloud_contentwarehouse_v1_list_linked_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def linked_project_location_document_sources(parent, google_cloud_contentwarehouse_v1_list_linked_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/linkedSources', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_list_linked_sources_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return all target document-links from the document.
        # @param [String] parent
        #   Required. The name of the document, for which all target links are returned.
        #   Format: projects/`project_number`/locations/`location`/documents/`
        #   target_document_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsRequest] google_cloud_contentwarehouse_v1_list_linked_targets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def linked_project_location_document_targets(parent, google_cloud_contentwarehouse_v1_list_linked_targets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/linkedTargets', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_list_linked_targets_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListLinkedTargetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lock the document so the document cannot be updated by other users.
        # @param [String] name
        #   Required. The name of the document to lock. Format: projects/`project_number`/
        #   locations/`location`/documents/`document`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1LockDocumentRequest] google_cloud_contentwarehouse_v1_lock_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lock_project_location_document(name, google_cloud_contentwarehouse_v1_lock_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:lock', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1LockDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_lock_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a document. Returns INVALID_ARGUMENT if the name of the document is
        # non-empty and does not equal the existing name.
        # @param [String] name
        #   Required. The name of the document to update. Format: projects/`project_number`
        #   /locations/`location`/documents/`document_id` or projects/`project_number`/
        #   locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentRequest] google_cloud_contentwarehouse_v1_update_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_document(name, google_cloud_contentwarehouse_v1_update_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_update_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for documents using provided SearchDocumentsRequest. This call only
        # returns documents that the caller has permission to search against.
        # @param [String] parent
        #   Required. The parent, which owns this collection of documents. Format:
        #   projects/`project_number`/locations/`location`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsRequest] google_cloud_contentwarehouse_v1_search_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_documents(parent, google_cloud_contentwarehouse_v1_search_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/documents:search', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_search_documents_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for a resource. Replaces any existing policy.
        # @param [String] resource
        #   Required. REQUIRED: The resource for which the policy is being requested.
        #   Format for document: projects/`project_number`/locations/`location`/documents/`
        #   document_id`. Format for collection: projects/`project_number`/locations/`
        #   location`/collections/`collection_id`. Format for project: projects/`
        #   project_number`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclRequest] google_cloud_contentwarehouse_v1_set_acl_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_document_acl(resource, google_cloud_contentwarehouse_v1_set_acl_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setAcl', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_set_acl_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SetAclResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a link between a source document and a target document.
        # @param [String] parent
        #   Required. Parent of the document-link to be created. parent of document-link
        #   should be a document. Format: projects/`project_number`/locations/`location`/
        #   documents/`source_document_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentLinkRequest] google_cloud_contentwarehouse_v1_create_document_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_document_document_link(parent, google_cloud_contentwarehouse_v1_create_document_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/documentLinks', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CreateDocumentLinkRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_create_document_link_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove the link between the source and target documents.
        # @param [String] name
        #   Required. The name of the document-link to be deleted. Format: projects/`
        #   project_number`/locations/`location`/documents/`source_document_id`/
        #   documentLinks/`document_link_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest] google_cloud_contentwarehouse_v1_delete_document_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_document_document_link(name, google_cloud_contentwarehouse_v1_delete_document_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:delete', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_delete_document_link_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a document. Returns NOT_FOUND if the document does not exist.
        # @param [String] name
        #   Required. The name of the document to delete. Format: projects/`project_number`
        #   /locations/`location`/documents/`document_id` or projects/`project_number`/
        #   locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentRequest] google_cloud_contentwarehouse_v1_delete_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_document_reference_id(name, google_cloud_contentwarehouse_v1_delete_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:delete', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_delete_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a document. Returns NOT_FOUND if the document does not exist.
        # @param [String] name
        #   Required. The name of the document to retrieve. Format: projects/`
        #   project_number`/locations/`location`/documents/`document_id` or projects/`
        #   project_number`/locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GetDocumentRequest] google_cloud_contentwarehouse_v1_get_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_document_reference_id(name, google_cloud_contentwarehouse_v1_get_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:get', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GetDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_get_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a document. Returns INVALID_ARGUMENT if the name of the document is
        # non-empty and does not equal the existing name.
        # @param [String] name
        #   Required. The name of the document to update. Format: projects/`project_number`
        #   /locations/`location`/documents/`document_id` or projects/`project_number`/
        #   locations/`location`/documents/referenceId/`reference_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentRequest] google_cloud_contentwarehouse_v1_update_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_document_reference_id(name, google_cloud_contentwarehouse_v1_update_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_update_document_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateDocumentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ruleset.
        # @param [String] parent
        #   Required. The parent name. Format: projects/`project_number`/locations/`
        #   location`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet] google_cloud_contentwarehouse_v1_rule_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_rule_set(parent, google_cloud_contentwarehouse_v1_rule_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/ruleSets', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet::Representation
          command.request_object = google_cloud_contentwarehouse_v1_rule_set_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ruleset. Returns NOT_FOUND if the document does not exist.
        # @param [String] name
        #   Required. The name of the rule set to delete. Format: projects/`project_number`
        #   /locations/`location`/ruleSets/`rule_set_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_rule_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ruleset. Returns NOT_FOUND if the ruleset does not exist.
        # @param [String] name
        #   Required. The name of the rule set to retrieve. Format: projects/`
        #   project_number`/locations/`location`/ruleSets/`rule_set_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_rule_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists rulesets.
        # @param [String] parent
        #   Required. The parent, which owns this collection of document. Format: projects/
        #   `project_number`/locations/`location`.
        # @param [Fixnum] page_size
        #   The maximum number of rule sets to return. The service may return fewer than
        #   this value. If unspecified, at most 50 rule sets will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListRuleSets` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListRuleSets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListRuleSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListRuleSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_rule_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/ruleSets', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListRuleSetsResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListRuleSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ruleset. Returns INVALID_ARGUMENT if the name of the ruleset is non-
        # empty and does not equal the existing name.
        # @param [String] name
        #   Required. The name of the rule set to update. Format: projects/`project_number`
        #   /locations/`location`/ruleSets/`rule_set_id`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateRuleSetRequest] google_cloud_contentwarehouse_v1_update_rule_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_rule_set(name, google_cloud_contentwarehouse_v1_update_rule_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateRuleSetRequest::Representation
          command.request_object = google_cloud_contentwarehouse_v1_update_rule_set_request_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SynonymSet for a single context. Throws an ALREADY_EXISTS exception
        # if a synonymset already exists for the context.
        # @param [String] parent
        #   Required. The parent name. Format: projects/`project_number`/locations/`
        #   location`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet] google_cloud_contentwarehouse_v1_synonym_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_synonym_set(parent, google_cloud_contentwarehouse_v1_synonym_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/synonymSets', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet::Representation
          command.request_object = google_cloud_contentwarehouse_v1_synonym_set_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SynonymSet for a given context. Throws a NOT_FOUND exception if the
        # SynonymSet is not found.
        # @param [String] name
        #   Required. The name of the synonymSet to delete Format: projects/`
        #   project_number`/locations/`location`/synonymSets/`context`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_synonym_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SynonymSet for a particular context. Throws a NOT_FOUND exception if
        # the Synonymset does not exist
        # @param [String] name
        #   Required. The name of the synonymSet to retrieve Format: projects/`
        #   project_number`/locations/`location`/synonymSets/`context`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_synonym_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all SynonymSets (for all contexts) for the specified location.
        # @param [String] parent
        #   Required. The parent name. Format: projects/`project_number`/locations/`
        #   location`.
        # @param [Fixnum] page_size
        #   The maximum number of synonymSets to return. The service may return fewer than
        #   this value. If unspecified, at most 50 rule sets will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSynonymSets` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListSynonymSets` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListSynonymSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListSynonymSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_synonym_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/synonymSets', options)
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListSynonymSetsResponse::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ListSynonymSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove the existing SynonymSet for the context and replaces it with a new one.
        # Throws a NOT_FOUND exception if the SynonymSet is not found.
        # @param [String] name
        #   Required. The name of the synonymSet to update Format: projects/`
        #   project_number`/locations/`location`/synonymSets/`context`.
        # @param [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet] google_cloud_contentwarehouse_v1_synonym_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_synonym_set(name, google_cloud_contentwarehouse_v1_synonym_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet::Representation
          command.request_object = google_cloud_contentwarehouse_v1_synonym_set_object
          command.response_representation = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet::Representation
          command.response_class = Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
