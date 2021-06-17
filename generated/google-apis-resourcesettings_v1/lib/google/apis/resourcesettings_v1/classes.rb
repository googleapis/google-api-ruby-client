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
    module ResourcesettingsV1
      
      # The response from ListSettings.
      class GoogleCloudResourcesettingsV1ListSettingsResponse
        include Google::Apis::Core::Hashable
      
        # Unused. A page token used to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of settings that are available at the specified Cloud resource.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting>]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # The schema for settings.
      class GoogleCloudResourcesettingsV1Setting
        include Google::Apis::Core::Hashable
      
        # The data in a setting value.
        # Corresponds to the JSON property `effectiveValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value]
        attr_accessor :effective_value
      
        # A fingerprint used for optimistic concurrency. See UpdateSetting for more
        # details.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The data in a setting value.
        # Corresponds to the JSON property `localValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value]
        attr_accessor :local_value
      
        # Metadata about a setting which is not editable by the end user.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1SettingMetadata]
        attr_accessor :metadata
      
        # The resource name of the setting. Must be in one of the following forms: * `
        # projects/`project_number`/settings/`setting_name`` * `folders/`folder_id`/
        # settings/`setting_name`` * `organizations/`organization_id`/settings/`
        # setting_name`` For example, "/projects/123/settings/gcp-enableMyFeature"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_value = args[:effective_value] if args.key?(:effective_value)
          @etag = args[:etag] if args.key?(:etag)
          @local_value = args[:local_value] if args.key?(:local_value)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata about a setting which is not editable by the end user.
      class GoogleCloudResourcesettingsV1SettingMetadata
        include Google::Apis::Core::Hashable
      
        # The data type for this setting.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The data in a setting value.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value]
        attr_accessor :default_value
      
        # A detailed description of what this setting does.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name for this setting.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A flag indicating that values of this setting cannot be modified. See
        # documentation for the specific setting for updates and reasons.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @read_only = args[:read_only] if args.key?(:read_only)
        end
      end
      
      # The data in a setting value.
      class GoogleCloudResourcesettingsV1Value
        include Google::Apis::Core::Hashable
      
        # Defines this value as being a boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Defines this value as being a Duration.
        # Corresponds to the JSON property `durationValue`
        # @return [String]
        attr_accessor :duration_value
      
        # A enum value that can hold any enum type setting values. Each enum type is
        # represented by a number, this representation is stored in the definitions.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueEnumValue]
        attr_accessor :enum_value
      
        # A string->string map value that can hold a map of string keys to string values.
        # The maximum length of each string is 200 characters and there can be a
        # maximum of 50 key-value pairs in the map.
        # Corresponds to the JSON property `stringMapValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringMap]
        attr_accessor :string_map_value
      
        # A string set value that can hold a set of strings. The maximum length of each
        # string is 200 characters and there can be a maximum of 50 strings in the
        # string set.
        # Corresponds to the JSON property `stringSetValue`
        # @return [Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringSet]
        attr_accessor :string_set_value
      
        # Defines this value as being a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @duration_value = args[:duration_value] if args.key?(:duration_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @string_map_value = args[:string_map_value] if args.key?(:string_map_value)
          @string_set_value = args[:string_set_value] if args.key?(:string_set_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A enum value that can hold any enum type setting values. Each enum type is
      # represented by a number, this representation is stored in the definitions.
      class GoogleCloudResourcesettingsV1ValueEnumValue
        include Google::Apis::Core::Hashable
      
        # The value of this enum
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A string->string map value that can hold a map of string keys to string values.
      # The maximum length of each string is 200 characters and there can be a
      # maximum of 50 key-value pairs in the map.
      class GoogleCloudResourcesettingsV1ValueStringMap
        include Google::Apis::Core::Hashable
      
        # The key-value pairs in the map
        # Corresponds to the JSON property `mappings`
        # @return [Hash<String,String>]
        attr_accessor :mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mappings = args[:mappings] if args.key?(:mappings)
        end
      end
      
      # A string set value that can hold a set of strings. The maximum length of each
      # string is 200 characters and there can be a maximum of 50 strings in the
      # string set.
      class GoogleCloudResourcesettingsV1ValueStringSet
        include Google::Apis::Core::Hashable
      
        # The strings in the set
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
