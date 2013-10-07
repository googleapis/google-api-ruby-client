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

require 'google/api_client/service/result'
require 'google/api_client/batch'

module Google
  class APIClient
    class Service

      ##
      # Helper class to contain the result of an individual batched call.
      #
      class BatchedCallResult < Result
        # @return [Fixnum] Index of the call
        def call_index
          return @base_result.response.call_id.to_i - 1
        end
      end

      ##
      #
      #
      class BatchRequest
        ##
        # Creates a new batch request.
        # This class shouldn't be instantiated directly, but rather through
        # Service.batch.
        #
        # @param [Array] calls
        #   List of Google::APIClient::Service::Request to be made.
        # @param [Proc] block
        #   Callback for every call's response. Won't be called if a call
        #   defined a callback of its own.
        #
        # @yield [Google::APIClient::Service::Result]
        #   block to be called when result ready
        def initialize(service, calls, &block)
          @service = service
          @base_batch = Google::APIClient::BatchRequest.new
          @global_callback = block if block_given?

          if calls && calls.length > 0
            calls.each do |call|
              add(call)
            end
          end
        end

        ##
        # Add a new call to the batch request.
        #
        # @param [Google::APIClient::Service::Request] call
        #   the call to be added.
        # @param [Proc] block
        #   callback for this call's response.
        #
        # @return [Google::APIClient::Service::BatchRequest]
        #   the BatchRequest, for chaining
        #
        # @yield [Google::APIClient::Service::Result]
        #   block to be called when result ready
        def add(call, &block)
          if !block_given? && @global_callback.nil?
            raise BatchError, 'Request needs a block'
          end
          callback = block || @global_callback
          base_call = {
            :api_method => call.method,
            :parameters => call.parameters
          }
          @base_batch.add(base_call) do |base_result|
            result = Google::APIClient::Service::BatchedCallResult.new(
                call, base_result)
            callback.call(result)
          end
          return self
        end

        ##
        # Executes the batch request.
        def execute
          @service.execute(self)
        end

        attr_reader :base_batch

      end

    end
  end
end
