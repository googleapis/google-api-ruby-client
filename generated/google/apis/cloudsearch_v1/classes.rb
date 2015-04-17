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

      # The message representing a document resource.
      class Document
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the document. It must contain only visible, printable
        # ASCII characters (ASCII codes 33 through 126 inclusive) and be no longer than
        # 500 characters. It cannot begin with an exclamation point ('!'), and it can't
        # begin and end with double underscores ("__"). If missing, it is automatically
        # assigned for the document.
        # Corresponds to the JSON property `docId`
        # @return [String]
        attr_accessor :doc_id
      
        # A positive integer which determines the default ordering of documents returned
        # from a search. The rank can be set explicitly when the document is created. It
        # is a bad idea to assign the same rank to many documents, and the same rank
        # should never be assigned to more than 10,000 documents. By default (when it is
        # not specified or set to 0), it is set at the time the document is created to
        # the number of seconds since January 1, 2011. The rank can be used in
        # field_expressions, order_by or return_fields in a search request, where it is
        # referenced as `_rank`.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # The list of fields in the document. It cannot be the empty list. Each field
        # has a name and a list of values. The field name is unique to a document and is
        # case sensitive. The name can only contain ASCII characters. It must start with
        # a letter and can contain letters, digits, or underscore. It cannot be longer
        # than 500 characters and cannot be the empty string. A field can have multiple
        # values with same or different types, however, it cannot have multiple
        # Timestamp or number values.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::CloudsearchV1::FieldValueList>]
        attr_accessor :fields
      
        def initialize(**args)
          @doc_id = args[:doc_id] unless args[:doc_id].nil?
          @rank = args[:rank] unless args[:rank].nil?
          @fields = args[:fields] unless args[:fields].nil?
        end
      end

      # The values of a document field under the same field name.
      class FieldValueList
        include Google::Apis::Core::Hashable
      
        # The list of typed values.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudsearchV1::FieldValue>]
        attr_accessor :values
      
        def initialize(**args)
          @values = args[:values] unless args[:values].nil?
        end
      end

      # The value of a document field and associated metadata. Exactly one of the
      # value fields may be set.
      class FieldValue
        include Google::Apis::Core::Hashable
      
        # The value of a string-valued field.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # The value of a timestamp-valued field.
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        # The value of a number-valued field.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        # The value of a GEO-valued field, represented in string with any of the listed [
        # ways of writing coordinates](http://en.wikipedia.org/wiki/
        # Geographic_coordinate_conversion#Ways_of_writing_coordinates)
        # Corresponds to the JSON property `geoValue`
        # @return [String]
        attr_accessor :geo_value
      
        # The format of a string value. By default, the string format is `DEFAULT`,
        # where a format will be automatically detected.
        # Corresponds to the JSON property `stringFormat`
        # @return [String]
        attr_accessor :string_format
      
        # The language of a string value. If given, the language must be a valid `ISO
        # 639-1` code.
        # Corresponds to the JSON property `lang`
        # @return [String]
        attr_accessor :lang
      
        def initialize(**args)
          @string_value = args[:string_value] unless args[:string_value].nil?
          @timestamp_value = args[:timestamp_value] unless args[:timestamp_value].nil?
          @number_value = args[:number_value] unless args[:number_value].nil?
          @geo_value = args[:geo_value] unless args[:geo_value].nil?
          @string_format = args[:string_format] unless args[:string_format].nil?
          @lang = args[:lang] unless args[:lang].nil?
        end
      end

      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
        end
      end

      # A response returned from a listing documents request.
      class ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of documents.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::CloudsearchV1::Document>]
        attr_accessor :documents
      
        # If there are more results, retrieve them by invoking list documents call with
        # the same arguments and this `nextPageToken`. If there are no more results,
        # this field is not set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
          @documents = args[:documents] unless args[:documents].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end

      # A response returned from a listing indexes request.
      class ListIndexesResponse
        include Google::Apis::Core::Hashable
      
        # The information about available indexes.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::CloudsearchV1::IndexInfo>]
        attr_accessor :indexes
      
        # If there are more results, retrieve them by invoking list indexes call with
        # the same arguments and this `nextPageToken`. If there are no more results,
        # this field is not set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
          @indexes = args[:indexes] unless args[:indexes].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end

      # Information about an index.
      class IndexInfo
        include Google::Apis::Core::Hashable
      
        # The project associated with the index. It cannot be the empty string.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The index identifier. It cannot be the empty string. It must contain only
        # visible, printable ASCII characters (ASCII codes 33 through 126 inclusive) and
        # be no longer than 100 characters. It cannot begin with an exclamation point ('!
        # '), and it can't begin and end with double underscores ("__").
        # Corresponds to the JSON property `indexId`
        # @return [String]
        attr_accessor :index_id
      
        # Names of indexed fields.
        # Corresponds to the JSON property `indexedField`
        # @return [Google::Apis::CloudsearchV1::FieldNames]
        attr_accessor :indexed_field
      
        def initialize(**args)
          @project_id = args[:project_id] unless args[:project_id].nil?
          @index_id = args[:index_id] unless args[:index_id].nil?
          @indexed_field = args[:indexed_field] unless args[:indexed_field].nil?
        end
      end

      # Names of indexed fields.
      class FieldNames
        include Google::Apis::Core::Hashable
      
        # The names of fields in which TEXT values are stored.
        # Corresponds to the JSON property `textFields`
        # @return [Array<String>]
        attr_accessor :text_fields
      
        # The names of fields in which HTML values are stored.
        # Corresponds to the JSON property `htmlFields`
        # @return [Array<String>]
        attr_accessor :html_fields
      
        # The names of fields in which ATOM values are stored.
        # Corresponds to the JSON property `atomFields`
        # @return [Array<String>]
        attr_accessor :atom_fields
      
        # The names of fields in which DATE values are stored.
        # Corresponds to the JSON property `dateFields`
        # @return [Array<String>]
        attr_accessor :date_fields
      
        # The names of fields in which NUMBER values are stored.
        # Corresponds to the JSON property `numberFields`
        # @return [Array<String>]
        attr_accessor :number_fields
      
        # The names of fields in which GEO values are stored.
        # Corresponds to the JSON property `geoFields`
        # @return [Array<String>]
        attr_accessor :geo_fields
      
        def initialize(**args)
          @text_fields = args[:text_fields] unless args[:text_fields].nil?
          @html_fields = args[:html_fields] unless args[:html_fields].nil?
          @atom_fields = args[:atom_fields] unless args[:atom_fields].nil?
          @date_fields = args[:date_fields] unless args[:date_fields].nil?
          @number_fields = args[:number_fields] unless args[:number_fields].nil?
          @geo_fields = args[:geo_fields] unless args[:geo_fields].nil?
        end
      end

      # A response returned from a search request.
      class SearchResponse
        include Google::Apis::Core::Hashable
      
        # The list of documents that match the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudsearchV1::SearchResult>]
        attr_accessor :results
      
        # The number of documents that match the query. It is greater than or equal to
        # the number of documents actually returned. This is an approximation and not an
        # exact count unless it is less than or equal to `matchedCountAccuracy` in
        # search parameter.
        # Corresponds to the JSON property `matchedCount`
        # @return [String]
        attr_accessor :matched_count
      
        def initialize(**args)
          @results = args[:results] unless args[:results].nil?
          @matched_count = args[:matched_count] unless args[:matched_count].nil?
        end
      end

      # A document returned in a SearchResponse.
      class SearchResult
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the document.
        # Corresponds to the JSON property `docId`
        # @return [String]
        attr_accessor :doc_id
      
        # The list of fields in the result. Each field is either from the stored
        # document, the built-in fields (`_rank`, the document rank, and `_score` if
        # scoring is enabled), or computed from any extra `fieldExpressions` defined in
        # the request. For example, if a request contains a `fieldExpressions` named `"
        # TotalPrice"` and expressed as `"Price + Tax"`, the result will have a field
        # whose name is `"TotalPrice"` and whose value is set to the computed sum of the
        # value of field `"Price"` and the value of field `"Tax"`. If a request contains
        # a `fieldExpressions` named `"snippet"` and expressed as `"snippet(\"good times\
        # ", content)"`, the result will have a field whose name is `"snippet"` and
        # whose value contains a snippet of text from field `"content"` matching the
        # query "good times".
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::CloudsearchV1::FieldValueList>]
        attr_accessor :fields
      
        # If there are more results, retrieve them by invoking search call with the same
        # arguments and this `nextPageToken`. If there are no more results, this field
        # is not set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
          @doc_id = args[:doc_id] unless args[:doc_id].nil?
          @fields = args[:fields] unless args[:fields].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
    end
  end
end
