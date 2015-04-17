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
    module PagespeedonlineV2
      class FormatStringRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class FormatStringRepresentation < Google::Apis::Core::JsonRepresentation
        collection :args, as: 'args', class: Google::Apis::PagespeedonlineV2::FormatString::Arg do
          property :key, as: 'key'
          collection :rects, as: 'rects', class: Google::Apis::PagespeedonlineV2::FormatString::Arg::Rect do
            property :height, as: 'height'
            property :left, as: 'left'
            property :top, as: 'top'
            property :width, as: 'width'
          end
          
          
          collection :secondary_rects, as: 'secondary_rects', class: Google::Apis::PagespeedonlineV2::FormatString::Arg::SecondaryRect do
            property :height, as: 'height'
            property :left, as: 'left'
            property :top, as: 'top'
            property :width, as: 'width'
          end
          
          
          property :type, as: 'type'
          property :value, as: 'value'
        end
        
        
        property :format, as: 'format'
      end

      # @private
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, as: 'data'
        property :height, as: 'height'
        property :key, as: 'key'
        property :mime_type, as: 'mime_type'
        property :page_rect, as: 'page_rect', class: Google::Apis::PagespeedonlineV2::Image::PageRect do
          property :height, as: 'height'
          property :left, as: 'left'
          property :top, as: 'top'
          property :width, as: 'width'
        end
        
        property :width, as: 'width'
      end

      # @private
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :formatted_results, as: 'formattedResults', class: Google::Apis::PagespeedonlineV2::Result::FormattedResults do
          property :locale, as: 'locale'
          hash :rule_results, as: 'ruleResults', class: Google::Apis::PagespeedonlineV2::Result::FormattedResults::RuleResult do
            collection :groups, as: 'groups'
            
            property :localized_rule_name, as: 'localizedRuleName'
            property :rule_impact, as: 'ruleImpact'
            property :summary, as: 'summary', class: Google::Apis::PagespeedonlineV2::FormatString, decorator: Google::Apis::PagespeedonlineV2::FormatStringRepresentation
            
            collection :url_blocks, as: 'urlBlocks', class: Google::Apis::PagespeedonlineV2::Result::FormattedResults::RuleResult::UrlBlock do
              property :header, as: 'header', class: Google::Apis::PagespeedonlineV2::FormatString, decorator: Google::Apis::PagespeedonlineV2::FormatStringRepresentation
              
              collection :urls, as: 'urls', class: Google::Apis::PagespeedonlineV2::Result::FormattedResults::RuleResult::UrlBlock::Url do
                collection :details, as: 'details', class: Google::Apis::PagespeedonlineV2::FormatString, decorator: Google::Apis::PagespeedonlineV2::FormatStringRepresentation
                
                
                property :result, as: 'result', class: Google::Apis::PagespeedonlineV2::FormatString, decorator: Google::Apis::PagespeedonlineV2::FormatStringRepresentation
              end
            end
          end
        end
        
        property :id, as: 'id'
        collection :invalid_rules, as: 'invalidRules'
        
        property :kind, as: 'kind'
        property :page_stats, as: 'pageStats', class: Google::Apis::PagespeedonlineV2::Result::PageStats do
          property :css_response_bytes, as: 'cssResponseBytes'
          property :flash_response_bytes, as: 'flashResponseBytes'
          property :html_response_bytes, as: 'htmlResponseBytes'
          property :image_response_bytes, as: 'imageResponseBytes'
          property :javascript_response_bytes, as: 'javascriptResponseBytes'
          property :number_css_resources, as: 'numberCssResources'
          property :number_hosts, as: 'numberHosts'
          property :number_js_resources, as: 'numberJsResources'
          property :number_resources, as: 'numberResources'
          property :number_static_resources, as: 'numberStaticResources'
          property :other_response_bytes, as: 'otherResponseBytes'
          property :text_response_bytes, as: 'textResponseBytes'
          property :total_request_bytes, as: 'totalRequestBytes'
        end
        
        property :response_code, as: 'responseCode'
        hash :rule_groups, as: 'ruleGroups', class: Google::Apis::PagespeedonlineV2::Result::RuleGroup do
          property :score, as: 'score'
        end
        
        
        property :screenshot, as: 'screenshot', class: Google::Apis::PagespeedonlineV2::Image, decorator: Google::Apis::PagespeedonlineV2::ImageRepresentation
        
        property :title, as: 'title'
        property :version, as: 'version', class: Google::Apis::PagespeedonlineV2::Result::Version do
          property :major, as: 'major'
          property :minor, as: 'minor'
        end
      end
    end
  end
end
