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
    module IdeahubV1beta
      
      class GoogleSearchIdeahubV1betaAvailableLocale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaIdea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaIdeaActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaIdeaState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaListAvailableLocalesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaListIdeasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaTopicState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSearchIdeahubV1betaAvailableLocale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :name, as: 'name'
        end
      end
      
      class GoogleSearchIdeahubV1betaIdea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :text, as: 'text'
          collection :topics, as: 'topics', class: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaTopic, decorator: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaTopic::Representation
      
        end
      end
      
      class GoogleSearchIdeahubV1betaIdeaActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ideas, as: 'ideas'
          property :name, as: 'name'
          collection :topics, as: 'topics'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleSearchIdeahubV1betaIdeaState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dismissed, as: 'dismissed'
          property :name, as: 'name'
          property :saved, as: 'saved'
        end
      end
      
      class GoogleSearchIdeahubV1betaListAvailableLocalesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_locales, as: 'availableLocales', class: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaAvailableLocale, decorator: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaAvailableLocale::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleSearchIdeahubV1betaListIdeasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ideas, as: 'ideas', class: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaIdea, decorator: Google::Apis::IdeahubV1beta::GoogleSearchIdeahubV1betaIdea::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleSearchIdeahubV1betaTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :mid, as: 'mid'
          property :name, as: 'name'
        end
      end
      
      class GoogleSearchIdeahubV1betaTopicState
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
