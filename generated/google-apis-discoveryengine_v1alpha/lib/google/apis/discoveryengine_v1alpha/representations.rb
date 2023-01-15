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
    module DiscoveryengineV1alpha
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
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
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation, as: 'operation'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          collection :promotion_ids, as: 'promotionIds'
          property :quantity, as: 'quantity'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource::Representation
      
          property :reconciliation_mode, as: 'reconciliationMode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_category, as: 'pageCategory'
          property :pageview_id, as: 'pageviewId'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
          hash :user_labels, as: 'userLabels'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency, as: 'currency'
          property :discount_value, as: 'discountValue'
          property :tax, as: 'tax'
          property :transaction_id, as: 'transactionId'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo::Representation
      
          property :direct_user_request, as: 'directUserRequest'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo::Representation
      
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :filter, as: 'filter'
          property :media_info, as: 'mediaInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo::Representation
      
          property :panel, as: 'panel', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :search_info, as: 'searchInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo::Representation
      
          property :session_id, as: 'sessionId'
          collection :tag_ids, as: 'tagIds'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
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
