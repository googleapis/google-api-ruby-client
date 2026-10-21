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
      
      # A structured review comment anchored to a specific location in the document.
      class AnchoredReviewComment
        include Google::Apis::Core::Hashable
      
        # Output only. Detailed markdown explanation of the review comment.
        # Corresponds to the JSON property `bodyMarkdown`
        # @return [String]
        attr_accessor :body_markdown
      
        # Structured citation verification report for a single bibliography reference.
        # Corresponds to the JSON property `citationReport`
        # @return [Google::Apis::DeepreviewV1::CitationReport]
        attr_accessor :citation_report
      
        # Output only. Unique identifier for the comment within the review.
        # Corresponds to the JSON property `commentId`
        # @return [String]
        attr_accessor :comment_id
      
        # Polymorphic location targeting either a PDF page region/quote or text lines.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DeepreviewV1::DocumentLocation]
        attr_accessor :location
      
        # Output only. Severity classification of the comment.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. Optional suggested replacement text or edit for the anchored span.
        # Corresponds to the JSON property `suggestedEdit`
        # @return [String]
        attr_accessor :suggested_edit
      
        # Output only. Short one-line summary of the review comment.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_markdown = args[:body_markdown] if args.key?(:body_markdown)
          @citation_report = args[:citation_report] if args.key?(:citation_report)
          @comment_id = args[:comment_id] if args.key?(:comment_id)
          @location = args[:location] if args.key?(:location)
          @severity = args[:severity] if args.key?(:severity)
          @suggested_edit = args[:suggested_edit] if args.key?(:suggested_edit)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Author name components.
      class Author
        include Google::Apis::Core::Hashable
      
        # Output only. Author family name / surname (or organization name).
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Output only. Author given name / initials.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Structured bibliographic metadata for an extracted or retrieved work.
      class CitationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Ordered list of authors.
        # Corresponds to the JSON property `authors`
        # @return [Array<Google::Apis::DeepreviewV1::Author>]
        attr_accessor :authors
      
        # Output only. Digital Object Identifier (DOI).
        # Corresponds to the JSON property `doi`
        # @return [String]
        attr_accessor :doi
      
        # Output only. Journal, conference, or venue name.
        # Corresponds to the JSON property `journal`
        # @return [String]
        attr_accessor :journal
      
        # Output only. Page range or article number.
        # Corresponds to the JSON property `pages`
        # @return [String]
        attr_accessor :pages
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `publicationDate`
        # @return [Google::Apis::DeepreviewV1::Date]
        attr_accessor :publication_date
      
        # Output only. Source database for retrieved metadata (e.g., "openalex", "
        # crossref"). Empty on `extracted_metadata`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. Work title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. URLs associated with the reference.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        # Output only. Volume identifier.
        # Corresponds to the JSON property `volume`
        # @return [String]
        attr_accessor :volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authors = args[:authors] if args.key?(:authors)
          @doi = args[:doi] if args.key?(:doi)
          @journal = args[:journal] if args.key?(:journal)
          @pages = args[:pages] if args.key?(:pages)
          @publication_date = args[:publication_date] if args.key?(:publication_date)
          @source = args[:source] if args.key?(:source)
          @title = args[:title] if args.key?(:title)
          @urls = args[:urls] if args.key?(:urls)
          @volume = args[:volume] if args.key?(:volume)
        end
      end
      
      # Structured citation verification report for a single bibliography reference.
      class CitationReport
        include Google::Apis::Core::Hashable
      
        # Output only. Generated BibTeX citation key (e.g., "smith2023deep").
        # Corresponds to the JSON property `citationKey`
        # @return [String]
        attr_accessor :citation_key
      
        # Output only. BibTeX entry type (e.g., "article", "inproceedings", "misc").
        # Corresponds to the JSON property `entryType`
        # @return [String]
        attr_accessor :entry_type
      
        # Structured bibliographic metadata for an extracted or retrieved work.
        # Corresponds to the JSON property `extractedMetadata`
        # @return [Google::Apis::DeepreviewV1::CitationMetadata]
        attr_accessor :extracted_metadata
      
        # Output only. Per-field comparisons (populated only when `retrieved_metadata`
        # is present).
        # Corresponds to the JSON property `fieldComparisons`
        # @return [Array<Google::Apis::DeepreviewV1::FieldComparison>]
        attr_accessor :field_comparisons
      
        # Output only. Final combined verdict after database lookup and search grounding.
        # Corresponds to the JSON property `finalVerdict`
        # @return [String]
        attr_accessor :final_verdict
      
        # Output only. Whether the first author's family name matched between extracted
        # and retrieved metadata.
        # Corresponds to the JSON property `firstAuthorFamilyNameMatch`
        # @return [Boolean]
        attr_accessor :first_author_family_name_match
        alias_method :first_author_family_name_match?, :first_author_family_name_match
      
        # Output only. Web sources surfaced during Google Search grounding.
        # Corresponds to the JSON property `groundingUrls`
        # @return [Array<Google::Apis::DeepreviewV1::GroundingUrl>]
        attr_accessor :grounding_urls
      
        # Output only. Verdict from scholarly database lookup (OpenAlex / Crossref)
        # before search grounding.
        # Corresponds to the JSON property `lookupVerdict`
        # @return [String]
        attr_accessor :lookup_verdict
      
        # Output only. Verbatim reference string extracted from the paper's bibliography.
        # Corresponds to the JSON property `rawReference`
        # @return [String]
        attr_accessor :raw_reference
      
        # Output only. 1-indexed bibliography reference number in the paper.
        # Corresponds to the JSON property `refNum`
        # @return [Fixnum]
        attr_accessor :ref_num
      
        # Output only. Formatted BibTeX entry for the verified `retrieved_metadata` when
        # present. Empty when `retrieved_metadata` is absent.
        # Corresponds to the JSON property `retrievedBibtex`
        # @return [String]
        attr_accessor :retrieved_bibtex
      
        # Structured bibliographic metadata for an extracted or retrieved work.
        # Corresponds to the JSON property `retrievedMetadata`
        # @return [Google::Apis::DeepreviewV1::CitationMetadata]
        attr_accessor :retrieved_metadata
      
        # Output only. Strategy that produced the scholarly database match (e.g., "doi",
        # "title", "title_author", "autocomplete"). Empty when no title-matching
        # candidate was found.
        # Corresponds to the JSON property `searchMethod`
        # @return [String]
        attr_accessor :search_method
      
        # Output only. Explanation from the Google Search grounding verification step (
        # when run).
        # Corresponds to the JSON property `searchRationale`
        # @return [String]
        attr_accessor :search_rationale
      
        # Output only. Verdict from Google Search grounding verification (when run).
        # Corresponds to the JSON property `searchVerdict`
        # @return [String]
        attr_accessor :search_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_key = args[:citation_key] if args.key?(:citation_key)
          @entry_type = args[:entry_type] if args.key?(:entry_type)
          @extracted_metadata = args[:extracted_metadata] if args.key?(:extracted_metadata)
          @field_comparisons = args[:field_comparisons] if args.key?(:field_comparisons)
          @final_verdict = args[:final_verdict] if args.key?(:final_verdict)
          @first_author_family_name_match = args[:first_author_family_name_match] if args.key?(:first_author_family_name_match)
          @grounding_urls = args[:grounding_urls] if args.key?(:grounding_urls)
          @lookup_verdict = args[:lookup_verdict] if args.key?(:lookup_verdict)
          @raw_reference = args[:raw_reference] if args.key?(:raw_reference)
          @ref_num = args[:ref_num] if args.key?(:ref_num)
          @retrieved_bibtex = args[:retrieved_bibtex] if args.key?(:retrieved_bibtex)
          @retrieved_metadata = args[:retrieved_metadata] if args.key?(:retrieved_metadata)
          @search_method = args[:search_method] if args.key?(:search_method)
          @search_rationale = args[:search_rationale] if args.key?(:search_rationale)
          @search_verdict = args[:search_verdict] if args.key?(:search_verdict)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Configuration options for the multi-agent document review execution pipeline.
      class DeepReviewRunConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Input only. Developer Bring-Your-Own-Key Gemini API key. When
        # provided, requests are billed to the caller's Gemini API project. Input only;
        # forwarded to the asynchronous review runner in the task payload and never
        # persisted in database records or returned in review resources (see companion
        # field `gemini_api_key_set`, AIP-147).
        # Corresponds to the JSON property `geminiApiKey`
        # @return [String]
        attr_accessor :gemini_api_key
      
        # Output only. Indicates whether a developer Bring-Your-Own-Key Gemini API key
        # was provided for this review run.
        # Corresponds to the JSON property `geminiApiKeySet`
        # @return [Boolean]
        attr_accessor :gemini_api_key_set
        alias_method :gemini_api_key_set?, :gemini_api_key_set
      
        # Optional. The Gemini model name/version to use (e.g., "gemini-1.5-pro", "
        # gemini-2.0-flash").
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. Review execution topology profile to use.
        # Corresponds to the JSON property `topology`
        # @return [String]
        attr_accessor :topology
      
        # Optional. User-provided guidance, focus areas, or custom evaluation
        # instructions passed to the review agents.
        # Corresponds to the JSON property `userPrompt`
        # @return [String]
        attr_accessor :user_prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gemini_api_key = args[:gemini_api_key] if args.key?(:gemini_api_key)
          @gemini_api_key_set = args[:gemini_api_key_set] if args.key?(:gemini_api_key_set)
          @model = args[:model] if args.key?(:model)
          @topology = args[:topology] if args.key?(:topology)
          @user_prompt = args[:user_prompt] if args.key?(:user_prompt)
        end
      end
      
      # Document Resource Model representing an uploaded document for review.
      # Documents are immutable post-creation; to review a new version, create a new
      # Document.
      class Document
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the document was initially created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided display title or filename for the document.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configuration for importing a document directly from Google Drive.
        # Corresponds to the JSON property `driveSource`
        # @return [Google::Apis::DeepreviewV1::DriveSource]
        attr_accessor :drive_source
      
        # Lightweight summary of a Review execution run for display in Document views.
        # Corresponds to the JSON property `latestReviewSummary`
        # @return [Google::Apis::DeepreviewV1::ReviewSummary]
        attr_accessor :latest_review_summary
      
        # Identifier. Resource name in format `documents/`document``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @drive_source = args[:drive_source] if args.key?(:drive_source)
          @latest_review_summary = args[:latest_review_summary] if args.key?(:latest_review_summary)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Polymorphic location targeting either a PDF page region/quote or text lines.
      class DocumentLocation
        include Google::Apis::Core::Hashable
      
        # Location anchor within a PDF document.
        # Corresponds to the JSON property `pdf`
        # @return [Google::Apis::DeepreviewV1::PdfLocation]
        attr_accessor :pdf
      
        # Location anchor within a plain-text, Markdown, or LaTeX source document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DeepreviewV1::TextLocation]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pdf = args[:pdf] if args.key?(:pdf)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Response message for downloading a Document's raw content via Scotty media.
      class DownloadDocumentResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for importing a document directly from Google Drive.
      class DriveSource
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The Google Drive file ID (e.g. "
        # 1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms"). For Google Drive shortcuts,
        # callers must pass the resolved target file's `file_id` and `resource_key`.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # Optional. Input only. Immutable. Resource key (`^[a-zA-Z0-9_-]`1,128`$`)
        # required to access certain older link-shared Google Drive files returned by
        # the Google Drive Picker (for shortcuts, pass the resolved target file's
        # resource key). Never persisted in database records or returned in Document
        # resources (see companion field `resource_key_set`, AIP-147).
        # Corresponds to the JSON property `resourceKey`
        # @return [String]
        attr_accessor :resource_key
      
        # Output only. Indicates whether a resource key was provided for this Drive
        # source.
        # Corresponds to the JSON property `resourceKeySet`
        # @return [Boolean]
        attr_accessor :resource_key_set
        alias_method :resource_key_set?, :resource_key_set
      
        # Optional. Input only. Immutable. Specific revision ID to import (defaults to
        # latest head revision).
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_id = args[:file_id] if args.key?(:file_id)
          @resource_key = args[:resource_key] if args.key?(:resource_key)
          @resource_key_set = args[:resource_key_set] if args.key?(:resource_key_set)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Per-field comparison result between extracted and retrieved metadata.
      class FieldComparison
        include Google::Apis::Core::Hashable
      
        # Output only. Human-readable comparison detail (e.g., "extracted=2023, found=
        # 2024 (diff=1)").
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Output only. Field key ("title", "authors", "year", "journal", "volume", "
        # pages", "doi").
        # Corresponds to the JSON property `fieldKey`
        # @return [String]
        attr_accessor :field_key
      
        # Output only. Whether the extracted and retrieved values matched.
        # Corresponds to the JSON property `match`
        # @return [Boolean]
        attr_accessor :match
        alias_method :match?, :match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @field_key = args[:field_key] if args.key?(:field_key)
          @match = args[:match] if args.key?(:match)
        end
      end
      
      # Web source URL surfaced during Google Search grounding verification.
      class GroundingUrl
        include Google::Apis::Core::Hashable
      
        # Output only. Source page title or domain.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Source URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response message for listing Document resources.
      class ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Document resources.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DeepreviewV1::Document>]
        attr_accessor :documents
      
        # A token to retrieve the next page of results, or empty if no further pages
        # exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DeepreviewV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing Review resources.
      class ListReviewsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results, or empty if no further pages
        # exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Review resources.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::DeepreviewV1::Review>]
        attr_accessor :reviews
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reviews = args[:reviews] if args.key?(:reviews)
        end
      end
      
      # Bounding box in normalized [0.0, 1.0] page coordinates (origin top-left).
      class NormalizedBoundingBox
        include Google::Apis::Core::Hashable
      
        # Output only. Bottom coordinate in [0.0, 1.0].
        # Corresponds to the JSON property `bottom`
        # @return [Float]
        attr_accessor :bottom
      
        # Output only. Left coordinate in [0.0, 1.0].
        # Corresponds to the JSON property `left`
        # @return [Float]
        attr_accessor :left
      
        # Output only. Right coordinate in [0.0, 1.0].
        # Corresponds to the JSON property `right`
        # @return [Float]
        attr_accessor :right
      
        # Output only. Top coordinate in [0.0, 1.0].
        # Corresponds to the JSON property `top`
        # @return [Float]
        attr_accessor :top
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom = args[:bottom] if args.key?(:bottom)
          @left = args[:left] if args.key?(:left)
          @right = args[:right] if args.key?(:right)
          @top = args[:top] if args.key?(:top)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeepreviewV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Location anchor within a PDF document.
      class PdfLocation
        include Google::Apis::Core::Hashable
      
        # Output only. Normalized bounding boxes [0.0, 1.0] relative to page width and
        # height. At most 50 bounding boxes are returned per anchored span.
        # Corresponds to the JSON property `boundingBoxes`
        # @return [Array<Google::Apis::DeepreviewV1::NormalizedBoundingBox>]
        attr_accessor :bounding_boxes
      
        # Output only. 1-indexed page number within the PDF document.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # W3C Web Annotation TextQuoteSelector for resilient text anchoring (https://www.
        # w3.org/TR/annotation-model/#text-quote-selector).
        # Corresponds to the JSON property `quoteSelector`
        # @return [Google::Apis::DeepreviewV1::TextQuoteSelector]
        attr_accessor :quote_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_boxes = args[:bounding_boxes] if args.key?(:bounding_boxes)
          @page_number = args[:page_number] if args.key?(:page_number)
          @quote_selector = args[:quote_selector] if args.key?(:quote_selector)
        end
      end
      
      # Encapsulates the synthesized output or failure details of a single review
      # execution.
      class Result
        include Google::Apis::Core::Hashable
      
        # Output only. Structured review comments anchored to specific locations in the
        # document. At most 300 anchored comments are returned per review.
        # Corresponds to the JSON property `anchoredComments`
        # @return [Array<Google::Apis::DeepreviewV1::AnchoredReviewComment>]
        attr_accessor :anchored_comments
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeepreviewV1::Status]
        attr_accessor :error
      
        # Output only. Synthesized review report markdown.
        # Corresponds to the JSON property `reviewMarkdown`
        # @return [String]
        attr_accessor :review_markdown
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anchored_comments = args[:anchored_comments] if args.key?(:anchored_comments)
          @error = args[:error] if args.key?(:error)
          @review_markdown = args[:review_markdown] if args.key?(:review_markdown)
        end
      end
      
      # Review Sub-Resource Model representing an evaluation run of a document.
      class Review
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when this review attempt was initiated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Timestamp when the review reached a terminal state.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifier. Resource name in format `documents/`document`/reviews/`review``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Estimated completion progress percentage of the review in [0, 100]
        # .
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Encapsulates the synthesized output or failure details of a single review
        # execution.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DeepreviewV1::Result]
        attr_accessor :result
      
        # Configuration options for the multi-agent document review execution pipeline.
        # Corresponds to the JSON property `runConfig`
        # @return [Google::Apis::DeepreviewV1::DeepReviewRunConfig]
        attr_accessor :run_config
      
        # Output only. Timestamp when the worker started evaluation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current review lifecycle state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @result = args[:result] if args.key?(:result)
          @run_config = args[:run_config] if args.key?(:run_config)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Lightweight summary of a Review execution run for display in Document views.
      class ReviewSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when this review attempt was initiated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Resource name of the Review. Format: `documents/`document`/
        # reviews/`review``
        # Corresponds to the JSON property `review`
        # @return [String]
        attr_accessor :review
      
        # Output only. Current review lifecycle state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @review = args[:review] if args.key?(:review)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Location anchor within a plain-text, Markdown, or LaTeX source document.
      class TextLocation
        include Google::Apis::Core::Hashable
      
        # Output only. Optional 1-indexed inclusive first column offset within `
        # first_line`.
        # Corresponds to the JSON property `firstColumn`
        # @return [Fixnum]
        attr_accessor :first_column
      
        # Output only. 1-indexed inclusive first line number.
        # Corresponds to the JSON property `firstLine`
        # @return [Fixnum]
        attr_accessor :first_line
      
        # Output only. Optional 1-indexed inclusive last column offset within `last_line`
        # .
        # Corresponds to the JSON property `lastColumn`
        # @return [Fixnum]
        attr_accessor :last_column
      
        # Output only. 1-indexed inclusive last line number.
        # Corresponds to the JSON property `lastLine`
        # @return [Fixnum]
        attr_accessor :last_line
      
        # Output only. Verbatim snippet of the anchored source line(s).
        # Corresponds to the JSON property `quotedLinePreview`
        # @return [String]
        attr_accessor :quoted_line_preview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_column = args[:first_column] if args.key?(:first_column)
          @first_line = args[:first_line] if args.key?(:first_line)
          @last_column = args[:last_column] if args.key?(:last_column)
          @last_line = args[:last_line] if args.key?(:last_line)
          @quoted_line_preview = args[:quoted_line_preview] if args.key?(:quoted_line_preview)
        end
      end
      
      # W3C Web Annotation TextQuoteSelector for resilient text anchoring (https://www.
      # w3.org/TR/annotation-model/#text-quote-selector).
      class TextQuoteSelector
        include Google::Apis::Core::Hashable
      
        # Output only. Verbatim substring extracted from the document character stream.
        # Corresponds to the JSON property `exact`
        # @return [String]
        attr_accessor :exact
      
        # Output only. Characters immediately preceding `exact` for disambiguation.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # Output only. Characters immediately following `exact` for disambiguation.
        # Corresponds to the JSON property `suffix`
        # @return [String]
        attr_accessor :suffix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact = args[:exact] if args.key?(:exact)
          @prefix = args[:prefix] if args.key?(:prefix)
          @suffix = args[:suffix] if args.key?(:suffix)
        end
      end
    end
  end
end
