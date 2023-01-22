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
    module CloudassetV1p7beta1
      # Cloud Asset API
      #
      # The Cloud Asset API manages the history and inventory of Google Cloud
      #  resources.
      #
      # @example
      #    require 'google/apis/cloudasset_v1p7beta1'
      #
      #    Cloudasset = Google::Apis::CloudassetV1p7beta1 # Alias the module
      #    service = Cloudasset::CloudAssetService.new
      #
      # @see https://cloud.google.com/asset-inventory/docs/quickstart
      class CloudAssetService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudasset.googleapis.com/', '',
                client_name: 'google-apis-cloudasset_v1p7beta1',
                client_version: Google::Apis::CloudassetV1p7beta1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1p7beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports assets with time and resource types to a given Cloud Storage location/
        # BigQuery table. For Cloud Storage location destinations, the output format is
        # newline-delimited JSON. Each line represents a google.cloud.asset.v1p7beta1.
        # Asset in the JSON format; for BigQuery table destinations, the output table
        # stores the fields in asset proto as columns. This API implements the google.
        # longrunning.Operation API , which allows you to keep track of the export. We
        # recommend intervals of at least 2 seconds with exponential retry to poll the
        # export operation result. For regular-size resource parent, the export
        # operation usually finishes within 5 minutes.
        # @param [String] parent
        #   Required. The relative name of the root asset. This can only be an
        #   organization number (such as "organizations/123"), a project ID (such as "
        #   projects/my-project-id"), or a project number (such as "projects/12345"), or a
        #   folder number (such as "folders/123").
        # @param [Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1ExportAssetsRequest] google_cloud_asset_v1p7beta1_export_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudassetV1p7beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudassetV1p7beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_assets(parent, google_cloud_asset_v1p7beta1_export_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1p7beta1/{+parent}:exportAssets', options)
          command.request_representation = Google::Apis::CloudassetV1p7beta1::GoogleCloudAssetV1p7beta1ExportAssetsRequest::Representation
          command.request_object = google_cloud_asset_v1p7beta1_export_assets_request_object
          command.response_representation = Google::Apis::CloudassetV1p7beta1::Operation::Representation
          command.response_class = Google::Apis::CloudassetV1p7beta1::Operation
          command.params['parent'] = parent unless parent.nil?
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
