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
require 'multi_json'
require 'google/inflection'
require 'google/api_client/discovery/resource'
require 'google/api_client/discovery/method'
require 'google/api_client/discovery/media'

module Google
  class APIClient
    ##
    # A service that has been described by a discovery document.
    class API

      ##
      # Creates a description of a particular version of a service.
      #
      # @param [String] document_base
      #   Base URI for the service
      # @param [Hash] discovery_document
      #   The section of the discovery document that applies to this service
      #   version.
      #
      # @return [Google::APIClient::API] The constructed service object.
      def initialize(document_base, discovery_document)
        @document_base = Addressable::URI.parse(document_base)
        @discovery_document = discovery_document
        metaclass = (class << self; self; end)
        self.discovered_resources.each do |resource|
          method_name = Google::INFLECTOR.underscore(resource.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { resource }
          end
        end
        self.discovered_methods.each do |method|
          method_name = Google::INFLECTOR.underscore(method.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { method }
          end
        end
      end
      
      # @return [String] unparsed discovery document for the API
      attr_reader :discovery_document

      ##
      # Returns the id of the service.
      #
      # @return [String] The service id.
      def id
        return (
          @discovery_document['id'] ||
          "#{self.name}:#{self.version}"
        )
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
      # Returns a human-readable title for the API.
      #
      # @return [Hash] The API title.
      def title
        return @discovery_document['title']
      end

      ##
      # Returns a human-readable description of the API.
      #
      # @return [Hash] The API description.
      def description
        return @discovery_document['description']
      end

      ##
      # Returns a URI for the API documentation.
      #
      # @return [Hash] The API documentation.
      def documentation
        return Addressable::URI.parse(@discovery_document['documentationLink'])
      end

      ##
      # Returns true if this is the preferred version of this API.
      #
      # @return [TrueClass, FalseClass]
      #   Whether or not this is the preferred version of this API.
      def preferred
        return !!@discovery_document['preferred']
      end

      ##
      # Returns the list of API features.
      #
      # @return [Array]
      #   The features supported by this API.
      def features
        return @discovery_document['features'] || []
      end

      ##
      # Returns true if this API uses a data wrapper.
      #
      # @return [TrueClass, FalseClass]
      #   Whether or not this API uses a data wrapper.
      def data_wrapper?
        return self.features.include?('dataWrapper')
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
            self.document_base.join(Addressable::URI.parse(@discovery_document['basePath']))
          ).normalize
        else
          return nil
        end
      end

      ##
      # Updates the hierarchy of resources and methods with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_method_base
      #   The new base URI to use for the service.
      def method_base=(new_method_base)
        @method_base = Addressable::URI.parse(new_method_base)
        self.discovered_resources.each do |resource|
          resource.method_base = @method_base
        end
        self.discovered_methods.each do |method|
          method.method_base = @method_base
        end
      end

      ##
      # Returns the base URI for batch calls to this service.
      #
      # @return [Addressable::URI] The base URI that methods are joined to.
      def batch_path
        if @discovery_document['batchPath']
          return @batch_path ||= (
            self.document_base.join(Addressable::URI.parse('/' +
                @discovery_document['batchPath']))
          ).normalize
        else
          return nil
        end
      end

      ##
      # A list of schemas available for this version of the API.
      #
      # @return [Hash] A list of {Google::APIClient::Schema} objects.
      def schemas
        return @schemas ||= (
          (@discovery_document['schemas'] || []).inject({}) do |accu, (k, v)|
            accu[k] = Google::APIClient::Schema.parse(self, v)
            accu
          end
        )
      end

      ##
      # Returns a schema for a kind value.
      #
      # @return [Google::APIClient::Schema] The associated Schema object.
      def schema_for_kind(kind)
        api_name, schema_name = kind.split('#', 2)
        if api_name != self.name
          raise ArgumentError,
            "The kind does not match this API. " +
            "Expected '#{self.name}', got '#{api_name}'."
        end
        for k, v in self.schemas
          return v if k.downcase == schema_name.downcase
        end
        return nil
      end

      ##
      # A list of resources available at the root level of this version of the
      # API.
      #
      # @return [Array] A list of {Google::APIClient::Resource} objects.
      def discovered_resources
        return @discovered_resources ||= (
          (@discovery_document['resources'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Resource.new(
              self, self.method_base, k, v
            )
            accu
          end
        )
      end

      ##
      # A list of methods available at the root level of this version of the
      # API.
      #
      # @return [Array] A list of {Google::APIClient::Method} objects.
      def discovered_methods
        return @discovered_methods ||= (
          (@discovery_document['methods'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Method.new(self, self.method_base, k, v)
            accu
          end
        )
      end

      ##
      # Allows deep inspection of the discovery document.
      def [](key)
        return @discovery_document[key]
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
          self.discovered_methods.each do |method|
            methods_hash[method.id] = method
          end
          self.discovered_resources.each do |resource|
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
      
      ##
      # Marshalling support - serialize the API to a string (doc base + original 
      # discovery document).
      def _dump(level)
        MultiJson.dump([@document_base.to_s, @discovery_document])
      end
      
      ##
      # Marshalling support - Restore an API instance from serialized form
      def self._load(obj)
        new(*MultiJson.load(obj)) 
      end

    end
  end
end
