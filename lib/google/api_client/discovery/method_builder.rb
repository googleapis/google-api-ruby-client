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

# Define a BasicObject implementation if one doesn't already exist.
unless defined?(BasicObject)
  class BasicObject
    instance_methods.each do |m|
      if m.to_s !~ /^(?:!=?|==|__.*__|equal\?|instance_(?:eval|exec))$/
        undef_method(m)
      end
    end
  end
end

module Google #:nodoc:
  class APIClient #:nodoc:
    ##
    # A builder class for assembling requests.
    class MethodBuilder < BasicObject
      ##
      # Creates a new {MethodBuilder}.
      #
      # @param [Google::APIClient] client
      #   The client the {MethodBuilder} will use to build requests.
      def initialize(client)
        @segments = []
        @client = client
      end
      
      ##
      # Appends a segment to the builder.
      #
      # @param [String, Symbol, #to_s] segment The segment to append.
      def <<(segment)
        @segments << segment.to_s
      end
      
      ##
      # Returns the assembled segments.  This maps to the <code>rpcName</code>
      # field in the discovery document.
      #
      # @return [String] The RPC name of the method.
      def to_s
        return @segments.join(".")
      end
      alias_method :to_str, :to_s
      
      ##
      # The call method will force the builder to finish assembling segments
      # and build the request.
      #
      # @return [Enumerable]
      def call(*args, &block)
        return @client.build_request(self.to_str, *args, &block)
      end
      
      ##
      # Any methods called on the {MethodBuilder} will cause segments to be
      # added to the list.
      #
      # @return [Enumerable, Google::APIClient::MethodBuilder]
      #   Allows chaining methods to build an endpoint name.  The request
      #   is built when parameters are sent.  If an endpoint does not take
      #   parameters, the {#call} method may be used to terminate the
      #   sequence.
      def method_missing(method, *args, &block)
        self << method
        if !args.empty? || block
          return @client.build_request(self.to_str, *args, &block)
        else
          return self
        end
      end
    end
  end
end
