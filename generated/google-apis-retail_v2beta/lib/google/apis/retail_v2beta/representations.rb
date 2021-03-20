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
    module RetailV2beta
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPriceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaProductLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudRetailLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudRetailLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_item, as: 'catalogItem'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation_name, as: 'operationName'
          property :product, as: 'product'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudRetailLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudRetailLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudRetailV2ImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2ImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2alphaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2betaCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :product_level_config, as: 'productLevelConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudRetailV2betaExportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaExportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudRetailV2betaImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRetailV2betaImportErrorsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudRetailV2betaImportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2betaPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2betaPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRetailV2betaPriceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :original_price, as: 'originalPrice'
          property :price, as: 'price'
        end
      end
      
      class GoogleCloudRetailV2betaProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          property :availability, as: 'availability'
          property :available_quantity, as: 'availableQuantity'
          property :available_time, as: 'availableTime'
          collection :categories, as: 'categories'
          property :description, as: 'description'
          property :id, as: 'id'
          collection :images, as: 'images', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage::Representation
      
          property :name, as: 'name'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo::Representation
      
          property :primary_product_id, as: 'primaryProductId'
          collection :tags, as: 'tags'
          property :title, as: 'title'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRetailV2betaProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudRetailV2betaProductInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProductInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource::Representation
      
          property :product_inline_source, as: 'productInlineSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaProductLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_product_type, as: 'ingestionProductType'
          property :merchant_center_product_id_field, as: 'merchantCenterProductIdField'
        end
      end
      
      class GoogleCloudRetailV2betaPurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          property :tax, as: 'tax'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :cart_id, as: 'cartId'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          collection :experiment_ids, as: 'experimentIds'
          collection :page_categories, as: 'pageCategories'
          property :page_view_id, as: 'pageViewId'
          collection :product_details, as: 'productDetails', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction::Representation
      
          property :referrer_uri, as: 'referrerUri'
          property :search_query, as: 'searchQuery'
          property :uri, as: 'uri'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaUserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaUserEventInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource, decorator: Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RetailV2beta::GoogleLongrunningOperation, decorator: Google::Apis::RetailV2beta::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RetailV2beta::GoogleRpcStatus, decorator: Google::Apis::RetailV2beta::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
