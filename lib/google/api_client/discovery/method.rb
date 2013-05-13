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
    # A method that has been described by a discovery document.
    class Method

      ##
      # Creates a description of a particular method.
      #
      # @param [Google::APIClient::API] api
      #   The API this method belongs to.
      # @param [Addressable::URI] method_base
      #   The base URI for the service.
      # @param [String] method_name
      #   The identifier for the method.
      # @param [Hash] discovery_document
      #   The section of the discovery document that applies to this method.
      #
      # @return [Google::APIClient::Method] The constructed method object.
      def initialize(api, method_base, method_name, discovery_document)
        @api = api
        @method_base = method_base
        @name = method_name
        @discovery_document = discovery_document
      end

      # @return [String] unparsed discovery document for the method
      attr_reader :discovery_document

      ##
      # Returns the API this method belongs to.
      #
      # @return [Google::APIClient::API] The API this method belongs to.
      attr_reader :api

      ##
      # Returns the identifier for the method.
      #
      # @return [String] The method identifier.
      attr_reader :name

      ##
      # Returns the base URI for the method.
      #
      # @return [Addressable::URI]
      #   The base URI that this method will be joined to.
      attr_reader :method_base

      ##
      # Updates the method with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_method_base
      #   The new base URI to use for the method.
      def method_base=(new_method_base)
        @method_base = Addressable::URI.parse(new_method_base)
        @uri_template = nil
      end

      ##
      # Returns a human-readable description of the method.
      #
      # @return [Hash] The API description.
      def description
        return @discovery_document['description']
      end
      
      ##
      # Returns the method ID.
      #
      # @return [String] The method identifier.
      def id
        return @discovery_document['id']
      end

      ##
      # Returns the HTTP method or 'GET' if none is specified.
      #
      # @return [String] The HTTP method that will be used in the request.
      def http_method
        return @discovery_document['httpMethod'] || 'GET'
      end

      ##
      # Returns the URI template for the method.  A parameter list can be
      # used to expand this into a URI.
      #
      # @return [Addressable::Template] The URI template.
      def uri_template
        return @uri_template ||= Addressable::Template.new(
          self.method_base.join(Addressable::URI.parse(@discovery_document['path']))
        )
      end

      ##
      # Returns media upload information for this method, if supported
      #
      # @return [Google::APIClient::MediaUpload] Description of upload endpoints
      def media_upload
        if @discovery_document['mediaUpload']
          return @media_upload ||= Google::APIClient::MediaUpload.new(self, self.method_base, @discovery_document['mediaUpload'])
        else
          return nil
        end
      end

      ##
      # Returns the Schema object for the method's request, if any.
      #
      # @return [Google::APIClient::Schema] The request schema.
      def request_schema
        if @discovery_document['request']
          schema_name = @discovery_document['request']['$ref']
          return @api.schemas[schema_name]
        else
          return nil
        end
      end

      ##
      # Returns the Schema object for the method's response, if any.
      #
      # @return [Google::APIClient::Schema] The response schema.
      def response_schema
        if @discovery_document['response']
          schema_name = @discovery_document['response']['$ref']
          return @api.schemas[schema_name]
        else
          return nil
        end
      end

      ##
      # Normalizes parameters, converting to the appropriate types.
      #
      # @param [Hash, Array] parameters
      #   The parameters to normalize.
      #
      # @return [Hash] The normalized parameters.
      def normalize_parameters(parameters={})
        # Convert keys to Strings when appropriate
        if parameters.kind_of?(Hash) || parameters.kind_of?(Array)
          # Returning an array since parameters can be repeated (ie, Adsense Management API)
          parameters = parameters.inject([]) do |accu, (k, v)|
            k = k.to_s if k.kind_of?(Symbol)
            k = k.to_str if k.respond_to?(:to_str)
            unless k.kind_of?(String)
              raise TypeError, "Expected String, got #{k.class}."
            end
            accu << [k, v]
            accu
          end
        else
          raise TypeError,
            "Expected Hash or Array, got #{parameters.class}."
        end
        return parameters
      end

      ##
      # Expands the method's URI template using a parameter list.
      #
      # @api private
      # @param [Hash, Array] parameters
      #   The parameter list to use.
      #
      # @return [Addressable::URI] The URI after expansion.
      def generate_uri(parameters={})
        parameters = self.normalize_parameters(parameters)
        
        self.validate_parameters(parameters)
        template_variables = self.uri_template.variables
        upload_type = parameters.assoc('uploadType') || parameters.assoc('upload_type')
        if upload_type
          unless self.media_upload
            raise ArgumentException, "Media upload not supported for this method"
          end
          case upload_type.last
          when 'media', 'multipart', 'resumable'
            uri = self.media_upload.uri_template.expand(parameters)
          else
            raise ArgumentException, "Invalid uploadType '#{upload_type}'"
          end
        else
          uri = self.uri_template.expand(parameters)
        end
        query_parameters = parameters.reject do |k, v|
          template_variables.include?(k)
        end
        # encode all non-template parameters
        params = ""
        unless query_parameters.empty?
          params = "?" + Addressable::URI.form_encode(query_parameters.sort)
        end
        # Normalization is necessary because of undesirable percent-escaping
        # during URI template expansion
        return uri.normalize + params
      end

      ##
      # Generates an HTTP request for this method.
      #
      # @api private
      # @param [Hash, Array] parameters
      #   The parameters to send.
      # @param [String, StringIO] body The body for the HTTP request.
      # @param [Hash, Array] headers The HTTP headers for the request.
      # @option options [Faraday::Connection] :connection
      #   The HTTP connection to use.
      #
      # @return [Array] The generated HTTP request.
      def generate_request(parameters={}, body='', headers={}, options={})
        if !headers.kind_of?(Array) && !headers.kind_of?(Hash)
          raise TypeError, "Expected Hash or Array, got #{headers.class}."
        end
        method = self.http_method.to_s.downcase.to_sym
        uri = self.generate_uri(parameters)
        headers = Faraday::Utils::Headers.new(headers)
        return [method, uri, headers, body]
      end


      ##
      # Returns a <code>Hash</code> of the parameter descriptions for
      # this method.
      #
      # @return [Hash] The parameter descriptions.
      def parameter_descriptions
        @parameter_descriptions ||= (
          @discovery_document['parameters'] || {}
        ).inject({}) { |h,(k,v)| h[k]=v; h }
      end

      ##
      # Returns an <code>Array</code> of the parameters for this method.
      #
      # @return [Array] The parameters.
      def parameters
        @parameters ||= ((
          @discovery_document['parameters'] || {}
        ).inject({}) { |h,(k,v)| h[k]=v; h }).keys
      end

      ##
      # Returns an <code>Array</code> of the required parameters for this
      # method.
      #
      # @return [Array] The required parameters.
      #
      # @example
      #   # A list of all required parameters.
      #   method.required_parameters
      def required_parameters
        @required_parameters ||= ((self.parameter_descriptions.select do |k, v|
          v['required']
        end).inject({}) { |h,(k,v)| h[k]=v; h }).keys
      end

      ##
      # Returns an <code>Array</code> of the optional parameters for this
      # method.
      #
      # @return [Array] The optional parameters.
      #
      # @example
      #   # A list of all optional parameters.
      #   method.optional_parameters
      def optional_parameters
        @optional_parameters ||= ((self.parameter_descriptions.reject do |k, v|
          v['required']
        end).inject({}) { |h,(k,v)| h[k]=v; h }).keys
      end

      ##
      # Verifies that the parameters are valid for this method.  Raises an
      # exception if validation fails.
      #
      # @api private
      # @param [Hash, Array] parameters
      #   The parameters to verify.
      #
      # @return [NilClass] <code>nil</code> if validation passes.
      def validate_parameters(parameters={})
        parameters = self.normalize_parameters(parameters)
        required_variables = ((self.parameter_descriptions.select do |k, v|
          v['required']
        end).inject({}) { |h,(k,v)| h[k]=v; h }).keys
        missing_variables = required_variables - parameters.map { |(k, _)| k }
        if missing_variables.size > 0
          raise ArgumentError,
            "Missing required parameters: #{missing_variables.join(', ')}."
        end
        parameters.each do |k, v|
          # Handle repeated parameters.
          if self.parameter_descriptions[k] &&
              self.parameter_descriptions[k]['repeated'] &&
              v.kind_of?(Array)
            # If this is a repeated parameter and we've got an array as a
            # value, just provide the whole array to the loop below.
            items = v
          else
            # If this is not a repeated parameter, or if it is but we're
            # being given a single value, wrap the value in an array, so that
            # the loop below still works for the single element.
            items = [v]
          end

          items.each do |item|
            if self.parameter_descriptions[k]
              enum = self.parameter_descriptions[k]['enum']
              if enum && !enum.include?(item)
                raise ArgumentError,
                  "Parameter '#{k}' has an invalid value: #{item}. " +
                  "Must be one of #{enum.inspect}."
              end
              pattern = self.parameter_descriptions[k]['pattern']
              if pattern
                regexp = Regexp.new("^#{pattern}$")
                if item !~ regexp
                  raise ArgumentError,
                    "Parameter '#{k}' has an invalid value: #{item}. " +
                    "Must match: /^#{pattern}$/."
                end
              end
            end
          end
        end
        return nil
      end

      ##
      # Returns a <code>String</code> representation of the method's state.
      #
      # @return [String] The method's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x ID:%s>",
          self.class.to_s, self.object_id, self.id
        )
      end
    end
  end
end
