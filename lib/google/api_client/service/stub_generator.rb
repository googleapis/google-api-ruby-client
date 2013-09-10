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
      # Auxiliary mixin to generate resource and method stubs.
      # Used by the Service and Service::Resource classes to generate both
      # top-level and nested resources and methods.
      module StubGenerator
        def generate_call_stubs(service, root)
          metaclass = (class << self; self; end)

          # Handle resources.
          root.discovered_resources.each do |resource|
            method_name = Google::INFLECTOR.underscore(resource.name).to_sym
            if !self.respond_to?(method_name)
              metaclass.send(:define_method, method_name) do
                Google::APIClient::Service::Resource.new(service, resource)
              end
            end
          end

          # Handle methods.
          root.discovered_methods.each do |method|
            method_name = Google::INFLECTOR.underscore(method.name).to_sym
            if !self.respond_to?(method_name)
              metaclass.send(:define_method, method_name) do |*args|
                if args.length > 1
                  raise ArgumentError,
                    "wrong number of arguments (#{args.length} for 1)"
                elsif !args.first.respond_to?(:to_hash) && !args.first.nil?
                  raise ArgumentError,
                    "expected parameter Hash, got #{args.first.class}"
                else
                  return Google::APIClient::Service::Request.new(
                    service, method, args.first
                  )
                end
              end
            end
          end
        end
      end
    end
  end
end
