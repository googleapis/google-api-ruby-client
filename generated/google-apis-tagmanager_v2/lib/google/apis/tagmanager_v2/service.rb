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
    module TagmanagerV2
      # Tag Manager API
      #
      # This API allows clients to access and modify container and tag configuration.
      #
      # @example
      #    require 'google/apis/tagmanager_v2'
      #
      #    Tagmanager = Google::Apis::TagmanagerV2 # Alias the module
      #    service = Tagmanager::TagManagerService.new
      #
      # @see https://developers.google.com/tag-manager
      class TagManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://tagmanager.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-tagmanager_v2',
                client_version: Google::Apis::TagmanagerV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets a GTM Account.
        # @param [String] path
        #   GTM Account's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Account::Representation
          command.response_class = Google::Apis::TagmanagerV2::Account
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Accounts that a user has access to.
        # @param [Boolean] include_google_tags
        #   Also retrieve accounts associated with Google Tag when true.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(include_google_tags: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/accounts', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListAccountsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListAccountsResponse
          command.query['includeGoogleTags'] = include_google_tags unless include_google_tags.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Account.
        # @param [String] path
        #   GTM Account's API relative path.
        # @param [Google::Apis::TagmanagerV2::Account] account_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the account in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(path, account_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::TagmanagerV2::Account::Representation
          command.response_class = Google::Apis::TagmanagerV2::Account
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Combines Containers.
        # @param [String] path
        #   GTM Container's API relative path.
        # @param [Boolean] allow_user_permission_feature_update
        #   Must be set to true to allow features.user_permissions to change from false to
        #   true. If this operation causes an update but this bit is false, the operation
        #   will fail.
        # @param [String] container_id
        #   ID of container that will be merged into the current container.
        # @param [String] setting_source
        #   Specify the source of config setting after combine
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def combine_account_container(path, allow_user_permission_feature_update: nil, container_id: nil, setting_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:combine', options)
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.params['path'] = path unless path.nil?
          command.query['allowUserPermissionFeatureUpdate'] = allow_user_permission_feature_update unless allow_user_permission_feature_update.nil?
          command.query['containerId'] = container_id unless container_id.nil?
          command.query['settingSource'] = setting_source unless setting_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Container.
        # @param [String] parent
        #   GTM Account's API relative path.
        # @param [Google::Apis::TagmanagerV2::Container] container_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container(parent, container_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/containers', options)
          command.request_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.request_object = container_object
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Container.
        # @param [String] path
        #   GTM Container's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Container.
        # @param [String] path
        #   GTM Container's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Containers that belongs to a GTM Account.
        # @param [String] parent
        #   GTM Account's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListContainersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListContainersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_containers(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/containers', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListContainersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListContainersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a Container by destination ID or tag ID.
        # @param [String] destination_id
        #   Destination ID linked to a GTM Container, e.g. AW-123456789. Only one of
        #   destination_id or tag_id should be set.
        # @param [String] tag_id
        #   Tag ID for a GTM Container, e.g. GTM-123456789. Only one of destination_id or
        #   tag_id should be set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_account_container(destination_id: nil, tag_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/accounts/containers:lookup', options)
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.query['destinationId'] = destination_id unless destination_id.nil?
          command.query['tagId'] = tag_id unless tag_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move Tag ID out of a Container.
        # @param [String] path
        #   GTM Container's API relative path.
        # @param [Boolean] allow_user_permission_feature_update
        #   Must be set to true to allow features.user_permissions to change from false to
        #   true. If this operation causes an update but this bit is false, the operation
        #   will fail.
        # @param [Boolean] copy_settings
        #   Whether or not to copy tag settings from this tag to the new tag.
        # @param [Boolean] copy_terms_of_service
        #   Must be set to true to accept all terms of service agreements copied from the
        #   current tag to the newly created tag. If this bit is false, the operation will
        #   fail.
        # @param [Boolean] copy_users
        #   Whether or not to copy users from this tag to the new tag.
        # @param [String] tag_id
        #   Tag ID to be removed from the current Container.
        # @param [String] tag_name
        #   The name for the newly created tag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_account_container_tag_id(path, allow_user_permission_feature_update: nil, copy_settings: nil, copy_terms_of_service: nil, copy_users: nil, tag_id: nil, tag_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:move_tag_id', options)
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.params['path'] = path unless path.nil?
          command.query['allowUserPermissionFeatureUpdate'] = allow_user_permission_feature_update unless allow_user_permission_feature_update.nil?
          command.query['copySettings'] = copy_settings unless copy_settings.nil?
          command.query['copyTermsOfService'] = copy_terms_of_service unless copy_terms_of_service.nil?
          command.query['copyUsers'] = copy_users unless copy_users.nil?
          command.query['tagId'] = tag_id unless tag_id.nil?
          command.query['tagName'] = tag_name unless tag_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the tagging snippet for a Container.
        # @param [String] path
        #   Container snippet's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::GetContainerSnippetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::GetContainerSnippetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def snippet_account_container(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}:snippet', options)
          command.response_representation = Google::Apis::TagmanagerV2::GetContainerSnippetResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::GetContainerSnippetResponse
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Container.
        # @param [String] path
        #   GTM Container's API relative path.
        # @param [Google::Apis::TagmanagerV2::Container] container_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Container] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Container]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container(path, container_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.request_object = container_object
          command.response_representation = Google::Apis::TagmanagerV2::Container::Representation
          command.response_class = Google::Apis::TagmanagerV2::Container
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Destination.
        # @param [String] path
        #   Google Tag Destination's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Destination] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Destination]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_destination(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Destination::Representation
          command.response_class = Google::Apis::TagmanagerV2::Destination
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a Destination to this Container and removes it from the Container to
        # which it is currently linked.
        # @param [String] parent
        #   GTM parent Container's API relative path.
        # @param [Boolean] allow_user_permission_feature_update
        #   Must be set to true to allow features.user_permissions to change from false to
        #   true. If this operation causes an update but this bit is false, the operation
        #   will fail.
        # @param [String] destination_id
        #   Destination ID to be linked to the current container.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Destination] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Destination]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_account_container_destination(parent, allow_user_permission_feature_update: nil, destination_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/destinations:link', options)
          command.response_representation = Google::Apis::TagmanagerV2::Destination::Representation
          command.response_class = Google::Apis::TagmanagerV2::Destination
          command.params['parent'] = parent unless parent.nil?
          command.query['allowUserPermissionFeatureUpdate'] = allow_user_permission_feature_update unless allow_user_permission_feature_update.nil?
          command.query['destinationId'] = destination_id unless destination_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Destinations linked to a GTM Container.
        # @param [String] parent
        #   GTM parent Container's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListDestinationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListDestinationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_destinations(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/destinations', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListDestinationsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListDestinationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Environment.
        # @param [String] parent
        #   GTM Container's API relative path.
        # @param [Google::Apis::TagmanagerV2::Environment] environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_environment(parent, environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/environments', options)
          command.request_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.response_class = Google::Apis::TagmanagerV2::Environment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Environment.
        # @param [String] path
        #   GTM Environment's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_environment(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Environment.
        # @param [String] path
        #   GTM Environment's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_environment(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.response_class = Google::Apis::TagmanagerV2::Environment
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Environments of a GTM Container.
        # @param [String] parent
        #   GTM Container's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListEnvironmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListEnvironmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_environments(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/environments', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListEnvironmentsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListEnvironmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Re-generates the authorization code for a GTM Environment.
        # @param [String] path
        #   GTM Environment's API relative path.
        # @param [Google::Apis::TagmanagerV2::Environment] environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reauthorize_account_container_environment(path, environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:reauthorize', options)
          command.request_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.response_class = Google::Apis::TagmanagerV2::Environment
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Environment.
        # @param [String] path
        #   GTM Environment's API relative path.
        # @param [Google::Apis::TagmanagerV2::Environment] environment_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the environment
        #   in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_environment(path, environment_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.request_object = environment_object
          command.response_representation = Google::Apis::TagmanagerV2::Environment::Representation
          command.response_class = Google::Apis::TagmanagerV2::Environment
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest container version header
        # @param [String] parent
        #   GTM Container's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersionHeader] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersionHeader]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def latest_account_container_version_header(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/version_headers:latest', options)
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersionHeader::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersionHeader
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Container Versions of a GTM Container.
        # @param [String] parent
        #   GTM Container's API relative path.
        # @param [Boolean] include_deleted
        #   Also retrieve deleted (archived) versions when true.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListContainerVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListContainerVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_version_headers(parent, include_deleted: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/version_headers', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListContainerVersionsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListContainerVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['includeDeleted'] = include_deleted unless include_deleted.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Container Version.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_version(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Container Version.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [String] container_version_id
        #   The GTM ContainerVersion ID. Specify published to retrieve the currently
        #   published version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_version(path, container_version_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersion
          command.params['path'] = path unless path.nil?
          command.query['containerVersionId'] = container_version_id unless container_version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the live (i.e. published) container version
        # @param [String] parent
        #   GTM Container's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def live_account_container_version(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/versions:live', options)
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publishes a Container Version.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container
        #   version in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::PublishContainerVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::PublishContainerVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_account_container_version(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:publish', options)
          command.response_representation = Google::Apis::TagmanagerV2::PublishContainerVersionResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::PublishContainerVersionResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the latest version used for synchronization of workspaces when detecting
        # conflicts and errors.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_account_container_version_latest(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:set_latest', options)
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersion
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a Container Version.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_account_container_version(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:undelete', options)
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersion
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Container Version.
        # @param [String] path
        #   GTM ContainerVersion's API relative path.
        # @param [Google::Apis::TagmanagerV2::ContainerVersion] container_version_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the container
        #   version in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ContainerVersion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ContainerVersion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_version(path, container_version_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.request_object = container_version_object
          command.response_representation = Google::Apis::TagmanagerV2::ContainerVersion::Representation
          command.response_class = Google::Apis::TagmanagerV2::ContainerVersion
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Workspace.
        # @param [String] parent
        #   GTM parent Container's API relative path.
        # @param [Google::Apis::TagmanagerV2::Workspace] workspace_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Workspace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Workspace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace(parent, workspace_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/workspaces', options)
          command.request_representation = Google::Apis::TagmanagerV2::Workspace::Representation
          command.request_object = workspace_object
          command.response_representation = Google::Apis::TagmanagerV2::Workspace::Representation
          command.response_class = Google::Apis::TagmanagerV2::Workspace
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Container Version from the entities present in the workspace,
        # deletes the workspace, and sets the base container version to the newly
        # created version.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::CreateContainerVersionRequestVersionOptions] create_container_version_request_version_options_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CreateContainerVersionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CreateContainerVersionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_version(path, create_container_version_request_version_options_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:create_version', options)
          command.request_representation = Google::Apis::TagmanagerV2::CreateContainerVersionRequestVersionOptions::Representation
          command.request_object = create_container_version_request_version_options_object
          command.response_representation = Google::Apis::TagmanagerV2::CreateContainerVersionResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::CreateContainerVersionResponse
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Workspace.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Workspace.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Workspace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Workspace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Workspace::Representation
          command.response_class = Google::Apis::TagmanagerV2::Workspace
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds conflicting and modified entities in the workspace.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::GetWorkspaceStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::GetWorkspaceStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_status(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}/status', options)
          command.response_representation = Google::Apis::TagmanagerV2::GetWorkspaceStatusResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::GetWorkspaceStatusResponse
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Workspaces that belong to a GTM Container.
        # @param [String] parent
        #   GTM parent Container's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListWorkspacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListWorkspacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspaces(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/workspaces', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListWorkspacesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListWorkspacesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Quick previews a workspace by creating a fake container version from all
        # entities in the provided workspace.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::QuickPreviewResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::QuickPreviewResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def quick_account_container_workspace_preview(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:quick_preview', options)
          command.response_representation = Google::Apis::TagmanagerV2::QuickPreviewResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::QuickPreviewResponse
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resolves a merge conflict for a workspace entity by updating it to the
        # resolved entity passed in the request.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Entity] entity_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the
        #   entity_in_workspace in the merge conflict.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_account_container_workspace_conflict(path, entity_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:resolve_conflict', options)
          command.request_representation = Google::Apis::TagmanagerV2::Entity::Representation
          command.request_object = entity_object
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Syncs a workspace to the latest container version by updating all unmodified
        # workspace entities and displaying conflicts for modified entities.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::SyncWorkspaceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::SyncWorkspaceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sync_account_container_workspace(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:sync', options)
          command.response_representation = Google::Apis::TagmanagerV2::SyncWorkspaceResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::SyncWorkspaceResponse
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Workspace.
        # @param [String] path
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Workspace] workspace_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the workspace in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Workspace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Workspace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace(path, workspace_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Workspace::Representation
          command.request_object = workspace_object
          command.response_representation = Google::Apis::TagmanagerV2::Workspace::Representation
          command.response_class = Google::Apis::TagmanagerV2::Workspace
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates one or more GTM Built-In Variables.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Array<String>, String] type
        #   The types of built-in variables to enable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CreateBuiltInVariableResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CreateBuiltInVariableResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_built_in_variable(parent, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/built_in_variables', options)
          command.response_representation = Google::Apis::TagmanagerV2::CreateBuiltInVariableResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::CreateBuiltInVariableResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes one or more GTM Built-In Variables.
        # @param [String] path
        #   GTM BuiltInVariable's API relative path.
        # @param [Array<String>, String] type
        #   The types of built-in variables to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_built_in_variable(path, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the enabled Built-In Variables of a GTM Container.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListEnabledBuiltInVariablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListEnabledBuiltInVariablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_built_in_variables(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/built_in_variables', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListEnabledBuiltInVariablesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListEnabledBuiltInVariablesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Built-In Variables in a GTM Workspace.
        # @param [String] path
        #   GTM BuiltInVariable's API relative path.
        # @param [String] type
        #   The type of built-in variable to revert.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertBuiltInVariableResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertBuiltInVariableResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_built_in_variable(path, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}/built_in_variables:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertBuiltInVariableResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertBuiltInVariableResponse
          command.params['path'] = path unless path.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Client.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Client] client_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_client(parent, client_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/clients', options)
          command.request_representation = Google::Apis::TagmanagerV2::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::TagmanagerV2::Client::Representation
          command.response_class = Google::Apis::TagmanagerV2::Client
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Client.
        # @param [String] path
        #   GTM Client's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_client(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Client.
        # @param [String] path
        #   GTM Client's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_client(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Client::Representation
          command.response_class = Google::Apis::TagmanagerV2::Client
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Clients of a GTM container workspace.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_clients(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/clients', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListClientsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListClientsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Client in a GTM Workspace.
        # @param [String] path
        #   GTM Client's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the client in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertClientResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertClientResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_client(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertClientResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertClientResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Client.
        # @param [String] path
        #   GTM Client's API relative path.
        # @param [Google::Apis::TagmanagerV2::Client] client_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the client in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_client(path, client_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::TagmanagerV2::Client::Representation
          command.response_class = Google::Apis::TagmanagerV2::Client
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Folder.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Folder] folder_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Folder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Folder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_folder(parent, folder_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/folders', options)
          command.request_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.request_object = folder_object
          command.response_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.response_class = Google::Apis::TagmanagerV2::Folder
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Folder.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_folder(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all entities in a GTM Folder.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::FolderEntities] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::FolderEntities]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def entities_account_container_workspace_folder(path, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:entities', options)
          command.response_representation = Google::Apis::TagmanagerV2::FolderEntities::Representation
          command.response_class = Google::Apis::TagmanagerV2::FolderEntities
          command.params['path'] = path unless path.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Folder.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Folder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Folder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_folder(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.response_class = Google::Apis::TagmanagerV2::Folder
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Folders of a Container.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListFoldersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListFoldersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_folders(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/folders', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListFoldersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListFoldersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves entities to a GTM Folder. If `folder_id` in the request path equals 0,
        # this will instead move entities out of the folder they currently belong to.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [Google::Apis::TagmanagerV2::Folder] folder_object
        # @param [Array<String>, String] tag_id
        #   The tags to be moved to the folder.
        # @param [Array<String>, String] trigger_id
        #   The triggers to be moved to the folder.
        # @param [Array<String>, String] variable_id
        #   The variables to be moved to the folder.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_account_container_workspace_folder_entities_to_folder(path, folder_object = nil, tag_id: nil, trigger_id: nil, variable_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:move_entities_to_folder', options)
          command.request_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.request_object = folder_object
          command.params['path'] = path unless path.nil?
          command.query['tagId'] = tag_id unless tag_id.nil?
          command.query['triggerId'] = trigger_id unless trigger_id.nil?
          command.query['variableId'] = variable_id unless variable_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Folder in a GTM Workspace.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the tag in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertFolderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertFolderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_folder(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertFolderResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertFolderResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Folder.
        # @param [String] path
        #   GTM Folder's API relative path.
        # @param [Google::Apis::TagmanagerV2::Folder] folder_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the folder in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Folder] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Folder]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_folder(path, folder_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.request_object = folder_object
          command.response_representation = Google::Apis::TagmanagerV2::Folder::Representation
          command.response_class = Google::Apis::TagmanagerV2::Folder
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Google tag config.
        # @param [String] parent
        #   Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::GtagConfig] gtag_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::GtagConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::GtagConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_gtag_config(parent, gtag_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/gtag_config', options)
          command.request_representation = Google::Apis::TagmanagerV2::GtagConfig::Representation
          command.request_object = gtag_config_object
          command.response_representation = Google::Apis::TagmanagerV2::GtagConfig::Representation
          command.response_class = Google::Apis::TagmanagerV2::GtagConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Google tag config.
        # @param [String] path
        #   Google tag config's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_gtag_config(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Google tag config.
        # @param [String] path
        #   Google tag config's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::GtagConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::GtagConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_gtag_config(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::GtagConfig::Representation
          command.response_class = Google::Apis::TagmanagerV2::GtagConfig
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Google tag configs in a Container.
        # @param [String] parent
        #   Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListGtagConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListGtagConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_gtag_configs(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/gtag_config', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListGtagConfigResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListGtagConfigResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Google tag config.
        # @param [String] path
        #   Google tag config's API relative path.
        # @param [Google::Apis::TagmanagerV2::GtagConfig] gtag_config_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the config in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::GtagConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::GtagConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_gtag_config(path, gtag_config_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::GtagConfig::Representation
          command.request_object = gtag_config_object
          command.response_representation = Google::Apis::TagmanagerV2::GtagConfig::Representation
          command.response_class = Google::Apis::TagmanagerV2::GtagConfig
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Tag.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Tag] tag_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_tag(parent, tag_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/tags', options)
          command.request_representation = Google::Apis::TagmanagerV2::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::TagmanagerV2::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV2::Tag
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Tag.
        # @param [String] path
        #   GTM Tag's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_tag(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Tag.
        # @param [String] path
        #   GTM Tag's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_tag(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV2::Tag
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Tags of a Container.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_tags(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/tags', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListTagsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListTagsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Tag in a GTM Workspace.
        # @param [String] path
        #   GTM Tag's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of thetag in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertTagResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertTagResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_tag(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertTagResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertTagResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Tag.
        # @param [String] path
        #   GTM Tag's API relative path.
        # @param [Google::Apis::TagmanagerV2::Tag] tag_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the tag in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Tag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Tag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_tag(path, tag_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Tag::Representation
          command.request_object = tag_object
          command.response_representation = Google::Apis::TagmanagerV2::Tag::Representation
          command.response_class = Google::Apis::TagmanagerV2::Tag
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Custom Template.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::CustomTemplate] custom_template_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CustomTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CustomTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_template(parent, custom_template_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/templates', options)
          command.request_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.request_object = custom_template_object
          command.response_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.response_class = Google::Apis::TagmanagerV2::CustomTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Template.
        # @param [String] path
        #   GTM Custom Template's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_template(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Template.
        # @param [String] path
        #   GTM Custom Template's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CustomTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CustomTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_template(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.response_class = Google::Apis::TagmanagerV2::CustomTemplate
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a GTM Custom Template from Gallery.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Boolean] acknowledge_permissions
        #   Must be set to true to allow Gallery template to be imported into the
        #   workspace. If this bit is false, the import operation will fail.
        # @param [String] gallery_owner
        #   Owner of the Gallery template to import
        # @param [String] gallery_repository
        #   Repository of the Gallery template to import
        # @param [String] gallery_sha
        #   SHA version of the Gallery template to import. Defaulted to the latest SHA
        #   version if not provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CustomTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CustomTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_account_container_workspace_template_from_gallery(parent, acknowledge_permissions: nil, gallery_owner: nil, gallery_repository: nil, gallery_sha: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/templates:import_from_gallery', options)
          command.response_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.response_class = Google::Apis::TagmanagerV2::CustomTemplate
          command.params['parent'] = parent unless parent.nil?
          command.query['acknowledgePermissions'] = acknowledge_permissions unless acknowledge_permissions.nil?
          command.query['galleryOwner'] = gallery_owner unless gallery_owner.nil?
          command.query['galleryRepository'] = gallery_repository unless gallery_repository.nil?
          command.query['gallerySha'] = gallery_sha unless gallery_sha.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Templates of a GTM container workspace.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListTemplatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListTemplatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_templates(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/templates', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListTemplatesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListTemplatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Template in a GTM Workspace.
        # @param [String] path
        #   GTM Custom Template's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the template in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertTemplateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertTemplateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_template(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertTemplateResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertTemplateResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Template.
        # @param [String] path
        #   GTM Custom Template's API relative path.
        # @param [Google::Apis::TagmanagerV2::CustomTemplate] custom_template_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the templates in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::CustomTemplate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::CustomTemplate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_template(path, custom_template_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.request_object = custom_template_object
          command.response_representation = Google::Apis::TagmanagerV2::CustomTemplate::Representation
          command.response_class = Google::Apis::TagmanagerV2::CustomTemplate
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Transformation.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Transformation] transformation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Transformation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Transformation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_transformation(parent, transformation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/transformations', options)
          command.request_representation = Google::Apis::TagmanagerV2::Transformation::Representation
          command.request_object = transformation_object
          command.response_representation = Google::Apis::TagmanagerV2::Transformation::Representation
          command.response_class = Google::Apis::TagmanagerV2::Transformation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Transformation.
        # @param [String] path
        #   GTM Transformation's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_transformation(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Transformation.
        # @param [String] path
        #   GTM Transformation's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Transformation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Transformation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_transformation(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Transformation::Representation
          command.response_class = Google::Apis::TagmanagerV2::Transformation
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Transformations of a GTM container workspace.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListTransformationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListTransformationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_transformations(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/transformations', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListTransformationsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListTransformationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Transformation in a GTM Workspace.
        # @param [String] path
        #   GTM Transformation's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the
        #   transformation in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertTransformationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertTransformationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_transformation(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertTransformationResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertTransformationResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Transformation.
        # @param [String] path
        #   GTM Transformation's API relative path.
        # @param [Google::Apis::TagmanagerV2::Transformation] transformation_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the
        #   transformation in storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Transformation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Transformation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_transformation(path, transformation_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Transformation::Representation
          command.request_object = transformation_object
          command.response_representation = Google::Apis::TagmanagerV2::Transformation::Representation
          command.response_class = Google::Apis::TagmanagerV2::Transformation
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Trigger.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Trigger] trigger_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_trigger(parent, trigger_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/triggers', options)
          command.request_representation = Google::Apis::TagmanagerV2::Trigger::Representation
          command.request_object = trigger_object
          command.response_representation = Google::Apis::TagmanagerV2::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV2::Trigger
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Trigger.
        # @param [String] path
        #   GTM Trigger's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_trigger(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Trigger.
        # @param [String] path
        #   GTM Trigger's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_trigger(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV2::Trigger
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Triggers of a Container.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListTriggersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListTriggersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_triggers(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/triggers', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListTriggersResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListTriggersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Trigger in a GTM Workspace.
        # @param [String] path
        #   GTM Trigger's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the trigger in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertTriggerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertTriggerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_trigger(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertTriggerResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertTriggerResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Trigger.
        # @param [String] path
        #   GTM Trigger's API relative path.
        # @param [Google::Apis::TagmanagerV2::Trigger] trigger_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the trigger in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Trigger] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Trigger]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_trigger(path, trigger_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Trigger::Representation
          command.request_object = trigger_object
          command.response_representation = Google::Apis::TagmanagerV2::Trigger::Representation
          command.response_class = Google::Apis::TagmanagerV2::Trigger
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Variable.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Variable] variable_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_variable(parent, variable_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/variables', options)
          command.request_representation = Google::Apis::TagmanagerV2::Variable::Representation
          command.request_object = variable_object
          command.response_representation = Google::Apis::TagmanagerV2::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV2::Variable
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Variable.
        # @param [String] path
        #   GTM Variable's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_variable(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Variable.
        # @param [String] path
        #   GTM Variable's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_variable(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV2::Variable
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Variables of a Container.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListVariablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListVariablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_variables(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/variables', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListVariablesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListVariablesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Variable in a GTM Workspace.
        # @param [String] path
        #   GTM Variable's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the variable in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertVariableResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertVariableResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_variable(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertVariableResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertVariableResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Variable.
        # @param [String] path
        #   GTM Variable's API relative path.
        # @param [Google::Apis::TagmanagerV2::Variable] variable_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the variable in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Variable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Variable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_variable(path, variable_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Variable::Representation
          command.request_object = variable_object
          command.response_representation = Google::Apis::TagmanagerV2::Variable::Representation
          command.response_class = Google::Apis::TagmanagerV2::Variable
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GTM Zone.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [Google::Apis::TagmanagerV2::Zone] zone_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_container_workspace_zone(parent, zone_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/zones', options)
          command.request_representation = Google::Apis::TagmanagerV2::Zone::Representation
          command.request_object = zone_object
          command.response_representation = Google::Apis::TagmanagerV2::Zone::Representation
          command.response_class = Google::Apis::TagmanagerV2::Zone
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GTM Zone.
        # @param [String] path
        #   GTM Zone's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_container_workspace_zone(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a GTM Zone.
        # @param [String] path
        #   GTM Zone's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_container_workspace_zone(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::Zone::Representation
          command.response_class = Google::Apis::TagmanagerV2::Zone
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all GTM Zones of a GTM container workspace.
        # @param [String] parent
        #   GTM Workspace's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListZonesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListZonesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_container_workspace_zones(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/zones', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListZonesResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListZonesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts changes to a GTM Zone in a GTM Workspace.
        # @param [String] path
        #   GTM Zone's API relative path.
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the zone in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::RevertZoneResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::RevertZoneResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_account_container_workspace_zone(path, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+path}:revert', options)
          command.response_representation = Google::Apis::TagmanagerV2::RevertZoneResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::RevertZoneResponse
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GTM Zone.
        # @param [String] path
        #   GTM Zone's API relative path.
        # @param [Google::Apis::TagmanagerV2::Zone] zone_object
        # @param [String] fingerprint
        #   When provided, this fingerprint must match the fingerprint of the zone in
        #   storage.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::Zone] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::Zone]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_container_workspace_zone(path, zone_object = nil, fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::Zone::Representation
          command.request_object = zone_object
          command.response_representation = Google::Apis::TagmanagerV2::Zone::Representation
          command.response_class = Google::Apis::TagmanagerV2::Zone
          command.params['path'] = path unless path.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user's Account & Container access.
        # @param [String] parent
        #   GTM Account's API relative path.
        # @param [Google::Apis::TagmanagerV2::UserPermission] user_permission_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::UserPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::UserPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_user_permission(parent, user_permission_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tagmanager/v2/{+parent}/user_permissions', options)
          command.request_representation = Google::Apis::TagmanagerV2::UserPermission::Representation
          command.request_object = user_permission_object
          command.response_representation = Google::Apis::TagmanagerV2::UserPermission::Representation
          command.response_class = Google::Apis::TagmanagerV2::UserPermission
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a user from the account, revoking access to it and all of its
        # containers.
        # @param [String] path
        #   GTM UserPermission's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_user_permission(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tagmanager/v2/{+path}', options)
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user's Account & Container access.
        # @param [String] path
        #   GTM UserPermission's API relative path.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::UserPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::UserPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_user_permission(path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+path}', options)
          command.response_representation = Google::Apis::TagmanagerV2::UserPermission::Representation
          command.response_class = Google::Apis::TagmanagerV2::UserPermission
          command.params['path'] = path unless path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all users that have access to the account along with Account and
        # Container user access granted to each of them.
        # @param [String] parent
        #   GTM Account's API relative path.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::ListUserPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::ListUserPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_user_permissions(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tagmanager/v2/{+parent}/user_permissions', options)
          command.response_representation = Google::Apis::TagmanagerV2::ListUserPermissionsResponse::Representation
          command.response_class = Google::Apis::TagmanagerV2::ListUserPermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user's Account & Container access.
        # @param [String] path
        #   GTM UserPermission's API relative path.
        # @param [Google::Apis::TagmanagerV2::UserPermission] user_permission_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TagmanagerV2::UserPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TagmanagerV2::UserPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_user_permission(path, user_permission_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tagmanager/v2/{+path}', options)
          command.request_representation = Google::Apis::TagmanagerV2::UserPermission::Representation
          command.request_object = user_permission_object
          command.response_representation = Google::Apis::TagmanagerV2::UserPermission::Representation
          command.response_class = Google::Apis::TagmanagerV2::UserPermission
          command.params['path'] = path unless path.nil?
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
