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
    module FitnessV1
      class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DataPointRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DataSourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DataTypeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DataTypeFieldRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DeviceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListDataSourcesResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListSessionsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MapValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SessionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ValueMapValEntryRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ApplicationRepresentation < Google::Apis::Core::JsonRepresentation
        property :details_url, as: 'detailsUrl'
        property :name, as: 'name'
        property :package_name, as: 'packageName'
        property :version, as: 'version'
      end

      # @private
      class DataPointRepresentation < Google::Apis::Core::JsonRepresentation
        property :computation_time_millis, as: 'computationTimeMillis'
        property :data_type_name, as: 'dataTypeName'
        property :end_time_nanos, as: 'endTimeNanos'
        property :modified_time_millis, as: 'modifiedTimeMillis'
        property :origin_data_source_id, as: 'originDataSourceId'
        property :raw_timestamp_nanos, as: 'rawTimestampNanos'
        property :start_time_nanos, as: 'startTimeNanos'
        collection :value, as: 'value', class: Google::Apis::FitnessV1::Value, decorator: Google::Apis::FitnessV1::ValueRepresentation
      end

      # @private
      class DataSourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :application, as: 'application', class: Google::Apis::FitnessV1::Application, decorator: Google::Apis::FitnessV1::ApplicationRepresentation
        
        property :data_stream_id, as: 'dataStreamId'
        property :data_stream_name, as: 'dataStreamName'
        property :data_type, as: 'dataType', class: Google::Apis::FitnessV1::DataType, decorator: Google::Apis::FitnessV1::DataTypeRepresentation
        
        property :device, as: 'device', class: Google::Apis::FitnessV1::Device, decorator: Google::Apis::FitnessV1::DeviceRepresentation
        
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class DataTypeRepresentation < Google::Apis::Core::JsonRepresentation
        collection :field, as: 'field', class: Google::Apis::FitnessV1::DataTypeField, decorator: Google::Apis::FitnessV1::DataTypeFieldRepresentation
        
        
        property :name, as: 'name'
      end

      # @private
      class DataTypeFieldRepresentation < Google::Apis::Core::JsonRepresentation
        property :format, as: 'format'
        property :name, as: 'name'
        property :optional, as: 'optional'
      end

      # @private
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation
        property :data_source_id, as: 'dataSourceId'
        property :max_end_time_ns, as: 'maxEndTimeNs'
        property :min_start_time_ns, as: 'minStartTimeNs'
        property :next_page_token, as: 'nextPageToken'
        collection :point, as: 'point', class: Google::Apis::FitnessV1::DataPoint, decorator: Google::Apis::FitnessV1::DataPointRepresentation
      end

      # @private
      class DeviceRepresentation < Google::Apis::Core::JsonRepresentation
        property :manufacturer, as: 'manufacturer'
        property :model, as: 'model'
        property :type, as: 'type'
        property :uid, as: 'uid'
        property :version, as: 'version'
      end

      # @private
      class ListDataSourcesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :data_source, as: 'dataSource', class: Google::Apis::FitnessV1::DataSource, decorator: Google::Apis::FitnessV1::DataSourceRepresentation
      end

      # @private
      class ListSessionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :deleted_session, as: 'deletedSession', class: Google::Apis::FitnessV1::Session, decorator: Google::Apis::FitnessV1::SessionRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
        collection :session, as: 'session', class: Google::Apis::FitnessV1::Session, decorator: Google::Apis::FitnessV1::SessionRepresentation
      end

      # @private
      class MapValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :fp_val, as: 'fpVal'
      end

      # @private
      class SessionRepresentation < Google::Apis::Core::JsonRepresentation
        property :active_time_millis, as: 'activeTimeMillis'
        property :activity_type, as: 'activityType'
        property :application, as: 'application', class: Google::Apis::FitnessV1::Application, decorator: Google::Apis::FitnessV1::ApplicationRepresentation
        
        property :description, as: 'description'
        property :end_time_millis, as: 'endTimeMillis'
        property :id, as: 'id'
        property :modified_time_millis, as: 'modifiedTimeMillis'
        property :name, as: 'name'
        property :start_time_millis, as: 'startTimeMillis'
      end

      # @private
      class ValueRepresentation < Google::Apis::Core::JsonRepresentation
        collection :float_list_val, as: 'floatListVal'
        
        property :fp_val, as: 'fpVal'
        collection :int_list_val, as: 'intListVal'
        
        property :int_val, as: 'intVal'
        collection :map_val, as: 'mapVal', class: Google::Apis::FitnessV1::ValueMapValEntry, decorator: Google::Apis::FitnessV1::ValueMapValEntryRepresentation
        
        
        property :string_val, as: 'stringVal'
      end

      # @private
      class ValueMapValEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :key, as: 'key'
        property :value, as: 'value', class: Google::Apis::FitnessV1::MapValue, decorator: Google::Apis::FitnessV1::MapValueRepresentation
      end
    end
  end
end
