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
    module DeepreviewV1
      
      class AnchoredReviewComment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Author
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CitationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeepReviewRunConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldComparison
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroundingUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NormalizedBoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PdfLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReviewSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextQuoteSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnchoredReviewComment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body_markdown, as: 'bodyMarkdown'
          property :citation_report, as: 'citationReport', class: Google::Apis::DeepreviewV1::CitationReport, decorator: Google::Apis::DeepreviewV1::CitationReport::Representation
      
          property :comment_id, as: 'commentId'
          property :location, as: 'location', class: Google::Apis::DeepreviewV1::DocumentLocation, decorator: Google::Apis::DeepreviewV1::DocumentLocation::Representation
      
          property :severity, as: 'severity'
          property :suggested_edit, as: 'suggestedEdit'
          property :summary, as: 'summary'
        end
      end
      
      class Author
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authors, as: 'authors', class: Google::Apis::DeepreviewV1::Author, decorator: Google::Apis::DeepreviewV1::Author::Representation
      
          property :doi, as: 'doi'
          property :journal, as: 'journal'
          property :pages, as: 'pages'
          property :publication_date, as: 'publicationDate', class: Google::Apis::DeepreviewV1::Date, decorator: Google::Apis::DeepreviewV1::Date::Representation
      
          property :source, as: 'source'
          property :title, as: 'title'
          collection :urls, as: 'urls'
          property :volume, as: 'volume'
        end
      end
      
      class CitationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_key, as: 'citationKey'
          property :entry_type, as: 'entryType'
          property :extracted_metadata, as: 'extractedMetadata', class: Google::Apis::DeepreviewV1::CitationMetadata, decorator: Google::Apis::DeepreviewV1::CitationMetadata::Representation
      
          collection :field_comparisons, as: 'fieldComparisons', class: Google::Apis::DeepreviewV1::FieldComparison, decorator: Google::Apis::DeepreviewV1::FieldComparison::Representation
      
          property :final_verdict, as: 'finalVerdict'
          property :first_author_family_name_match, as: 'firstAuthorFamilyNameMatch'
          collection :grounding_urls, as: 'groundingUrls', class: Google::Apis::DeepreviewV1::GroundingUrl, decorator: Google::Apis::DeepreviewV1::GroundingUrl::Representation
      
          property :lookup_verdict, as: 'lookupVerdict'
          property :raw_reference, as: 'rawReference'
          property :ref_num, as: 'refNum'
          property :retrieved_bibtex, as: 'retrievedBibtex'
          property :retrieved_metadata, as: 'retrievedMetadata', class: Google::Apis::DeepreviewV1::CitationMetadata, decorator: Google::Apis::DeepreviewV1::CitationMetadata::Representation
      
          property :search_method, as: 'searchMethod'
          property :search_rationale, as: 'searchRationale'
          property :search_verdict, as: 'searchVerdict'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DeepReviewRunConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gemini_api_key, as: 'geminiApiKey'
          property :gemini_api_key_set, as: 'geminiApiKeySet'
          property :model, as: 'model'
          property :topology, as: 'topology'
          property :user_prompt, as: 'userPrompt'
        end
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :drive_source, as: 'driveSource', class: Google::Apis::DeepreviewV1::DriveSource, decorator: Google::Apis::DeepreviewV1::DriveSource::Representation
      
          property :latest_review_summary, as: 'latestReviewSummary', class: Google::Apis::DeepreviewV1::ReviewSummary, decorator: Google::Apis::DeepreviewV1::ReviewSummary::Representation
      
          property :name, as: 'name'
        end
      end
      
      class DocumentLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pdf, as: 'pdf', class: Google::Apis::DeepreviewV1::PdfLocation, decorator: Google::Apis::DeepreviewV1::PdfLocation::Representation
      
          property :text, as: 'text', class: Google::Apis::DeepreviewV1::TextLocation, decorator: Google::Apis::DeepreviewV1::TextLocation::Representation
      
        end
      end
      
      class DownloadDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DriveSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :resource_key, as: 'resourceKey'
          property :resource_key_set, as: 'resourceKeySet'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FieldComparison
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :field_key, as: 'fieldKey'
          property :match, as: 'match'
        end
      end
      
      class GroundingUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class ListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DeepreviewV1::Document, decorator: Google::Apis::DeepreviewV1::Document::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeepreviewV1::Operation, decorator: Google::Apis::DeepreviewV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reviews, as: 'reviews', class: Google::Apis::DeepreviewV1::Review, decorator: Google::Apis::DeepreviewV1::Review::Representation
      
        end
      end
      
      class NormalizedBoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom, as: 'bottom'
          property :left, as: 'left'
          property :right, as: 'right'
          property :top, as: 'top'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DeepreviewV1::Status, decorator: Google::Apis::DeepreviewV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PdfLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounding_boxes, as: 'boundingBoxes', class: Google::Apis::DeepreviewV1::NormalizedBoundingBox, decorator: Google::Apis::DeepreviewV1::NormalizedBoundingBox::Representation
      
          property :page_number, as: 'pageNumber'
          property :quote_selector, as: 'quoteSelector', class: Google::Apis::DeepreviewV1::TextQuoteSelector, decorator: Google::Apis::DeepreviewV1::TextQuoteSelector::Representation
      
        end
      end
      
      class Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :anchored_comments, as: 'anchoredComments', class: Google::Apis::DeepreviewV1::AnchoredReviewComment, decorator: Google::Apis::DeepreviewV1::AnchoredReviewComment::Representation
      
          property :error, as: 'error', class: Google::Apis::DeepreviewV1::Status, decorator: Google::Apis::DeepreviewV1::Status::Representation
      
          property :review_markdown, as: 'reviewMarkdown'
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :progress_percent, as: 'progressPercent'
          property :result, as: 'result', class: Google::Apis::DeepreviewV1::Result, decorator: Google::Apis::DeepreviewV1::Result::Representation
      
          property :run_config, as: 'runConfig', class: Google::Apis::DeepreviewV1::DeepReviewRunConfig, decorator: Google::Apis::DeepreviewV1::DeepReviewRunConfig::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class ReviewSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :review, as: 'review'
          property :state, as: 'state'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TextLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_column, as: 'firstColumn'
          property :first_line, as: 'firstLine'
          property :last_column, as: 'lastColumn'
          property :last_line, as: 'lastLine'
          property :quoted_line_preview, as: 'quotedLinePreview'
        end
      end
      
      class TextQuoteSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact, as: 'exact'
          property :prefix, as: 'prefix'
          property :suffix, as: 'suffix'
        end
      end
    end
  end
end
