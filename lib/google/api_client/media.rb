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
    class ResumableUpload
      attr_reader :result
      attr_accessor :client
      attr_accessor :chunk_size
      attr_accessor :media
      attr_accessor :location
  
      ##
      # Creates a new uploader.
      #
      # @param [Google::APIClient::Result] result
      #   Result of the initial request that started the upload
      # @param [Google::APIClient::UploadIO] media
      #   Media to upload
      # @param [String] location
      #  URL to upload to    
      def initialize(result, media, location)
        self.media = media
        self.location = location
        self.chunk_size = 256 * 1024
        
        @api_method = result.reference.api_method
        @result = result
        @offset = 0
        @complete = false
      end
      
      ##
      # Sends all remaining chunks to the server
      #
      # @param [Google::APIClient] api_client
      #   API Client instance to use for sending
      def send_all(api_client)
        until complete?
          send_chunk(api_client)
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
        if @offset.nil?
          return resync_range(api_client)
        end

        start_offset = @offset
        self.media.io.pos = start_offset
        chunk = self.media.io.read(chunk_size)
        content_length = chunk.bytesize

        end_offset = start_offset + content_length - 1
        @result = api_client.execute(
          :uri => self.location,
          :http_method => :put,
          :headers => {
            'Content-Length' => "#{content_length}",
            'Content-Type' => self.media.content_type, 
            'Content-Range' => "bytes #{start_offset}-#{end_offset}/#{media.length}" },
          :body => chunk)
        return process_result(@result)
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
        return @result.status == 404 || @result.status == 410
      end
      
      ##
      # Get the last saved range from the server in case an error occurred 
      # and the offset is not known.
      #
      # @param [Google::APIClient] api_client
      #   API Client instance to use for sending
      def resync_range(api_client)
        r = api_client.execute(
          :uri => self.location,
          :http_method => :put,
          :headers => { 
            'Content-Length' => "0", 
            'Content-Range' => "bytes */#{media.length}" })
        return process_result(r)
      end
      
      ##
      # Check the result from the server, updating the offset and/or location
      # if available.
      #
      # @param [Google::APIClient::Result] r
      #  Result of a chunk upload or range query
      def process_result(result)
        case result.status
        when 200...299
          @complete = true
          if @api_method
            # Inject the original API method so data is parsed correctly
            result.reference.api_method = @api_method
          end
          return result
        when 308
          range = result.headers['range']
          if range
            @offset = range.scan(/\d+/).collect{|x| Integer(x)}.last + 1
          end
          if result.headers['location']
            self.location = result.headers['location']
          end
        when 500...599
          # Invalidate the offset to mark it needs to be queried on the
          # next request
          @offset = nil
        end
        return nil
      end
      
    end
  end
end