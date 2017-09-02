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
      
      # *
      # The RemoteConfig consists of a list of conditions (which can be
      # thought of as named "if" statements) and a map of parameters (parameter key
      # to a stucture containing an optional default value, as well as a optional
      # submap of (condition name to value when that condition is true).
      class RemoteConfig
        include Google::Apis::Core::Hashable
      
        # The list of named conditions. The order *does* affect the semantics.
        # The condition_name values of these entries must be unique.
        # The resolved value of a config parameter P is determined as follow:
        # * Let Y be the set of values from the submap of P that refer to conditions
        # that evaluate to <code>true</code>.
        # * If Y is non empty, the value is taken from the specific submap in Y whose
        # condition_name is the earliest in this condition list.
        # * Else, if P has a default value option (condition_name is empty) then
        # the value is taken from that option.
        # * Else, parameter P has no value and is omitted from the config result.
        # Example: parameter key "p1", default value "v1", submap specified as
        # `"c1": v2, "c2": v3` where "c1" and "c2" are names of conditions in the
        # condition list (where "c1" in this example appears before "c2").  The
        # value of p1 would be v2 as long as c1 is true.  Otherwise, if c2 is true,
        # p1 would evaluate to v3, and if c1 and c2 are both false, p1 would evaluate
        # to v1.  If no default value was specified, and c1 and c2 were both false,
        # no value for p1 would be generated.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::FirebaseremoteconfigV1::RemoteConfigCondition>]
        attr_accessor :conditions
      
        # Map of parameter keys to their optional default values and optional submap
        # of (condition name : value). Order doesn't affect semantics, and so is
        # sorted by the server. The 'key' values of the params must be unique.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # A single RemoteConfig Condition.  A list of these (because order matters) are
      # part of a single RemoteConfig template.
      class RemoteConfigCondition
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Required.
        # A non empty and unique name of this condition.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional.
        # The display (tag) color of this condition. This serves as part of a tag
        # (in the future, we may add tag text as well as tag color, but that is not
        # yet implemented in the UI).
        # This value has no affect on the semantics of the delivered config and it
        # is ignored by the backend, except for passing it through write/read
        # requests.
        # Not having this value or having the "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
        # value (0) have the same meaning:  Let the UI choose any valid color when
        # displaying the condition.
        # Corresponds to the JSON property `tagColor`
        # @return [String]
        attr_accessor :tag_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] if args.key?(:expression)
          @name = args[:name] if args.key?(:name)
          @tag_color = args[:tag_color] if args.key?(:tag_color)
        end
      end
      
      # While default_value and conditional_values are each optional, at least one of
      # the two is required - otherwise, the parameter is meaningless (and an
      # exception will be thrown by the validation logic).
      class RemoteConfigParameter
        include Google::Apis::Core::Hashable
      
        # Optional - a map of (condition_name, value). The condition_name of the
        # highest priority (the one listed first in the conditions array) determines
        # the value of this parameter.
        # Corresponds to the JSON property `conditionalValues`
        # @return [Hash<String,Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue>]
        attr_accessor :conditional_values
      
        # A RemoteConfigParameter's "value" (either the default value, or the value
        # associated with a condition name) is either a string, or the
        # "use_in_app_default" indicator (which means to leave out the parameter from
        # the returned <key, value> map that is the output of the parameter fetch).
        # We represent the "use_in_app_default" as a bool, but (when using the boolean
        # instead of the string) it should always be <code>true</code>.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::FirebaseremoteconfigV1::RemoteConfigParameterValue]
        attr_accessor :default_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditional_values = args[:conditional_values] if args.key?(:conditional_values)
          @default_value = args[:default_value] if args.key?(:default_value)
        end
      end
      
      # A RemoteConfigParameter's "value" (either the default value, or the value
      # associated with a condition name) is either a string, or the
      # "use_in_app_default" indicator (which means to leave out the parameter from
      # the returned <key, value> map that is the output of the parameter fetch).
      # We represent the "use_in_app_default" as a bool, but (when using the boolean
      # instead of the string) it should always be <code>true</code>.
      class RemoteConfigParameterValue
        include Google::Apis::Core::Hashable
      
        # if true, omit the parameter from the map of fetched parameter values
        # Corresponds to the JSON property `useInAppDefault`
        # @return [Boolean]
        attr_accessor :use_in_app_default
        alias_method :use_in_app_default?, :use_in_app_default
      
        # the string to set the parameter to
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_in_app_default = args[:use_in_app_default] if args.key?(:use_in_app_default)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
