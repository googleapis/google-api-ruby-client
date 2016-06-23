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

require 'google/apis/core/multipart'
require 'google/apis/core/http_command'
require 'google/apis/core/api_command'
require 'google/apis/errors'
require 'addressable/uri'
require 'tempfile'
begin
  require 'mime/types/columnar'
rescue LoadError
  # Temporary until next major bump when we can tighten
  # dependency to mime-types >-=3.0
  require 'mime-types'
end

module Google
  module Apis
    module Core
      # Extension of Hurley's UploadIO to add length accessor
      class UploadIO < Hurley::UploadIO
        OCTET_STREAM_CONTENT_TYPE = 'application/octet-stream'

        # Get the length of the stream
        # @return [Fixnum]
        def length
          io.respond_to?(:length) ? io.length : File.size(local_path)
        end

        # Create a new instance given a file path
        # @param [String, File] file_name
        #  Path to file
        # @param [String] content_type
        #  Optional content type. If nil, will attempt to auto-detect
        # @return [Google::Apis::Core::UploadIO]
        def self.from_file(file_name, content_type: nil)
          if content_type.nil?
            type = MIME::Types.of(file_name)
            content_type = type.first.content_type unless type.nil? || type.empty?
          end
          new(file_name, content_type || OCTET_STREAM_CONTENT_TYPE)
        end

        # Wraps an IO stream in UploadIO
        # @param [#read] io
        #  IO to wrap
        # @param [String] content_type
        #  Optional content type.
        # @return [Google::Apis::Core::UploadIO]
        def self.from_io(io, content_type: OCTET_STREAM_CONTENT_TYPE)
          new(io, content_type)
        end
      end

      # Base upload command. Not intended to be used directly
      # @private
      class BaseUploadCommand < ApiCommand
        UPLOAD_PROTOCOL_HEADER = 'X-Goog-Upload-Protocol'
        UPLOAD_CONTENT_TYPE_HEADER = 'X-Goog-Upload-Header-Content-Type'
        UPLOAD_CONTENT_LENGTH = 'X-Goog-Upload-Header-Content-Length'

        # File name or IO containing the content to upload
        # @return [String, File, #read]
        attr_accessor :upload_source

        # Content type of the upload material
        # @return [String]
        attr_accessor :upload_content_type

        # Content, as UploadIO
        # @return [Google::Apis::Core::UploadIO]
        attr_accessor :upload_io

        # Ensure the content is readable and wrapped in an {{Google::Apis::Core::UploadIO}} instance.
        #
        # @return [void]
        # @raise [Google::Apis::ClientError] if upload source is invalid
        def prepare!
          super
          if streamable?(upload_source)
            self.upload_io = UploadIO.from_io(upload_source, content_type: upload_content_type)
            @close_io_on_finish = false
          elsif upload_source.is_a?(String)
            self.upload_io = UploadIO.from_file(upload_source, content_type: upload_content_type)
            @close_io_on_finish = true
          else
            fail Google::Apis::ClientError, 'Invalid upload source'
          end
        end

        # Close IO stream when command done. Only closes the stream if it was opened by the command.
        def release!
          upload_io.close if @close_io_on_finish
        end

        private

        def streamable?(upload_source)
          upload_source.is_a?(IO) || upload_source.is_a?(StringIO) || upload_source.is_a?(Tempfile)
        end
      end

      # Implementation of the raw upload protocol
      class RawUploadCommand < BaseUploadCommand
        RAW_PROTOCOL = 'raw'

        # Ensure the content is readable and wrapped in an {{Google::Apis::Core::UploadIO}} instance.
        #
        # @return [void]
        # @raise [Google::Apis::ClientError] if upload source is invalid
        def prepare!
          super
          self.body = upload_io
          header[UPLOAD_PROTOCOL_HEADER] = RAW_PROTOCOL
          header[UPLOAD_CONTENT_TYPE_HEADER] = upload_io.content_type
        end
      end

      # Implementation of the multipart upload protocol
      class MultipartUploadCommand < BaseUploadCommand
        UPLOAD_BOUNDARY = 'RubyApiClientUpload'
        MULTIPART_PROTOCOL = 'multipart'
        MULTIPART_RELATED = 'multipart/related'

        # Encode the multipart request
        #
        # @return [void]
        # @raise [Google::Apis::ClientError] if upload source is invalid
        def prepare!
          super
          @multipart = Multipart.new(boundary: UPLOAD_BOUNDARY, content_type: MULTIPART_RELATED)
          @multipart.add_json(body)
          @multipart.add_upload(upload_io)
          self.body = @multipart.assemble
          header[:content_type] = @multipart.content_type
          header[UPLOAD_PROTOCOL_HEADER] = MULTIPART_PROTOCOL
        end
      end

      # Implementation of the resumable upload protocol
      class ResumableUploadCommand < BaseUploadCommand
        UPLOAD_COMMAND_HEADER = 'X-Goog-Upload-Command'
        UPLOAD_OFFSET_HEADER = 'X-Goog-Upload-Offset'
        BYTES_RECEIVED_HEADER = 'X-Goog-Upload-Size-Received'
        UPLOAD_URL_HEADER = 'X-Goog-Upload-URL'
        UPLOAD_STATUS_HEADER = 'X-Goog-Upload-Status'
        STATUS_ACTIVE = 'active'
        STATUS_FINAL = 'final'
        STATUS_CANCELLED = 'cancelled'
        RESUMABLE = 'resumable'
        START_COMMAND = 'start'
        QUERY_COMMAND = 'query'
        UPLOAD_COMMAND = 'upload, finalize'

        # Reset upload to initial state.
        #
        # @return [void]
        # @raise [Google::Apis::ClientError] if upload source is invalid
        def prepare!
          @state = :start
          @upload_url = nil
          @offset = 0
          super
        end

        # Check the to see if the upload is complete or needs to be resumed.
        #
        # @param [Fixnum] status
        #   HTTP status code of response
        # @param [Hurley::Header] header
        #   Response headers
        # @param [String, #read] body
        #  Response body
        # @return [Object]
        #   Response object
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_response(status, header, body)
          @offset = Integer(header[BYTES_RECEIVED_HEADER]) if header.key?(BYTES_RECEIVED_HEADER)
          @upload_url = header[UPLOAD_URL_HEADER] if header.key?(UPLOAD_URL_HEADER)
          upload_status = header[UPLOAD_STATUS_HEADER]
          logger.debug { sprintf('Upload status %s', upload_status) }
          if upload_status == STATUS_ACTIVE
            @state = :active
          elsif upload_status == STATUS_FINAL
            @state = :final
          elsif upload_status == STATUS_CANCELLED
            @state = :cancelled
            fail Google::Apis::ClientError, body
          end
          super(status, header, body)
        end

        # Send the start command to initiate the upload
        #
        # @param [Hurley::Client] client
        #   HTTP client
        # @return [Hurley::Response]
        # @raise [Google::Apis::ServerError] Unable to send the request
        def send_start_command(client)
          logger.debug { sprintf('Sending upload start command to %s', url) }
          client.send(method, url, body) do |req|
            apply_request_options(req)
            req.header[UPLOAD_PROTOCOL_HEADER] = RESUMABLE
            req.header[UPLOAD_COMMAND_HEADER] = START_COMMAND
            req.header[UPLOAD_CONTENT_LENGTH] = upload_io.length.to_s
            req.header[UPLOAD_CONTENT_TYPE_HEADER] = upload_io.content_type
          end
        rescue => e
          raise Google::Apis::ServerError, e.message
        end

        # Query for the status of an incomplete upload
        #
        # @param [Hurley::Client] client
        #   HTTP client
        # @return [Hurley::Response]
        # @raise [Google::Apis::ServerError] Unable to send the request
        def send_query_command(client)
          logger.debug { sprintf('Sending upload query command to %s', @upload_url) }
          client.post(@upload_url, nil) do |req|
            apply_request_options(req)
            req.header[UPLOAD_COMMAND_HEADER] = QUERY_COMMAND
          end
        end

        # Send the actual content
        #
        # @param [Hurley::Client] client
        #   HTTP client
        # @return [Hurley::Response]
        # @raise [Google::Apis::ServerError] Unable to send the request
        def send_upload_command(client)
          logger.debug { sprintf('Sending upload command to %s', @upload_url) }
          content = upload_io
          content.pos = @offset
          client.post(@upload_url, content) do |req|
            apply_request_options(req)
            req.header[UPLOAD_COMMAND_HEADER] = UPLOAD_COMMAND
            req.header[UPLOAD_OFFSET_HEADER] = @offset.to_s
          end
        end

        # Execute the upload request once. This will typically perform two HTTP requests -- one to initiate or query
        # for the status of the upload, the second to send the (remaining) content.
        #
        # @private
        # @param [Hurley::Client] client
        #   HTTP client
        # @yield [result, err] Result or error if block supplied
        # @return [Object]
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_once(client, &block)
          case @state
          when :start
            response = send_start_command(client)
            result = process_response(response.status_code, response.header, response.body)
          when :active
            response = send_query_command(client)
            result = process_response(response.status_code, response.header, response.body)
          when :cancelled, :final
            error(@last_error, rethrow: true, &block)
          end
          if @state == :active
            response = send_upload_command(client)
            result = process_response(response.status_code, response.header, response.body)
          end

          success(result, &block) if @state == :final
        rescue => e
          # Some APIs like Youtube generate non-retriable 401 errors and mark
          # the upload as finalized. Save the error just in case we get
          # retried.
          @last_error = e
          error(e, rethrow: true, &block)
        end
      end
    end
  end
end
