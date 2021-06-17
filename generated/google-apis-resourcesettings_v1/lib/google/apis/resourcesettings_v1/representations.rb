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
      
      class GoogleCloudResourcesettingsV1ListSettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1Setting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1SettingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1ValueEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1ValueStringMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1ValueStringSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudResourcesettingsV1ListSettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :settings, as: 'settings', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Setting::Representation
      
        end
      end
      
      class GoogleCloudResourcesettingsV1Setting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_value, as: 'effectiveValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value::Representation
      
          property :etag, as: 'etag'
          property :local_value, as: 'localValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1SettingMetadata, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1SettingMetadata::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudResourcesettingsV1SettingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1Value::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :read_only, as: 'readOnly'
        end
      end
      
      class GoogleCloudResourcesettingsV1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :duration_value, as: 'durationValue'
          property :enum_value, as: 'enumValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueEnumValue, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueEnumValue::Representation
      
          property :string_map_value, as: 'stringMapValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringMap, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringMap::Representation
      
          property :string_set_value, as: 'stringSetValue', class: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringSet, decorator: Google::Apis::ResourcesettingsV1::GoogleCloudResourcesettingsV1ValueStringSet::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudResourcesettingsV1ValueEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudResourcesettingsV1ValueStringMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :mappings, as: 'mappings'
        end
      end
      
      class GoogleCloudResourcesettingsV1ValueStringSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
    end
  end
end
