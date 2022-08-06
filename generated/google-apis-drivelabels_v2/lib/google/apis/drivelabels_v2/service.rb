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
    module DrivelabelsV2
      # Drive Labels API
      #
      # An API for managing Drive Labels
      #
      # @example
      #    require 'google/apis/drivelabels_v2'
      #
      #    Drivelabels = Google::Apis::DrivelabelsV2 # Alias the module
      #    service = Drivelabels::DriveLabelsService.new
      #
      # @see https://developers.google.com/drive/labels
      class DriveLabelsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://drivelabels.googleapis.com/', '',
                client_name: 'google-apis-drivelabels_v2',
                client_version: Google::Apis::DrivelabelsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Get a label by its resource name. Resource name may be any of: * `labels/`id``
        # - See `labels/`id`@latest` * `labels/`id`@latest` - Gets the latest revision
        # of the label. * `labels/`id`@published` - Gets the current published revision
        # of the label. * `labels/`id`@`revision_id`` - Gets the label at the specified
        # revision ID.
        # @param [String] name
        #   Required. Label resource name. May be any of: * `labels/`id`` (equivalent to
        #   labels/`id`@latest) * `labels/`id`@latest` * `labels/`id`@published` * `labels/
        #   `id`@`revision_id``
        # @param [String] language_code
        #   The BCP-47 language code to use for evaluating localized field labels. When
        #   not specified, values in the default configured language are used.
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. The server
        #   verifies that the user is an admin for the label before allowing access.
        # @param [String] view
        #   When specified, only certain fields belonging to the indicated view are
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_label(name, language_code: nil, use_admin_access: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List labels.
        # @param [String] language_code
        #   The BCP-47 language code to use for evaluating localized field labels. When
        #   not specified, values in the default configured language are used.
        # @param [String] minimum_role
        #   Specifies the level of access the user must have on the returned Labels. The
        #   minimum role a user must have on a label. Defaults to `READER`.
        # @param [Fixnum] page_size
        #   Maximum number of labels to return per page. Default: 50. Max: 200.
        # @param [String] page_token
        #   The token of the page to return.
        # @param [Boolean] published_only
        #   Whether to include only published labels in the results. * When `true`, only
        #   the current published label revisions are returned. Disabled labels are
        #   included. Returned label resource names reference the published revision (`
        #   labels/`id`/`revision_id``). * When `false`, the current label revisions are
        #   returned, which might not be published. Returned label resource names don't
        #   reference a specific revision (`labels/`id``).
        # @param [Boolean] use_admin_access
        #   Set to `true` in order to use the user's admin credentials. This will return
        #   all Labels within the customer.
        # @param [String] view
        #   When specified, only certain fields belonging to the indicated view are
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_labels(language_code: nil, minimum_role: nil, page_size: nil, page_token: nil, published_only: nil, use_admin_access: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/labels', options)
          command.response_representation = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse::Representation
          command.response_class = Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLabelsResponse
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['minimumRole'] = minimum_role unless minimum_role.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['publishedOnly'] = published_only unless published_only.nil?
          command.query['useAdminAccess'] = use_admin_access unless use_admin_access.nil?
          command.query['view'] = view unless view.nil?
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
