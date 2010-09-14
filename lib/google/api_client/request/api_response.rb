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

module Google #:nodoc:
  class APIClient #:nodoc:

    ##
    # A simple response abstraction for API requests. Encapsulates raw repsonse
    # data and allows user to parse response as a hash or model class.
    # This is the primary response object that users will interact with.
    #
    class APIResponse

      def parse
      end
    end
  end
end
