# Copyright 2013 Google Inc.
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
    class Service
      ##
      # Handles an API result.
      # Wraps around the Google::APIClient::Result class, making it easier to
      # handle the result (e.g. pagination) and keeping it in line with the rest
      # of the Service programming interface.
      class Result
        extend Forwardable

        ##
        # Init the result.
        #
        # @param [Google::APIClient::Service::Request] request
        #   The original request
        # @param [Google::APIClient::Result] base_result
        #   The base result to be wrapped
        def initialize(request, base_result)
          @request = request
          @base_result = base_result
        end

        # @!attribute [r] status
        #   @return [Fixnum] HTTP status code
        # @!attribute [r] headers
        #   @return [Hash] HTTP response headers
        # @!attribute [r] body
        #   @return [String] HTTP response body
        def_delegators :@base_result, :status, :headers, :body

        # @return [Google::APIClient::Service::Request] Original request object
        attr_reader :request

        ##
        # Get the content type of the response
        # @!attribute [r] media_type
        # @return [String]
        #  Value of content-type header
        def_delegators :@base_result, :media_type

        ##
        # Check if request failed
        #
        # @!attribute [r] error?
        # @return [TrueClass, FalseClass]
        #   true if result of operation is an error
        def_delegators :@base_result, :error?

        ##
        # Check if request was successful
        #
        # @!attribute [r] success?
        # @return [TrueClass, FalseClass]
        #   true if result of operation was successful
        def_delegators :@base_result, :success?

        ##
        # Extracts error messages from the response body
        #
        # @!attribute [r] error_message
        # @return [String]
        #   error message, if available
        def_delegators :@base_result, :error_message

        ##
        # Check for parsable data in response
        #
        # @!attribute [r] data?
        # @return [TrueClass, FalseClass]
        #   true if body can be parsed
        def_delegators :@base_result, :data?

        ##
        # Return parsed version of the response body.
        #
        # @!attribute [r] data
        # @return [Object, Hash, String]
        #   Object if body parsable from API schema, Hash if JSON, raw body if unable to parse
        def_delegators :@base_result, :data

        ##
        # Pagination scheme used by this request/response
        #
        # @!attribute [r] pagination_type
        # @return [Symbol]
        #  currently always :token
        def_delegators :@base_result, :pagination_type

        ##
        # Name of the field that contains the pagination token
        #
        # @!attribute [r] page_token_param
        # @return [String]
        #  currently always 'pageToken'
        def_delegators :@base_result, :page_token_param

        ##
        # Get the token used for requesting the next page of data
        #
        # @!attribute [r] next_page_token
        # @return [String]
        #   next page tokenx =
        def_delegators :@base_result, :next_page_token

        ##
        # Get the token used for requesting the previous page of data
        #
        # @!attribute [r] prev_page_token
        # @return [String]
        #   previous page token
        def_delegators :@base_result, :prev_page_token

        # @!attribute [r] resumable_upload
        def resumable_upload
          # TODO(sgomes): implement resumable_upload for Service::Result
          raise NotImplementedError
        end

        ##
        # Build a request for fetching the next page of data
        #
        # @return [Google::APIClient::Service::Request]
        #   API request for retrieving next page
        def next_page
          request = @request.clone
          # Make a deep copy of the parameters.
          request.parameters = Marshal.load(Marshal.dump(request.parameters))
          request.parameters[page_token_param] = self.next_page_token
          return request
        end

        ##
        # Build a request for fetching the previous page of data
        #
        # @return [Google::APIClient::Service::Request]
        #   API request for retrieving previous page
        def prev_page
          request = @request.clone
          # Make a deep copy of the parameters.
          request.parameters = Marshal.load(Marshal.dump(request.parameters))
          request.parameters[page_token_param] = self.prev_page_token
          return request
        end
      end
    end
  end
end
