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
      
      # 
      class Context
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `facets`
        # @return [Array<Array<Google::Apis::CustomsearchV1::Context::Facet>>]
        attr_accessor :facets
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facets = args[:facets] unless args[:facets].nil?
          @title = args[:title] unless args[:title].nil?
        end
        
        # 
        class Facet
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `anchor`
          # @return [String]
          attr_accessor :anchor
        
          # 
          # Corresponds to the JSON property `label`
          # @return [String]
          attr_accessor :label
        
          # 
          # Corresponds to the JSON property `label_with_op`
          # @return [String]
          attr_accessor :label_with_op
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @anchor = args[:anchor] unless args[:anchor].nil?
            @label = args[:label] unless args[:label].nil?
            @label_with_op = args[:label_with_op] unless args[:label_with_op].nil?
          end
        end
      end
      
      # 
      class Promotion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bodyLines`
        # @return [Array<Google::Apis::CustomsearchV1::Promotion::BodyLine>]
        attr_accessor :body_lines
      
        # 
        # Corresponds to the JSON property `displayLink`
        # @return [String]
        attr_accessor :display_link
      
        # 
        # Corresponds to the JSON property `htmlTitle`
        # @return [String]
        attr_accessor :html_title
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CustomsearchV1::Promotion::Image]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_lines = args[:body_lines] unless args[:body_lines].nil?
          @display_link = args[:display_link] unless args[:display_link].nil?
          @html_title = args[:html_title] unless args[:html_title].nil?
          @image = args[:image] unless args[:image].nil?
          @link = args[:link] unless args[:link].nil?
          @title = args[:title] unless args[:title].nil?
        end
        
        # 
        class BodyLine
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `htmlTitle`
          # @return [String]
          attr_accessor :html_title
        
          # 
          # Corresponds to the JSON property `link`
          # @return [String]
          attr_accessor :link
        
          # 
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # 
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @html_title = args[:html_title] unless args[:html_title].nil?
            @link = args[:link] unless args[:link].nil?
            @title = args[:title] unless args[:title].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
        
        # 
        class Image
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # 
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # 
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @height = args[:height] unless args[:height].nil?
            @source = args[:source] unless args[:source].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
      end
      
      # 
      class Query
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `cr`
        # @return [String]
        attr_accessor :cr
      
        # 
        # Corresponds to the JSON property `cref`
        # @return [String]
        attr_accessor :cref
      
        # 
        # Corresponds to the JSON property `cx`
        # @return [String]
        attr_accessor :cx
      
        # 
        # Corresponds to the JSON property `dateRestrict`
        # @return [String]
        attr_accessor :date_restrict
      
        # 
        # Corresponds to the JSON property `disableCnTwTranslation`
        # @return [String]
        attr_accessor :disable_cn_tw_translation
      
        # 
        # Corresponds to the JSON property `exactTerms`
        # @return [String]
        attr_accessor :exact_terms
      
        # 
        # Corresponds to the JSON property `excludeTerms`
        # @return [String]
        attr_accessor :exclude_terms
      
        # 
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        # 
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # 
        # Corresponds to the JSON property `gl`
        # @return [String]
        attr_accessor :gl
      
        # 
        # Corresponds to the JSON property `googleHost`
        # @return [String]
        attr_accessor :google_host
      
        # 
        # Corresponds to the JSON property `highRange`
        # @return [String]
        attr_accessor :high_range
      
        # 
        # Corresponds to the JSON property `hl`
        # @return [String]
        attr_accessor :hl
      
        # 
        # Corresponds to the JSON property `hq`
        # @return [String]
        attr_accessor :hq
      
        # 
        # Corresponds to the JSON property `imgColorType`
        # @return [String]
        attr_accessor :img_color_type
      
        # 
        # Corresponds to the JSON property `imgDominantColor`
        # @return [String]
        attr_accessor :img_dominant_color
      
        # 
        # Corresponds to the JSON property `imgSize`
        # @return [String]
        attr_accessor :img_size
      
        # 
        # Corresponds to the JSON property `imgType`
        # @return [String]
        attr_accessor :img_type
      
        # 
        # Corresponds to the JSON property `inputEncoding`
        # @return [String]
        attr_accessor :input_encoding
      
        # 
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # 
        # Corresponds to the JSON property `linkSite`
        # @return [String]
        attr_accessor :link_site
      
        # 
        # Corresponds to the JSON property `lowRange`
        # @return [String]
        attr_accessor :low_range
      
        # 
        # Corresponds to the JSON property `orTerms`
        # @return [String]
        attr_accessor :or_terms
      
        # 
        # Corresponds to the JSON property `outputEncoding`
        # @return [String]
        attr_accessor :output_encoding
      
        # 
        # Corresponds to the JSON property `relatedSite`
        # @return [String]
        attr_accessor :related_site
      
        # 
        # Corresponds to the JSON property `rights`
        # @return [String]
        attr_accessor :rights
      
        # 
        # Corresponds to the JSON property `safe`
        # @return [String]
        attr_accessor :safe
      
        # 
        # Corresponds to the JSON property `searchTerms`
        # @return [String]
        attr_accessor :search_terms
      
        # 
        # Corresponds to the JSON property `searchType`
        # @return [String]
        attr_accessor :search_type
      
        # 
        # Corresponds to the JSON property `siteSearch`
        # @return [String]
        attr_accessor :site_search
      
        # 
        # Corresponds to the JSON property `siteSearchFilter`
        # @return [String]
        attr_accessor :site_search_filter
      
        # 
        # Corresponds to the JSON property `sort`
        # @return [String]
        attr_accessor :sort
      
        # 
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # 
        # Corresponds to the JSON property `startPage`
        # @return [Fixnum]
        attr_accessor :start_page
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `totalResults`
        # @return [String]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] unless args[:count].nil?
          @cr = args[:cr] unless args[:cr].nil?
          @cref = args[:cref] unless args[:cref].nil?
          @cx = args[:cx] unless args[:cx].nil?
          @date_restrict = args[:date_restrict] unless args[:date_restrict].nil?
          @disable_cn_tw_translation = args[:disable_cn_tw_translation] unless args[:disable_cn_tw_translation].nil?
          @exact_terms = args[:exact_terms] unless args[:exact_terms].nil?
          @exclude_terms = args[:exclude_terms] unless args[:exclude_terms].nil?
          @file_type = args[:file_type] unless args[:file_type].nil?
          @filter = args[:filter] unless args[:filter].nil?
          @gl = args[:gl] unless args[:gl].nil?
          @google_host = args[:google_host] unless args[:google_host].nil?
          @high_range = args[:high_range] unless args[:high_range].nil?
          @hl = args[:hl] unless args[:hl].nil?
          @hq = args[:hq] unless args[:hq].nil?
          @img_color_type = args[:img_color_type] unless args[:img_color_type].nil?
          @img_dominant_color = args[:img_dominant_color] unless args[:img_dominant_color].nil?
          @img_size = args[:img_size] unless args[:img_size].nil?
          @img_type = args[:img_type] unless args[:img_type].nil?
          @input_encoding = args[:input_encoding] unless args[:input_encoding].nil?
          @language = args[:language] unless args[:language].nil?
          @link_site = args[:link_site] unless args[:link_site].nil?
          @low_range = args[:low_range] unless args[:low_range].nil?
          @or_terms = args[:or_terms] unless args[:or_terms].nil?
          @output_encoding = args[:output_encoding] unless args[:output_encoding].nil?
          @related_site = args[:related_site] unless args[:related_site].nil?
          @rights = args[:rights] unless args[:rights].nil?
          @safe = args[:safe] unless args[:safe].nil?
          @search_terms = args[:search_terms] unless args[:search_terms].nil?
          @search_type = args[:search_type] unless args[:search_type].nil?
          @site_search = args[:site_search] unless args[:site_search].nil?
          @site_search_filter = args[:site_search_filter] unless args[:site_search_filter].nil?
          @sort = args[:sort] unless args[:sort].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @start_page = args[:start_page] unless args[:start_page].nil?
          @title = args[:title] unless args[:title].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # 
      class Result
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cacheId`
        # @return [String]
        attr_accessor :cache_id
      
        # 
        # Corresponds to the JSON property `displayLink`
        # @return [String]
        attr_accessor :display_link
      
        # 
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # 
        # Corresponds to the JSON property `formattedUrl`
        # @return [String]
        attr_accessor :formatted_url
      
        # 
        # Corresponds to the JSON property `htmlFormattedUrl`
        # @return [String]
        attr_accessor :html_formatted_url
      
        # 
        # Corresponds to the JSON property `htmlSnippet`
        # @return [String]
        attr_accessor :html_snippet
      
        # 
        # Corresponds to the JSON property `htmlTitle`
        # @return [String]
        attr_accessor :html_title
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CustomsearchV1::Result::Image]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::CustomsearchV1::Result::Label>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # 
        # Corresponds to the JSON property `mime`
        # @return [String]
        attr_accessor :mime
      
        # 
        # Corresponds to the JSON property `pagemap`
        # @return [Hash<String,Array<Hash<String,Object>>>]
        attr_accessor :pagemap
      
        # 
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_id = args[:cache_id] unless args[:cache_id].nil?
          @display_link = args[:display_link] unless args[:display_link].nil?
          @file_format = args[:file_format] unless args[:file_format].nil?
          @formatted_url = args[:formatted_url] unless args[:formatted_url].nil?
          @html_formatted_url = args[:html_formatted_url] unless args[:html_formatted_url].nil?
          @html_snippet = args[:html_snippet] unless args[:html_snippet].nil?
          @html_title = args[:html_title] unless args[:html_title].nil?
          @image = args[:image] unless args[:image].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @labels = args[:labels] unless args[:labels].nil?
          @link = args[:link] unless args[:link].nil?
          @mime = args[:mime] unless args[:mime].nil?
          @pagemap = args[:pagemap] unless args[:pagemap].nil?
          @snippet = args[:snippet] unless args[:snippet].nil?
          @title = args[:title] unless args[:title].nil?
        end
        
        # 
        class Image
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `byteSize`
          # @return [Fixnum]
          attr_accessor :byte_size
        
          # 
          # Corresponds to the JSON property `contextLink`
          # @return [String]
          attr_accessor :context_link
        
          # 
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # 
          # Corresponds to the JSON property `thumbnailHeight`
          # @return [Fixnum]
          attr_accessor :thumbnail_height
        
          # 
          # Corresponds to the JSON property `thumbnailLink`
          # @return [String]
          attr_accessor :thumbnail_link
        
          # 
          # Corresponds to the JSON property `thumbnailWidth`
          # @return [Fixnum]
          attr_accessor :thumbnail_width
        
          # 
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @byte_size = args[:byte_size] unless args[:byte_size].nil?
            @context_link = args[:context_link] unless args[:context_link].nil?
            @height = args[:height] unless args[:height].nil?
            @thumbnail_height = args[:thumbnail_height] unless args[:thumbnail_height].nil?
            @thumbnail_link = args[:thumbnail_link] unless args[:thumbnail_link].nil?
            @thumbnail_width = args[:thumbnail_width] unless args[:thumbnail_width].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
        
        # 
        class Label
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # 
          # Corresponds to the JSON property `label_with_op`
          # @return [String]
          attr_accessor :label_with_op
        
          # 
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @label_with_op = args[:label_with_op] unless args[:label_with_op].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
      end
      
      # 
      class Search
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::CustomsearchV1::Context]
        attr_accessor :context
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CustomsearchV1::Result>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::CustomsearchV1::Promotion>]
        attr_accessor :promotions
      
        # 
        # Corresponds to the JSON property `queries`
        # @return [Hash<String,Array<Google::Apis::CustomsearchV1::Query>>]
        attr_accessor :queries
      
        # 
        # Corresponds to the JSON property `searchInformation`
        # @return [Google::Apis::CustomsearchV1::Search::SearchInformation]
        attr_accessor :search_information
      
        # 
        # Corresponds to the JSON property `spelling`
        # @return [Google::Apis::CustomsearchV1::Search::Spelling]
        attr_accessor :spelling
      
        # 
        # Corresponds to the JSON property `url`
        # @return [Google::Apis::CustomsearchV1::Search::Url]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] unless args[:context].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @promotions = args[:promotions] unless args[:promotions].nil?
          @queries = args[:queries] unless args[:queries].nil?
          @search_information = args[:search_information] unless args[:search_information].nil?
          @spelling = args[:spelling] unless args[:spelling].nil?
          @url = args[:url] unless args[:url].nil?
        end
        
        # 
        class SearchInformation
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `formattedSearchTime`
          # @return [String]
          attr_accessor :formatted_search_time
        
          # 
          # Corresponds to the JSON property `formattedTotalResults`
          # @return [String]
          attr_accessor :formatted_total_results
        
          # 
          # Corresponds to the JSON property `searchTime`
          # @return [Float]
          attr_accessor :search_time
        
          # 
          # Corresponds to the JSON property `totalResults`
          # @return [String]
          attr_accessor :total_results
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @formatted_search_time = args[:formatted_search_time] unless args[:formatted_search_time].nil?
            @formatted_total_results = args[:formatted_total_results] unless args[:formatted_total_results].nil?
            @search_time = args[:search_time] unless args[:search_time].nil?
            @total_results = args[:total_results] unless args[:total_results].nil?
          end
        end
        
        # 
        class Spelling
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `correctedQuery`
          # @return [String]
          attr_accessor :corrected_query
        
          # 
          # Corresponds to the JSON property `htmlCorrectedQuery`
          # @return [String]
          attr_accessor :html_corrected_query
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @corrected_query = args[:corrected_query] unless args[:corrected_query].nil?
            @html_corrected_query = args[:html_corrected_query] unless args[:html_corrected_query].nil?
          end
        end
        
        # 
        class Url
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `template`
          # @return [String]
          attr_accessor :template
        
          # 
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @template = args[:template] unless args[:template].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
    end
  end
end
