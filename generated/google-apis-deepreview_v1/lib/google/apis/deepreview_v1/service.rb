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
        
        # Deletes a document and its stored content. If `force` is set to `true`, any
        # associated reviews are also deleted.
        # @param [String] name
        #   Required. The resource name of the document to delete.
        # @param [Boolean] allow_missing
        #   Optional. If set to `true`, and the document is not found, the request
        #   succeeds.
        # @param [Boolean] force
        #   Optional. If set to `true`, any child resources (e.g. review resources) are
        #   also deleted. If `false` and the document has existing reviews, the request
        #   fails with `FAILED_PRECONDITION`.
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
        
        # Estimates what a review of a document would cost on the caller's Gemini API
        # key. The estimate comes from what past reviews with the same model and depth
        # cost, adjusted to this document's size and repriced at the Gemini API's
        # current list prices. It covers one review attempt that runs to completion, and
        # doesn't include retries after errors.
        # @param [String] document
        #   Required. The document to review.
        # @param [Google::Apis::DeepreviewV1::EstimateReviewCostRequest] estimate_review_cost_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::EstimateReviewCostResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::EstimateReviewCostResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def estimate_document_review_cost(document, estimate_review_cost_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+document}:estimateReviewCost', options)
          command.request_representation = Google::Apis::DeepreviewV1::EstimateReviewCostRequest::Representation
          command.request_object = estimate_review_cost_request_object
          command.response_representation = Google::Apis::DeepreviewV1::EstimateReviewCostResponse::Representation
          command.response_class = Google::Apis::DeepreviewV1::EstimateReviewCostResponse
          command.params['document'] = document unless document.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves document metadata. The returned document includes its `
        # latest_review_summary` when a review exists.
        # @param [String] name
        #   Required. The resource name of the document to retrieve.
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
        
        # Lists documents for the authenticated caller with cursor pagination. Each
        # returned document includes its `latest_review_summary` when a review exists.
        # @param [String] filter
        #   Optional. Custom filter expressions are not currently supported; non-empty
        #   values return INVALID_ARGUMENT.
        # @param [String] order_by
        #   Optional. Custom order_by expressions are not currently supported; non-empty
        #   values return INVALID_ARGUMENT.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of documents to return in a single page. The
        #   server may return fewer than this value. If unspecified, at most 50 documents
        #   will be returned. The maximum value is 100; values above 100 will be coerced
        #   to 100.
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
        # Returns a google.longrunning.Operation. When the operation completes, the `
        # response` field contains a `Review` and the `metadata` field contains `
        # CreateReviewMetadata`.
        # @param [String] parent
        #   Required. The parent Document resource name where this review will be created.
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
        #   Required. The resource name of the review to retrieve.
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
        #   Required. The parent Document resource name.
        # @param [String] filter
        #   Optional. Custom filter expressions are not currently supported; non-empty
        #   values return INVALID_ARGUMENT.
        # @param [String] order_by
        #   Optional. Custom order_by expressions are not currently supported; non-empty
        #   values return INVALID_ARGUMENT.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reviews to return in a single page. The server
        #   may return fewer than this value. If unspecified, at most 50 reviews will be
        #   returned. The maximum value is 100; values above 100 will be coerced to 100.
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
        
        # Downloads the original document content (PDF binary) using media streaming.
        # Pass `alt=media` as a query parameter to stream the binary PDF bytes. Without `
        # alt=media`, a JSON response is returned.
        # @param [String] name
        #   Required. The resource name of the document to download.
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
        
        # Creates a new Document resource and ingests the manuscript using media upload
        # or Google Drive.
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
        
        # Retrieves the review quota limits and sliding-window usage for the
        # authenticated caller.
        # @param [String] name
        #   Required. The resource name of the singleton user quota to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DeepreviewV1::UserQuota] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DeepreviewV1::UserQuota]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_quota(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DeepreviewV1::UserQuota::Representation
          command.response_class = Google::Apis::DeepreviewV1::UserQuota
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
