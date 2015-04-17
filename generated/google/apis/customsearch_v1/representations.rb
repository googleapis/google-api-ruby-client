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
    module CustomsearchV1
      class ContextRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PromotionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SearchRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ContextRepresentation < Google::Apis::Core::JsonRepresentation
        collection :facets, as: 'facets', :class => Array do
          include Representable::JSON::Collection
          items class: Google::Apis::CustomsearchV1::Context::Facet do
          property :anchor, as: 'anchor'
          property :label, as: 'label'
          property :label_with_op, as: 'label_with_op'
        end
        
        end
        
        
        property :title, as: 'title'
      end

      # @private
      class PromotionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :body_lines, as: 'bodyLines', class: Google::Apis::CustomsearchV1::Promotion::BodyLine do
          property :html_title, as: 'htmlTitle'
          property :link, as: 'link'
          property :title, as: 'title'
          property :url, as: 'url'
        end
        
        
        property :display_link, as: 'displayLink'
        property :html_title, as: 'htmlTitle'
        property :image, as: 'image', class: Google::Apis::CustomsearchV1::Promotion::Image do
          property :height, as: 'height'
          property :source, as: 'source'
          property :width, as: 'width'
        end
        
        property :link, as: 'link'
        property :title, as: 'title'
      end

      # @private
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation
        property :count, as: 'count'
        property :cr, as: 'cr'
        property :cref, as: 'cref'
        property :cx, as: 'cx'
        property :date_restrict, as: 'dateRestrict'
        property :disable_cn_tw_translation, as: 'disableCnTwTranslation'
        property :exact_terms, as: 'exactTerms'
        property :exclude_terms, as: 'excludeTerms'
        property :file_type, as: 'fileType'
        property :filter, as: 'filter'
        property :gl, as: 'gl'
        property :google_host, as: 'googleHost'
        property :high_range, as: 'highRange'
        property :hl, as: 'hl'
        property :hq, as: 'hq'
        property :img_color_type, as: 'imgColorType'
        property :img_dominant_color, as: 'imgDominantColor'
        property :img_size, as: 'imgSize'
        property :img_type, as: 'imgType'
        property :input_encoding, as: 'inputEncoding'
        property :language, as: 'language'
        property :link_site, as: 'linkSite'
        property :low_range, as: 'lowRange'
        property :or_terms, as: 'orTerms'
        property :output_encoding, as: 'outputEncoding'
        property :related_site, as: 'relatedSite'
        property :rights, as: 'rights'
        property :safe, as: 'safe'
        property :search_terms, as: 'searchTerms'
        property :search_type, as: 'searchType'
        property :site_search, as: 'siteSearch'
        property :site_search_filter, as: 'siteSearchFilter'
        property :sort, as: 'sort'
        property :start_index, as: 'startIndex'
        property :start_page, as: 'startPage'
        property :title, as: 'title'
        property :total_results, as: 'totalResults'
      end

      # @private
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :cache_id, as: 'cacheId'
        property :display_link, as: 'displayLink'
        property :file_format, as: 'fileFormat'
        property :formatted_url, as: 'formattedUrl'
        property :html_formatted_url, as: 'htmlFormattedUrl'
        property :html_snippet, as: 'htmlSnippet'
        property :html_title, as: 'htmlTitle'
        property :image, as: 'image', class: Google::Apis::CustomsearchV1::Result::Image do
          property :byte_size, as: 'byteSize'
          property :context_link, as: 'contextLink'
          property :height, as: 'height'
          property :thumbnail_height, as: 'thumbnailHeight'
          property :thumbnail_link, as: 'thumbnailLink'
          property :thumbnail_width, as: 'thumbnailWidth'
          property :width, as: 'width'
        end
        
        property :kind, as: 'kind'
        collection :labels, as: 'labels', class: Google::Apis::CustomsearchV1::Result::Label do
          property :display_name, as: 'displayName'
          property :label_with_op, as: 'label_with_op'
          property :name, as: 'name'
        end
        
        
        property :link, as: 'link'
        property :mime, as: 'mime'
        hash :pagemap, as: 'pagemap', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :snippet, as: 'snippet'
        property :title, as: 'title'
      end

      # @private
      class SearchRepresentation < Google::Apis::Core::JsonRepresentation
        property :context, as: 'context', class: Google::Apis::CustomsearchV1::Context, decorator: Google::Apis::CustomsearchV1::ContextRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CustomsearchV1::Result, decorator: Google::Apis::CustomsearchV1::ResultRepresentation
        
        
        property :kind, as: 'kind'
        collection :promotions, as: 'promotions', class: Google::Apis::CustomsearchV1::Promotion, decorator: Google::Apis::CustomsearchV1::PromotionRepresentation
        
        
        hash :queries, as: 'queries', :class => Array do
          include Representable::JSON::Collection
          items class: Google::Apis::CustomsearchV1::Query, decorator: Google::Apis::CustomsearchV1::QueryRepresentation
        
        end
        
        
        property :search_information, as: 'searchInformation', class: Google::Apis::CustomsearchV1::Search::SearchInformation do
          property :formatted_search_time, as: 'formattedSearchTime'
          property :formatted_total_results, as: 'formattedTotalResults'
          property :search_time, as: 'searchTime'
          property :total_results, as: 'totalResults'
        end
        
        property :spelling, as: 'spelling', class: Google::Apis::CustomsearchV1::Search::Spelling do
          property :corrected_query, as: 'correctedQuery'
          property :html_corrected_query, as: 'htmlCorrectedQuery'
        end
        
        property :url, as: 'url', class: Google::Apis::CustomsearchV1::Search::Url do
          property :template, as: 'template'
          property :type, as: 'type'
        end
      end
    end
  end
end
