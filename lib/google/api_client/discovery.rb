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

require 'json'
require 'addressable/uri'
require 'addressable/template'
require 'extlib/inflection'

module Google
  class APIClient
    ##
    # An exception that is raised if a method is called with missing or
    # invalid parameter values.
    class ValidationError < StandardError
    end

    ##
    # A service that has been described by a discovery document.
    class Service

      ##
      # Creates a description of a particular version of a service.
      #
      # @param [String] service_name
      #   The identifier for the service.  Note that while this frequently
      #   matches the first segment of all of the service's RPC names, this
      #   should not be assumed.  There is no requirement that these match.
      # @param [String] service_version
      #   The identifier for the service version.
      # @param [Hash] service_description
      #   The section of the discovery document that applies to this service
      #   version.
      #
      # @return [Google::APIClient::Service] The constructed service object.
      def initialize(service_name, service_version, service_description)
        @name = service_name
        @version = service_version
        @description = service_description
        metaclass = (class <<self; self; end)
        self.resources.each do |resource|
          method_name = Extlib::Inflection.underscore(resource.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { resource }
          end
        end
        self.methods.each do |method|
          method_name = Extlib::Inflection.underscore(method.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { method }
          end
        end
      end

      ##
      # Returns the identifier for the service.
      #
      # @return [String] The service identifier.
      attr_reader :name

      ##
      # Returns the version of the service.
      #
      # @return [String] The service version.
      attr_reader :version

      ##
      # Returns the parsed section of the discovery document that applies to
      # this version of the service.
      #
      # @return [Hash] The service description.
      attr_reader :description

      ##
      # Returns the base URI for this version of the service.
      #
      # @return [Addressable::URI] The base URI that methods are joined to.
      def base
        return @base ||= Addressable::URI.parse(self.description['baseUrl'])
      end

      ##
      # Updates the hierarchy of resources and methods with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_base
      #   The new base URI to use for the service.
      def base=(new_base)
        @base = Addressable::URI.parse(new_base)
        self.resources.each do |resource|
          resource.base = @base
        end
        self.methods.each do |method|
          method.base = @base
        end
      end

      ##
      # A list of resources available at the root level of this version of the
      # service.
      #
      # @return [Array] A list of {Google::APIClient::Resource} objects.
      def resources
        return @resources ||= (
          (self.description['resources'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Resource.new(self.base, k, v)
            accu
          end
        )
      end

      ##
      # A list of methods available at the root level of this version of the
      # service.
      #
      # @return [Array] A list of {Google::APIClient::Method} objects.
      def methods
        return @methods ||= (
          (self.description['methods'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Method.new(self.base, k, v)
            accu
          end
        )
      end

      ##
      # Converts the service to a flat mapping of RPC names and method objects.
      #
      # @return [Hash] All methods available on the service.
      #
      # @example
      #   # Discover available methods
      #   method_names = client.discovered_service('buzz').to_h.keys
      def to_h
        return @hash ||= (begin
          methods_hash = {}
          self.methods.each do |method|
            methods_hash[method.rpc_name] = method
          end
          self.resources.each do |resource|
            methods_hash.merge!(resource.to_h)
          end
          methods_hash
        end)
      end

      ##
      # Compares two versions of a service.
      #
      # @param [Object] other The service to compare.
      #
      # @return [Integer]
      #   <code>-1</code> if the service is older than <code>other</code>.
      #   <code>0</code> if the service is the same as <code>other</code>.
      #   <code>1</code> if the service is newer than <code>other</code>.
      #   <code>nil</code> if the service cannot be compared to
      #   <code>other</code>.
      def <=>(other)
        # We can only compare versions of the same service
        if other.kind_of?(self.class) && self.name == other.name
          split_version = lambda do |version|
            dotted_version = version[/^v?(\d+(.\d+)*)-?(.*?)?$/, 1]
            suffix = version[/^v?(\d+(.\d+)*)-?(.*?)?$/, 3]
            if dotted_version && suffix
              [dotted_version.split('.').map { |v| v.to_i }, suffix]
            else
              [[-1], version]
            end
          end
          self_sortable, self_suffix = split_version.call(self.version)
          other_sortable, other_suffix = split_version.call(other.version)
          result = self_sortable <=> other_sortable
          if result != 0
            return result
          # If the dotted versions are equal, check the suffix.
          # An omitted suffix should be sorted after an included suffix.
          elsif self_suffix == ''
            return 1
          elsif other_suffix == ''
            return -1
          else
            return self_suffix <=> other_suffix
          end
        else
          return nil
        end
      end

      ##
      # Returns a <code>String</code> representation of the service's state.
      #
      # @return [String] The service's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x NAME:%s>", self.class.to_s, self.object_id, self.name
        )
      end
    end

    ##
    # A resource that has been described by a discovery document.
    class Resource

      ##
      # Creates a description of a particular version of a resource.
      #
      # @param [Addressable::URI] base
      #   The base URI for the service.
      # @param [String] resource_name
      #   The identifier for the resource.
      # @param [Hash] resource_description
      #   The section of the discovery document that applies to this resource.
      #
      # @return [Google::APIClient::Resource] The constructed resource object.
      def initialize(base, resource_name, resource_description)
        @base = base
        @name = resource_name
        @description = resource_description
        metaclass = (class <<self; self; end)
        self.resources.each do |resource|
          method_name = Extlib::Inflection.underscore(resource.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { resource }
          end
        end
        self.methods.each do |method|
          method_name = Extlib::Inflection.underscore(method.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { method }
          end
        end
      end

      ##
      # Returns the identifier for the resource.
      #
      # @return [String] The resource identifier.
      attr_reader :name

      ##
      # Returns the parsed section of the discovery document that applies to
      # this resource.
      #
      # @return [Hash] The resource description.
      attr_reader :description

      ##
      # Returns the base URI for this resource.
      #
      # @return [Addressable::URI] The base URI that methods are joined to.
      attr_reader :base

      ##
      # Updates the hierarchy of resources and methods with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_base
      #   The new base URI to use for the resource.
      def base=(new_base)
        @base = Addressable::URI.parse(new_base)
        self.resources.each do |resource|
          resource.base = @base
        end
        self.methods.each do |method|
          method.base = @base
        end
      end

      ##
      # A list of sub-resources available on this resource.
      #
      # @return [Array] A list of {Google::APIClient::Resource} objects.
      def resources
        return @resources ||= (
          (self.description['resources'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Resource.new(self.base, k, v)
            accu
          end
        )
      end

      ##
      # A list of methods available on this resource.
      #
      # @return [Array] A list of {Google::APIClient::Method} objects.
      def methods
        return @methods ||= (
          (self.description['methods'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Method.new(self.base, k, v)
            accu
          end
        )
      end

      ##
      # Converts the resource to a flat mapping of RPC names and method
      # objects.
      #
      # @return [Hash] All methods available on the resource.
      def to_h
        return @hash ||= (begin
          methods_hash = {}
          self.methods.each do |method|
            methods_hash[method.rpc_name] = method
          end
          self.resources.each do |resource|
            methods_hash.merge!(resource.to_h)
          end
          methods_hash
        end)
      end

      ##
      # Returns a <code>String</code> representation of the resource's state.
      #
      # @return [String] The resource's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x NAME:%s>", self.class.to_s, self.object_id, self.name
        )
      end
    end

    ##
    # A method that has been described by a discovery document.
    class Method

      ##
      # Creates a description of a particular method.
      #
      # @param [Addressable::URI] base
      #   The base URI for the service.
      # @param [String] method_name
      #   The identifier for the method.
      # @param [Hash] method_description
      #   The section of the discovery document that applies to this method.
      #
      # @return [Google::APIClient::Method] The constructed method object.
      def initialize(base, method_name, method_description)
        @base = base
        @name = method_name
        @description = method_description
      end

      ##
      # Returns the identifier for the method.
      #
      # @return [String] The method identifier.
      attr_reader :name

      ##
      # Returns the parsed section of the discovery document that applies to
      # this method.
      #
      # @return [Hash] The method description.
      attr_reader :description

      ##
      # Returns the base URI for the method.
      #
      # @return [Addressable::URI]
      #   The base URI that this method will be joined to.
      attr_reader :base

      ##
      # Updates the method with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_base
      #   The new base URI to use for the method.
      def base=(new_base)
        @base = Addressable::URI.parse(new_base)
        @uri_template = nil
      end

      ##
      # Returns the RPC name for the method.
      #
      # @return [String] The RPC name.
      def rpc_name
        return self.description['rpcName']
      end

      ##
      # Returns the URI template for the method.  A parameter list can be
      # used to expand this into a URI.
      #
      # @return [Addressable::Template] The URI template.
      def uri_template
        # TODO(bobaman) We shouldn't be calling #to_s here, this should be
        # a join operation on a URI, but we have to treat these as Strings
        # because of the way the discovery document provides the URIs.
        # This should be fixed soon.
        return @uri_template ||=
          Addressable::Template.new(base.to_s + self.description['pathUrl'])
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
          # Is a Hash or an Array a better return type?  Do we ever need to
          # worry about the same parameter being sent twice with different
          # values?
          parameters = parameters.inject({}) do |accu, (k, v)|
            k = k.to_s if k.kind_of?(Symbol)
            k = k.to_str if k.respond_to?(:to_str)
            unless k.kind_of?(String)
              raise TypeError, "Expected String, got #{k.class}."
            end
            accu[k] = v
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
      # @param [Hash, Array] parameters
      #   The parameter list to use.
      #
      # @return [Addressable::URI] The URI after expansion.
      def generate_uri(parameters={})
        parameters = self.normalize_parameters(parameters)
        self.validate_parameters(parameters)
        template_variables = self.uri_template.variables
        uri = self.uri_template.expand(parameters)
        query_parameters = parameters.reject do |k, v|
          template_variables.include?(k)
        end
        if query_parameters.size > 0
          uri.query_values = (uri.query_values || {}).merge(query_parameters)
        end
        # Normalization is necessary because of undesirable percent-escaping
        # during URI template expansion
        return uri.normalize
      end

      ##
      # Generates an HTTP request for this method.
      #
      # @param [Hash, Array] parameters
      #   The parameters to send.
      # @param [String, StringIO] body The body for the HTTP request.
      # @param [Hash, Array] headers The HTTP headers for the request.
      #
      # @return [Array] The generated HTTP request.
      def generate_request(parameters={}, body='', headers=[])
        if body.respond_to?(:string)
          body = body.string
        elsif body.respond_to?(:to_str)
          body = body.to_str
        else
          raise TypeError, "Expected String or StringIO, got #{body.class}."
        end
        if !headers.kind_of?(Array) && !headers.kind_of?(Hash)
          raise TypeError, "Expected Hash or Array, got #{headers.class}."
        end
        method = self.description['httpMethod'] || 'GET'
        uri = self.generate_uri(parameters)
        headers = headers.to_a if headers.kind_of?(Hash)
        return [method, uri.to_str, headers, [body]]
      end

      ##
      # Returns a <code>Hash</code> of the parameter descriptions for
      # this method.
      #
      # @return [Hash] The parameter descriptions.
      def parameter_descriptions
        @parameter_descriptions ||= (
          self.description['parameters'] || {}
        ).inject({}) { |h,(k,v)| h[k]=v; h }
      end

      ##
      # Returns an <code>Array</code> of the parameters for this method.
      #
      # @return [Array] The parameters.
      def parameters
        @parameters ||= ((
          self.description['parameters'] || {}
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
      # @param [Hash, Array] parameters
      #   The parameters to verify.
      #
      # @return [NilClass] <code>nil</code> if validation passes.
      def validate_parameters(parameters={})
        parameters = self.normalize_parameters(parameters)
        required_variables = ((self.parameter_descriptions.select do |k, v|
          v['required']
        end).inject({}) { |h,(k,v)| h[k]=v; h }).keys
        missing_variables = required_variables - parameters.keys
        if missing_variables.size > 0
          raise ArgumentError,
            "Missing required parameters: #{missing_variables.join(', ')}."
        end
        parameters.each do |k, v|
          if self.parameter_descriptions[k]
            pattern = self.parameter_descriptions[k]['pattern']
            if pattern
              regexp = Regexp.new("^#{pattern}$")
              if v !~ regexp
                raise ArgumentError,
                  "Parameter '#{k}' has an invalid value: #{v}. " +
                  "Must match: /^#{pattern}$/."
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
          "#<%s:%#0x NAME:%s>", self.class.to_s, self.object_id, self.rpc_name
        )
      end
    end
  end
end
