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
      
      # Promotion result.
      class Promotion
        include Google::Apis::Core::Hashable
      
        # An array of block objects for this promotion. See [Google WebSearch Protocol
        # reference](https://developers.google.com/custom-search/docs/xml_results) for
        # more information.
        # Corresponds to the JSON property `bodyLines`
        # @return [Array<Google::Apis::CustomsearchV1::Promotion::BodyLine>]
        attr_accessor :body_lines
      
        # An abridged version of this search's result URL, e.g. www.example.com.
        # Corresponds to the JSON property `displayLink`
        # @return [String]
        attr_accessor :display_link
      
        # The title of the promotion, in HTML.
        # Corresponds to the JSON property `htmlTitle`
        # @return [String]
        attr_accessor :html_title
      
        # Image belonging to a promotion.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CustomsearchV1::Promotion::Image]
        attr_accessor :image
      
        # The URL of the promotion.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The title of the promotion.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_lines = args[:body_lines] if args.key?(:body_lines)
          @display_link = args[:display_link] if args.key?(:display_link)
          @html_title = args[:html_title] if args.key?(:html_title)
          @image = args[:image] if args.key?(:image)
          @link = args[:link] if args.key?(:link)
          @title = args[:title] if args.key?(:title)
        end
        
        # Block object belonging to a promotion.
        class BodyLine
          include Google::Apis::Core::Hashable
        
          # The block object's text in HTML, if it has text.
          # Corresponds to the JSON property `htmlTitle`
          # @return [String]
          attr_accessor :html_title
        
          # The anchor text of the block object's link, if it has a link.
          # Corresponds to the JSON property `link`
          # @return [String]
          attr_accessor :link
        
          # The block object's text, if it has text.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The URL of the block object's link, if it has one.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @html_title = args[:html_title] if args.key?(:html_title)
            @link = args[:link] if args.key?(:link)
            @title = args[:title] if args.key?(:title)
            @url = args[:url] if args.key?(:url)
          end
        end
        
        # Image belonging to a promotion.
        class Image
          include Google::Apis::Core::Hashable
        
          # Image height in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # URL of the image for this promotion link.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # Image width in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @height = args[:height] if args.key?(:height)
            @source = args[:source] if args.key?(:source)
            @width = args[:width] if args.key?(:width)
          end
        end
      end
      
      # A custom search result.
      class Result
        include Google::Apis::Core::Hashable
      
        # Indicates the ID of Google's cached version of the search result.
        # Corresponds to the JSON property `cacheId`
        # @return [String]
        attr_accessor :cache_id
      
        # An abridged version of this search result’s URL, e.g. www.example.com.
        # Corresponds to the JSON property `displayLink`
        # @return [String]
        attr_accessor :display_link
      
        # The file format of the search result.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # The URL displayed after the snippet for each search result.
        # Corresponds to the JSON property `formattedUrl`
        # @return [String]
        attr_accessor :formatted_url
      
        # The HTML-formatted URL displayed after the snippet for each search result.
        # Corresponds to the JSON property `htmlFormattedUrl`
        # @return [String]
        attr_accessor :html_formatted_url
      
        # The snippet of the search result, in HTML.
        # Corresponds to the JSON property `htmlSnippet`
        # @return [String]
        attr_accessor :html_snippet
      
        # The title of the search result, in HTML.
        # Corresponds to the JSON property `htmlTitle`
        # @return [String]
        attr_accessor :html_title
      
        # Image belonging to a custom search result.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CustomsearchV1::Result::Image]
        attr_accessor :image
      
        # A unique identifier for the type of current object. For this API, it is `
        # customsearch#result.`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Encapsulates all information about [refinement labels](https://developers.
        # google.com/custom-search/docs/xml_results).
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::CustomsearchV1::Result::Label>]
        attr_accessor :labels
      
        # The full URL to which the search result is pointing, e.g. http://www.example.
        # com/foo/bar.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The MIME type of the search result.
        # Corresponds to the JSON property `mime`
        # @return [String]
        attr_accessor :mime
      
        # Contains [PageMap](https://developers.google.com/custom-search/docs/
        # structured_data#pagemaps) information for this search result.
        # Corresponds to the JSON property `pagemap`
        # @return [Hash<String,Object>]
        attr_accessor :pagemap
      
        # The snippet of the search result, in plain text.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The title of the search result, in plain text.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_id = args[:cache_id] if args.key?(:cache_id)
          @display_link = args[:display_link] if args.key?(:display_link)
          @file_format = args[:file_format] if args.key?(:file_format)
          @formatted_url = args[:formatted_url] if args.key?(:formatted_url)
          @html_formatted_url = args[:html_formatted_url] if args.key?(:html_formatted_url)
          @html_snippet = args[:html_snippet] if args.key?(:html_snippet)
          @html_title = args[:html_title] if args.key?(:html_title)
          @image = args[:image] if args.key?(:image)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @link = args[:link] if args.key?(:link)
          @mime = args[:mime] if args.key?(:mime)
          @pagemap = args[:pagemap] if args.key?(:pagemap)
          @snippet = args[:snippet] if args.key?(:snippet)
          @title = args[:title] if args.key?(:title)
        end
        
        # Image belonging to a custom search result.
        class Image
          include Google::Apis::Core::Hashable
        
          # The size of the image, in pixels.
          # Corresponds to the JSON property `byteSize`
          # @return [Fixnum]
          attr_accessor :byte_size
        
          # A URL pointing to the webpage hosting the image.
          # Corresponds to the JSON property `contextLink`
          # @return [String]
          attr_accessor :context_link
        
          # The height of the image, in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # The height of the thumbnail image, in pixels.
          # Corresponds to the JSON property `thumbnailHeight`
          # @return [Fixnum]
          attr_accessor :thumbnail_height
        
          # A URL to the thumbnail image.
          # Corresponds to the JSON property `thumbnailLink`
          # @return [String]
          attr_accessor :thumbnail_link
        
          # The width of the thumbnail image, in pixels.
          # Corresponds to the JSON property `thumbnailWidth`
          # @return [Fixnum]
          attr_accessor :thumbnail_width
        
          # The width of the image, in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @byte_size = args[:byte_size] if args.key?(:byte_size)
            @context_link = args[:context_link] if args.key?(:context_link)
            @height = args[:height] if args.key?(:height)
            @thumbnail_height = args[:thumbnail_height] if args.key?(:thumbnail_height)
            @thumbnail_link = args[:thumbnail_link] if args.key?(:thumbnail_link)
            @thumbnail_width = args[:thumbnail_width] if args.key?(:thumbnail_width)
            @width = args[:width] if args.key?(:width)
          end
        end
        
        # Refinement label associated with a custom search result.
        class Label
          include Google::Apis::Core::Hashable
        
          # The display name of a refinement label. This is the name you should display in
          # your user interface.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # Refinement label and the associated refinement operation.
          # Corresponds to the JSON property `label_with_op`
          # @return [String]
          attr_accessor :label_with_op
        
          # The name of a refinement label, which you can use to refine searches. Don't
          # display this in your user interface; instead, use displayName.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] if args.key?(:display_name)
            @label_with_op = args[:label_with_op] if args.key?(:label_with_op)
            @name = args[:name] if args.key?(:name)
          end
        end
      end
      
      # Response to a custom search request.
      class Search
        include Google::Apis::Core::Hashable
      
        # Metadata and refinements associated with the given search engine, including: *
        # The name of the search engine that was used for the query. * A set of [facet
        # objects](https://developers.google.com/custom-search/docs/refinements#create) (
        # refinements) you can use for refining a search.
        # Corresponds to the JSON property `context`
        # @return [Hash<String,Object>]
        attr_accessor :context
      
        # The current set of custom search results.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CustomsearchV1::Result>]
        attr_accessor :items
      
        # Unique identifier for the type of current object. For this API, it is
        # customsearch#search.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The set of [promotions](https://developers.google.com/custom-search/docs/
        # promotions). Present only if the custom search engine's configuration files
        # define any promotions for the given query.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::CustomsearchV1::Promotion>]
        attr_accessor :promotions
      
        # Query metadata for the previous, current, and next pages of results.
        # Corresponds to the JSON property `queries`
        # @return [Google::Apis::CustomsearchV1::Search::Queries]
        attr_accessor :queries
      
        # Metadata about a search operation.
        # Corresponds to the JSON property `searchInformation`
        # @return [Google::Apis::CustomsearchV1::Search::SearchInformation]
        attr_accessor :search_information
      
        # Spell correction information for a query.
        # Corresponds to the JSON property `spelling`
        # @return [Google::Apis::CustomsearchV1::Search::Spelling]
        attr_accessor :spelling
      
        # OpenSearch template and URL.
        # Corresponds to the JSON property `url`
        # @return [Google::Apis::CustomsearchV1::Search::Url]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @promotions = args[:promotions] if args.key?(:promotions)
          @queries = args[:queries] if args.key?(:queries)
          @search_information = args[:search_information] if args.key?(:search_information)
          @spelling = args[:spelling] if args.key?(:spelling)
          @url = args[:url] if args.key?(:url)
        end
        
        # Query metadata for the previous, current, and next pages of results.
        class Queries
          include Google::Apis::Core::Hashable
        
          # Metadata representing the next page of results, if applicable.
          # Corresponds to the JSON property `nextPage`
          # @return [Array<Google::Apis::CustomsearchV1::Search::Queries::NextPage>]
          attr_accessor :next_page
        
          # Metadata representing the previous page of results, if applicable.
          # Corresponds to the JSON property `previousPage`
          # @return [Array<Google::Apis::CustomsearchV1::Search::Queries::PreviousPage>]
          attr_accessor :previous_page
        
          # Metadata representing the current request.
          # Corresponds to the JSON property `request`
          # @return [Array<Google::Apis::CustomsearchV1::Search::Queries::Request>]
          attr_accessor :request
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @next_page = args[:next_page] if args.key?(:next_page)
            @previous_page = args[:previous_page] if args.key?(:previous_page)
            @request = args[:request] if args.key?(:request)
          end
          
          # Custom search request metadata.
          class NextPage
            include Google::Apis::Core::Hashable
          
            # Number of search results returned in this set.
            # Corresponds to the JSON property `count`
            # @return [Fixnum]
            attr_accessor :count
          
            # Restricts search results to documents originating in a particular country. You
            # may use [Boolean operators](https://developers.google.com/custom-search/docs/
            # xml_results#booleanOperators) in the `cr` parameter's value. Google WebSearch
            # determines the country of a document by analyzing the following: * The top-
            # level domain (TLD) of the document's URL. * The geographic location of the web
            # server's IP address. See [Country (cr) Parameter Values](https://developers.
            # google.com/custom-search/docs/xml_results#countryCollections) for a list of
            # valid values for this parameter.
            # Corresponds to the JSON property `cr`
            # @return [String]
            attr_accessor :cr
          
            # The identifier of an engine created using the Programmable Search Engine [
            # Control Panel](https://programmablesearchengine.google.com/). This is a custom
            # property not defined in the OpenSearch spec. This parameter is **required**.
            # Corresponds to the JSON property `cx`
            # @return [String]
            attr_accessor :cx
          
            # Restricts results to URLs based on date. Supported values include: * `d[number]
            # `: requests results from the specified number of past days. * `w[number]`:
            # requests results from the specified number of past weeks. * `m[number]`:
            # requests results from the specified number of past months. * `y[number]`:
            # requests results from the specified number of past years.
            # Corresponds to the JSON property `dateRestrict`
            # @return [String]
            attr_accessor :date_restrict
          
            # Enables or disables the [Simplified and Traditional Chinese Search](https://
            # developers.google.com/custom-search/docs/xml_results#chineseSearch) feature.
            # Supported values are: * `0`: enabled (default) * `1`: disabled
            # Corresponds to the JSON property `disableCnTwTranslation`
            # @return [String]
            attr_accessor :disable_cn_tw_translation
          
            # Identifies a phrase that all documents in the search results must contain.
            # Corresponds to the JSON property `exactTerms`
            # @return [String]
            attr_accessor :exact_terms
          
            # Identifies a word or phrase that should not appear in any documents in the
            # search results.
            # Corresponds to the JSON property `excludeTerms`
            # @return [String]
            attr_accessor :exclude_terms
          
            # Restricts results to files of a specified extension. Filetypes supported by
            # Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`
            # ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) *
            # Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft
            # PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `
            # wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`
            # swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future.
            # An up-to-date list can always be found in Google's [file type FAQ](https://
            # support.google.com/webmasters/answer/35287).
            # Corresponds to the JSON property `fileType`
            # @return [String]
            attr_accessor :file_type
          
            # Activates or deactivates the automatic filtering of Google search results. See
            # [Automatic Filtering](https://developers.google.com/custom-search/docs/
            # xml_results#automaticFiltering) for more information about Google's search
            # results filters. Valid values for this parameter are: * `0`: Disabled * `1`:
            # Enabled (default) **Note**: By default, Google applies filtering to all search
            # results to improve the quality of those results.
            # Corresponds to the JSON property `filter`
            # @return [String]
            attr_accessor :filter
          
            # Boosts search results whose country of origin matches the parameter value. See
            # [Country Codes](https://developers.google.com/custom-search/docs/xml_results#
            # countryCodes) for a list of valid values. Specifying a `gl` parameter value in
            # WebSearch requests should improve the relevance of results. This is
            # particularly true for international customers and, even more specifically, for
            # customers in English-speaking countries other than the United States.
            # Corresponds to the JSON property `gl`
            # @return [String]
            attr_accessor :gl
          
            # Specifies the Google domain (for example, google.com, google.de, or google.fr)
            # to which the search should be limited.
            # Corresponds to the JSON property `googleHost`
            # @return [String]
            attr_accessor :google_host
          
            # Specifies the ending value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `highRange`
            # @return [String]
            attr_accessor :high_range
          
            # Specifies the interface language (host language) of your user interface.
            # Explicitly setting this parameter improves the performance and the quality of
            # your search results. See the [Interface Languages](https://developers.google.
            # com/custom-search/docs/xml_results#wsInterfaceLanguages) section of [
            # Internationalizing Queries and Results Presentation](https://developers.google.
            # com/custom-search/docs/xml_results#wsInternationalizing) for more information,
            # and [Supported Interface Languages](https://developers.google.com/custom-
            # search/docs/xml_results_appendices#interfaceLanguages) for a list of supported
            # languages.
            # Corresponds to the JSON property `hl`
            # @return [String]
            attr_accessor :hl
          
            # Appends the specified query terms to the query, as if they were combined with
            # a logical `AND` operator.
            # Corresponds to the JSON property `hq`
            # @return [String]
            attr_accessor :hq
          
            # Restricts results to images of a specified color type. Supported values are: *
            # `mono` (black and white) * `gray` (grayscale) * `color` (color)
            # Corresponds to the JSON property `imgColorType`
            # @return [String]
            attr_accessor :img_color_type
          
            # Restricts results to images with a specific dominant color. Supported values
            # are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `
            # pink` * `white` * `gray` * `black` * `brown`
            # Corresponds to the JSON property `imgDominantColor`
            # @return [String]
            attr_accessor :img_dominant_color
          
            # Restricts results to images of a specified size. Supported values are: * `icon`
            # (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `
            # huge` (extra-large)
            # Corresponds to the JSON property `imgSize`
            # @return [String]
            attr_accessor :img_size
          
            # Restricts results to images of a specified type. Supported values are: * `
            # clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (
            # Photo) * `animated` (Animated) * `stock` (Stock)
            # Corresponds to the JSON property `imgType`
            # @return [String]
            attr_accessor :img_type
          
            # The character encoding supported for search requests.
            # Corresponds to the JSON property `inputEncoding`
            # @return [String]
            attr_accessor :input_encoding
          
            # The language of the search results.
            # Corresponds to the JSON property `language`
            # @return [String]
            attr_accessor :language
          
            # Specifies that all results should contain a link to a specific URL.
            # Corresponds to the JSON property `linkSite`
            # @return [String]
            attr_accessor :link_site
          
            # Specifies the starting value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `lowRange`
            # @return [String]
            attr_accessor :low_range
          
            # Provides additional search terms to check for in a document, where each
            # document in the search results must contain at least one of the additional
            # search terms. You can also use the [Boolean OR](https://developers.google.com/
            # custom-search/docs/xml_results#BooleanOrqt) query term for this type of query.
            # Corresponds to the JSON property `orTerms`
            # @return [String]
            attr_accessor :or_terms
          
            # The character encoding supported for search results.
            # Corresponds to the JSON property `outputEncoding`
            # @return [String]
            attr_accessor :output_encoding
          
            # Specifies that all search results should be pages that are related to the
            # specified URL. The parameter value should be a URL.
            # Corresponds to the JSON property `relatedSite`
            # @return [String]
            attr_accessor :related_site
          
            # Filters based on licensing. Supported values include: * `cc_publicdomain` * `
            # cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
            # Corresponds to the JSON property `rights`
            # @return [String]
            attr_accessor :rights
          
            # Specifies the [SafeSearch level](https://developers.google.com/custom-search/
            # docs/xml_results#safeSearchLevels) used for filtering out adult results. This
            # is a custom property not defined in the OpenSearch spec. Valid parameter
            # values are: * `"off"`: Disable SafeSearch * `"active"`: Enable SafeSearch
            # Corresponds to the JSON property `safe`
            # @return [String]
            attr_accessor :safe
          
            # The search terms entered by the user.
            # Corresponds to the JSON property `searchTerms`
            # @return [String]
            attr_accessor :search_terms
          
            # Allowed values are `web` or `image`. If unspecified, results are limited to
            # webpages.
            # Corresponds to the JSON property `searchType`
            # @return [String]
            attr_accessor :search_type
          
            # Restricts results to URLs from a specified site.
            # Corresponds to the JSON property `siteSearch`
            # @return [String]
            attr_accessor :site_search
          
            # Specifies whether to include or exclude results from the site named in the `
            # sitesearch` parameter. Supported values are: * `i`: include content from site *
            # `e`: exclude content from site
            # Corresponds to the JSON property `siteSearchFilter`
            # @return [String]
            attr_accessor :site_search_filter
          
            # Specifies that results should be sorted according to the specified expression.
            # For example, sort by date.
            # Corresponds to the JSON property `sort`
            # @return [String]
            attr_accessor :sort
          
            # The index of the current set of search results into the total set of results,
            # where the index of the first result is 1.
            # Corresponds to the JSON property `startIndex`
            # @return [Fixnum]
            attr_accessor :start_index
          
            # The page number of this set of results, where the page length is set by the `
            # count` property.
            # Corresponds to the JSON property `startPage`
            # @return [Fixnum]
            attr_accessor :start_page
          
            # A description of the query.
            # Corresponds to the JSON property `title`
            # @return [String]
            attr_accessor :title
          
            # Estimated number of total search results. May not be accurate.
            # Corresponds to the JSON property `totalResults`
            # @return [Fixnum]
            attr_accessor :total_results
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @count = args[:count] if args.key?(:count)
              @cr = args[:cr] if args.key?(:cr)
              @cx = args[:cx] if args.key?(:cx)
              @date_restrict = args[:date_restrict] if args.key?(:date_restrict)
              @disable_cn_tw_translation = args[:disable_cn_tw_translation] if args.key?(:disable_cn_tw_translation)
              @exact_terms = args[:exact_terms] if args.key?(:exact_terms)
              @exclude_terms = args[:exclude_terms] if args.key?(:exclude_terms)
              @file_type = args[:file_type] if args.key?(:file_type)
              @filter = args[:filter] if args.key?(:filter)
              @gl = args[:gl] if args.key?(:gl)
              @google_host = args[:google_host] if args.key?(:google_host)
              @high_range = args[:high_range] if args.key?(:high_range)
              @hl = args[:hl] if args.key?(:hl)
              @hq = args[:hq] if args.key?(:hq)
              @img_color_type = args[:img_color_type] if args.key?(:img_color_type)
              @img_dominant_color = args[:img_dominant_color] if args.key?(:img_dominant_color)
              @img_size = args[:img_size] if args.key?(:img_size)
              @img_type = args[:img_type] if args.key?(:img_type)
              @input_encoding = args[:input_encoding] if args.key?(:input_encoding)
              @language = args[:language] if args.key?(:language)
              @link_site = args[:link_site] if args.key?(:link_site)
              @low_range = args[:low_range] if args.key?(:low_range)
              @or_terms = args[:or_terms] if args.key?(:or_terms)
              @output_encoding = args[:output_encoding] if args.key?(:output_encoding)
              @related_site = args[:related_site] if args.key?(:related_site)
              @rights = args[:rights] if args.key?(:rights)
              @safe = args[:safe] if args.key?(:safe)
              @search_terms = args[:search_terms] if args.key?(:search_terms)
              @search_type = args[:search_type] if args.key?(:search_type)
              @site_search = args[:site_search] if args.key?(:site_search)
              @site_search_filter = args[:site_search_filter] if args.key?(:site_search_filter)
              @sort = args[:sort] if args.key?(:sort)
              @start_index = args[:start_index] if args.key?(:start_index)
              @start_page = args[:start_page] if args.key?(:start_page)
              @title = args[:title] if args.key?(:title)
              @total_results = args[:total_results] if args.key?(:total_results)
            end
          end
          
          # Custom search request metadata.
          class PreviousPage
            include Google::Apis::Core::Hashable
          
            # Number of search results returned in this set.
            # Corresponds to the JSON property `count`
            # @return [Fixnum]
            attr_accessor :count
          
            # Restricts search results to documents originating in a particular country. You
            # may use [Boolean operators](https://developers.google.com/custom-search/docs/
            # xml_results#booleanOperators) in the `cr` parameter's value. Google WebSearch
            # determines the country of a document by analyzing the following: * The top-
            # level domain (TLD) of the document's URL. * The geographic location of the web
            # server's IP address. See [Country (cr) Parameter Values](https://developers.
            # google.com/custom-search/docs/xml_results#countryCollections) for a list of
            # valid values for this parameter.
            # Corresponds to the JSON property `cr`
            # @return [String]
            attr_accessor :cr
          
            # The identifier of an engine created using the Programmable Search Engine [
            # Control Panel](https://programmablesearchengine.google.com/). This is a custom
            # property not defined in the OpenSearch spec. This parameter is **required**.
            # Corresponds to the JSON property `cx`
            # @return [String]
            attr_accessor :cx
          
            # Restricts results to URLs based on date. Supported values include: * `d[number]
            # `: requests results from the specified number of past days. * `w[number]`:
            # requests results from the specified number of past weeks. * `m[number]`:
            # requests results from the specified number of past months. * `y[number]`:
            # requests results from the specified number of past years.
            # Corresponds to the JSON property `dateRestrict`
            # @return [String]
            attr_accessor :date_restrict
          
            # Enables or disables the [Simplified and Traditional Chinese Search](https://
            # developers.google.com/custom-search/docs/xml_results#chineseSearch) feature.
            # Supported values are: * `0`: enabled (default) * `1`: disabled
            # Corresponds to the JSON property `disableCnTwTranslation`
            # @return [String]
            attr_accessor :disable_cn_tw_translation
          
            # Identifies a phrase that all documents in the search results must contain.
            # Corresponds to the JSON property `exactTerms`
            # @return [String]
            attr_accessor :exact_terms
          
            # Identifies a word or phrase that should not appear in any documents in the
            # search results.
            # Corresponds to the JSON property `excludeTerms`
            # @return [String]
            attr_accessor :exclude_terms
          
            # Restricts results to files of a specified extension. Filetypes supported by
            # Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`
            # ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) *
            # Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft
            # PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `
            # wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`
            # swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future.
            # An up-to-date list can always be found in Google's [file type FAQ](https://
            # support.google.com/webmasters/answer/35287).
            # Corresponds to the JSON property `fileType`
            # @return [String]
            attr_accessor :file_type
          
            # Activates or deactivates the automatic filtering of Google search results. See
            # [Automatic Filtering](https://developers.google.com/custom-search/docs/
            # xml_results#automaticFiltering) for more information about Google's search
            # results filters. Valid values for this parameter are: * `0`: Disabled * `1`:
            # Enabled (default) **Note**: By default, Google applies filtering to all search
            # results to improve the quality of those results.
            # Corresponds to the JSON property `filter`
            # @return [String]
            attr_accessor :filter
          
            # Boosts search results whose country of origin matches the parameter value. See
            # [Country Codes](https://developers.google.com/custom-search/docs/xml_results#
            # countryCodes) for a list of valid values. Specifying a `gl` parameter value in
            # WebSearch requests should improve the relevance of results. This is
            # particularly true for international customers and, even more specifically, for
            # customers in English-speaking countries other than the United States.
            # Corresponds to the JSON property `gl`
            # @return [String]
            attr_accessor :gl
          
            # Specifies the Google domain (for example, google.com, google.de, or google.fr)
            # to which the search should be limited.
            # Corresponds to the JSON property `googleHost`
            # @return [String]
            attr_accessor :google_host
          
            # Specifies the ending value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `highRange`
            # @return [String]
            attr_accessor :high_range
          
            # Specifies the interface language (host language) of your user interface.
            # Explicitly setting this parameter improves the performance and the quality of
            # your search results. See the [Interface Languages](https://developers.google.
            # com/custom-search/docs/xml_results#wsInterfaceLanguages) section of [
            # Internationalizing Queries and Results Presentation](https://developers.google.
            # com/custom-search/docs/xml_results#wsInternationalizing) for more information,
            # and [Supported Interface Languages](https://developers.google.com/custom-
            # search/docs/xml_results_appendices#interfaceLanguages) for a list of supported
            # languages.
            # Corresponds to the JSON property `hl`
            # @return [String]
            attr_accessor :hl
          
            # Appends the specified query terms to the query, as if they were combined with
            # a logical `AND` operator.
            # Corresponds to the JSON property `hq`
            # @return [String]
            attr_accessor :hq
          
            # Restricts results to images of a specified color type. Supported values are: *
            # `mono` (black and white) * `gray` (grayscale) * `color` (color)
            # Corresponds to the JSON property `imgColorType`
            # @return [String]
            attr_accessor :img_color_type
          
            # Restricts results to images with a specific dominant color. Supported values
            # are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `
            # pink` * `white` * `gray` * `black` * `brown`
            # Corresponds to the JSON property `imgDominantColor`
            # @return [String]
            attr_accessor :img_dominant_color
          
            # Restricts results to images of a specified size. Supported values are: * `icon`
            # (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `
            # huge` (extra-large)
            # Corresponds to the JSON property `imgSize`
            # @return [String]
            attr_accessor :img_size
          
            # Restricts results to images of a specified type. Supported values are: * `
            # clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (
            # Photo) * `animated` (Animated) * `stock` (Stock)
            # Corresponds to the JSON property `imgType`
            # @return [String]
            attr_accessor :img_type
          
            # The character encoding supported for search requests.
            # Corresponds to the JSON property `inputEncoding`
            # @return [String]
            attr_accessor :input_encoding
          
            # The language of the search results.
            # Corresponds to the JSON property `language`
            # @return [String]
            attr_accessor :language
          
            # Specifies that all results should contain a link to a specific URL.
            # Corresponds to the JSON property `linkSite`
            # @return [String]
            attr_accessor :link_site
          
            # Specifies the starting value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `lowRange`
            # @return [String]
            attr_accessor :low_range
          
            # Provides additional search terms to check for in a document, where each
            # document in the search results must contain at least one of the additional
            # search terms. You can also use the [Boolean OR](https://developers.google.com/
            # custom-search/docs/xml_results#BooleanOrqt) query term for this type of query.
            # Corresponds to the JSON property `orTerms`
            # @return [String]
            attr_accessor :or_terms
          
            # The character encoding supported for search results.
            # Corresponds to the JSON property `outputEncoding`
            # @return [String]
            attr_accessor :output_encoding
          
            # Specifies that all search results should be pages that are related to the
            # specified URL. The parameter value should be a URL.
            # Corresponds to the JSON property `relatedSite`
            # @return [String]
            attr_accessor :related_site
          
            # Filters based on licensing. Supported values include: * `cc_publicdomain` * `
            # cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
            # Corresponds to the JSON property `rights`
            # @return [String]
            attr_accessor :rights
          
            # Specifies the [SafeSearch level](https://developers.google.com/custom-search/
            # docs/xml_results#safeSearchLevels) used for filtering out adult results. This
            # is a custom property not defined in the OpenSearch spec. Valid parameter
            # values are: * `"off"`: Disable SafeSearch * `"active"`: Enable SafeSearch
            # Corresponds to the JSON property `safe`
            # @return [String]
            attr_accessor :safe
          
            # The search terms entered by the user.
            # Corresponds to the JSON property `searchTerms`
            # @return [String]
            attr_accessor :search_terms
          
            # Allowed values are `web` or `image`. If unspecified, results are limited to
            # webpages.
            # Corresponds to the JSON property `searchType`
            # @return [String]
            attr_accessor :search_type
          
            # Restricts results to URLs from a specified site.
            # Corresponds to the JSON property `siteSearch`
            # @return [String]
            attr_accessor :site_search
          
            # Specifies whether to include or exclude results from the site named in the `
            # sitesearch` parameter. Supported values are: * `i`: include content from site *
            # `e`: exclude content from site
            # Corresponds to the JSON property `siteSearchFilter`
            # @return [String]
            attr_accessor :site_search_filter
          
            # Specifies that results should be sorted according to the specified expression.
            # For example, sort by date.
            # Corresponds to the JSON property `sort`
            # @return [String]
            attr_accessor :sort
          
            # The index of the current set of search results into the total set of results,
            # where the index of the first result is 1.
            # Corresponds to the JSON property `startIndex`
            # @return [Fixnum]
            attr_accessor :start_index
          
            # The page number of this set of results, where the page length is set by the `
            # count` property.
            # Corresponds to the JSON property `startPage`
            # @return [Fixnum]
            attr_accessor :start_page
          
            # A description of the query.
            # Corresponds to the JSON property `title`
            # @return [String]
            attr_accessor :title
          
            # Estimated number of total search results. May not be accurate.
            # Corresponds to the JSON property `totalResults`
            # @return [Fixnum]
            attr_accessor :total_results
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @count = args[:count] if args.key?(:count)
              @cr = args[:cr] if args.key?(:cr)
              @cx = args[:cx] if args.key?(:cx)
              @date_restrict = args[:date_restrict] if args.key?(:date_restrict)
              @disable_cn_tw_translation = args[:disable_cn_tw_translation] if args.key?(:disable_cn_tw_translation)
              @exact_terms = args[:exact_terms] if args.key?(:exact_terms)
              @exclude_terms = args[:exclude_terms] if args.key?(:exclude_terms)
              @file_type = args[:file_type] if args.key?(:file_type)
              @filter = args[:filter] if args.key?(:filter)
              @gl = args[:gl] if args.key?(:gl)
              @google_host = args[:google_host] if args.key?(:google_host)
              @high_range = args[:high_range] if args.key?(:high_range)
              @hl = args[:hl] if args.key?(:hl)
              @hq = args[:hq] if args.key?(:hq)
              @img_color_type = args[:img_color_type] if args.key?(:img_color_type)
              @img_dominant_color = args[:img_dominant_color] if args.key?(:img_dominant_color)
              @img_size = args[:img_size] if args.key?(:img_size)
              @img_type = args[:img_type] if args.key?(:img_type)
              @input_encoding = args[:input_encoding] if args.key?(:input_encoding)
              @language = args[:language] if args.key?(:language)
              @link_site = args[:link_site] if args.key?(:link_site)
              @low_range = args[:low_range] if args.key?(:low_range)
              @or_terms = args[:or_terms] if args.key?(:or_terms)
              @output_encoding = args[:output_encoding] if args.key?(:output_encoding)
              @related_site = args[:related_site] if args.key?(:related_site)
              @rights = args[:rights] if args.key?(:rights)
              @safe = args[:safe] if args.key?(:safe)
              @search_terms = args[:search_terms] if args.key?(:search_terms)
              @search_type = args[:search_type] if args.key?(:search_type)
              @site_search = args[:site_search] if args.key?(:site_search)
              @site_search_filter = args[:site_search_filter] if args.key?(:site_search_filter)
              @sort = args[:sort] if args.key?(:sort)
              @start_index = args[:start_index] if args.key?(:start_index)
              @start_page = args[:start_page] if args.key?(:start_page)
              @title = args[:title] if args.key?(:title)
              @total_results = args[:total_results] if args.key?(:total_results)
            end
          end
          
          # Custom search request metadata.
          class Request
            include Google::Apis::Core::Hashable
          
            # Number of search results returned in this set.
            # Corresponds to the JSON property `count`
            # @return [Fixnum]
            attr_accessor :count
          
            # Restricts search results to documents originating in a particular country. You
            # may use [Boolean operators](https://developers.google.com/custom-search/docs/
            # xml_results#booleanOperators) in the `cr` parameter's value. Google WebSearch
            # determines the country of a document by analyzing the following: * The top-
            # level domain (TLD) of the document's URL. * The geographic location of the web
            # server's IP address. See [Country (cr) Parameter Values](https://developers.
            # google.com/custom-search/docs/xml_results#countryCollections) for a list of
            # valid values for this parameter.
            # Corresponds to the JSON property `cr`
            # @return [String]
            attr_accessor :cr
          
            # The identifier of an engine created using the Programmable Search Engine [
            # Control Panel](https://programmablesearchengine.google.com/). This is a custom
            # property not defined in the OpenSearch spec. This parameter is **required**.
            # Corresponds to the JSON property `cx`
            # @return [String]
            attr_accessor :cx
          
            # Restricts results to URLs based on date. Supported values include: * `d[number]
            # `: requests results from the specified number of past days. * `w[number]`:
            # requests results from the specified number of past weeks. * `m[number]`:
            # requests results from the specified number of past months. * `y[number]`:
            # requests results from the specified number of past years.
            # Corresponds to the JSON property `dateRestrict`
            # @return [String]
            attr_accessor :date_restrict
          
            # Enables or disables the [Simplified and Traditional Chinese Search](https://
            # developers.google.com/custom-search/docs/xml_results#chineseSearch) feature.
            # Supported values are: * `0`: enabled (default) * `1`: disabled
            # Corresponds to the JSON property `disableCnTwTranslation`
            # @return [String]
            attr_accessor :disable_cn_tw_translation
          
            # Identifies a phrase that all documents in the search results must contain.
            # Corresponds to the JSON property `exactTerms`
            # @return [String]
            attr_accessor :exact_terms
          
            # Identifies a word or phrase that should not appear in any documents in the
            # search results.
            # Corresponds to the JSON property `excludeTerms`
            # @return [String]
            attr_accessor :exclude_terms
          
            # Restricts results to files of a specified extension. Filetypes supported by
            # Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`
            # ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) *
            # Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft
            # PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `
            # wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`
            # swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future.
            # An up-to-date list can always be found in Google's [file type FAQ](https://
            # support.google.com/webmasters/answer/35287).
            # Corresponds to the JSON property `fileType`
            # @return [String]
            attr_accessor :file_type
          
            # Activates or deactivates the automatic filtering of Google search results. See
            # [Automatic Filtering](https://developers.google.com/custom-search/docs/
            # xml_results#automaticFiltering) for more information about Google's search
            # results filters. Valid values for this parameter are: * `0`: Disabled * `1`:
            # Enabled (default) **Note**: By default, Google applies filtering to all search
            # results to improve the quality of those results.
            # Corresponds to the JSON property `filter`
            # @return [String]
            attr_accessor :filter
          
            # Boosts search results whose country of origin matches the parameter value. See
            # [Country Codes](https://developers.google.com/custom-search/docs/xml_results#
            # countryCodes) for a list of valid values. Specifying a `gl` parameter value in
            # WebSearch requests should improve the relevance of results. This is
            # particularly true for international customers and, even more specifically, for
            # customers in English-speaking countries other than the United States.
            # Corresponds to the JSON property `gl`
            # @return [String]
            attr_accessor :gl
          
            # Specifies the Google domain (for example, google.com, google.de, or google.fr)
            # to which the search should be limited.
            # Corresponds to the JSON property `googleHost`
            # @return [String]
            attr_accessor :google_host
          
            # Specifies the ending value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `highRange`
            # @return [String]
            attr_accessor :high_range
          
            # Specifies the interface language (host language) of your user interface.
            # Explicitly setting this parameter improves the performance and the quality of
            # your search results. See the [Interface Languages](https://developers.google.
            # com/custom-search/docs/xml_results#wsInterfaceLanguages) section of [
            # Internationalizing Queries and Results Presentation](https://developers.google.
            # com/custom-search/docs/xml_results#wsInternationalizing) for more information,
            # and [Supported Interface Languages](https://developers.google.com/custom-
            # search/docs/xml_results_appendices#interfaceLanguages) for a list of supported
            # languages.
            # Corresponds to the JSON property `hl`
            # @return [String]
            attr_accessor :hl
          
            # Appends the specified query terms to the query, as if they were combined with
            # a logical `AND` operator.
            # Corresponds to the JSON property `hq`
            # @return [String]
            attr_accessor :hq
          
            # Restricts results to images of a specified color type. Supported values are: *
            # `mono` (black and white) * `gray` (grayscale) * `color` (color)
            # Corresponds to the JSON property `imgColorType`
            # @return [String]
            attr_accessor :img_color_type
          
            # Restricts results to images with a specific dominant color. Supported values
            # are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `
            # pink` * `white` * `gray` * `black` * `brown`
            # Corresponds to the JSON property `imgDominantColor`
            # @return [String]
            attr_accessor :img_dominant_color
          
            # Restricts results to images of a specified size. Supported values are: * `icon`
            # (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `
            # huge` (extra-large)
            # Corresponds to the JSON property `imgSize`
            # @return [String]
            attr_accessor :img_size
          
            # Restricts results to images of a specified type. Supported values are: * `
            # clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (
            # Photo) * `animated` (Animated) * `stock` (Stock)
            # Corresponds to the JSON property `imgType`
            # @return [String]
            attr_accessor :img_type
          
            # The character encoding supported for search requests.
            # Corresponds to the JSON property `inputEncoding`
            # @return [String]
            attr_accessor :input_encoding
          
            # The language of the search results.
            # Corresponds to the JSON property `language`
            # @return [String]
            attr_accessor :language
          
            # Specifies that all results should contain a link to a specific URL.
            # Corresponds to the JSON property `linkSite`
            # @return [String]
            attr_accessor :link_site
          
            # Specifies the starting value for a search range. Use `cse:lowRange` and `cse:
            # highrange` to append an inclusive search range of `lowRange...highRange` to
            # the query.
            # Corresponds to the JSON property `lowRange`
            # @return [String]
            attr_accessor :low_range
          
            # Provides additional search terms to check for in a document, where each
            # document in the search results must contain at least one of the additional
            # search terms. You can also use the [Boolean OR](https://developers.google.com/
            # custom-search/docs/xml_results#BooleanOrqt) query term for this type of query.
            # Corresponds to the JSON property `orTerms`
            # @return [String]
            attr_accessor :or_terms
          
            # The character encoding supported for search results.
            # Corresponds to the JSON property `outputEncoding`
            # @return [String]
            attr_accessor :output_encoding
          
            # Specifies that all search results should be pages that are related to the
            # specified URL. The parameter value should be a URL.
            # Corresponds to the JSON property `relatedSite`
            # @return [String]
            attr_accessor :related_site
          
            # Filters based on licensing. Supported values include: * `cc_publicdomain` * `
            # cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
            # Corresponds to the JSON property `rights`
            # @return [String]
            attr_accessor :rights
          
            # Specifies the [SafeSearch level](https://developers.google.com/custom-search/
            # docs/xml_results#safeSearchLevels) used for filtering out adult results. This
            # is a custom property not defined in the OpenSearch spec. Valid parameter
            # values are: * `"off"`: Disable SafeSearch * `"active"`: Enable SafeSearch
            # Corresponds to the JSON property `safe`
            # @return [String]
            attr_accessor :safe
          
            # The search terms entered by the user.
            # Corresponds to the JSON property `searchTerms`
            # @return [String]
            attr_accessor :search_terms
          
            # Allowed values are `web` or `image`. If unspecified, results are limited to
            # webpages.
            # Corresponds to the JSON property `searchType`
            # @return [String]
            attr_accessor :search_type
          
            # Restricts results to URLs from a specified site.
            # Corresponds to the JSON property `siteSearch`
            # @return [String]
            attr_accessor :site_search
          
            # Specifies whether to include or exclude results from the site named in the `
            # sitesearch` parameter. Supported values are: * `i`: include content from site *
            # `e`: exclude content from site
            # Corresponds to the JSON property `siteSearchFilter`
            # @return [String]
            attr_accessor :site_search_filter
          
            # Specifies that results should be sorted according to the specified expression.
            # For example, sort by date.
            # Corresponds to the JSON property `sort`
            # @return [String]
            attr_accessor :sort
          
            # The index of the current set of search results into the total set of results,
            # where the index of the first result is 1.
            # Corresponds to the JSON property `startIndex`
            # @return [Fixnum]
            attr_accessor :start_index
          
            # The page number of this set of results, where the page length is set by the `
            # count` property.
            # Corresponds to the JSON property `startPage`
            # @return [Fixnum]
            attr_accessor :start_page
          
            # A description of the query.
            # Corresponds to the JSON property `title`
            # @return [String]
            attr_accessor :title
          
            # Estimated number of total search results. May not be accurate.
            # Corresponds to the JSON property `totalResults`
            # @return [Fixnum]
            attr_accessor :total_results
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @count = args[:count] if args.key?(:count)
              @cr = args[:cr] if args.key?(:cr)
              @cx = args[:cx] if args.key?(:cx)
              @date_restrict = args[:date_restrict] if args.key?(:date_restrict)
              @disable_cn_tw_translation = args[:disable_cn_tw_translation] if args.key?(:disable_cn_tw_translation)
              @exact_terms = args[:exact_terms] if args.key?(:exact_terms)
              @exclude_terms = args[:exclude_terms] if args.key?(:exclude_terms)
              @file_type = args[:file_type] if args.key?(:file_type)
              @filter = args[:filter] if args.key?(:filter)
              @gl = args[:gl] if args.key?(:gl)
              @google_host = args[:google_host] if args.key?(:google_host)
              @high_range = args[:high_range] if args.key?(:high_range)
              @hl = args[:hl] if args.key?(:hl)
              @hq = args[:hq] if args.key?(:hq)
              @img_color_type = args[:img_color_type] if args.key?(:img_color_type)
              @img_dominant_color = args[:img_dominant_color] if args.key?(:img_dominant_color)
              @img_size = args[:img_size] if args.key?(:img_size)
              @img_type = args[:img_type] if args.key?(:img_type)
              @input_encoding = args[:input_encoding] if args.key?(:input_encoding)
              @language = args[:language] if args.key?(:language)
              @link_site = args[:link_site] if args.key?(:link_site)
              @low_range = args[:low_range] if args.key?(:low_range)
              @or_terms = args[:or_terms] if args.key?(:or_terms)
              @output_encoding = args[:output_encoding] if args.key?(:output_encoding)
              @related_site = args[:related_site] if args.key?(:related_site)
              @rights = args[:rights] if args.key?(:rights)
              @safe = args[:safe] if args.key?(:safe)
              @search_terms = args[:search_terms] if args.key?(:search_terms)
              @search_type = args[:search_type] if args.key?(:search_type)
              @site_search = args[:site_search] if args.key?(:site_search)
              @site_search_filter = args[:site_search_filter] if args.key?(:site_search_filter)
              @sort = args[:sort] if args.key?(:sort)
              @start_index = args[:start_index] if args.key?(:start_index)
              @start_page = args[:start_page] if args.key?(:start_page)
              @title = args[:title] if args.key?(:title)
              @total_results = args[:total_results] if args.key?(:total_results)
            end
          end
        end
        
        # Metadata about a search operation.
        class SearchInformation
          include Google::Apis::Core::Hashable
        
          # The time taken for the server to return search results, formatted according to
          # locale style.
          # Corresponds to the JSON property `formattedSearchTime`
          # @return [String]
          attr_accessor :formatted_search_time
        
          # The total number of search results, formatted according to locale style.
          # Corresponds to the JSON property `formattedTotalResults`
          # @return [String]
          attr_accessor :formatted_total_results
        
          # The time taken for the server to return search results.
          # Corresponds to the JSON property `searchTime`
          # @return [Float]
          attr_accessor :search_time
        
          # The total number of search results returned by the query.
          # Corresponds to the JSON property `totalResults`
          # @return [String]
          attr_accessor :total_results
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @formatted_search_time = args[:formatted_search_time] if args.key?(:formatted_search_time)
            @formatted_total_results = args[:formatted_total_results] if args.key?(:formatted_total_results)
            @search_time = args[:search_time] if args.key?(:search_time)
            @total_results = args[:total_results] if args.key?(:total_results)
          end
        end
        
        # Spell correction information for a query.
        class Spelling
          include Google::Apis::Core::Hashable
        
          # The corrected query.
          # Corresponds to the JSON property `correctedQuery`
          # @return [String]
          attr_accessor :corrected_query
        
          # The corrected query, formatted in HTML.
          # Corresponds to the JSON property `htmlCorrectedQuery`
          # @return [String]
          attr_accessor :html_corrected_query
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @corrected_query = args[:corrected_query] if args.key?(:corrected_query)
            @html_corrected_query = args[:html_corrected_query] if args.key?(:html_corrected_query)
          end
        end
        
        # OpenSearch template and URL.
        class Url
          include Google::Apis::Core::Hashable
        
          # The actual [OpenSearch template](http://www.opensearch.org/specifications/
          # opensearch/1.1#opensearch_url_template_syntax) for this API.
          # Corresponds to the JSON property `template`
          # @return [String]
          attr_accessor :template
        
          # The MIME type of the OpenSearch URL template for the Custom Search JSON API.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @template = args[:template] if args.key?(:template)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
    end
  end
end
