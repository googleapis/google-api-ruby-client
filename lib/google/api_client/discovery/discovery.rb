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

require "json"
require "addressable/template"

module Google #:nodoc:
  class APIClient #:nodoc:
    class Discovery
      ##
      # The default discovery configuration values.  These may be overrided
      # simply by passing in the same key to the constructor.
      DEFAULTS = {
      }
      
      ##
      # A set of default configuration values specific to each service.  These
      # may be overrided simply by passing in the same key to the constructor.
      SERVICE_DEFAULTS = {
      }

      ##
      # Creates a new API discovery handler.
      #
      # @param [Hash] options
      #
      # @return [Google::APIClient::Discovery] The API discovery handler.
      def initialize(options={})
        if options[:service] && SERVICE_DEFAULTS[options[:service]]
          @options = DEFAULTS.merge(SERVICE_DEFAULTS[options[:service]])
        else
          @options = DEFAULTS.clone
        end
        @options.merge!(options)
        # Handle any remaining configuration here
      end

      ##
      # Returns the configuration of the handler.  Configuration options that
      # are not recognized by the handler are ignored.
      #
      # @return [Hash] The configuration options.
      def options
        return @options
      end
    end
  end
end
