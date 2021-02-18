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
    module CloudresourcemanagerV3
      # Cloud Resource Manager API
      #
      # Creates, reads, and updates metadata for Google Cloud Platform resource
      #  containers.
      #
      # @example
      #    require 'google/apis/cloudresourcemanager_v3'
      #
      #    Cloudresourcemanager = Google::Apis::CloudresourcemanagerV3 # Alias the module
      #    service = Cloudresourcemanager::CloudResourceManagerService.new
      #
      # @see https://cloud.google.com/resource-manager
      class CloudResourceManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudresourcemanager.googleapis.com/', '',
                client_name: 'google-apis-cloudresourcemanager_v3',
                client_version: Google::Apis::CloudresourcemanagerV3::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create a Lien which applies to the resource denoted by the `parent` field.
        # Callers of this method will require permission on the `parent` resource. For
        # example, applying to `projects/1234` requires permission `resourcemanager.
        # projects.updateLiens`. NOTE: Some resources may limit the number of Liens
        # which may be applied.
        # @param [Google::Apis::CloudresourcemanagerV3::Lien] lien_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Lien] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Lien]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_lien(lien_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/liens', options)
          command.request_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.request_object = lien_object
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Lien
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Lien by `name`. Callers of this method will require permission on the
        # `parent` resource. For example, a Lien with a `parent` of `projects/1234`
        # requires permission `resourcemanager.projects.updateLiens`.
        # @param [String] name
        #   Required. The name/identifier of the Lien to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_lien(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a Lien by `name`. Callers of this method will require permission on
        # the `parent` resource. For example, a Lien with a `parent` of `projects/1234`
        # requires permission requires permission `resourcemanager.projects.get` or `
        # resourcemanager.projects.updateLiens`.
        # @param [String] name
        #   Required. The name/identifier of the Lien.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Lien] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Lien]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_lien(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Lien::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Lien
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Liens applied to the `parent` resource. Callers of this method will
        # require permission on the `parent` resource. For example, a Lien with a `
        # parent` of `projects/1234` requires permission `resourcemanager.projects.get`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. This is a suggestion for the server.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous List request, if any.
        # @param [String] parent
        #   Required. The name of the resource to list all attached Liens. For example, `
        #   projects/1234`. (google.api.field_policy).resource_type annotation is not set
        #   since the parent depends on the meta api implementation. This field could be a
        #   project or other sub project resources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::ListLiensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::ListLiensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_liens(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/liens', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::ListLiensResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::ListLiensResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::CloudresourcemanagerV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::CloudresourcemanagerV3::Operation::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV3::Operation
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
