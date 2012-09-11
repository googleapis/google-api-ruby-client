# Copyright 2010 Google Inc.
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
require 'google/api_client/reference'

module Google
  class APIClient
    ##
    # Uploadable media support.  Holds an IO stream & content type.
    #
    # @see Faraday::UploadIO
    # @example
    #   media = Google::APIClient::UploadIO.new('mymovie.m4v', 'video/mp4')
    class UploadIO < Faraday::UploadIO      
      ##
      # Get the length of the stream
      # @return [Integer]
      #   Length of stream, in bytes
      def length
        io.respond_to?(:length) ? io.length : File.size(local_path)
      end
    end
    
    ##
    # Resumable uploader.
    #
    class ResumableUpload < Request
      attr_accessor :chunk_size
  
      ##
      # Creates a new uploader.
      #
      # @param [Google::APIClient::Result] result
      #   Result of the initial request that started the upload
      # @param [Google::APIClient::UploadIO] media
      #   Media to upload
      # @param [String] location
      #  URL to upload to    
      def initialize(options={})
        super options
        self.uri = options[:uri]
        self.http_method = :put
        @offset = options[:offset] || 0
        @complete = false
        @expired = false
      end
      
      ##
      # Sends all remaining chunks to the server
      #
      # @param [Google::APIClient] api_client
      #   API Client instance to use for sending
      def send_all(api_client)
        result = nil
        until complete?
          result = send_chunk(api_client)
          break unless result.status == 308
        end
        return result
      end
      
      
      ##
      # Sends the next chunk to the server
      #
      # @param [Google::APIClient] api_client
      #   API Client instance to use for sending
      def send_chunk(api_client)
        return api_client.execute(self)
      end

      ##
      # Check if upload is complete
      #
      # @return [TrueClass, FalseClass]
      #   Whether or not the upload complete successfully
      def complete?
        return @complete
      end

      ##
      # Check if the upload URL expired (upload not completed in alotted time.)
      # Expired uploads must be restarted from the beginning
      #
      # @return [TrueClass, FalseClass]
      #   Whether or not the upload has expired and can not be resumed
      def expired?
        return @expired
      end
      
      def to_http_request
        if @complete
          raise Google::APIClient::ClientError, "Upload already complete"
        elsif @offset.nil?
          self.headers.update({ 
            'Content-Length' => "0", 
            'Content-Range' => "bytes */#{media.length}" })
        else
          start_offset = @offset
          self.media.io.pos = start_offset
          chunk = self.media.io.read(chunk_size)
          content_length = chunk.bytesize
          end_offset = start_offset + content_length - 1
          
          self.headers.update({
            'Content-Length' => "#{content_length}",
            'Content-Type' => self.media.content_type, 
            'Content-Range' => "bytes #{start_offset}-#{end_offset}/#{media.length}" })
          self.body = chunk
        end
        super
      end
      
      def to_hash
        super.merge(:offset => @offset)
      end
      
      ##
      # Check the result from the server, updating the offset and/or location
      # if available.
      #
      # @param [Faraday::Response] r
      #  Result of a chunk upload or range query
      def process_response(response)
        case response.status
        when 200...299
          @complete = true
        when 308
          range = response.headers['range']
          if range
            @offset = range.scan(/\d+/).collect{|x| Integer(x)}.last + 1
          end
          if response.headers['location']
            self.uri = response.headers['location']
          end
        when 400...499
          @expired = true
        when 500...599
          # Invalidate the offset to mark it needs to be queried on the
          # next request
          @offset = nil
        end
        return Google::APIClient::Result.new(self, response)
      end      
    end
  end
end