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
    module WebfontsV1

      # 
      class Webfont
        include Google::Apis::Core::Hashable
      
        # The category of the font.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The name of the font.
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # The font files (with all supported scripts) for each one of the available
        # variants, as a key : value map.
        # Corresponds to the JSON property `files`
        # @return [Hash<String,String>]
        attr_accessor :files
      
        # This kind represents a webfont object in the webfonts service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date (format "yyyy-MM-dd") the font was modified for the last time.
        # Corresponds to the JSON property `lastModified`
        # @return [Date]
        attr_accessor :last_modified
      
        # The scripts supported by the font.
        # Corresponds to the JSON property `subsets`
        # @return [Array<String>]
        attr_accessor :subsets
      
        # The available variants for the font.
        # Corresponds to the JSON property `variants`
        # @return [Array<String>]
        attr_accessor :variants
      
        # The font version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
          @category = args[:category] unless args[:category].nil?
          @family = args[:family] unless args[:family].nil?
          @files = args[:files] unless args[:files].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified = args[:last_modified] unless args[:last_modified].nil?
          @subsets = args[:subsets] unless args[:subsets].nil?
          @variants = args[:variants] unless args[:variants].nil?
          @version = args[:version] unless args[:version].nil?
        end
      end

      # 
      class WebfontList
        include Google::Apis::Core::Hashable
      
        # The list of fonts currently served by the Google Fonts API.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::WebfontsV1::Webfont>]
        attr_accessor :items
      
        # This kind represents a list of webfont objects in the webfonts service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
    end
  end
end
