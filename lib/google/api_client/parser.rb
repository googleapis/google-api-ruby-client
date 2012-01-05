# Copyright 2010 Google Inc.
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


require 'multi_json'


module Google
  class APIClient
    module Parser
      def content_type(content_type)
        @@content_type_mapping ||= {}
        @@content_type_mapping[content_type] = self
      end

      def self.match_content_type(content_type)
        # TODO(bobaman): Do this more efficiently.
        mime_type_regexp = /^([^\/]+)(?:\/([^+]+\+)?([^;]+))?(?:;.*)?$/
        if @@content_type_mapping[content_type]
          # Exact match
          return @@content_type_mapping[content_type]
        else
          media_type, extension, sub_type =
            content_type.scan(mime_type_regexp)[0]
          for pattern, parser in @@content_type_mapping
            # We want to match on subtype first
            pattern_media_type, pattern_extension, pattern_sub_type =
              pattern.scan(mime_type_regexp)[0]
            next if pattern_extension != nil
            if media_type == pattern_media_type && sub_type == pattern_sub_type
              return parser
            end
          end
          for pattern, parser in @@content_type_mapping
            # We failed to match on the subtype
            # Try to match only on the media type
            pattern_media_type, pattern_extension, pattern_sub_type =
              pattern.scan(mime_type_regexp)[0]
            next if pattern_extension != nil || pattern_sub_type != nil
            if media_type == pattern_media_type
              return parser
            end
          end
        end
        return nil
      end
    end
  end
end
