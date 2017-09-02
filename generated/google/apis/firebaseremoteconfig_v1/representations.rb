# Copyright 2015 Google Inc.
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
    module FirebaseremoteconfigV1
      
      class RemoteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteConfigCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteConfigParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteConfigParameterValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::FirebaseremoteconfigV1::RemoteConfigCondition, decorator: Google::Apis::FirebaseremoteconfigV1::RemoteConfigCondition::Representation
      
          hash :parameters, as: 'parameters', class: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameter, decorator: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameter::Representation
      
        end
      end
      
      class RemoteConfigCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression'
          property :name, as: 'name'
          property :tag_color, as: 'tagColor'
        end
      end
      
      class RemoteConfigParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :conditional_values, as: 'conditionalValues', class: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue, decorator: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue::Representation
      
          property :default_value, as: 'defaultValue', class: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue, decorator: Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue::Representation
      
        end
      end
      
      class RemoteConfigParameterValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_in_app_default, as: 'useInAppDefault'
          property :value, as: 'value'
        end
      end
    end
  end
end
