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

module Google #:nodoc:
  class APIClient #:nodoc:
    ##
    # Provides a consistent interface by which to parse request and response
    # content.
    # TODO(mattpok): ensure floats, URLs, dates are parsed correctly
    module JSONParser

      def self.serialize(hash)
        # JSON parser used can accept arrays as well, but we will limit
        # to only allow hash to JSON string parsing to keep a simple interface
        unless hash.instance_of? Hash
          raise ArgumentError,
            "JSON generate expected a Hash but got a #{hash.class}."
        end
        return JSON.generate(hash)
      end

      def self.parse(json_string)
        return JSON.parse(json_string)
      end
    end
  end
end
