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
    module MetastoreV2
      # Dataproc Metastore API
      #
      # The Dataproc Metastore API is used to manage the lifecycle and configuration
      #  of metastore services.
      #
      # @example
      #    require 'google/apis/metastore_v2'
      #
      #    Metastore = Google::Apis::MetastoreV2 # Alias the module
      #    service = Metastore::DataprocMetastoreService.new
      #
      # @see https://cloud.google.com/dataproc-metastore/docs
      class DataprocMetastoreService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://metastore.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-metastore_v2',
                client_version: Google::Apis::MetastoreV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Alter metadata resource location. The metadata resource can be a database,
        # table, or partition. This functionality only updates the parent directory for
        # the respective metadata resource and does not transfer any existing data to
        # the new location.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to mutate
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest] google_cloud_metastore_v2_alter_metadata_resource_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def alter_project_location_service_location(service, google_cloud_metastore_v2_alter_metadata_resource_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:alterLocation', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest::Representation
          command.request_object = google_cloud_metastore_v2_alter_metadata_resource_location_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Alter metadata table properties.
        # @param [String] service
        #   Required. The relative resource name of the Dataproc Metastore service that's
        #   being used to mutate metadata table properties, in the following format:
        #   projects/`project_id`/locations/`location_id`/services/`service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AlterTablePropertiesRequest] google_cloud_metastore_v2_alter_table_properties_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def alter_project_location_service_table_properties(service, google_cloud_metastore_v2_alter_table_properties_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:alterTableProperties', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AlterTablePropertiesRequest::Representation
          command.request_object = google_cloud_metastore_v2_alter_table_properties_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a metastore service in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location in which to create a
        #   metastore service, in the following form:projects/`project_number`/locations/`
        #   location_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service] google_cloud_metastore_v2_service_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] service_id
        #   Required. The ID of the metastore service, which is used as the final
        #   component of the metastore service's name.This value must be between 2 and 63
        #   characters long inclusive, begin with a letter, end with a letter or number,
        #   and consist of alpha-numeric ASCII characters or hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service(parent, google_cloud_metastore_v2_service_object = nil, request_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/services', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service::Representation
          command.request_object = google_cloud_metastore_v2_service_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single service.
        # @param [String] name
        #   Required. The relative resource name of the metastore service to delete, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports metadata from a service.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to run export,
        #   in the following form:projects/`project_id`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ExportMetadataRequest] google_cloud_metastore_v2_export_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_service_metadata(service, google_cloud_metastore_v2_export_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:exportMetadata', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ExportMetadataRequest::Representation
          command.request_object = google_cloud_metastore_v2_export_metadata_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a single service.
        # @param [String] name
        #   Required. The relative resource name of the metastore service to retrieve, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports Metadata into a Dataproc Metastore service.
        # @param [String] name
        #   Immutable. The relative resource name of the metastore service to run import,
        #   in the following form:projects/`project_id`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ImportMetadataRequest] google_cloud_metastore_v2_import_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_service_metadata(name, google_cloud_metastore_v2_import_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:importMetadata', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ImportMetadataRequest::Representation
          command.request_object = google_cloud_metastore_v2_import_metadata_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists services in a project and location.
        # @param [String] parent
        #   Required. The relative resource name of the location of metastore services to
        #   list, in the following form:projects/`project_number`/locations/`location_id`.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of services to return. The response may contain
        #   less than the maximum number. If unspecified, no more than 500 services are
        #   returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous DataprocMetastore.
        #   ListServices call. Provide this token to retrieve the subsequent page.To
        #   retrieve the first page, supply an empty page token.When paginating, other
        #   parameters provided to DataprocMetastore.ListServices must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_services(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/services', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListServicesResponse::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move a table to another database.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to mutate
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2MoveTableToDatabaseRequest] google_cloud_metastore_v2_move_table_to_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_project_location_service_table_to_database(service, google_cloud_metastore_v2_move_table_to_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:moveTableToDatabase', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2MoveTableToDatabaseRequest::Representation
          command.request_object = google_cloud_metastore_v2_move_table_to_database_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the parameters of a single service.
        # @param [String] name
        #   Immutable. The relative resource name of the metastore service, in the
        #   following format:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service] google_cloud_metastore_v2_service_object
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] update_mask
        #   Required. A field mask used to specify the fields to be overwritten in the
        #   metastore service resource by the update. Fields specified in the update_mask
        #   are relative to the resource (not to the full request). A field is overwritten
        #   if it is in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_service(name, google_cloud_metastore_v2_service_object = nil, request_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service::Representation
          command.request_object = google_cloud_metastore_v2_service_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query Dataproc Metastore metadata.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to query
        #   metadata, in the following format:projects/`project_id`/locations/`location_id`
        #   /services/`service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2QueryMetadataRequest] google_cloud_metastore_v2_query_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_service_metadata(service, google_cloud_metastore_v2_query_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:queryMetadata', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2QueryMetadataRequest::Representation
          command.request_object = google_cloud_metastore_v2_query_metadata_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a service from a backup.
        # @param [String] service
        #   Required. The relative resource name of the metastore service to run restore,
        #   in the following form:projects/`project_id`/locations/`location_id`/services/`
        #   service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2RestoreServiceRequest] google_cloud_metastore_v2_restore_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_project_location_service(service, google_cloud_metastore_v2_restore_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+service}:restore', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2RestoreServiceRequest::Representation
          command.request_object = google_cloud_metastore_v2_restore_service_request_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['service'] = service unless service.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new backup in a given project and location.
        # @param [String] parent
        #   Required. The relative resource name of the service in which to create a
        #   backup of the following form:projects/`project_number`/locations/`location_id`/
        #   services/`service_id`.
        # @param [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup] google_cloud_metastore_v2_backup_object
        # @param [String] backup_id
        #   Required. The ID of the backup, which is used as the final component of the
        #   backup's name.This value must be between 1 and 64 characters long, begin with
        #   a letter, end with a letter or number, and consist of alpha-numeric ASCII
        #   characters or hyphens.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service_backup(parent, google_cloud_metastore_v2_backup_object = nil, backup_id: nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/backups', options)
          command.request_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup::Representation
          command.request_object = google_cloud_metastore_v2_backup_object
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupId'] = backup_id unless backup_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single backup.
        # @param [String] name
        #   Required. The relative resource name of the backup to delete, in the following
        #   form:projects/`project_number`/locations/`location_id`/services/`service_id`/
        #   backups/`backup_id`.
        # @param [String] request_id
        #   Optional. A request ID. Specify a unique request ID to allow the server to
        #   ignore the request if it has completed. The server will ignore subsequent
        #   requests that provide a duplicate request ID for at least 60 minutes after the
        #   first request.For example, if an initial request times out, followed by
        #   another request with the same request ID, the server ignores the second
        #   request to prevent the creation of duplicate commitments.The request ID must
        #   be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        #   Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service_backup(name, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single backup.
        # @param [String] name
        #   Required. The relative resource name of the backup to retrieve, in the
        #   following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`/backups/`backup_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists backups in a service.
        # @param [String] parent
        #   Required. The relative resource name of the service whose backups to list, in
        #   the following form:projects/`project_number`/locations/`location_id`/services/`
        #   service_id`/backups.
        # @param [String] filter
        #   Optional. The filter to apply to list results.
        # @param [String] order_by
        #   Optional. Specify the ordering of results as described in Sorting Order (https:
        #   //cloud.google.com/apis/design/design_patterns#sorting_order). If not
        #   specified, the results will be sorted in the default order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of backups to return. The response may contain
        #   less than the maximum number. If unspecified, no more than 500 backups are
        #   returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous DataprocMetastore.ListBackups
        #   call. Provide this token to retrieve the subsequent page.To retrieve the first
        #   page, supply an empty page token.When paginating, other parameters provided to
        #   DataprocMetastore.ListBackups must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_service_backups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/backups', options)
          command.response_representation = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListBackupsResponse::Representation
          command.response_class = Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
