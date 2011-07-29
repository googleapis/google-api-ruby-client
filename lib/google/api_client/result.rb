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

require 'google/api_client/parsers/json_parser'

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
        return @response[0]
      end

      def headers
        return @response[1]
      end

      def body
        return @body ||= (begin
          response_body = @response[2]
          merged_body = (response_body.inject(StringIO.new) do |accu, chunk|
            accu.write(chunk)
            accu
          end).string
        end)
      end

      def data
        return @data ||= (begin
          _, content_type = self.headers.detect do |h, v|
            h.downcase == 'Content-Type'.downcase
          end
          parser_type =
            Google::APIClient::Parser.match_content_type(content_type)
          parser_type.parse(self.body)
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
