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
    # This class wraps a result returned by an API call.
    class Result
      def initialize(reference, request, response)
        @reference = reference
        @request = request
        @response = response
      end

      attr_reader :reference

      attr_reader :request

      attr_reader :response

      def status
        return @response.status
      end

      def headers
        return @response.headers
      end

      def body
        return @response.body
      end

      def resumable_upload
        @media_upload ||= Google::APIClient::ResumableUpload.new(self, reference.media, self.headers['location'])
      end
      
      def media_type
        _, content_type = self.headers.detect do |h, v|
          h.downcase == 'Content-Type'.downcase
        end
        content_type[/^([^;]*);?.*$/, 1].strip.downcase
      end
      
      def error?
        return self.response.status >= 400
      end

      def success?
        return !self.error?
      end
      
      def error_message
        if self.data?
          if self.data.respond_to?(:error) &&
             self.data.error.respond_to?(:message)
            # You're going to get a terrible error message if the response isn't
            # parsed successfully as an error.
            return self.data.error.message
          elsif self.data['error'] && self.data['error']['message']
            return self.data['error']['message']
          end
        end
        return self.body
      end
      
      def data?
        self.media_type == 'application/json'
      end
      
      def data
        return @data ||= (begin
          media_type = self.media_type
          data = self.body
          case media_type
          when 'application/json'
            data = MultiJson.load(data)
            # Strip data wrapper, if present
            data = data['data'] if data.has_key?('data')
          else
            raise ArgumentError,
              "Content-Type not supported for parsing: #{media_type}"
          end
          if @reference.api_method && @reference.api_method.response_schema
            # Automatically parse using the schema designated for the
            # response of this API method.
            data = @reference.api_method.response_schema.new(data)
            data
          else
            # Otherwise, return the raw unparsed value.
            # This value must be indexable like a Hash.
            data
          end
        end)
      end

      def pagination_type
        return :token
      end

      def page_token_param
        return "pageToken"
      end

      def next_page_token
        if self.data.respond_to?(:next_page_token)
          return self.data.next_page_token
        elsif self.data.respond_to?(:[])
          return self.data["nextPageToken"]
        else
          raise TypeError, "Data object did not respond to #next_page_token."
        end
      end

      def next_page
        merged_parameters = Hash[self.reference.parameters].merge({
          self.page_token_param => self.next_page_token
        })
        # Because References can be coerced to Hashes, we can merge them,
        # preserving all context except the API method parameters that we're
        # using for pagination.
        return Google::APIClient::Reference.new(
          Hash[self.reference].merge(:parameters => merged_parameters)
        )
      end

      def prev_page_token
        if self.data.respond_to?(:prev_page_token)
          return self.data.prev_page_token
        elsif self.data.respond_to?(:[])
          return self.data["prevPageToken"]
        else
          raise TypeError, "Data object did not respond to #next_page_token."
        end
      end

      def prev_page
        merged_parameters = Hash[self.reference.parameters].merge({
          self.page_token_param => self.prev_page_token
        })
        # Because References can be coerced to Hashes, we can merge them,
        # preserving all context except the API method parameters that we're
        # using for pagination.
        return Google::APIClient::Reference.new(
          Hash[self.reference].merge(:parameters => merged_parameters)
        )
      end
    end
  end
end
