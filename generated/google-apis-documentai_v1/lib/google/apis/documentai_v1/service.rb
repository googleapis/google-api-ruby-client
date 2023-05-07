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
    module DocumentaiV1
      # Cloud Document AI API
      #
      # Service to parse structured information from unstructured or semi-structured
      #  documents using state-of-the-art Google AI such as natural language, computer
      #  vision, translation, and AutoML.
      #
      # @example
      #    require 'google/apis/documentai_v1'
      #
      #    Documentai = Google::Apis::DocumentaiV1 # Alias the module
      #    service = Documentai::DocumentService.new
      #
      # @see https://cloud.google.com/document-ai/docs/
      class DocumentService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://documentai.googleapis.com/', '',
                client_name: 'google-apis-documentai_v1',
                client_version: Google::Apis::DocumentaiV1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches processor types. Note that we don't use ListProcessorTypes here,
        # because it isn't paginated.
        # @param [String] parent
        #   Required. The location of processor types to list. Format: `projects/`project`/
        #   locations/`location``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1FetchProcessorTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1FetchProcessorTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_processor_types(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:fetchProcessorTypes', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1FetchProcessorTypesResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1FetchProcessorTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudLocationLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
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
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a processor type detail.
        # @param [String] name
        #   Required. The processor type resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_processor_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the processor types that exist.
        # @param [String] parent
        #   Required. The location of processor types to list. Format: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] page_size
        #   The maximum number of processor types to return. If unspecified, at most `100`
        #   processor types will be returned. The maximum value is `500`. Values above `
        #   500` will be coerced to `500`.
        # @param [String] page_token
        #   Used to retrieve the next page of results, empty if at the end of the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processor_types(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/processorTypes', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorTypesResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] name
        #   Required. The resource name of Processor or ProcessorVersion. Format: `
        #   projects/`project`/locations/`location`/processors/`processor``, or `projects/`
        #   project`/locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessRequest] google_cloud_documentai_v1_batch_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_processor_process(name, google_cloud_documentai_v1_batch_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1_batch_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a processor from the ProcessorType provided. The processor will be at `
        # ENABLED` state by default after its creation.
        # @param [String] parent
        #   Required. The parent (project and location) under which to create the
        #   processor. Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor] google_cloud_documentai_v1_processor_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_processor(parent, google_cloud_documentai_v1_processor_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/processors', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor::Representation
          command.request_object = google_cloud_documentai_v1_processor_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the processor, unloads all deployed model artifacts if it was enabled
        # and then deletes all artifacts associated with this processor.
        # @param [String] name
        #   Required. The processor resource name to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_processor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a processor
        # @param [String] name
        #   Required. The processor resource name to be disabled.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DisableProcessorRequest] google_cloud_documentai_v1_disable_processor_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_processor(name, google_cloud_documentai_v1_disable_processor_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DisableProcessorRequest::Representation
          command.request_object = google_cloud_documentai_v1_disable_processor_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a processor
        # @param [String] name
        #   Required. The processor resource name to be enabled.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EnableProcessorRequest] google_cloud_documentai_v1_enable_processor_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_processor(name, google_cloud_documentai_v1_enable_processor_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EnableProcessorRequest::Representation
          command.request_object = google_cloud_documentai_v1_enable_processor_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a processor detail.
        # @param [String] name
        #   Required. The processor resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_processor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all processors which belong to this project.
        # @param [String] parent
        #   Required. The parent (project and location) which owns this collection of
        #   Processors. Format: `projects/`project`/locations/`location``
        # @param [Fixnum] page_size
        #   The maximum number of processors to return. If unspecified, at most `50`
        #   processors will be returned. The maximum value is `100`. Values above `100`
        #   will be coerced to `100`.
        # @param [String] page_token
        #   We will return the processors sorted by creation time. The page token will
        #   point to the next processor.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processors(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/processors', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] name
        #   Required. The resource name of the Processor or ProcessorVersion to use for
        #   processing. If a Processor is specified, the server will use its default
        #   version. Format: `projects/`project`/locations/`location`/processors/`
        #   processor``, or `projects/`project`/locations/`location`/processors/`processor`
        #   /processorVersions/`processorVersion``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessRequest] google_cloud_documentai_v1_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_processor(name, google_cloud_documentai_v1_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:process', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set the default (active) version of a Processor that will be used in
        # ProcessDocument and BatchProcessDocuments.
        # @param [String] processor
        #   Required. The resource name of the Processor to change default version.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest] google_cloud_documentai_v1_set_default_processor_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_processor_default_processor_version(processor, google_cloud_documentai_v1_set_default_processor_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+processor}:setDefaultProcessorVersion', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest::Representation
          command.request_object = google_cloud_documentai_v1_set_default_processor_version_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['processor'] = processor unless processor.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Send a document for Human Review. The input document should be processed by
        # the specified processor.
        # @param [String] human_review_config
        #   Required. The resource name of the HumanReviewConfig that the document will be
        #   reviewed with.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ReviewDocumentRequest] google_cloud_documentai_v1_review_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def review_project_location_processor_human_review_config_document(human_review_config, google_cloud_documentai_v1_review_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+humanReviewConfig}:reviewDocument', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ReviewDocumentRequest::Representation
          command.request_object = google_cloud_documentai_v1_review_document_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['humanReviewConfig'] = human_review_config unless human_review_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] name
        #   Required. The resource name of Processor or ProcessorVersion. Format: `
        #   projects/`project`/locations/`location`/processors/`processor``, or `projects/`
        #   project`/locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessRequest] google_cloud_documentai_v1_batch_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_processor_processor_version_process(name, google_cloud_documentai_v1_batch_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1_batch_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the processor version, all artifacts under the processor version will
        # be deleted.
        # @param [String] name
        #   Required. The processor version resource name to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_processor_processor_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys the processor version.
        # @param [String] name
        #   Required. The processor version resource name to be deployed.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DeployProcessorVersionRequest] google_cloud_documentai_v1_deploy_processor_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_project_location_processor_processor_version(name, google_cloud_documentai_v1_deploy_processor_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deploy', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DeployProcessorVersionRequest::Representation
          command.request_object = google_cloud_documentai_v1_deploy_processor_version_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Evaluates a ProcessorVersion against annotated documents, producing an
        # Evaluation.
        # @param [String] processor_version
        #   Required. The resource name of the ProcessorVersion to evaluate. `projects/`
        #   project`/locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest] google_cloud_documentai_v1_evaluate_processor_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def evaluate_project_location_processor_processor_version_processor_version(processor_version, google_cloud_documentai_v1_evaluate_processor_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+processorVersion}:evaluateProcessorVersion', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest::Representation
          command.request_object = google_cloud_documentai_v1_evaluate_processor_version_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['processorVersion'] = processor_version unless processor_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a processor version detail.
        # @param [String] name
        #   Required. The processor resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_processor_processor_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all versions of a processor.
        # @param [String] parent
        #   Required. The parent (project, location and processor) to list all versions.
        #   Format: `projects/`project`/locations/`location`/processors/`processor``
        # @param [Fixnum] page_size
        #   The maximum number of processor versions to return. If unspecified, at most `
        #   10` processor versions will be returned. The maximum value is `20`. Values
        #   above `20` will be coerced to `20`.
        # @param [String] page_token
        #   We will return the processor versions sorted by creation time. The page token
        #   will point to the next processor version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processor_processor_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/processorVersions', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorVersionsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListProcessorVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] name
        #   Required. The resource name of the Processor or ProcessorVersion to use for
        #   processing. If a Processor is specified, the server will use its default
        #   version. Format: `projects/`project`/locations/`location`/processors/`
        #   processor``, or `projects/`project`/locations/`location`/processors/`processor`
        #   /processorVersions/`processorVersion``
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessRequest] google_cloud_documentai_v1_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_processor_processor_version(name, google_cloud_documentai_v1_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:process', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessRequest::Representation
          command.request_object = google_cloud_documentai_v1_process_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains a new processor version. Operation metadata is returned as
        # TrainProcessorVersionMetadata.
        # @param [String] parent
        #   Required. The parent (project, location and processor) to create the new
        #   version for. Format: `projects/`project`/locations/`location`/processors/`
        #   processor``.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1TrainProcessorVersionRequest] google_cloud_documentai_v1_train_processor_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_processor_processor_version(parent, google_cloud_documentai_v1_train_processor_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/processorVersions:train', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1TrainProcessorVersionRequest::Representation
          command.request_object = google_cloud_documentai_v1_train_processor_version_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys the processor version.
        # @param [String] name
        #   Required. The processor version resource name to be undeployed.
        # @param [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1UndeployProcessorVersionRequest] google_cloud_documentai_v1_undeploy_processor_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_project_location_processor_processor_version(name, google_cloud_documentai_v1_undeploy_processor_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undeploy', options)
          command.request_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1UndeployProcessorVersionRequest::Representation
          command.request_object = google_cloud_documentai_v1_undeploy_processor_version_request_object
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a specific evaluation.
        # @param [String] name
        #   Required. The resource name of the Evaluation to get. `projects/`project`/
        #   locations/`location`/processors/`processor`/processorVersions/`
        #   processorVersion`/evaluations/`evaluation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Evaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Evaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_processor_processor_version_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Evaluation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Evaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a set of evaluations for a given processor version.
        # @param [String] parent
        #   Required. The resource name of the ProcessorVersion to list evaluations for. `
        #   projects/`project`/locations/`location`/processors/`processor`/
        #   processorVersions/`processorVersion``
        # @param [Fixnum] page_size
        #   The standard list page size. If unspecified, at most `5` evaluations are
        #   returned. The maximum value is `100`. Values above `100` are coerced to `100`.
        # @param [String] page_token
        #   A page token, received from a previous `ListEvaluations` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_processor_processor_version_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListEvaluationsResponse::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ListEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::DocumentaiV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1::GoogleLongrunningOperation
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
