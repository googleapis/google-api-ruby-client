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
      
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation
        
        class FormattedResultsRepresentation < Google::Apis::Core::JsonRepresentation
          
          class RuleResultRepresentation < Google::Apis::Core::JsonRepresentation
            
            class UrlBlockRepresentation < Google::Apis::Core::JsonRepresentation
              
              class HeaderRepresentation < Google::Apis::Core::JsonRepresentation
                
                class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                  
                end
              end
              
              class UrlRepresentation < Google::Apis::Core::JsonRepresentation
                
                class DetailRepresentation < Google::Apis::Core::JsonRepresentation
                  
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                    
                  end
                end
                
                class ResultRepresentation < Google::Apis::Core::JsonRepresentation
                  
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                    
                  end
                end
              end
            end
          end
        end
        
        class PageStatsRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ScreenshotRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class VersionRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end

      # @private
      class ResultRepresentation < Google::Apis::Core::JsonRepresentation
        class FormattedResultsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PageStatsRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ScreenshotRepresentation < Google::Apis::Core::JsonRepresentation; end
        class VersionRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :formatted_results, as: 'formattedResults', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation
        
        property :id, as: 'id'
        collection :invalid_rules, as: 'invalidRules'
        
        property :kind, as: 'kind'
        property :page_stats, as: 'pageStats', class: Google::Apis::PagespeedonlineV1::Result::PageStats, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::PageStatsRepresentation
        
        property :response_code, as: 'responseCode'
        property :score, as: 'score'
        property :screenshot, as: 'screenshot', class: Google::Apis::PagespeedonlineV1::Result::Screenshot, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::ScreenshotRepresentation
        
        property :title, as: 'title'
        property :version, as: 'version', class: Google::Apis::PagespeedonlineV1::Result::Version, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::VersionRepresentation
        
        
        
        # @private
        class FormattedResultsRepresentation < Google::Apis::Core::JsonRepresentation
          class RuleResultRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :locale, as: 'locale'
          hash :rule_results, as: 'ruleResults', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation
          
          
          
          
          # @private
          class RuleResultRepresentation < Google::Apis::Core::JsonRepresentation
            class UrlBlockRepresentation < Google::Apis::Core::JsonRepresentation; end
            
            property :localized_rule_name, as: 'localizedRuleName'
            property :rule_impact, as: 'ruleImpact'
            collection :url_blocks, as: 'urlBlocks', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation
            
            
            
            
            # @private
            class UrlBlockRepresentation < Google::Apis::Core::JsonRepresentation
              class HeaderRepresentation < Google::Apis::Core::JsonRepresentation; end
              class UrlRepresentation < Google::Apis::Core::JsonRepresentation; end
              
              property :header, as: 'header', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Header, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::HeaderRepresentation
              
              collection :urls, as: 'urls', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::UrlRepresentation
              
              
              
              
              # @private
              class HeaderRepresentation < Google::Apis::Core::JsonRepresentation
                class ArgRepresentation < Google::Apis::Core::JsonRepresentation; end
                
                collection :args, as: 'args', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Header::Arg, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::HeaderRepresentation::ArgRepresentation
                
                
                property :format, as: 'format'
                
                
                # @private
                class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                  
                  property :type, as: 'type'
                  property :value, as: 'value'
                end
              end
              
              # @private
              class UrlRepresentation < Google::Apis::Core::JsonRepresentation
                class DetailRepresentation < Google::Apis::Core::JsonRepresentation; end
                class ResultRepresentation < Google::Apis::Core::JsonRepresentation; end
                
                collection :details, as: 'details', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Detail, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::UrlRepresentation::DetailRepresentation
                
                
                property :result, as: 'result', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Result, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::UrlRepresentation::ResultRepresentation
                
                
                
                # @private
                class DetailRepresentation < Google::Apis::Core::JsonRepresentation
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation; end
                  
                  collection :args, as: 'args', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Detail::Arg, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::UrlRepresentation::DetailRepresentation::ArgRepresentation
                  
                  
                  property :format, as: 'format'
                  
                  
                  # @private
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                    
                    property :type, as: 'type'
                    property :value, as: 'value'
                  end
                end
                
                # @private
                class ResultRepresentation < Google::Apis::Core::JsonRepresentation
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation; end
                  
                  collection :args, as: 'args', class: Google::Apis::PagespeedonlineV1::Result::FormattedResults::RuleResult::UrlBlock::Url::Result::Arg, decorator: Google::Apis::PagespeedonlineV1::ResultRepresentation::FormattedResultsRepresentation::RuleResultRepresentation::UrlBlockRepresentation::UrlRepresentation::ResultRepresentation::ArgRepresentation
                  
                  
                  property :format, as: 'format'
                  
                  
                  # @private
                  class ArgRepresentation < Google::Apis::Core::JsonRepresentation
                    
                    property :type, as: 'type'
                    property :value, as: 'value'
                  end
                end
              end
            end
          end
        end
        
        # @private
        class PageStatsRepresentation < Google::Apis::Core::JsonRepresentation
          
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
        
        # @private
        class ScreenshotRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :data, as: 'data'
          property :height, as: 'height'
          property :mime_type, as: 'mime_type'
          property :width, as: 'width'
        end
        
        # @private
        class VersionRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :major, as: 'major'
          property :minor, as: 'minor'
        end
      end
    end
  end
end
