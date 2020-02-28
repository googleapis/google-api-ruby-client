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
    module DisplayvideoV1
      # Display & Video 360 API
      #
      # Display & Video 360 API allows users to manage and create campaigns and
      #  reports.
      #
      # @example
      #    require 'google/apis/displayvideo_v1'
      #
      #    Displayvideo = Google::Apis::DisplayvideoV1 # Alias the module
      #    service = Displayvideo::DisplayVideoService.new
      #
      # @see https://developers.google.com/display-video/
      class DisplayVideoService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://displayvideo.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Downloads media. Download is supported on the URI `/download/`resource_name=**`
        # ?alt=media.`
        # **Note**: Download requests will not be successful without including `alt=
        # media` query string.
        # @param [String] resource_name
        #   Name of the media that is being downloaded.  See
        #   ReadRequest.resource_name.
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
        # @yieldparam result [Google::Apis::DisplayvideoV1::GoogleBytestreamMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV1::GoogleBytestreamMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'download/{+resourceName}', options)
          else
            command = make_download_command(:get, 'download/{+resourceName}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DisplayvideoV1::GoogleBytestreamMedia::Representation
          command.response_class = Google::Apis::DisplayvideoV1::GoogleBytestreamMedia
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an SDF Download Task. Returns an
        # Operation.
        # An SDF Download Task is a long-running, asynchronous operation. The
        # metadata type of this operation is
        # SdfDownloadTaskMetadata. If the request is successful, the
        # response type of the operation is
        # SdfDownloadTask. The response will not include the download files,
        # which must be retrieved with
        # media.download. The state of
        # operation can be retrieved with
        # sdfdownloadtask.operations.get.
        # Any errors can be found in the
        # error.message. Note
        # that error.details is expected to be
        # empty.
        # @param [Google::Apis::DisplayvideoV1::CreateSdfDownloadTaskRequest] create_sdf_download_task_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DisplayvideoV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_sdfdownloadtask_sdf_download_task(create_sdf_download_task_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/sdfdownloadtasks', options)
          command.request_representation = Google::Apis::DisplayvideoV1::CreateSdfDownloadTaskRequest::Representation
          command.request_object = create_sdf_download_task_request_object
          command.response_representation = Google::Apis::DisplayvideoV1::Operation::Representation
          command.response_class = Google::Apis::DisplayvideoV1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of an asynchronous SDF download task operation. Clients
        # should poll this method at intervals of 30 seconds.
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
        # @yieldparam result [Google::Apis::DisplayvideoV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DisplayvideoV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sdfdownloadtask_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DisplayvideoV1::Operation::Representation
          command.response_class = Google::Apis::DisplayvideoV1::Operation
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
