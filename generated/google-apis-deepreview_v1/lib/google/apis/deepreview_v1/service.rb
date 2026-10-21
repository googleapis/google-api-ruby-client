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
    module DeepreviewV1
      # Deep Review API
      #
      # Deep Review API for automated, in-depth document reviews.
      #
      # @example
      #    require 'google/apis/deepreview_v1'
      #
      #    Deepreview = Google::Apis::DeepreviewV1 # Alias the module
      #    service = Deepreview::DeepReviewService.new
      #
      # @see https://research.google/deepreview
      class DeepReviewService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://deepreview.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-deepreview_v1',
                client_version: Google::Apis::DeepreviewV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes a document and all associated reviews and stored blobs.
        # @param [String] name
        #   Required. The resource name of the document to delete. Format: `documents/`
        #   document``
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the document is not found, the request succeeds.
        # @param [Boolean] force
        #   Optional. If set to true, any child resources (e.g. review resources) are also
        #   deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_document(name, allow_missing: nil, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::Empty::Representation
          command.response_class = Google::Apis::DeepreviewV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves document metadata and review history.
        # @param [String] name
        #   Required. The resource name of the document to retrieve. Format: `documents/`
        #   document``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::Document::Representation
          command.response_class = Google::Apis::DeepreviewV1::Document
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists documents for the authenticated caller with cursor pagination.
        # @param [String] filter
        #   Optional. Supported AIP-160 filter expressions (e.g., `display_name = "..."`).
        # @param [String] order_by
        #   Optional. Supported AIP-132 order_by field.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of documents to return in a single page. The
        #   server may return fewer than this value. If unspecified, at most 50 documents
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
        # @param [String] page_token
        #   Optional. A page token received from a previous `ListDocuments` call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::ListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::ListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_documents(filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/documents', options)
          command.response_representation = Google::Apis::DeepreviewV1::ListDocumentsResponse::Representation
          command.response_class = Google::Apis::DeepreviewV1::ListDocumentsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and initiates an asynchronous multi-agent review for a document.
        # @param [String] parent
        #   Required. The parent Document resource name where this review will be created.
        #   Format: `documents/`document``
        # @param [Google::Apis::DeepreviewV1::Review] review_object
        # @param [String] request_id
        #   Optional. Idempotency identifier for network retry safety (AIP-155). Must be a
        #   valid UUID4 string.
        # @param [String] review_id
        #   Optional. The ID to use for the review, which will become the final component
        #   of the review's resource name. If not provided, a unique server-generated UUID
        #   will be assigned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_document_review(parent, review_object = nil, request_id: nil, review_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reviews', options)
          command.request_representation = Google::Apis::DeepreviewV1::Review::Representation
          command.request_object = review_object
          command.response_representation = Google::Apis::DeepreviewV1::Operation::Representation
          command.response_class = Google::Apis::DeepreviewV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['reviewId'] = review_id unless review_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a specific review execution result.
        # @param [String] name
        #   Required. The resource name of the review to retrieve. Format: `documents/`
        #   document`/reviews/`review``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Review] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Review]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_document_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::Review::Representation
          command.response_class = Google::Apis::DeepreviewV1::Review
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all review execution runs for a document.
        # @param [String] parent
        #   Required. The parent Document resource name. Format: `documents/`document``
        # @param [String] filter
        #   Optional. Supported AIP-160 filter expressions.
        # @param [String] order_by
        #   Optional. Supported AIP-132 order_by field.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reviews to return in a single page. The server
        #   may return fewer than this value. If unspecified, at most 50 reviews will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token received from a previous `ListReviews` call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::ListReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::ListReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_document_reviews(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reviews', options)
          command.response_representation = Google::Apis::DeepreviewV1::ListReviewsResponse::Representation
          command.response_class = Google::Apis::DeepreviewV1::ListReviewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads the original document content (PDF binary) via Scotty media
        # streaming (AIP-136 custom method).
        # @param [String] name
        #   Required. The resource name of the document to download. Format: `documents/`
        #   document``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::DownloadDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::DownloadDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v1/{+name}:download', options)
          else
            command = make_download_command(:get, 'v1/{+name}:download', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DeepreviewV1::DownloadDocumentResponse::Representation
          command.response_class = Google::Apis::DeepreviewV1::DownloadDocumentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Document resource and ingests the manuscript via Scotty or
        # Google Drive.
        # @param [Google::Apis::DeepreviewV1::Document] document_object
        # @param [String] document_id
        #   Optional. The ID to use for the document, which will become the final
        #   component of the document's resource name. If not provided, a unique server-
        #   generated UUID will be assigned.
        # @param [String] request_id
        #   Optional. Idempotency identifier for network retry safety (AIP-155). Must be a
        #   valid UUID4 string.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(document_object = nil, document_id: nil, request_id: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/documents', options)
          else
            command = make_upload_command(:post, 'v1/documents', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DeepreviewV1::Document::Representation
          command.request_object = document_object
          command.response_representation = Google::Apis::DeepreviewV1::Document::Representation
          command.response_class = Google::Apis::DeepreviewV1::Document
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DeepreviewV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DeepreviewV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::DeepreviewV1::Empty::Representation
          command.response_class = Google::Apis::DeepreviewV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::Empty::Representation
          command.response_class = Google::Apis::DeepreviewV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::DeepreviewV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
        # @yieldparam result [Google::Apis::DeepreviewV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation_document_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::Operation::Representation
          command.response_class = Google::Apis::DeepreviewV1::Operation
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
