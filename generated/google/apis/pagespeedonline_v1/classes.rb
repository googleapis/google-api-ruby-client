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
    module PagespeedonlineV1

      # 
      class Result
        include Google::Apis::Core::Hashable
      
        # Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed
        # rule instantiated and run by the server.
        # Corresponds to the JSON property `formattedResults`
        # @return [Google::Apis::PagespeedonlineV1::Result::FormattedResults]
        attr_accessor :formatted_results
      
        # Canonicalized and final URL for the document, after following page redirects (
        # if any).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # List of rules that were specified in the request, but which the server did not
        # know how to instantiate.
        # Corresponds to the JSON property `invalidRules`
        # @return [Array<String>]
        attr_accessor :invalid_rules
      
        # Kind of result.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Summary statistics for the page, such as number of JavaScript bytes, number of
        # HTML bytes, etc.
        # Corresponds to the JSON property `pageStats`
        # @return [Google::Apis::PagespeedonlineV1::Result::PageStats]
        attr_accessor :page_stats
      
        # Response code for the document. 200 indicates a normal page load. 4xx/5xx
        # indicates an error.
        # Corresponds to the JSON property `responseCode`
        # @return [Fixnum]
        attr_accessor :response_code
      
        # The PageSpeed Score (0-100), which indicates how much faster a page could be.
        # A high score indicates little room for improvement, while a lower score
        # indicates more room for improvement.
        # Corresponds to the JSON property `score`
        # @return [Fixnum]
        attr_accessor :score
      
        # Base64-encoded screenshot of the page that was analyzed.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::PagespeedonlineV1::Result::Screenshot]
        attr_accessor :screenshot
      
        # Title of the page, as displayed in the browser's title bar.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The version of PageSpeed used to generate these results.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::PagespeedonlineV1::Result::Version]
        attr_accessor :version
      
        def initialize(**args)
          @formatted_results = args[:formatted_results] unless args[:formatted_results].nil?
          @id = args[:id] unless args[:id].nil?
          @invalid_rules = args[:invalid_rules] unless args[:invalid_rules].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @page_stats = args[:page_stats] unless args[:page_stats].nil?
          @response_code = args[:response_code] unless args[:response_code].nil?
          @score = args[:score] unless args[:score].nil?
          @screenshot = args[:screenshot] unless args[:screenshot].nil?
          @title = args[:title] unless args[:title].nil?
          @version = args[:version] unless args[:version].nil?
        end
        # Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed
        # rule instantiated and run by the server.
        class FormattedResults
          include Google::Apis::Core::Hashable
        
          # The locale of the formattedResults, e.g. "en_US".
          # Corresponds to the JSON property `locale`
          # @return [String]
          attr_accessor :locale
        
          # Dictionary of formatted rule results, with one entry for each PageSpeed rule
          # instantiated and run by the server.
          # Corresponds to the JSON property `ruleResults`
          # @return [Hash<String,Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult>]
          attr_accessor :rule_results
        
          def initialize(**args)
            @locale = args[:locale] unless args[:locale].nil?
            @rule_results = args[:rule_results] unless args[:rule_results].nil?
          end
          # The enum-like identifier for this rule. For instance "EnableKeepAlive" or "
          # AvoidCssImport". Not localized.
          class RuleResult
            include Google::Apis::Core::Hashable
          
            # Localized name of the rule, intended for presentation to a user.
            # Corresponds to the JSON property `localizedRuleName`
            # @return [String]
            attr_accessor :localized_rule_name
          
            # The impact (unbounded floating point value) that implementing the suggestions
            # for this rule would have on making the page faster. Impact is comparable
            # between rules to determine which rule's suggestions would have a higher or
            # lower impact on making a page faster. For instance, if enabling compression
            # would save 1MB, while optimizing images would save 500kB, the enable
            # compression rule would have 2x the impact of the image optimization rule, all
            # other things being equal.
            # Corresponds to the JSON property `ruleImpact`
            # @return [Float]
            attr_accessor :rule_impact
          
            # List of blocks of URLs. Each block may contain a heading and a list of URLs.
            # Each URL may optionally include additional details.
            # Corresponds to the JSON property `urlBlocks`
            # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock>]
            attr_accessor :url_blocks
          
            def initialize(**args)
              @localized_rule_name = args[:localized_rule_name] unless args[:localized_rule_name].nil?
              @rule_impact = args[:rule_impact] unless args[:rule_impact].nil?
              @url_blocks = args[:url_blocks] unless args[:url_blocks].nil?
            end
            # 
            class UrlBlock
              include Google::Apis::Core::Hashable
            
              # Heading to be displayed with the list of URLs.
              # Corresponds to the JSON property `header`
              # @return [Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Header]
              attr_accessor :header
            
              # List of entries that provide information about URLs in the url block. Optional.
              # Corresponds to the JSON property `urls`
              # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url>]
              attr_accessor :urls
            
              def initialize(**args)
                @header = args[:header] unless args[:header].nil?
                @urls = args[:urls] unless args[:urls].nil?
              end
              # Heading to be displayed with the list of URLs.
              class Header
                include Google::Apis::Core::Hashable
              
                # List of arguments for the format string.
                # Corresponds to the JSON property `args`
                # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Header::Arg>]
                attr_accessor :args
              
                # A localized format string with $N placeholders, where N is the 1-indexed
                # argument number, e.g. 'Minifying the following $1 resources would save a total
                # of $2 bytes'.
                # Corresponds to the JSON property `format`
                # @return [String]
                attr_accessor :format
              
                def initialize(**args)
                  @args = args[:args] unless args[:args].nil?
                  @format = args[:format] unless args[:format].nil?
                end
                # 
                class Arg
                  include Google::Apis::Core::Hashable
                
                  # Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION.
                  # Corresponds to the JSON property `type`
                  # @return [String]
                  attr_accessor :type
                
                  # Argument value, as a localized string.
                  # Corresponds to the JSON property `value`
                  # @return [String]
                  attr_accessor :value
                
                  def initialize(**args)
                    @type = args[:type] unless args[:type].nil?
                    @value = args[:value] unless args[:value].nil?
                  end
                end
              end
              # 
              class Url
                include Google::Apis::Core::Hashable
              
                # List of entries that provide additional details about a single URL. Optional.
                # Corresponds to the JSON property `details`
                # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Detail>]
                attr_accessor :details
              
                # A format string that gives information about the URL, and a list of arguments
                # for that format string.
                # Corresponds to the JSON property `result`
                # @return [Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Result]
                attr_accessor :result
              
                def initialize(**args)
                  @details = args[:details] unless args[:details].nil?
                  @result = args[:result] unless args[:result].nil?
                end
                # 
                class Detail
                  include Google::Apis::Core::Hashable
                
                  # List of arguments for the format string.
                  # Corresponds to the JSON property `args`
                  # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Detail::Arg>]
                  attr_accessor :args
                
                  # A localized format string with $N placeholders, where N is the 1-indexed
                  # argument number, e.g. 'Unnecessary metadata for this resource adds an
                  # additional $1 bytes to its download size'.
                  # Corresponds to the JSON property `format`
                  # @return [String]
                  attr_accessor :format
                
                  def initialize(**args)
                    @args = args[:args] unless args[:args].nil?
                    @format = args[:format] unless args[:format].nil?
                  end
                  # 
                  class Arg
                    include Google::Apis::Core::Hashable
                  
                    # Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION.
                    # Corresponds to the JSON property `type`
                    # @return [String]
                    attr_accessor :type
                  
                    # Argument value, as a localized string.
                    # Corresponds to the JSON property `value`
                    # @return [String]
                    attr_accessor :value
                  
                    def initialize(**args)
                      @type = args[:type] unless args[:type].nil?
                      @value = args[:value] unless args[:value].nil?
                    end
                  end
                end
                # A format string that gives information about the URL, and a list of arguments
                # for that format string.
                class Result
                  include Google::Apis::Core::Hashable
                
                  # List of arguments for the format string.
                  # Corresponds to the JSON property `args`
                  # @return [Array<Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Result::Arg>]
                  attr_accessor :args
                
                  # A localized format string with $N placeholders, where N is the 1-indexed
                  # argument number, e.g. 'Minifying the resource at URL $1 can save $2 bytes'.
                  # Corresponds to the JSON property `format`
                  # @return [String]
                  attr_accessor :format
                
                  def initialize(**args)
                    @args = args[:args] unless args[:args].nil?
                    @format = args[:format] unless args[:format].nil?
                  end
                  # 
                  class Arg
                    include Google::Apis::Core::Hashable
                  
                    # Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, or DURATION.
                    # Corresponds to the JSON property `type`
                    # @return [String]
                    attr_accessor :type
                  
                    # Argument value, as a localized string.
                    # Corresponds to the JSON property `value`
                    # @return [String]
                    attr_accessor :value
                  
                    def initialize(**args)
                      @type = args[:type] unless args[:type].nil?
                      @value = args[:value] unless args[:value].nil?
                    end
                  end
                end
              end
            end
          end
        end
        # Summary statistics for the page, such as number of JavaScript bytes, number of
        # HTML bytes, etc.
        class PageStats
          include Google::Apis::Core::Hashable
        
          # Number of uncompressed response bytes for CSS resources on the page.
          # Corresponds to the JSON property `cssResponseBytes`
          # @return [String]
          attr_accessor :css_response_bytes
        
          # Number of response bytes for flash resources on the page.
          # Corresponds to the JSON property `flashResponseBytes`
          # @return [String]
          attr_accessor :flash_response_bytes
        
          # Number of uncompressed response bytes for the main HTML document and all
          # iframes on the page.
          # Corresponds to the JSON property `htmlResponseBytes`
          # @return [String]
          attr_accessor :html_response_bytes
        
          # Number of response bytes for image resources on the page.
          # Corresponds to the JSON property `imageResponseBytes`
          # @return [String]
          attr_accessor :image_response_bytes
        
          # Number of uncompressed response bytes for JS resources on the page.
          # Corresponds to the JSON property `javascriptResponseBytes`
          # @return [String]
          attr_accessor :javascript_response_bytes
        
          # Number of CSS resources referenced by the page.
          # Corresponds to the JSON property `numberCssResources`
          # @return [Fixnum]
          attr_accessor :number_css_resources
        
          # Number of unique hosts referenced by the page.
          # Corresponds to the JSON property `numberHosts`
          # @return [Fixnum]
          attr_accessor :number_hosts
        
          # Number of JavaScript resources referenced by the page.
          # Corresponds to the JSON property `numberJsResources`
          # @return [Fixnum]
          attr_accessor :number_js_resources
        
          # Number of HTTP resources loaded by the page.
          # Corresponds to the JSON property `numberResources`
          # @return [Fixnum]
          attr_accessor :number_resources
        
          # Number of static (i.e. cacheable) resources on the page.
          # Corresponds to the JSON property `numberStaticResources`
          # @return [Fixnum]
          attr_accessor :number_static_resources
        
          # Number of response bytes for other resources on the page.
          # Corresponds to the JSON property `otherResponseBytes`
          # @return [String]
          attr_accessor :other_response_bytes
        
          # Number of uncompressed response bytes for text resources not covered by other
          # statistics (i.e non-HTML, non-script, non-CSS resources) on the page.
          # Corresponds to the JSON property `textResponseBytes`
          # @return [String]
          attr_accessor :text_response_bytes
        
          # Total size of all request bytes sent by the page.
          # Corresponds to the JSON property `totalRequestBytes`
          # @return [String]
          attr_accessor :total_request_bytes
        
          def initialize(**args)
            @css_response_bytes = args[:css_response_bytes] unless args[:css_response_bytes].nil?
            @flash_response_bytes = args[:flash_response_bytes] unless args[:flash_response_bytes].nil?
            @html_response_bytes = args[:html_response_bytes] unless args[:html_response_bytes].nil?
            @image_response_bytes = args[:image_response_bytes] unless args[:image_response_bytes].nil?
            @javascript_response_bytes = args[:javascript_response_bytes] unless args[:javascript_response_bytes].nil?
            @number_css_resources = args[:number_css_resources] unless args[:number_css_resources].nil?
            @number_hosts = args[:number_hosts] unless args[:number_hosts].nil?
            @number_js_resources = args[:number_js_resources] unless args[:number_js_resources].nil?
            @number_resources = args[:number_resources] unless args[:number_resources].nil?
            @number_static_resources = args[:number_static_resources] unless args[:number_static_resources].nil?
            @other_response_bytes = args[:other_response_bytes] unless args[:other_response_bytes].nil?
            @text_response_bytes = args[:text_response_bytes] unless args[:text_response_bytes].nil?
            @total_request_bytes = args[:total_request_bytes] unless args[:total_request_bytes].nil?
          end
        end
        # Base64-encoded screenshot of the page that was analyzed.
        class Screenshot
          include Google::Apis::Core::Hashable
        
          # Image data base64 encoded.
          # Corresponds to the JSON property `data`
          # @return [String]
          attr_accessor :data
        
          # Height of screenshot in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # Mime type of image data. E.g. "image/jpeg".
          # Corresponds to the JSON property `mime_type`
          # @return [String]
          attr_accessor :mime_type
        
          # Width of screenshot in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
            @data = args[:data] unless args[:data].nil?
            @height = args[:height] unless args[:height].nil?
            @mime_type = args[:mime_type] unless args[:mime_type].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
        # The version of PageSpeed used to generate these results.
        class Version
          include Google::Apis::Core::Hashable
        
          # The major version number of PageSpeed used to generate these results.
          # Corresponds to the JSON property `major`
          # @return [Fixnum]
          attr_accessor :major
        
          # The minor version number of PageSpeed used to generate these results.
          # Corresponds to the JSON property `minor`
          # @return [Fixnum]
          attr_accessor :minor
        
          def initialize(**args)
            @major = args[:major] unless args[:major].nil?
            @minor = args[:minor] unless args[:minor].nil?
          end
        end
      end
    end
  end
end
