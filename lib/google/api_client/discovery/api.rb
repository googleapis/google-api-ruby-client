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

require 'google/inflection'
require 'google/api_client/discovery/resource'
require 'google/api_client/discovery/method'

module Google
  class APIClient
    ##
    # A service that has been described by a discovery document.
    class API

      ##
      # Creates a description of a particular version of a service.
      #
      # @param [String] api
      #   The identifier for the service.  Note that while this frequently
      #   matches the first segment of all of the service's RPC names, this
      #   should not be assumed.  There is no requirement that these match.
      # @param [String] version
      #   The identifier for the service version.
      # @param [Hash] api_description
      #   The section of the discovery document that applies to this service
      #   version.
      #
      # @return [Google::APIClient::API] The constructed service object.
      def initialize(document_base, discovery_document)
        @document_base = Addressable::URI.parse(document_base)
        @discovery_document = discovery_document
        metaclass = (class <<self; self; end)
        self.resources.each do |resource|
          method_name = Google::INFLECTOR.underscore(resource.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { resource }
          end
        end
        self.methods.each do |method|
          method_name = Google::INFLECTOR.underscore(method.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { method }
          end
        end
      end

      ##
      # Returns the id of the service.
      #
      # @return [String] The service id.
      def id
        return @discovery_document['id']
      end

      ##
      # Returns the identifier for the service.
      #
      # @return [String] The service identifier.
      def name
        return @discovery_document['name']
      end

      ##
      # Returns the version of the service.
      #
      # @return [String] The service version.
      def version
        return @discovery_document['version']
      end

      ##
      # Returns the parsed section of the discovery document that applies to
      # this version of the service.
      #
      # @return [Hash] The service description.
      def description
        return @discovery_document['description']
      end

      ##
      # Returns true if this is the preferred version of this API.
      #
      # @return [TrueClass, FalseClass]
      #   Whether or not this is the preferred version of this API.
      def preferred
        return @discovery_document['preferred']
      end

      ##
      # Returns the base URI for the discovery document.
      #
      # @return [Addressable::URI] The base URI.
      attr_reader :document_base

      ##
      # Returns the base URI for this version of the service.
      #
      # @return [Addressable::URI] The base URI that methods are joined to.
      def method_base
        if @discovery_document['basePath']
          return @method_base ||= (
            self.document_base +
            Addressable::URI.parse(@discovery_document['basePath'])
          ).normalize
        else
          return nil
        end
      end

      ##
      # Updates the hierarchy of resources and methods with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_base
      #   The new base URI to use for the service.
      def method_base=(new_method_base)
        @method_base = Addressable::URI.parse(new_method_base)
        self.resources.each do |resource|
          resource.method_base = @method_base
        end
        self.methods.each do |method|
          method.method_base = @method_base
        end
      end

      ##
      # A list of resources available at the root level of this version of the
      # service.
      #
      # @return [Array] A list of {Google::APIClient::Resource} objects.
      def resources
        return @resources ||= (
          (@discovery_document['resources'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Resource.new(self.method_base, k, v)
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
          (@discovery_document['methods'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Method.new(self.method_base, k, v)
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
      #   method_names = client.discovered_api('buzz').to_h.keys
      def to_h
        return @hash ||= (begin
          methods_hash = {}
          self.methods.each do |method|
            methods_hash[method.id] = method
          end
          self.resources.each do |resource|
            methods_hash.merge!(resource.to_h)
          end
          methods_hash
        end)
      end

      ##
      # Returns a <code>String</code> representation of the service's state.
      #
      # @return [String] The service's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x ID:%s>", self.class.to_s, self.object_id, self.id
        )
      end
    end
  end
end
