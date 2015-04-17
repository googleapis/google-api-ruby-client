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
    module CloudsearchV1
      class DocumentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FieldValueListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FieldValueRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListDocumentsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListIndexesResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class IndexInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FieldNamesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SearchResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SearchResultRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class DocumentRepresentation < Google::Apis::Core::JsonRepresentation
        property :doc_id, as: 'docId'
        property :rank, as: 'rank'
        hash :fields, as: 'fields', class: Google::Apis::CloudsearchV1::FieldValueList, decorator: Google::Apis::CloudsearchV1::FieldValueListRepresentation
      end

      # @private
      class FieldValueListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :values, as: 'values', class: Google::Apis::CloudsearchV1::FieldValue, decorator: Google::Apis::CloudsearchV1::FieldValueRepresentation
      end

      # @private
      class FieldValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :string_value, as: 'stringValue'
        property :timestamp_value, as: 'timestampValue'
        property :number_value, as: 'numberValue'
        property :geo_value, as: 'geoValue'
        property :string_format, as: 'stringFormat'
        property :lang, as: 'lang'
      end

      # @private
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ListDocumentsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :documents, as: 'documents', class: Google::Apis::CloudsearchV1::Document, decorator: Google::Apis::CloudsearchV1::DocumentRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListIndexesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :indexes, as: 'indexes', class: Google::Apis::CloudsearchV1::IndexInfo, decorator: Google::Apis::CloudsearchV1::IndexInfoRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class IndexInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :project_id, as: 'projectId'
        property :index_id, as: 'indexId'
        property :indexed_field, as: 'indexedField', class: Google::Apis::CloudsearchV1::FieldNames, decorator: Google::Apis::CloudsearchV1::FieldNamesRepresentation
      end

      # @private
      class FieldNamesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :text_fields, as: 'textFields'
        
        collection :html_fields, as: 'htmlFields'
        
        collection :atom_fields, as: 'atomFields'
        
        collection :date_fields, as: 'dateFields'
        
        collection :number_fields, as: 'numberFields'
        
        collection :geo_fields, as: 'geoFields'
      end

      # @private
      class SearchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :results, as: 'results', class: Google::Apis::CloudsearchV1::SearchResult, decorator: Google::Apis::CloudsearchV1::SearchResultRepresentation
        
        
        property :matched_count, as: 'matchedCount'
      end

      # @private
      class SearchResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :doc_id, as: 'docId'
        hash :fields, as: 'fields', class: Google::Apis::CloudsearchV1::FieldValueList, decorator: Google::Apis::CloudsearchV1::FieldValueListRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
