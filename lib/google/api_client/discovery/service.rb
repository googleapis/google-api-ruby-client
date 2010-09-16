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

module Google #:nodoc:
  class APIClient #:nodoc:
    class ValidationError < StandardError
    end

    class Service
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

      attr_reader :name, :version, :description

      def base
        return @base ||= Addressable::URI.parse(self.description['baseUrl'])
      end

      def resources
        return @resources ||= (
          (self.description['resources'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Resource.new(self.base, k, v)
            accu
          end
        )
      end

      def methods
        return @methods ||= (
          (self.description['methods'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Method.new(self.base, k, v)
            accu
          end
        )
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

    class Resource
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

      attr_reader :name, :description, :base

      def resources
        return @resources ||= (
          (self.description['resources'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Resource.new(self.base, k, v)
            accu
          end
        )
      end

      def methods
        return @methods ||= (
          (self.description['methods'] || []).inject([]) do |accu, (k, v)|
            accu << ::Google::APIClient::Method.new(self.base, k, v)
            accu
          end
        )
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

    class Method
      def initialize(base, method_name, method_description)
        @base = base
        @name = method_name
        @description = method_description
      end

      attr_reader :name, :description, :base

      def uri_template
        return Addressable::Template.new(base + self.description['pathUrl'])
      end

      def generate_uri(parameters={})
        # Convert keys to Strings when appropriate
        parameters = parameters.inject({}) do |accu, (k, v)|
          k = k.to_s if k.kind_of?(Symbol)
          k = k.to_str if k.respond_to?(:to_str)
          unless k.kind_of?(String)
            raise TypeError, "Expected String, got #{k.class}."
          end
          accu[k] = v
          accu
        end
        template_variables = self.uri_template.variables
        missing_variables = template_variables - parameters.keys
        if missing_variables.size > 0
          raise ArgumentError,
            "Missing required parameters: #{missing_variables.join(', ')}."
        end
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
      # Returns a <code>String</code> representation of the method's state.
      #
      # @return [String] The method's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x NAME:%s>", self.class.to_s, self.object_id, self.name
        )
      end
    end
  end
end
