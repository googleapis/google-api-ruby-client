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
    module VersionhistoryV1
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlatformsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Platform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Release
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_type, as: 'channelType'
          property :name, as: 'name'
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::VersionhistoryV1::Channel, decorator: Google::Apis::VersionhistoryV1::Channel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPlatformsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :platforms, as: 'platforms', class: Google::Apis::VersionhistoryV1::Platform, decorator: Google::Apis::VersionhistoryV1::Platform::Representation
      
        end
      end
      
      class ListReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :releases, as: 'releases', class: Google::Apis::VersionhistoryV1::Release, decorator: Google::Apis::VersionhistoryV1::Release::Representation
      
        end
      end
      
      class ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::VersionhistoryV1::Version, decorator: Google::Apis::VersionhistoryV1::Version::Representation
      
        end
      end
      
      class Platform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :platform_type, as: 'platformType'
        end
      end
      
      class Release
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fraction, as: 'fraction'
          property :fraction_group, :numeric_string => true, as: 'fractionGroup'
          property :name, as: 'name'
          property :pinnable, as: 'pinnable'
          property :serving, as: 'serving', class: Google::Apis::VersionhistoryV1::Interval, decorator: Google::Apis::VersionhistoryV1::Interval::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
    end
  end
end
