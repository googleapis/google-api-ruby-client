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


require 'addressable/uri'
require 'addressable/template'

require 'google/api_client/errors'


module Google
  class APIClient
    ##
    # Media upload elements for discovered methods
    class MediaUpload

      ##
      # Creates a description of a particular method.
      #
      # @param [Google::APIClient::API] api
      #    Base discovery document for the API
      # @param [Addressable::URI] method_base
      #   The base URI for the service.
      # @param [Hash] discovery_document
      #   The media upload section of the discovery document.
      #
      # @return [Google::APIClient::Method] The constructed method object.
      def initialize(api, method_base, discovery_document)
        @api = api
        @method_base = method_base
        @discovery_document = discovery_document
      end

      ##
      # List of acceptable mime types
      #
      # @return [Array]
      #   List of acceptable mime types for uploaded content
      def accepted_types
        @discovery_document['accept']
      end

      ##
      # Maximum size of an uplad
      # TODO: Parse & convert to numeric value
      #
      # @return [String]
      def max_size
        @discovery_document['maxSize']
      end

      ##
      # Returns the URI template for the method.  A parameter list can be
      # used to expand this into a URI.
      #
      # @return [Addressable::Template] The URI template.
      def uri_template
        return @uri_template ||= Addressable::Template.new(
          @api.method_base.join(Addressable::URI.parse(@discovery_document['protocols']['simple']['path']))
        )
      end

    end

  end
end
