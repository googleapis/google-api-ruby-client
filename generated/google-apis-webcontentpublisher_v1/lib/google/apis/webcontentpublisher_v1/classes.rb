# Copyright 2020 Google LLC
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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module WebcontentpublisherV1
      
      # Response message for CheckFreeAccess
      class CheckFreeAccessResponse
        include Google::Apis::Core::Hashable
      
        # True if free access should be allowed, false otherwise.
        # Corresponds to the JSON property `isAllowed`
        # @return [Boolean]
        attr_accessor :is_allowed
        alias_method :is_allowed?, :is_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_allowed = args[:is_allowed] if args.key?(:is_allowed)
        end
      end
    end
  end
end
