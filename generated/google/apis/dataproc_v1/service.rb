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
    module DataprocV1
      # Google Cloud Dataproc API
      #
      # An API for managing Hadoop-based clusters and jobs on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/dataproc_v1'
      #
      #    Dataproc = Google::Apis::DataprocV1 # Alias the module
      #    service = Dataproc::DataprocService.new
      #
      # @see https://cloud.google.com/dataproc/
      class DataprocService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dataproc.googleapis.com/', '')
        end
        
        # Method for media upload. Upload is supported on the URI `/upload/v1/media/`+
        # name``.
        # @param [String] resource_name
        #   Name of the media that is being downloaded. See [][ByteStream.ReadRequest.
        #   resource_name].
        # @param [Google::Apis::DataprocV1::Media] media_object
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
        # @yieldparam result [Google::Apis::DataprocV1::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(resource_name, media_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, 'v1/media/{+resourceName}', options)
          else
            command = make_upload_command(:post, 'v1/media/{+resourceName}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::DataprocV1::Media::Representation
          command.request_object = media_object
          command.response_representation = Google::Apis::DataprocV1::Media::Representation
          command.response_class = Google::Apis::DataprocV1::Media
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Method for media download. Download is supported on the URI `/v1/media/`+name`?
        # alt=media`.
        # @param [String] resource_name
        #   Name of the media that is being downloaded. See [][ByteStream.ReadRequest.
        #   resource_name].
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
        # @yieldparam result [Google::Apis::DataprocV1::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataprocV1::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command =  make_simple_command(:get, 'v1/media/{+resourceName}', options)
          else
            command = make_download_command(:get, 'v1/media/{+resourceName}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::DataprocV1::Media::Representation
          command.response_class = Google::Apis::DataprocV1::Media
          command.params['resourceName'] = resource_name unless resource_name.nil?
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
