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
    module MerchantapiDatasourcesV1beta
      
      class DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchDataSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalInventoryDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrimaryProductDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductStatusChangeMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotionDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionalInventoryDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupplementalProductDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_id, :numeric_string => true, as: 'dataSourceId'
          property :display_name, as: 'displayName'
          property :file_input, as: 'fileInput', class: Google::Apis::MerchantapiDatasourcesV1beta::FileInput, decorator: Google::Apis::MerchantapiDatasourcesV1beta::FileInput::Representation
      
          property :input, as: 'input'
          property :local_inventory_data_source, as: 'localInventoryDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::LocalInventoryDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::LocalInventoryDataSource::Representation
      
          property :name, as: 'name'
          property :primary_product_data_source, as: 'primaryProductDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::PrimaryProductDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::PrimaryProductDataSource::Representation
      
          property :promotion_data_source, as: 'promotionDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::PromotionDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::PromotionDataSource::Representation
      
          property :regional_inventory_data_source, as: 'regionalInventoryDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::RegionalInventoryDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::RegionalInventoryDataSource::Representation
      
          property :supplemental_product_data_source, as: 'supplementalProductDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::SupplementalProductDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::SupplementalProductDataSource::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchDataSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_month, as: 'dayOfMonth'
          property :day_of_week, as: 'dayOfWeek'
          property :enabled, as: 'enabled'
          property :fetch_uri, as: 'fetchUri'
          property :frequency, as: 'frequency'
          property :password, as: 'password'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::MerchantapiDatasourcesV1beta::TimeOfDay, decorator: Google::Apis::MerchantapiDatasourcesV1beta::TimeOfDay::Representation
      
          property :time_zone, as: 'timeZone'
          property :username, as: 'username'
        end
      end
      
      class FileInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fetch_settings, as: 'fetchSettings', class: Google::Apis::MerchantapiDatasourcesV1beta::FetchSettings, decorator: Google::Apis::MerchantapiDatasourcesV1beta::FetchSettings::Representation
      
          property :file_input_type, as: 'fileInputType'
          property :file_name, as: 'fileName'
        end
      end
      
      class ListDataSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_sources, as: 'dataSources', class: Google::Apis::MerchantapiDatasourcesV1beta::DataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LocalInventoryDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :feed_label, as: 'feedLabel'
        end
      end
      
      class PrimaryProductDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :content_language, as: 'contentLanguage'
          collection :countries, as: 'countries'
          property :feed_label, as: 'feedLabel'
        end
      end
      
      class ProductChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :region_code, as: 'regionCode'
          property :reporting_context, as: 'reportingContext'
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiDatasourcesV1beta::ProductChange, decorator: Google::Apis::MerchantapiDatasourcesV1beta::ProductChange::Representation
      
          property :managing_account, as: 'managingAccount'
          property :resource, as: 'resource'
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class PromotionDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :target_country, as: 'targetCountry'
        end
      end
      
      class RegionalInventoryDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :feed_label, as: 'feedLabel'
        end
      end
      
      class SupplementalProductDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_language, as: 'contentLanguage'
          property :feed_label, as: 'feedLabel'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
    end
  end
end
