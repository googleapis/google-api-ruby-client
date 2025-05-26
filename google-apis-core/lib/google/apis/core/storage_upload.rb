# Copyright 2022 Google LLC
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

require 'google/apis/core/http_command'
require 'google/apis/core/api_command'
require 'google/apis/errors'
require 'stringio'
require 'tempfile'
require 'mini_mime'

module Google
  module Apis
    module Core
      # Base upload command. Not intended to be used directly
      # @private
      class StorageUploadCommand < ApiCommand
        CONTENT_LENGTH_HEADER = "Content-Length"
        CONTENT_TYPE_HEADER = "Content-Type"
        UPLOAD_CONTENT_TYPE_HEADER = "X-Upload-Content-Type"
        LOCATION_HEADER = "Location"
        CONTENT_RANGE_HEADER = "Content-Range"
        RESUMABLE = "resumable"
        OK_STATUS = 200

        # File name or IO containing the content to upload
        # @return [String, File, #read]
        attr_accessor :upload_source

        # Content type of the upload material
        # @return [String]
        attr_accessor :upload_content_type

        # Content, as UploadIO
        # @return [Google::Apis::Core::UploadIO]
        attr_accessor :upload_io

        # Upload chunk size
        # @return [Integer]
        attr_accessor :upload_chunk_size

        # Unique upload_id of a resumable upload
        # @return [String]
        attr_accessor :upload_id

        # Boolean Value to specify is a resumable upload is to be deleted or not
        # @return [Boolean]
        attr_accessor :delete_upload

        # Ensure the content is readable and wrapped in an IO instance.
        #
        # @return [void]
        # @raise [Google::Apis::ClientError] if upload source is invalid
        def prepare!
          @upload_url = nil
          @offset = 0
          @upload_incomplete = true
          # Prevent the command from populating the body with form encoding, by
          # asserting that it already has a body. Form encoding is never used
          # by upload requests.
          self.body = '' unless self.body
          super
          if streamable?(upload_source)
            self.upload_io = upload_source
            @close_io_on_finish = false
          elsif self.upload_source.is_a?(String)
            self.upload_io = File.new(upload_source, 'r')
            if self.upload_content_type.nil?
              type = MiniMime.lookup_by_filename(upload_source)
              self.upload_content_type = type&.content_type
            end
            @close_io_on_finish = true
          elsif !upload_id.nil? && delete_upload
            @close_io_on_finish = false
          else
            fail Google::Apis::ClientError, 'Invalid upload source'
          end
        end

        # Close IO stream when command done. Only closes the stream if it was opened by the command.
        def release!
          upload_io.close if @close_io_on_finish && !upload_io.nil?
        end

        # Execute the command, retrying as necessary
        #
        # @param [HTTPClient] client
        #   HTTP client
        # @yield [result, err] Result or error if block supplied
        # @return [Object]
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute(client)
          prepare!
          opencensus_begin_span
          @upload_chunk_size = options.upload_chunk_size
          if upload_id.nil?
            res = do_retry :initiate_resumable_upload, client
          elsif delete_upload && !upload_id.nil?
            construct_resumable_upload_url upload_id
            res = do_retry :cancel_resumable_upload, client
          else
            construct_resumable_upload_url upload_id
            res = do_retry :reinitiate_resumable_upload, client
          end

          while @upload_incomplete
            res = do_retry :send_upload_command, client
          end
          res
        ensure
          opencensus_end_span
          @http_res = nil
          release!
        end

        def initiate_resumable_upload(client)
          logger.debug { sprintf('Intiating resumable upload command to %s', url) }

          request_header = header.dup
          apply_request_options(request_header)

          request_query = query.dup
          request_query['uploadType'] = RESUMABLE

          request_header[CONTENT_LENGTH_HEADER] = upload_io.size.to_s
          request_header[CONTENT_TYPE_HEADER] = JSON_CONTENT_TYPE
          request_header[UPLOAD_CONTENT_TYPE_HEADER] = upload_content_type unless upload_content_type.nil?

          response = client.post(url.to_s, query: request_query,
                         body: body,
                         header: request_header,
                         follow_redirect: true)
          result = process_response(response.status_code, response.header, response.body)
          success(result)
        rescue => e
          error(e, rethrow: true)
        end

        # Reinitiating resumable upload
        def reinitiate_resumable_upload(client)
          logger.debug { sprintf('Restarting resumable upload command to %s', url) }
          check_resumable_upload client
          upload_io.pos = @offset
        end

        # Making resumable upload url from upload_id
        def construct_resumable_upload_url(upload_id)
          query_params = query.dup
          query_params['uploadType'] = RESUMABLE
          query_params['upload_id'] = upload_id
          resumable_upload_params = query_params.map { |key, value| "#{key}=#{value}" }.join('&')
          @upload_url = "#{url}&#{resumable_upload_params}"
        end

        # Send the actual content
        #
        # @param [HTTPClient] client
        #   HTTP client
        # @return [HTTP::Message]
        # @raise [Google::Apis::ServerError] Unable to send the request
        def send_upload_command(client)
          logger.debug { sprintf('Sending upload command to %s', @upload_url) }

          remaining_content_size = upload_io.size - @offset
          current_chunk_size = get_current_chunk_size remaining_content_size

          request_header = header.dup
          request_header[CONTENT_RANGE_HEADER] = get_content_range_header current_chunk_size
          request_header[CONTENT_LENGTH_HEADER] = current_chunk_size
          chunk_body =
            if @upload_chunk_size == 0
              upload_io
            else
              StringIO.new(upload_io.read(current_chunk_size))
            end

          response = client.put(@upload_url, body: chunk_body, header: request_header, follow_redirect: true)

          result = process_response(response.status_code, response.header, response.body)
          @upload_incomplete = false if response.status_code.eql? OK_STATUS
          @offset += current_chunk_size if @upload_incomplete
          success(result)
        rescue => e
          logger.warn {
            "error occured please use uploadId-#{response.headers['X-GUploader-UploadID']} to resume your upload"
          } unless response.nil?
          upload_io.pos = @offset
          error(e, rethrow: true)
        end

        # Check the to see if the upload is complete or needs to be resumed.
        #
        # @param [Integer] status
        #   HTTP status code of response
        # @param [HTTP::Message::Headers] header
        #   Response headers
        # @param [String, #read] body
        #  Response body
        # @return [Object]
        #   Response object
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_response(status, header, body)
          @upload_url = header[LOCATION_HEADER].first unless header[LOCATION_HEADER].empty?
          super(status, header, body)
        end

        def check_resumable_upload(client)
          # Setting up request header
          request_header = header.dup
          request_header[CONTENT_RANGE_HEADER] = "bytes */#{upload_io.size}"
          request_header[CONTENT_LENGTH_HEADER] = '0'
          # Initiating call
          response = client.put(@upload_url, header: request_header, follow_redirect: true)
          handle_resumable_upload_http_response_codes(response)
        end

        # Cancel resumable upload
        def cancel_resumable_upload(client)
          # Setting up request header
          request_header = header.dup
          request_header[CONTENT_LENGTH_HEADER] = '0'
          # Initiating call
          response = client.delete(@upload_url, header: request_header, follow_redirect: true)
          handle_resumable_upload_http_response_codes(response)

          if !@upload_incomplete && (400..499).include?(response.code.to_i)
            @close_io_on_finish = true
            true # method returns true if upload is successfully cancelled
          else
            logger.debug { sprintf("Failed to cancel upload session. Response: #{response.code} - #{response.body}") }
          end
  
        end

        def handle_resumable_upload_http_response_codes(response)
          code = response.code.to_i

          case code
          when 308
            if response.headers['Range']
              range = response.headers['Range']
              @offset = range.split('-').last.to_i + 1
              logger.debug { sprintf("Upload is incomplete. Bytes uploaded so far: #{range}") }
            else
              logger.debug { sprintf('No bytes uploaded yet.') }
            end
            @upload_incomplete = true
          when 400..499
            # Upload is canceled
            @upload_incomplete = false
          when 200, 201
            # Upload is complete.
            @upload_incomplete = false
          else
            logger.debug { sprintf("Unexpected response: #{response.code} - #{response.body}") }
            @upload_incomplete = true
          end
        end

        def streamable?(upload_source)
          upload_source.is_a?(IO) || upload_source.is_a?(StringIO) || upload_source.is_a?(Tempfile)
        end

        def get_current_chunk_size remaining_content_size
          # Disable chunking if the chunk size is set to zero.
          if @upload_chunk_size == 0
            remaining_content_size
          else
            remaining_content_size < @upload_chunk_size ? remaining_content_size : @upload_chunk_size
          end
        end

        def get_content_range_header current_chunk_size
          if upload_io.size == 0
            numerator = "*"
          else
            numerator = sprintf("%d-%d", @offset, @offset+current_chunk_size-1)
          end
          sprintf('bytes %s/%d', numerator, upload_io.size)
        end
      end
    end
  end
end
