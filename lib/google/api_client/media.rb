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
      #
      # @return [Fixnum]
      #   Length of stream, in bytes
      def length
        io.respond_to?(:length) ? io.length : File.size(local_path)
      end
    end
    
    ##
    # Resumable uploader.
    #
    class ResumableUpload < Request
      # @return [Fixnum] Max bytes to send in a single request
      attr_accessor :chunk_size
  
      ##
      # Creates a new uploader.
      #
      # @param [Hash] options
      #   Request options
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
      # @deprecated Pass the instance to {Google::APIClient#execute} instead
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
      # @deprecated Pass the instance to {Google::APIClient#execute} instead
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
      
      ##
      # Check if upload is resumable. That is, neither complete nor expired
      #
      # @return [TrueClass, FalseClass] True if upload can be resumed
      def resumable?
        return !(self.complete? or self.expired?)
      end
      
      ##
      # Convert to an HTTP request. Returns components in order of method, URI,
      # request headers, and body
      #
      # @api private
      #
      # @return [Array<(Symbol, Addressable::URI, Hash, [#read,#to_str])>]
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
      
      ##
      # Check the result from the server, updating the offset and/or location
      # if available.
      #
      # @api private
      #
      # @param [Faraday::Response] response
      #   HTTP response
      #
      # @return [Google::APIClient::Result]
      #   Processed API response
      def process_http_response(response)
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
      
      ##
      # Hashified verison of the API request
      #
      # @return [Hash]
      def to_hash
        super.merge(:offset => @offset)
      end
      
    end
  end
end