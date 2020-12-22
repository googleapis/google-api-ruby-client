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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CustomsearchV1
      # Custom Search API
      #
      # Searches over a website or collection of websites
      #
      # @example
      #    require 'google/apis/customsearch_v1'
      #
      #    Customsearch = Google::Apis::CustomsearchV1 # Alias the module
      #    service = Customsearch::CustomSearchAPIService.new
      #
      # @see https://developers.google.com/custom-search/v1/introduction
      class CustomSearchAPIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://customsearch.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns metadata about the search performed, metadata about the engine used
        # for the search, and the search results.
        # @param [String] c2coff
        #   Enables or disables [Simplified and Traditional Chinese Search](https://
        #   developers.google.com/custom-search/docs/xml_results#chineseSearch). The
        #   default value for this parameter is 0 (zero), meaning that the feature is
        #   enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
        # @param [String] cr
        #   Restricts search results to documents originating in a particular country. You
        #   may use [Boolean operators](https://developers.google.com/custom-search/docs/
        #   xml_results_appendices#booleanOperators) in the cr parameter's value. Google
        #   Search determines the country of a document by analyzing: * the top-level
        #   domain (TLD) of the document's URL * the geographic location of the Web server'
        #   s IP address See the [Country Parameter Values](https://developers.google.com/
        #   custom-search/docs/xml_results_appendices#countryCollections) page for a list
        #   of valid values for this parameter.
        # @param [String] cx
        #   The Programmable Search Engine ID to use for this request.
        # @param [String] date_restrict
        #   Restricts results to URLs based on date. Supported values include: * `d[number]
        #   `: requests results from the specified number of past days. * `w[number]`:
        #   requests results from the specified number of past weeks. * `m[number]`:
        #   requests results from the specified number of past months. * `y[number]`:
        #   requests results from the specified number of past years.
        # @param [String] exact_terms
        #   Identifies a phrase that all documents in the search results must contain.
        # @param [String] exclude_terms
        #   Identifies a word or phrase that should not appear in any documents in the
        #   search results.
        # @param [String] file_type
        #   Restricts results to files of a specified extension. A list of file types
        #   indexable by Google can be found in Search Console [Help Center](https://
        #   support.google.com/webmasters/answer/35287).
        # @param [String] filter
        #   Controls turning on or off the duplicate content filter. * See [Automatic
        #   Filtering](https://developers.google.com/custom-search/docs/xml_results#
        #   automaticFiltering) for more information about Google's search results filters.
        #   Note that host crowding filtering applies only to multi-site searches. * By
        #   default, Google applies filtering to all search results to improve the quality
        #   of those results. Acceptable values are: * `0`: Turns off duplicate content
        #   filter. * `1`: Turns on duplicate content filter.
        # @param [String] gl
        #   Geolocation of end user. * The `gl` parameter value is a two-letter country
        #   code. The `gl` parameter boosts search results whose country of origin matches
        #   the parameter value. See the [Country Codes](https://developers.google.com/
        #   custom-search/docs/xml_results_appendices#countryCodes) page for a list of
        #   valid values. * Specifying a `gl` parameter value should lead to more relevant
        #   results. This is particularly true for international customers and, even more
        #   specifically, for customers in English- speaking countries other than the
        #   United States.
        # @param [String] googlehost
        #   **Deprecated**. Use the `gl` parameter for a similar effect. The local Google
        #   domain (for example, google.com, google.de, or google.fr) to use to perform
        #   the search.
        # @param [String] high_range
        #   Specifies the ending value for a search range. * Use `lowRange` and `highRange`
        #   to append an inclusive search range of `lowRange...highRange` to the query.
        # @param [String] hl
        #   Sets the user interface language. * Explicitly setting this parameter improves
        #   the performance and the quality of your search results. * See the [Interface
        #   Languages](https://developers.google.com/custom-search/docs/xml_results#
        #   wsInterfaceLanguages) section of [Internationalizing Queries and Results
        #   Presentation](https://developers.google.com/custom-search/docs/xml_results#
        #   wsInternationalizing) for more information, and (Supported Interface Languages)
        #   [https://developers.google.com/custom-search/docs/xml_results_appendices#
        #   interfaceLanguages] for a list of supported languages.
        # @param [String] hq
        #   Appends the specified query terms to the query, as if they were combined with
        #   a logical AND operator.
        # @param [String] img_color_type
        #   Returns black and white, grayscale, transparent, or color images. Acceptable
        #   values are: * `"color"` * `"gray"` * `"mono"`: black and white * `"trans"`:
        #   transparent background
        # @param [String] img_dominant_color
        #   Returns images of a specific dominant color. Acceptable values are: * `"black"`
        #   * `"blue"` * `"brown"` * `"gray"` * `"green"` * `"orange"` * `"pink"` * `"
        #   purple"` * `"red"` * `"teal"` * `"white"` * `"yellow"`
        # @param [String] img_size
        #   Returns images of a specified size. Acceptable values are: * `"huge"` * `"icon"
        #   ` * `"large"` * `"medium"` * `"small"` * `"xlarge"` * `"xxlarge"`
        # @param [String] img_type
        #   Returns images of a type. Acceptable values are: * `"clipart"` * `"face"` * `"
        #   lineart"` * `"stock"` * `"photo"` * `"animated"`
        # @param [String] link_site
        #   Specifies that all search results should contain a link to a particular URL.
        # @param [String] low_range
        #   Specifies the starting value for a search range. Use `lowRange` and `highRange`
        #   to append an inclusive search range of `lowRange...highRange` to the query.
        # @param [String] lr
        #   Restricts the search to documents written in a particular language (e.g., `lr=
        #   lang_ja`). Acceptable values are: * `"lang_ar"`: Arabic * `"lang_bg"`:
        #   Bulgarian * `"lang_ca"`: Catalan * `"lang_cs"`: Czech * `"lang_da"`: Danish * `
        #   "lang_de"`: German * `"lang_el"`: Greek * `"lang_en"`: English * `"lang_es"`:
        #   Spanish * `"lang_et"`: Estonian * `"lang_fi"`: Finnish * `"lang_fr"`: French *
        #   `"lang_hr"`: Croatian * `"lang_hu"`: Hungarian * `"lang_id"`: Indonesian * `"
        #   lang_is"`: Icelandic * `"lang_it"`: Italian * `"lang_iw"`: Hebrew * `"lang_ja"`
        #   : Japanese * `"lang_ko"`: Korean * `"lang_lt"`: Lithuanian * `"lang_lv"`:
        #   Latvian * `"lang_nl"`: Dutch * `"lang_no"`: Norwegian * `"lang_pl"`: Polish * `
        #   "lang_pt"`: Portuguese * `"lang_ro"`: Romanian * `"lang_ru"`: Russian * `"
        #   lang_sk"`: Slovak * `"lang_sl"`: Slovenian * `"lang_sr"`: Serbian * `"lang_sv"`
        #   : Swedish * `"lang_tr"`: Turkish * `"lang_zh-CN"`: Chinese (Simplified) * `"
        #   lang_zh-TW"`: Chinese (Traditional)
        # @param [Fixnum] num
        #   Number of search results to return. * Valid values are integers between 1 and
        #   10, inclusive.
        # @param [String] or_terms
        #   Provides additional search terms to check for in a document, where each
        #   document in the search results must contain at least one of the additional
        #   search terms.
        # @param [String] q
        #   Query
        # @param [String] related_site
        #   Specifies that all search results should be pages that are related to the
        #   specified URL.
        # @param [String] rights
        #   Filters based on licensing. Supported values include: `cc_publicdomain`, `
        #   cc_attribute`, `cc_sharealike`, `cc_noncommercial`, `cc_nonderived` and
        #   combinations of these. See [typical combinations](https://wiki.creativecommons.
        #   org/wiki/CC_Search_integration).
        # @param [String] safe
        #   Search safety level. Acceptable values are: * `"active"`: Enables SafeSearch
        #   filtering. * `"off"`: Disables SafeSearch filtering. (default)
        # @param [String] search_type
        #   Specifies the search type: `image`. If unspecified, results are limited to
        #   webpages. Acceptable values are: * `"image"`: custom image search.
        # @param [String] site_search
        #   Specifies a given site which should always be included or excluded from
        #   results (see `siteSearchFilter` parameter, below).
        # @param [String] site_search_filter
        #   Controls whether to include or exclude results from the site named in the `
        #   siteSearch` parameter. Acceptable values are: * `"e"`: exclude * `"i"`:
        #   include
        # @param [String] sort
        #   The sort expression to apply to the results. The sort parameter specifies that
        #   the results be sorted according to the specified expression i.e. sort by date.
        #   [Example: sort=date](https://developers.google.com/custom-search/docs/
        #   structured_search#sort-by-attribute).
        # @param [Fixnum] start
        #   The index of the first result to return. The default number of results per
        #   page is 10, so `&start=11` would start at the top of the second page of
        #   results. **Note**: The JSON API will never return more than 100 results, even
        #   if more than 100 documents match the query, so setting the sum of `start + num`
        #   to a number greater than 100 will produce an error. Also note that the
        #   maximum value for `num` is 10.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CustomsearchV1::Search] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CustomsearchV1::Search]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cses(c2coff: nil, cr: nil, cx: nil, date_restrict: nil, exact_terms: nil, exclude_terms: nil, file_type: nil, filter: nil, gl: nil, googlehost: nil, high_range: nil, hl: nil, hq: nil, img_color_type: nil, img_dominant_color: nil, img_size: nil, img_type: nil, link_site: nil, low_range: nil, lr: nil, num: nil, or_terms: nil, q: nil, related_site: nil, rights: nil, safe: nil, search_type: nil, site_search: nil, site_search_filter: nil, sort: nil, start: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'customsearch/v1', options)
          command.response_representation = Google::Apis::CustomsearchV1::Search::Representation
          command.response_class = Google::Apis::CustomsearchV1::Search
          command.query['c2coff'] = c2coff unless c2coff.nil?
          command.query['cr'] = cr unless cr.nil?
          command.query['cx'] = cx unless cx.nil?
          command.query['dateRestrict'] = date_restrict unless date_restrict.nil?
          command.query['exactTerms'] = exact_terms unless exact_terms.nil?
          command.query['excludeTerms'] = exclude_terms unless exclude_terms.nil?
          command.query['fileType'] = file_type unless file_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['gl'] = gl unless gl.nil?
          command.query['googlehost'] = googlehost unless googlehost.nil?
          command.query['highRange'] = high_range unless high_range.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['hq'] = hq unless hq.nil?
          command.query['imgColorType'] = img_color_type unless img_color_type.nil?
          command.query['imgDominantColor'] = img_dominant_color unless img_dominant_color.nil?
          command.query['imgSize'] = img_size unless img_size.nil?
          command.query['imgType'] = img_type unless img_type.nil?
          command.query['linkSite'] = link_site unless link_site.nil?
          command.query['lowRange'] = low_range unless low_range.nil?
          command.query['lr'] = lr unless lr.nil?
          command.query['num'] = num unless num.nil?
          command.query['orTerms'] = or_terms unless or_terms.nil?
          command.query['q'] = q unless q.nil?
          command.query['relatedSite'] = related_site unless related_site.nil?
          command.query['rights'] = rights unless rights.nil?
          command.query['safe'] = safe unless safe.nil?
          command.query['searchType'] = search_type unless search_type.nil?
          command.query['siteSearch'] = site_search unless site_search.nil?
          command.query['siteSearchFilter'] = site_search_filter unless site_search_filter.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['start'] = start unless start.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns metadata about the search performed, metadata about the engine used
        # for the search, and the search results. Uses a small set of url patterns.
        # @param [String] c2coff
        #   Enables or disables [Simplified and Traditional Chinese Search](https://
        #   developers.google.com/custom-search/docs/xml_results#chineseSearch). The
        #   default value for this parameter is 0 (zero), meaning that the feature is
        #   enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)
        # @param [String] cr
        #   Restricts search results to documents originating in a particular country. You
        #   may use [Boolean operators](https://developers.google.com/custom-search/docs/
        #   xml_results_appendices#booleanOperators) in the cr parameter's value. Google
        #   Search determines the country of a document by analyzing: * the top-level
        #   domain (TLD) of the document's URL * the geographic location of the Web server'
        #   s IP address See the [Country Parameter Values](https://developers.google.com/
        #   custom-search/docs/xml_results_appendices#countryCollections) page for a list
        #   of valid values for this parameter.
        # @param [String] cx
        #   The Programmable Search Engine ID to use for this request.
        # @param [String] date_restrict
        #   Restricts results to URLs based on date. Supported values include: * `d[number]
        #   `: requests results from the specified number of past days. * `w[number]`:
        #   requests results from the specified number of past weeks. * `m[number]`:
        #   requests results from the specified number of past months. * `y[number]`:
        #   requests results from the specified number of past years.
        # @param [String] exact_terms
        #   Identifies a phrase that all documents in the search results must contain.
        # @param [String] exclude_terms
        #   Identifies a word or phrase that should not appear in any documents in the
        #   search results.
        # @param [String] file_type
        #   Restricts results to files of a specified extension. A list of file types
        #   indexable by Google can be found in Search Console [Help Center](https://
        #   support.google.com/webmasters/answer/35287).
        # @param [String] filter
        #   Controls turning on or off the duplicate content filter. * See [Automatic
        #   Filtering](https://developers.google.com/custom-search/docs/xml_results#
        #   automaticFiltering) for more information about Google's search results filters.
        #   Note that host crowding filtering applies only to multi-site searches. * By
        #   default, Google applies filtering to all search results to improve the quality
        #   of those results. Acceptable values are: * `0`: Turns off duplicate content
        #   filter. * `1`: Turns on duplicate content filter.
        # @param [String] gl
        #   Geolocation of end user. * The `gl` parameter value is a two-letter country
        #   code. The `gl` parameter boosts search results whose country of origin matches
        #   the parameter value. See the [Country Codes](https://developers.google.com/
        #   custom-search/docs/xml_results_appendices#countryCodes) page for a list of
        #   valid values. * Specifying a `gl` parameter value should lead to more relevant
        #   results. This is particularly true for international customers and, even more
        #   specifically, for customers in English- speaking countries other than the
        #   United States.
        # @param [String] googlehost
        #   **Deprecated**. Use the `gl` parameter for a similar effect. The local Google
        #   domain (for example, google.com, google.de, or google.fr) to use to perform
        #   the search.
        # @param [String] high_range
        #   Specifies the ending value for a search range. * Use `lowRange` and `highRange`
        #   to append an inclusive search range of `lowRange...highRange` to the query.
        # @param [String] hl
        #   Sets the user interface language. * Explicitly setting this parameter improves
        #   the performance and the quality of your search results. * See the [Interface
        #   Languages](https://developers.google.com/custom-search/docs/xml_results#
        #   wsInterfaceLanguages) section of [Internationalizing Queries and Results
        #   Presentation](https://developers.google.com/custom-search/docs/xml_results#
        #   wsInternationalizing) for more information, and (Supported Interface Languages)
        #   [https://developers.google.com/custom-search/docs/xml_results_appendices#
        #   interfaceLanguages] for a list of supported languages.
        # @param [String] hq
        #   Appends the specified query terms to the query, as if they were combined with
        #   a logical AND operator.
        # @param [String] img_color_type
        #   Returns black and white, grayscale, transparent, or color images. Acceptable
        #   values are: * `"color"` * `"gray"` * `"mono"`: black and white * `"trans"`:
        #   transparent background
        # @param [String] img_dominant_color
        #   Returns images of a specific dominant color. Acceptable values are: * `"black"`
        #   * `"blue"` * `"brown"` * `"gray"` * `"green"` * `"orange"` * `"pink"` * `"
        #   purple"` * `"red"` * `"teal"` * `"white"` * `"yellow"`
        # @param [String] img_size
        #   Returns images of a specified size. Acceptable values are: * `"huge"` * `"icon"
        #   ` * `"large"` * `"medium"` * `"small"` * `"xlarge"` * `"xxlarge"`
        # @param [String] img_type
        #   Returns images of a type. Acceptable values are: * `"clipart"` * `"face"` * `"
        #   lineart"` * `"stock"` * `"photo"` * `"animated"`
        # @param [String] link_site
        #   Specifies that all search results should contain a link to a particular URL.
        # @param [String] low_range
        #   Specifies the starting value for a search range. Use `lowRange` and `highRange`
        #   to append an inclusive search range of `lowRange...highRange` to the query.
        # @param [String] lr
        #   Restricts the search to documents written in a particular language (e.g., `lr=
        #   lang_ja`). Acceptable values are: * `"lang_ar"`: Arabic * `"lang_bg"`:
        #   Bulgarian * `"lang_ca"`: Catalan * `"lang_cs"`: Czech * `"lang_da"`: Danish * `
        #   "lang_de"`: German * `"lang_el"`: Greek * `"lang_en"`: English * `"lang_es"`:
        #   Spanish * `"lang_et"`: Estonian * `"lang_fi"`: Finnish * `"lang_fr"`: French *
        #   `"lang_hr"`: Croatian * `"lang_hu"`: Hungarian * `"lang_id"`: Indonesian * `"
        #   lang_is"`: Icelandic * `"lang_it"`: Italian * `"lang_iw"`: Hebrew * `"lang_ja"`
        #   : Japanese * `"lang_ko"`: Korean * `"lang_lt"`: Lithuanian * `"lang_lv"`:
        #   Latvian * `"lang_nl"`: Dutch * `"lang_no"`: Norwegian * `"lang_pl"`: Polish * `
        #   "lang_pt"`: Portuguese * `"lang_ro"`: Romanian * `"lang_ru"`: Russian * `"
        #   lang_sk"`: Slovak * `"lang_sl"`: Slovenian * `"lang_sr"`: Serbian * `"lang_sv"`
        #   : Swedish * `"lang_tr"`: Turkish * `"lang_zh-CN"`: Chinese (Simplified) * `"
        #   lang_zh-TW"`: Chinese (Traditional)
        # @param [Fixnum] num
        #   Number of search results to return. * Valid values are integers between 1 and
        #   10, inclusive.
        # @param [String] or_terms
        #   Provides additional search terms to check for in a document, where each
        #   document in the search results must contain at least one of the additional
        #   search terms.
        # @param [String] q
        #   Query
        # @param [String] related_site
        #   Specifies that all search results should be pages that are related to the
        #   specified URL.
        # @param [String] rights
        #   Filters based on licensing. Supported values include: `cc_publicdomain`, `
        #   cc_attribute`, `cc_sharealike`, `cc_noncommercial`, `cc_nonderived` and
        #   combinations of these. See [typical combinations](https://wiki.creativecommons.
        #   org/wiki/CC_Search_integration).
        # @param [String] safe
        #   Search safety level. Acceptable values are: * `"active"`: Enables SafeSearch
        #   filtering. * `"off"`: Disables SafeSearch filtering. (default)
        # @param [String] search_type
        #   Specifies the search type: `image`. If unspecified, results are limited to
        #   webpages. Acceptable values are: * `"image"`: custom image search.
        # @param [String] site_search
        #   Specifies a given site which should always be included or excluded from
        #   results (see `siteSearchFilter` parameter, below).
        # @param [String] site_search_filter
        #   Controls whether to include or exclude results from the site named in the `
        #   siteSearch` parameter. Acceptable values are: * `"e"`: exclude * `"i"`:
        #   include
        # @param [String] sort
        #   The sort expression to apply to the results. The sort parameter specifies that
        #   the results be sorted according to the specified expression i.e. sort by date.
        #   [Example: sort=date](https://developers.google.com/custom-search/docs/
        #   structured_search#sort-by-attribute).
        # @param [Fixnum] start
        #   The index of the first result to return. The default number of results per
        #   page is 10, so `&start=11` would start at the top of the second page of
        #   results. **Note**: The JSON API will never return more than 100 results, even
        #   if more than 100 documents match the query, so setting the sum of `start + num`
        #   to a number greater than 100 will produce an error. Also note that the
        #   maximum value for `num` is 10.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CustomsearchV1::Search] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CustomsearchV1::Search]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cse_siterestricts(c2coff: nil, cr: nil, cx: nil, date_restrict: nil, exact_terms: nil, exclude_terms: nil, file_type: nil, filter: nil, gl: nil, googlehost: nil, high_range: nil, hl: nil, hq: nil, img_color_type: nil, img_dominant_color: nil, img_size: nil, img_type: nil, link_site: nil, low_range: nil, lr: nil, num: nil, or_terms: nil, q: nil, related_site: nil, rights: nil, safe: nil, search_type: nil, site_search: nil, site_search_filter: nil, sort: nil, start: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'customsearch/v1/siterestrict', options)
          command.response_representation = Google::Apis::CustomsearchV1::Search::Representation
          command.response_class = Google::Apis::CustomsearchV1::Search
          command.query['c2coff'] = c2coff unless c2coff.nil?
          command.query['cr'] = cr unless cr.nil?
          command.query['cx'] = cx unless cx.nil?
          command.query['dateRestrict'] = date_restrict unless date_restrict.nil?
          command.query['exactTerms'] = exact_terms unless exact_terms.nil?
          command.query['excludeTerms'] = exclude_terms unless exclude_terms.nil?
          command.query['fileType'] = file_type unless file_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['gl'] = gl unless gl.nil?
          command.query['googlehost'] = googlehost unless googlehost.nil?
          command.query['highRange'] = high_range unless high_range.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['hq'] = hq unless hq.nil?
          command.query['imgColorType'] = img_color_type unless img_color_type.nil?
          command.query['imgDominantColor'] = img_dominant_color unless img_dominant_color.nil?
          command.query['imgSize'] = img_size unless img_size.nil?
          command.query['imgType'] = img_type unless img_type.nil?
          command.query['linkSite'] = link_site unless link_site.nil?
          command.query['lowRange'] = low_range unless low_range.nil?
          command.query['lr'] = lr unless lr.nil?
          command.query['num'] = num unless num.nil?
          command.query['orTerms'] = or_terms unless or_terms.nil?
          command.query['q'] = q unless q.nil?
          command.query['relatedSite'] = related_site unless related_site.nil?
          command.query['rights'] = rights unless rights.nil?
          command.query['safe'] = safe unless safe.nil?
          command.query['searchType'] = search_type unless search_type.nil?
          command.query['siteSearch'] = site_search unless site_search.nil?
          command.query['siteSearchFilter'] = site_search_filter unless site_search_filter.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['start'] = start unless start.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
