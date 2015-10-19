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

require 'hurley'

module Google
  module Apis
    module Core
      # Part of a multipart request for holding JSON data
      #
      # @private
      class JsonPart
        include Hurley::Multipart::Part

        # @return [Fixnum]
        #   Length of part
        attr_reader :length

        # @param [String] boundary
        #   Multipart boundary
        # @param [String] value
        #   JSON content
        def initialize(boundary, value, header = {})
          @part = build_part(boundary, value)
          @length = @part.bytesize
          @io = StringIO.new(@part)
        end

        private

        # Format the part
        #
        # @param [String] boundary
        #   Multipart boundary
        # @param [String] value
        #   JSON content
        # @return [String]
        def build_part(boundary, value)
          part = ''
          part << "--#{boundary}\r\n"
          part << "Content-Type: application/json\r\n"
          part << "\r\n"
          part << "#{value}\r\n"
        end
      end

      # Part of a multipart request for holding arbitrary content. Modified
      # from Hurley::Multipart::FilePart to remove Content-Disposition
      #
      # @private
      class FilePart
        include Hurley::Multipart::Part

        # @return [Fixnum]
        #   Length of part
        attr_reader :length

        # @param [String] boundary
        #   Multipart boundary
        # @param [Google::Apis::Core::UploadIO] io
        #   IO stream
        # @param [Hash] header
        #   Additional headers
        def initialize(boundary, io, header = {})
          file_length = io.respond_to?(:length) ? io.length : File.size(io.local_path)

          @head = build_head(boundary, io.content_type, file_length,
                             io.respond_to?(:opts) ? io.opts.merge(header) : header)

          @length = @head.bytesize + file_length + FOOT.length
          @io = Hurley::CompositeReadIO.new(@length, StringIO.new(@head), io, StringIO.new(FOOT))
        end

        private

        # Construct the header for the part
        #
        # @param [String] boundary
        #  Multipart boundary
        # @param [String] type
        #  Content type for the part
        # @param [Fixnum] content_len
        #  Length of the part
        # @param [Hash] header
        #  Headers for the part
        def build_head(boundary, type, content_len, header)
          content_id = ''
          if header[:content_id]
            content_id = sprintf(CID_FORMAT, header[:content_id])
          end
          sprintf(HEAD_FORMAT,
                  boundary,
                  content_len.to_i,
                  content_id,
                  header[:content_type] || type,
                  header[:content_transfer_encoding] || DEFAULT_TR_ENCODING)
        end

        DEFAULT_TR_ENCODING = 'binary'.freeze
        FOOT = "\r\n".freeze
        CID_FORMAT = "Content-ID: %s\r\n"
        HEAD_FORMAT = <<-END
--%s\r
Content-Length: %d\r
%sContent-Type: %s\r
Content-Transfer-Encoding: %s\r
\r
        END
      end

      # Helper for building multipart requests
      class Multipart
        MULTIPART_RELATED = 'multipart/related'
        DEFAULT_BOUNDARY = 'RubyApiClientMultiPart'

        # @return [String]
        #  Content type header
        attr_reader :content_type

        # @param [String] content_type
        #  Content type for the multipart request
        # @param [String] boundary
        #  Part delimiter

        def initialize(content_type: MULTIPART_RELATED, boundary: nil)
          @parts = []
          @boundary = boundary || DEFAULT_BOUNDARY
          @content_type = "#{content_type}; boundary=#{boundary}"
        end

        # Append JSON data part
        #
        # @param [String] body
        #   JSON text
        # @param [String] content_id
        #   Optional unique ID of this part
        # @return [self]
        def add_json(body, content_id: nil)
          header = { :content_id => content_id }
          @parts << Google::Apis::Core::JsonPart.new(@boundary, body, header)
          self
        end

        # Append arbitrary data as a part
        #
        # @param [Google::Apis::Core::UploadIO] upload_io
        #   IO stream
        # @param [String] content_id
        #   Optional unique ID of this part
        # @return [self]
        def add_upload(upload_io, content_id: nil)
          header = { :content_id => content_id }
          @parts << Google::Apis::Core::FilePart.new(@boundary,
                                                     upload_io,
                                                     header)
          self
        end

        # Assemble the multipart requests
        #
        # @return [IO]
        #  IO stream
        def assemble
          @parts << Hurley::Multipart::EpiloguePart.new(@boundary)
          ios = []
          len = 0
          @parts.each do |part|
            len += part.length
            ios << part.to_io
          end
          Hurley::CompositeReadIO.new(len, *ios)
        end
      end
    end
  end
end
