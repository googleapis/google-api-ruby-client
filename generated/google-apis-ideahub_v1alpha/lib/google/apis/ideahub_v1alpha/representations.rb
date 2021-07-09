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
    module IdeahubV1alpha
      
      class GoogleSearchIdeahubV1alphaAvailableLocale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaIdea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaIdeaActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaIdeaState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaListAvailableLocalesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaListIdeasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaTopicState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1alphaAvailableLocale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :name, as: 'name'
        end
      end
      
      class GoogleSearchIdeahubV1alphaIdea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :text, as: 'text'
          collection :topics, as: 'topics', class: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopic, decorator: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopic::Representation
      
        end
      end
      
      class GoogleSearchIdeahubV1alphaIdeaActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :idea_ids, as: 'ideaIds'
          property :name, as: 'name'
          collection :topic_ids, as: 'topicIds'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleSearchIdeahubV1alphaIdeaState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dismissed, as: 'dismissed'
          property :name, as: 'name'
          property :saved, as: 'saved'
        end
      end
      
      class GoogleSearchIdeahubV1alphaListAvailableLocalesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_locales, as: 'availableLocales', class: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaAvailableLocale, decorator: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaAvailableLocale::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleSearchIdeahubV1alphaListIdeasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ideas, as: 'ideas', class: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdea, decorator: Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdea::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleSearchIdeahubV1alphaTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :mid, as: 'mid'
        end
      end
      
      class GoogleSearchIdeahubV1alphaTopicState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dismissed, as: 'dismissed'
          property :name, as: 'name'
          property :saved, as: 'saved'
        end
      end
    end
  end
end
