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
    module KeepV1
      # Google Keep API
      #
      # The Google Keep API is used in an enterprise environment to manage Google Keep
      #  content and resolve issues identified by cloud security software.
      #
      # @example
      #    require 'google/apis/keep_v1'
      #
      #    Keep = Google::Apis::KeepV1 # Alias the module
      #    service = Keep::KeepService.new
      #
      # @see https://developers.google.com/keep/api
      class KeepService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://keep.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-keep_v1',
                client_version: Google::Apis::KeepV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets an attachment. To download attachment media via REST requires the alt=
        # media query parameter. Returns a 400 bad request error if attachment media is
        # not available in the requested MIME type.
        # @param [String] name
        #   Required. The name of the attachment.
        # @param [String] mime_type
        #   The IANA MIME type format requested. The requested MIME type must be one
        #   specified in the attachment.mime_type. Required when downloading attachment
        #   media and ignored otherwise.
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
        # @yieldparam result [Google::Apis::KeepV1::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(name, mime_type: nil, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v1/{+name}', options)
          else
            command = make_download_command(:get, 'v1/{+name}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::KeepV1::Attachment::Representation
          command.response_class = Google::Apis::KeepV1::Attachment
          command.params['name'] = name unless name.nil?
          command.query['mimeType'] = mime_type unless mime_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new note.
        # @param [Google::Apis::KeepV1::Note] note_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_note(note_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/notes', options)
          command.request_representation = Google::Apis::KeepV1::Note::Representation
          command.request_object = note_object
          command.response_representation = Google::Apis::KeepV1::Note::Representation
          command.response_class = Google::Apis::KeepV1::Note
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a note. Caller must have the `OWNER` role on the note to delete.
        # Deleting a note removes the resource immediately and cannot be undone. Any
        # collaborators will lose access to the note.
        # @param [String] name
        #   Required. Name of the note to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_note(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::KeepV1::Empty::Representation
          command.response_class = Google::Apis::KeepV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a note.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::Note] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::Note]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_note(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::KeepV1::Note::Representation
          command.response_class = Google::Apis::KeepV1::Note
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists notes. Every list call returns a page of results with `page_size` as the
        # upper bound of returned items. A `page_size` of zero allows the server to
        # choose the upper bound. The ListNotesResponse contains at most `page_size`
        # entries. If there are more things left to list, it provides a `next_page_token`
        # value. (Page tokens are opaque values.) To get the next page of results, copy
        # the result's `next_page_token` into the next request's `page_token`. Repeat
        # until the `next_page_token` returned with a page of results is empty.
        # ListNotes return consistent results in the face of concurrent changes, or
        # signals that it cannot with an ABORTED error.
        # @param [String] filter
        #   Filter for list results. If no filter is supplied, the `trashed` filter is
        #   applied by default. Valid fields to filter by are: `create_time`, `update_time`
        #   , `trash_time`, and `trashed`. Filter syntax follows the [Google AIP filtering
        #   spec](https://aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   The previous page's `next_page_token` field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::ListNotesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::ListNotesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_notes(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/notes', options)
          command.response_representation = Google::Apis::KeepV1::ListNotesResponse::Representation
          command.response_class = Google::Apis::KeepV1::ListNotesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates one or more permissions on the note. Only permissions with the `WRITER`
        # role may be created. If adding any permission fails, then the entire request
        # fails and no changes are made.
        # @param [String] parent
        #   The parent resource shared by all Permissions being created. Format: `notes/`
        #   note`` If this is set, the parent field in the CreatePermission messages must
        #   either be empty or match this field.
        # @param [Google::Apis::KeepV1::BatchCreatePermissionsRequest] batch_create_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::BatchCreatePermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::BatchCreatePermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_permissions(parent, batch_create_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/permissions:batchCreate', options)
          command.request_representation = Google::Apis::KeepV1::BatchCreatePermissionsRequest::Representation
          command.request_object = batch_create_permissions_request_object
          command.response_representation = Google::Apis::KeepV1::BatchCreatePermissionsResponse::Representation
          command.response_class = Google::Apis::KeepV1::BatchCreatePermissionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes one or more permissions on the note. The specified entities will
        # immediately lose access. A permission with the `OWNER` role can't be removed.
        # If removing a permission fails, then the entire request fails and no changes
        # are made. Returns a 400 bad request error if a specified permission does not
        # exist on the note.
        # @param [String] parent
        #   The parent resource shared by all permissions being deleted. Format: `notes/`
        #   note`` If this is set, the parent of all of the permissions specified in the
        #   DeletePermissionRequest messages must match this field.
        # @param [Google::Apis::KeepV1::BatchDeletePermissionsRequest] batch_delete_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KeepV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KeepV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_permissions(parent, batch_delete_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/permissions:batchDelete', options)
          command.request_representation = Google::Apis::KeepV1::BatchDeletePermissionsRequest::Representation
          command.request_object = batch_delete_permissions_request_object
          command.response_representation = Google::Apis::KeepV1::Empty::Representation
          command.response_class = Google::Apis::KeepV1::Empty
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
