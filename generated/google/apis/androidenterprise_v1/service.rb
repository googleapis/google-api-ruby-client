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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AndroidenterpriseV1
      # Google Play EMM API
      #
      # Allows MDMs/EMMs and enterprises to manage the deployment of apps to Android
      #  for Work users.
      #
      # @example
      #    require 'google/apis/androidenterprise_v1'
      #
      #    Androidenterprise = Google::Apis::AndroidenterpriseV1 # Alias the module
      #    service = Androidenterprise::AndroidEnterpriseService.new
      #
      # @see https://developers.google.com/android/work/play/emm-api
      class AndroidEnterpriseService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'androidenterprise/v1/')
        end
        
        # Deletes a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_collection(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/collections/{collectionId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the details of a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collection(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/collections/{collectionId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_collection(enterprise_id, collection_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/collections', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.request_object = collection_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the IDs of all the collections for an enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListCollectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListCollectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collections(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/collections', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListCollectionsResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListCollectionsResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a collection. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_collection(enterprise_id, collection_id, collection_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/collections/{collectionId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.request_object = collection_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [Google::Apis::AndroidenterpriseV1::Collection] collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_collection(enterprise_id, collection_id, collection_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/collections/{collectionId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.request_object = collection_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Collection::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Collection
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the user from the list of those specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # such users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_collection_viewer(enterprise_id, collection_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the ID of the user if they have been specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # these users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collection_viewer(enterprise_id, collection_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the IDs of the users who have been specifically allowed to see the
        # collection. If the collection's visibility is set to viewersOnly then only
        # these users will see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListCollectionViewersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListCollectionViewersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collection_viewers(enterprise_id, collection_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/collections/{collectionId}/users', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListCollectionViewersResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListCollectionViewersResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds the user to the list of those specifically allowed to see the collection.
        # If the collection's visibility is set to viewersOnly then only such users will
        # see the collection. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [Google::Apis::AndroidenterpriseV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_collection_viewer(enterprise_id, collection_id, user_id, user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds the user to the list of those specifically allowed to see the collection.
        # If the collection's visibility is set to viewersOnly then only such users will
        # see the collection.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] collection_id
        #   The ID of the collection.
        # @param [String] user_id
        #   The ID of the user.
        # @param [Google::Apis::AndroidenterpriseV1::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_collection_viewer(enterprise_id, collection_id, user_id, user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/collections/{collectionId}/users/{userId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the details of a device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Device::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Device
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves whether a device is enabled or disabled for access by the user to
        # Google services. The device state takes effect only if enforcing EMM policies
        # on Android devices is enabled in the Google Admin Console. Otherwise, the
        # device state is ignored and all devices are allowed access to Google services.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::DeviceState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::DeviceState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device_state(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::DeviceState::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::DeviceState
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the IDs of all of a user's devices.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_devices(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/devices', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListDevicesResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListDevicesResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets whether a device is enabled or disabled for access by the user to Google
        # services. The device state takes effect only if enforcing EMM policies on
        # Android devices is enabled in the Google Admin Console. Otherwise, the device
        # state is ignored and all devices are allowed access to Google services.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The ID of the device.
        # @param [Google::Apis::AndroidenterpriseV1::DeviceState] device_state_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::DeviceState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::DeviceState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_device_state(enterprise_id, user_id, device_id, device_state_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::DeviceState::Representation
          command.request_object = device_state_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::DeviceState::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::DeviceState
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the binding between the MDM and enterprise. This is now deprecated;
        # use this to unenroll customers that were previously enrolled with the 'insert'
        # call, then enroll them again with the 'enroll' call.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enrolls an enterprise with the calling MDM.
        # @param [String] token
        #   The token provided by the enterprise to register the MDM.
        # @param [Google::Apis::AndroidenterpriseV1::Enterprise] enterprise_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_enterprise(token, enterprise_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/enroll', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Enterprise::Representation
          command.request_object = enterprise_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the name and domain of an enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the store layout resource.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreLayout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreLayout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_enterprise_store_layout(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/storeLayout', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreLayout::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreLayout
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Establishes the binding between the MDM and an enterprise. This is now
        # deprecated; use enroll instead.
        # @param [String] token
        #   The token provided by the enterprise to register the MDM.
        # @param [Google::Apis::AndroidenterpriseV1::Enterprise] enterprise_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Enterprise] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Enterprise]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_enterprise(token, enterprise_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Enterprise::Representation
          command.request_object = enterprise_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Enterprise::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Enterprise
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up an enterprise by domain name.
        # @param [String] domain
        #   The exact primary domain name of the enterprise to look up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListEnterprisesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListEnterprisesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_enterprises(domain, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListEnterprisesResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListEnterprisesResponse
          command.query['domain'] = domain unless domain.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends a test push notification to validate the MDM integration with the Google
        # Cloud Pub/Sub service for this enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::SendTestPushNotificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::SendTestPushNotificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_enterprise_test_push_notification(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/sendTestPushNotification', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::SendTestPushNotificationResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::SendTestPushNotificationResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set the account that will be used to authenticate to the API as the enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::EnterpriseAccount] enterprise_account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::EnterpriseAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::EnterpriseAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_enterprise_account(enterprise_id, enterprise_account_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/account', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::EnterpriseAccount::Representation
          command.request_object = enterprise_account_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::EnterpriseAccount::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::EnterpriseAccount
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the store layout resource.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::StoreLayout] store_layout_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreLayout] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreLayout]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_enterprise_store_layout(enterprise_id, store_layout_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/storeLayout', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StoreLayout::Representation
          command.request_object = store_layout_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreLayout::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreLayout
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unenrolls an enterprise from the calling MDM.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def unenroll_enterprise(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/unenroll', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an entitlement to an app for a user and uninstalls it.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_entitlement(enterprise_id, user_id, entitlement_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of an entitlement.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entitlement(enterprise_id, user_id, entitlement_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Entitlement::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List of all entitlements for the specified user. Only the ID is set.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListEntitlementsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListEntitlementsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_entitlements(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/entitlements', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListEntitlementsResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListEntitlementsResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds or updates an entitlement to an app for a user. This method supports
        # patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [Google::Apis::AndroidenterpriseV1::Entitlement] entitlement_object
        # @param [Boolean] install
        #   Set to true to also install the product on all the user's devices where
        #   possible. Failure to install on one or more devices will not prevent this
        #   operation from returning successfully, as long as the entitlement was
        #   successfully assigned to the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_entitlement(enterprise_id, user_id, entitlement_id, entitlement_object = nil, install: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Entitlement::Representation
          command.request_object = entitlement_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Entitlement::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['install'] = install unless install.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds or updates an entitlement to an app for a user.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] entitlement_id
        #   The ID of the entitlement, e.g. "app:com.google.android.gm".
        # @param [Google::Apis::AndroidenterpriseV1::Entitlement] entitlement_object
        # @param [Boolean] install
        #   Set to true to also install the product on all the user's devices where
        #   possible. Failure to install on one or more devices will not prevent this
        #   operation from returning successfully, as long as the entitlement was
        #   successfully assigned to the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_entitlement(enterprise_id, user_id, entitlement_id, entitlement_object = nil, install: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Entitlement::Representation
          command.request_object = entitlement_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Entitlement::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Entitlement
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['entitlementId'] = entitlement_id unless entitlement_id.nil?
          command.query['install'] = install unless install.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of an enterprise's group license for a product.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] group_license_id
        #   The ID of the product the group license is for, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::GroupLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::GroupLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group_license(enterprise_id, group_license_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::GroupLicense::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::GroupLicense
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['groupLicenseId'] = group_license_id unless group_license_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves IDs of all products for which the enterprise has a group license.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListGroupLicensesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListGroupLicensesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_licenses(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/groupLicenses', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListGroupLicensesResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListGroupLicensesResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the IDs of the users who have been granted entitlements under the
        # license.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] group_license_id
        #   The ID of the product the group license is for, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListGroupLicenseUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListGroupLicenseUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_license_users(enterprise_id, group_license_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListGroupLicenseUsersResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListGroupLicenseUsersResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['groupLicenseId'] = group_license_id unless group_license_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests to remove an app from a device. A call to get or list will still show
        # the app as installed on the device until it is actually removed.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_install(enterprise_id, user_id, device_id, install_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of an installation of an app on a device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_install(enterprise_id, user_id, device_id, install_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Install::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the details of all apps installed on the specified device.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListInstallsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListInstallsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_installs(enterprise_id, user_id, device_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListInstallsResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListInstallsResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests to install the latest version of an app to a device. If the app is
        # already installed then it is updated to the latest version if necessary. This
        # method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [Google::Apis::AndroidenterpriseV1::Install] install_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_install(enterprise_id, user_id, device_id, install_id, install_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Install::Representation
          command.request_object = install_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Install::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests to install the latest version of an app to a device. If the app is
        # already installed then it is updated to the latest version if necessary.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] device_id
        #   The Android ID of the device.
        # @param [String] install_id
        #   The ID of the product represented by the install, e.g. "app:com.google.android.
        #   gm".
        # @param [Google::Apis::AndroidenterpriseV1::Install] install_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Install] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Install]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_install(enterprise_id, user_id, device_id, install_id, install_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::Install::Representation
          command.request_object = install_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::Install::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Install
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.params['installId'] = install_id unless install_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of an Android app permission for display to an enterprise
        # admin.
        # @param [String] permission_id
        #   The ID of the permission.
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Permission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Permission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_permission(permission_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'permissions/{permissionId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Permission::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Permission
          command.params['permissionId'] = permission_id unless permission_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves the specified product (and the relevant app permissions, if any).
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [Google::Apis::AndroidenterpriseV1::ApproveProductRequest] approve_product_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def approve_product(enterprise_id, product_id, approve_product_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/products/{productId}/approve', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::ApproveProductRequest::Representation
          command.request_object = approve_product_request_object
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a URL that can be rendered in an iframe to display the permissions (
        # if any) of a product. An enterprise admin must view these permissions and
        # accept them on behalf of their organization in order to approve that product.
        # Admins should accept the displayed permissions by interacting with a separate
        # UI element in the EMM console, which in turn should trigger the use of this
        # URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to
        # approve the product. This URL can only be used to display permissions for up
        # to 1 day.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] language_code
        #   The BCP 47 language code used for permission names and descriptions in the
        #   returned iframe, for instance "en-US".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::GenerateProductApprovalUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::GenerateProductApprovalUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_product_approval_url(enterprise_id, product_id, language_code: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/products/{productId}/generateApprovalUrl', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::GenerateProductApprovalUrlResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::GenerateProductApprovalUrlResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of a product for display to an enterprise admin.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product, e.g. "app:com.google.android.gm".
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de").
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(enterprise_id, product_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/products/{productId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::Product::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::Product
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the schema defining app restrictions configurable for this product.
        # All products have a schema, but this may be empty if no app restrictions are
        # defined.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] language
        #   The BCP47 tag for the user's preferred language (e.g. "en-US", "de").
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product_app_restrictions_schema(enterprise_id, product_id, language: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::AppRestrictionsSchema
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Android app permissions required by this app.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductPermissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductPermissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product_permissions(enterprise_id, product_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/products/{productId}/permissions', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductPermissions::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductPermissions
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the set of Android app permissions for this app that have been
        # accepted by the enterprise.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] product_id
        #   The ID of the product.
        # @param [Google::Apis::AndroidenterpriseV1::ProductPermissions] product_permissions_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductPermissions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductPermissions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_product_permissions(enterprise_id, product_id, product_permissions_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/products/{productId}/permissions', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::ProductPermissions::Representation
          command.request_object = product_permissions_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductPermissions::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductPermissions
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a cluster.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] cluster_id
        #   The ID of the cluster.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_storelayoutcluster(enterprise_id, page_id, cluster_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of a cluster.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] cluster_id
        #   The ID of the cluster.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_storelayoutcluster(enterprise_id, page_id, cluster_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreCluster
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new cluster in a page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [Google::Apis::AndroidenterpriseV1::StoreCluster] store_cluster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_storelayoutcluster(enterprise_id, page_id, store_cluster_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.request_object = store_cluster_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreCluster
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the details of all clusters on the specified page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreLayoutClustersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreLayoutClustersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_storelayoutclusters(enterprise_id, page_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreLayoutClustersListResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreLayoutClustersListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a cluster. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] cluster_id
        #   The ID of the cluster.
        # @param [Google::Apis::AndroidenterpriseV1::StoreCluster] store_cluster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_storelayoutcluster(enterprise_id, page_id, cluster_id, store_cluster_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.request_object = store_cluster_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreCluster
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a cluster.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] cluster_id
        #   The ID of the cluster.
        # @param [Google::Apis::AndroidenterpriseV1::StoreCluster] store_cluster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreCluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreCluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_storelayoutcluster(enterprise_id, page_id, cluster_id, store_cluster_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.request_object = store_cluster_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreCluster::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreCluster
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.params['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a store page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_storelayoutpage(enterprise_id, page_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details of a store page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StorePage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StorePage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_storelayoutpage(enterprise_id, page_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StorePage
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new store page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [Google::Apis::AndroidenterpriseV1::StorePage] store_page_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StorePage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StorePage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_storelayoutpage(enterprise_id, store_page_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/storeLayout/pages', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.request_object = store_page_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StorePage
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the details of all pages in the store.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StoreLayoutPagesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StoreLayoutPagesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_storelayoutpages(enterprise_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/storeLayout/pages', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::StoreLayoutPagesListResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StoreLayoutPagesListResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the content of a store page. This method supports patch semantics.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [Google::Apis::AndroidenterpriseV1::StorePage] store_page_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StorePage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StorePage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_storelayoutpage(enterprise_id, page_id, store_page_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.request_object = store_page_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StorePage
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the content of a store page.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] page_id
        #   The ID of the page.
        # @param [Google::Apis::AndroidenterpriseV1::StorePage] store_page_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::StorePage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::StorePage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_storelayoutpage(enterprise_id, page_id, store_page_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/storeLayout/pages/{pageId}', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.request_object = store_page_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::StorePage::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::StorePage
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a token (activation code) to allow this user to configure their work
        # account in the Android Setup Wizard. Revokes any previously generated token.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::UserToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::UserToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_user_token(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'enterprises/{enterpriseId}/users/{userId}/token', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::UserToken::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::UserToken
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a user's details.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::User::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::User
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the set of products a user is entitled to access.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_available_product_set(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users/{userId}/availableProductSet', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductSet::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductSet
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a user by email address. This only works for Google managed users.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] email
        #   The exact primary email address of the user to look up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(enterprise_id, email, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'enterprises/{enterpriseId}/users', options)
          command.response_representation = Google::Apis::AndroidenterpriseV1::ListUsersResponse::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ListUsersResponse
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.query['email'] = email unless email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes a previously generated token (activation code) for the user.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def revoke_user_token(enterprise_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'enterprises/{enterpriseId}/users/{userId}/token', options)
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the set of products a user is entitled to access.
        # @param [String] enterprise_id
        #   The ID of the enterprise.
        # @param [String] user_id
        #   The ID of the user.
        # @param [Google::Apis::AndroidenterpriseV1::ProductSet] product_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidenterpriseV1::ProductSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidenterpriseV1::ProductSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_user_available_product_set(enterprise_id, user_id, product_set_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'enterprises/{enterpriseId}/users/{userId}/availableProductSet', options)
          command.request_representation = Google::Apis::AndroidenterpriseV1::ProductSet::Representation
          command.request_object = product_set_object
          command.response_representation = Google::Apis::AndroidenterpriseV1::ProductSet::Representation
          command.response_class = Google::Apis::AndroidenterpriseV1::ProductSet
          command.params['enterpriseId'] = enterprise_id unless enterprise_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
