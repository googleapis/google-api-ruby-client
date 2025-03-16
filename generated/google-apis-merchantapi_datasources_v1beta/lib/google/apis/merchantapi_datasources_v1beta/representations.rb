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
      
      class DataSourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
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
      
      class FileUpload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
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
      
      class MerchantReviewDataSource
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
      
      class ProductReviewDataSource
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
      
          property :merchant_review_data_source, as: 'merchantReviewDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::MerchantReviewDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::MerchantReviewDataSource::Representation
      
          property :name, as: 'name'
          property :primary_product_data_source, as: 'primaryProductDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::PrimaryProductDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::PrimaryProductDataSource::Representation
      
          property :product_review_data_source, as: 'productReviewDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::ProductReviewDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::ProductReviewDataSource::Representation
      
          property :promotion_data_source, as: 'promotionDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::PromotionDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::PromotionDataSource::Representation
      
          property :regional_inventory_data_source, as: 'regionalInventoryDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::RegionalInventoryDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::RegionalInventoryDataSource::Representation
      
          property :supplemental_product_data_source, as: 'supplementalProductDataSource', class: Google::Apis::MerchantapiDatasourcesV1beta::SupplementalProductDataSource, decorator: Google::Apis::MerchantapiDatasourcesV1beta::SupplementalProductDataSource::Representation
      
        end
      end
      
      class DataSourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_data_source_name, as: 'primaryDataSourceName'
          property :self, as: 'self'
          property :supplemental_data_source_name, as: 'supplementalDataSourceName'
        end
      end
      
      class DefaultRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :take_from_data_sources, as: 'takeFromDataSources', class: Google::Apis::MerchantapiDatasourcesV1beta::DataSourceReference, decorator: Google::Apis::MerchantapiDatasourcesV1beta::DataSourceReference::Representation
      
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :state, as: 'state'
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
      
      class FileUpload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_id, :numeric_string => true, as: 'dataSourceId'
          collection :issues, as: 'issues', class: Google::Apis::MerchantapiDatasourcesV1beta::Issue, decorator: Google::Apis::MerchantapiDatasourcesV1beta::Issue::Representation
      
          property :items_created, :numeric_string => true, as: 'itemsCreated'
          property :items_total, :numeric_string => true, as: 'itemsTotal'
          property :items_updated, :numeric_string => true, as: 'itemsUpdated'
          property :name, as: 'name'
          property :processing_state, as: 'processingState'
          property :upload_time, as: 'uploadTime'
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, :numeric_string => true, as: 'count'
          property :description, as: 'description'
          property :documentation_uri, as: 'documentationUri'
          property :severity, as: 'severity'
          property :title, as: 'title'
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
      
      class MerchantReviewDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PrimaryProductDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :content_language, as: 'contentLanguage'
          collection :countries, as: 'countries'
          property :default_rule, as: 'defaultRule', class: Google::Apis::MerchantapiDatasourcesV1beta::DefaultRule, decorator: Google::Apis::MerchantapiDatasourcesV1beta::DefaultRule::Representation
      
          collection :destinations, as: 'destinations', class: Google::Apis::MerchantapiDatasourcesV1beta::Destination, decorator: Google::Apis::MerchantapiDatasourcesV1beta::Destination::Representation
      
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
      
      class ProductReviewDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ProductStatusChangeMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :attribute, as: 'attribute'
          collection :changes, as: 'changes', class: Google::Apis::MerchantapiDatasourcesV1beta::ProductChange, decorator: Google::Apis::MerchantapiDatasourcesV1beta::ProductChange::Representation
      
          property :event_time, as: 'eventTime'
          property :expiration_time, as: 'expirationTime'
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
          collection :referencing_primary_data_sources, as: 'referencingPrimaryDataSources', class: Google::Apis::MerchantapiDatasourcesV1beta::DataSourceReference, decorator: Google::Apis::MerchantapiDatasourcesV1beta::DataSourceReference::Representation
      
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
