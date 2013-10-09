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
      # Handles an API request.
      # This contains a full definition of the request to be made (including
      # method name, parameters, body and media). The remote API call can be
      # invoked with execute().
      class Request
        ##
        # Build a request.
        # This class should not be directly instantiated in user code;
        # instantiation is handled by the stub methods created on Service and
        # Resource objects.
        #
        # @param [Google::APIClient::Service] service
        #   The parent Service instance that will execute the request.
        # @param [Google::APIClient::Method] method
        #   The Method instance that describes the API method invoked by the
        #   request.
        # @param [Hash] parameters
        #   A Hash of parameter names and values to be sent in the API call.
        def initialize(service, method, parameters)
          @service = service
          @method = method
          @parameters = parameters
          @body = nil
          @media = nil

          metaclass = (class << self; self; end)

          # If applicable, add "body", "body=" and resource-named methods for
          # retrieving and setting the HTTP body for this request.
          # Examples of setting the body for files.insert in the Drive API:
          #   request.body = object
          #   request.execute
          #  OR
          #   request.file = object
          #   request.execute
          #  OR
          #   request.body(object).execute
          #  OR
          #   request.file(object).execute
          # Examples of retrieving the body for files.insert in the Drive API:
          #   object = request.body
          #  OR
          #   object = request.file
          if method.request_schema
            body_name = method.request_schema.data['id'].dup
            body_name[0] = body_name[0].chr.downcase
            body_name_equals = (body_name + '=').to_sym
            body_name = body_name.to_sym

            metaclass.send(:define_method, :body) do |*args|
              if args.length == 1
                @body = args.first
                return self
              elsif args.length == 0
                return @body
              else
                raise ArgumentError,
                  "wrong number of arguments (#{args.length}; expecting 0 or 1)"
              end
            end

            metaclass.send(:define_method, :body=) do |body|
              @body = body
            end

            metaclass.send(:alias_method, body_name, :body)
            metaclass.send(:alias_method, body_name_equals, :body=)
          end

          # If applicable, add "media" and "media=" for retrieving and setting
          # the media object for this request.
          # Examples of setting the media object:
          #   request.media = object
          #   request.execute
          #  OR
          #   request.media(object).execute
          # Example of retrieving the media object:
          #   object = request.media
          if method.media_upload
            metaclass.send(:define_method, :media) do |*args|
              if args.length == 1
                @media = args.first
                return self
              elsif args.length == 0
                return @media
              else
                raise ArgumentError,
                  "wrong number of arguments (#{args.length}; expecting 0 or 1)"
              end
            end

            metaclass.send(:define_method, :media=) do |media|
              @media = media
            end
          end
        end

        ##
        # Returns the parent service capable of executing this request.
        #
        # @return [Google::APIClient::Service] The parent service.
        attr_reader :service

        ##
        # Returns the Method instance that describes the API method invoked by
        # the request.
        #
        # @return [Google::APIClient::Method] The API method description.
        attr_reader :method

        ##
        # Contains the Hash of parameter names and values to be sent as the
        # parameters for the API call.
        #
        # @return [Hash] The request parameters.
        attr_accessor :parameters

        ##
        # Executes the request.
        def execute
          @service.execute(self)
        end
      end
    end
  end
end
