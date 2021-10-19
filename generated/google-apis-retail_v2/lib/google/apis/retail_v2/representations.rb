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
    module RetailV2
      
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
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Audience
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Catalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ColorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseCompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompletionDataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CompletionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2FulfillmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2GetDefaultBranchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportCompletionDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
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
      
      class GoogleCloudRetailV2ImportProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PredictResponsePredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PriceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PriceInfoPriceRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2ProductLevelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Promotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurchaseTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2Rating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestDynamicFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetDefaultBranchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserEventInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
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
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
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
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
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
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
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
      
      class GoogleCloudRetailV2betaImportProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
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
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
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
      
      class GoogleTypeDate
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
          property :http_request, as: 'httpRequest', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingHttpRequestContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingSourceLocation, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudRetailLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingErrorContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingImportErrorContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::RetailV2::GoogleCloudRetailLoggingServiceContext, decorator: Google::Apis::RetailV2::GoogleCloudRetailLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
      
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_time, as: 'addTime'
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2Audience
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :age_groups, as: 'ageGroups'
          collection :genders, as: 'genders'
        end
      end
      
      class GoogleCloudRetailV2BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::RetailV2::GoogleTypeDate, decorator: Google::Apis::RetailV2::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudRetailV2Catalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :product_level_config, as: 'productLevelConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductLevelConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductLevelConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ColorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :color_families, as: 'colorFamilies'
          collection :colors, as: 'colors'
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :completion_results, as: 'completionResults', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseCompletionResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseCompletionResult::Representation
      
          collection :recent_search_results, as: 'recentSearchResults', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseCompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search, as: 'recentSearch'
        end
      end
      
      class GoogleCloudRetailV2CompletionDataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2CompletionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_attribution_token, as: 'completionAttributionToken'
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudRetailV2CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :indexable, as: 'indexable'
          collection :numbers, as: 'numbers'
          property :searchable, as: 'searchable'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudRetailV2FulfillmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_ids, as: 'placeIds'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudRetailV2GetDefaultBranchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :note, as: 'note'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :uri, as: 'uri'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDataInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
        end
      end
      
      class GoogleCloudRetailV2ImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInputConfig::Representation
      
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :reconciliation_mode, as: 'reconciliationMode'
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudRetailV2ImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInputConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInputConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudRetailV2ListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::RetailV2::GoogleCloudRetailV2Catalog, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Catalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRetailV2ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2PredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::RetailV2::GoogleCloudRetailV2PredictResponsePredictionResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PredictResponsePredictionResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRetailV2PredictResponsePredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRetailV2PriceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :original_price, as: 'originalPrice'
          property :price, as: 'price'
          property :price_effective_time, as: 'priceEffectiveTime'
          property :price_expire_time, as: 'priceExpireTime'
          property :price_range, as: 'priceRange', class: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfoPriceRange, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfoPriceRange::Representation
      
        end
      end
      
      class GoogleCloudRetailV2PriceInfoPriceRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_price, as: 'originalPrice', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :price, as: 'price', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
        end
      end
      
      class GoogleCloudRetailV2Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :audience, as: 'audience', class: Google::Apis::RetailV2::GoogleCloudRetailV2Audience, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Audience::Representation
      
          property :availability, as: 'availability'
          property :available_quantity, as: 'availableQuantity'
          property :available_time, as: 'availableTime'
          collection :brands, as: 'brands'
          collection :categories, as: 'categories'
          collection :collection_member_ids, as: 'collectionMemberIds'
          property :color_info, as: 'colorInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2ColorInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ColorInfo::Representation
      
          collection :conditions, as: 'conditions'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          collection :fulfillment_info, as: 'fulfillmentInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2FulfillmentInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2FulfillmentInfo::Representation
      
          property :gtin, as: 'gtin'
          property :id, as: 'id'
          collection :images, as: 'images', class: Google::Apis::RetailV2::GoogleCloudRetailV2Image, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Image::Representation
      
          property :language_code, as: 'languageCode'
          collection :materials, as: 'materials'
          property :name, as: 'name'
          collection :patterns, as: 'patterns'
          property :price_info, as: 'priceInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PriceInfo::Representation
      
          property :primary_product_id, as: 'primaryProductId'
          collection :promotions, as: 'promotions', class: Google::Apis::RetailV2::GoogleCloudRetailV2Promotion, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Promotion::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating', class: Google::Apis::RetailV2::GoogleCloudRetailV2Rating, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Rating::Representation
      
          property :retrievable_fields, as: 'retrievableFields'
          collection :sizes, as: 'sizes'
          collection :tags, as: 'tags'
          property :title, as: 'title'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
          property :uri, as: 'uri'
          collection :variants, as: 'variants', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product, as: 'product', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudRetailV2ProductInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource::Representation
      
          property :product_inline_source, as: 'productInlineSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInlineSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2ProductLevelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_product_type, as: 'ingestionProductType'
          property :merchant_center_product_id_field, as: 'merchantCenterProductIdField'
        end
      end
      
      class GoogleCloudRetailV2Promotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :promotion_id, as: 'promotionId'
        end
      end
      
      class GoogleCloudRetailV2PurchaseTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency_code, as: 'currencyCode'
          property :id, as: 'id'
          property :revenue, as: 'revenue'
          property :tax, as: 'tax'
        end
      end
      
      class GoogleCloudRetailV2PurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudRetailV2PurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purged_events_count, :numeric_string => true, as: 'purgedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2Rating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :rating_count, as: 'ratingCount'
          collection :rating_histogram, as: 'ratingHistogram'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_event_rejoin_scope, as: 'userEventRejoinScope'
        end
      end
      
      class GoogleCloudRetailV2RejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :place_ids, as: 'placeIds'
          property :remove_time, as: 'removeTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :dynamic_facet_spec, as: 'dynamicFacetSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestDynamicFacetSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestQueryExpansionSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestQueryExpansionSpec::Representation
      
          property :search_mode, as: 'searchMode'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo::Representation
      
          collection :variant_rollup_keys, as: 'variantRollupKeys'
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestDynamicFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpecFacetKey, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          property :query, as: 'query'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudRetailV2SearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudRetailV2SearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :facets, as: 'facets', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacet, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacet::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseQueryExpansionInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseSearchResult, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseSearchResult::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacetFacetValue, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2SearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudRetailV2SearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::RetailV2::GoogleCloudRetailV2Interval, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Interval::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudRetailV2SearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :matching_variant_count, as: 'matchingVariantCount'
          hash :matching_variant_fields, as: 'matchingVariantFields'
          property :product, as: 'product', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          hash :variant_rollup_values, as: 'variantRollupValues'
        end
      end
      
      class GoogleCloudRetailV2SetDefaultBranchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_id, as: 'branchId'
          property :note, as: 'note'
        end
      end
      
      class GoogleCloudRetailV2SetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2SetInventoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          property :inventory, as: 'inventory', class: Google::Apis::RetailV2::GoogleCloudRetailV2Product, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2Product::Representation
      
          property :set_mask, as: 'setMask'
          property :set_time, as: 'setTime'
        end
      end
      
      class GoogleCloudRetailV2SetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2UserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :cart_id, as: 'cartId'
          property :completion_detail, as: 'completionDetail', class: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDetail, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2CompletionDetail::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          collection :experiment_ids, as: 'experimentIds'
          property :filter, as: 'filter'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          collection :page_categories, as: 'pageCategories'
          property :page_view_id, as: 'pageViewId'
          collection :product_details, as: 'productDetails', class: Google::Apis::RetailV2::GoogleCloudRetailV2ProductDetail, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2ProductDetail::Representation
      
          property :purchase_transaction, as: 'purchaseTransaction', class: Google::Apis::RetailV2::GoogleCloudRetailV2PurchaseTransaction, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2PurchaseTransaction::Representation
      
          property :referrer_uri, as: 'referrerUri'
          property :search_query, as: 'searchQuery'
          property :session_id, as: 'sessionId'
          property :uri, as: 'uri'
          property :user_info, as: 'userInfo', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserInfo::Representation
      
          property :visitor_id, as: 'visitorId'
        end
      end
      
      class GoogleCloudRetailV2UserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2UserEventInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEvent::Representation
      
        end
      end
      
      class GoogleCloudRetailV2UserEventInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2GcsSource::Representation
      
          property :user_event_inline_source, as: 'userEventInlineSource', class: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInlineSource, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2UserEventInlineSource::Representation
      
        end
      end
      
      class GoogleCloudRetailV2UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_user_request, as: 'directUserRequest'
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2alphaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2alphaUserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2alphaUserEventImportSummary::Representation
      
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
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2alphaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaExportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaExportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
          property :notification_pubsub_topic, as: 'notificationPubsubTopic'
          property :request_id, as: 'requestId'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRetailV2betaImportProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
          property :errors_config, as: 'errorsConfig', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaImportErrorsConfig::Representation
      
          property :import_summary, as: 'importSummary', class: Google::Apis::RetailV2::GoogleCloudRetailV2betaUserEventImportSummary, decorator: Google::Apis::RetailV2::GoogleCloudRetailV2betaUserEventImportSummary::Representation
      
        end
      end
      
      class GoogleCloudRetailV2betaPurgeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rejoined_user_events_count, :numeric_string => true, as: 'rejoinedUserEventsCount'
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaSetInventoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRetailV2betaUserEventImportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RetailV2::GoogleLongrunningOperation, decorator: Google::Apis::RetailV2::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RetailV2::GoogleRpcStatus, decorator: Google::Apis::RetailV2::GoogleRpcStatus::Representation
      
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
