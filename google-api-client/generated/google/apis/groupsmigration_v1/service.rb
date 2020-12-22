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
    module GroupsmigrationV1
      # Groups Migration API
      #
      # The Groups Migration API allows domain administrators to archive emails into
      #  Google groups.
      #
      # @example
      #    require 'google/apis/groupsmigration_v1'
      #
      #    Groupsmigration = Google::Apis::GroupsmigrationV1 # Alias the module
      #    service = Groupsmigration::GroupsMigrationService.new
      #
      # @see https://developers.google.com/google-apps/groups-migration/
      class GroupsMigrationService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://groupsmigration.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Inserts a new mail into the archive of the Google group.
        # @param [String] group_id
        #   The group ID
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
        # @yieldparam result [Google::Apis::GroupsmigrationV1::Groups] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GroupsmigrationV1::Groups]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_archive(group_id, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'groups/v1/groups/{groupId}/archive', options)
          else
            command = make_upload_command(:post, 'groups/v1/groups/{groupId}/archive', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::GroupsmigrationV1::Groups::Representation
          command.response_class = Google::Apis::GroupsmigrationV1::Groups
          command.params['groupId'] = group_id unless group_id.nil?
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
