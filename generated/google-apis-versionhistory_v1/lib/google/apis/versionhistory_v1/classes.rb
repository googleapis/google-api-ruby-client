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
      
      # Each Channel is owned by a Platform and owns a collection of versions.
      # Possible Channels are listed in the Channel enum below. Not all Channels are
      # available for every Platform (e.g. CANARY does not exist for LINUX).
      class Channel
        include Google::Apis::Core::Hashable
      
        # Type of channel.
        # Corresponds to the JSON property `channelType`
        # @return [String]
        attr_accessor :channel_type
      
        # Channel name. Format is "`product`/platforms/`platform`/channels/`channel`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_type = args[:channel_type] if args.key?(:channel_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Response message for ListChannels.
      class ListChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of channels.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::VersionhistoryV1::Channel>]
        attr_accessor :channels
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListPlatforms.
      class ListPlatformsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of platforms.
        # Corresponds to the JSON property `platforms`
        # @return [Array<Google::Apis::VersionhistoryV1::Platform>]
        attr_accessor :platforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @platforms = args[:platforms] if args.key?(:platforms)
        end
      end
      
      # Response message for ListReleases.
      class ListReleasesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of releases.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::VersionhistoryV1::Release>]
        attr_accessor :releases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @releases = args[:releases] if args.key?(:releases)
        end
      end
      
      # Response message for ListVersions.
      class ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of versions.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::VersionhistoryV1::Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Each Platform is owned by a Product and owns a collection of channels.
      # Available platforms are listed in Platform enum below. Not all Channels are
      # available for every Platform (e.g. CANARY does not exist for LINUX).
      class Platform
        include Google::Apis::Core::Hashable
      
        # Platform name. Format is "`product`/platforms/`platform`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of platform.
        # Corresponds to the JSON property `platformType`
        # @return [String]
        attr_accessor :platform_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @platform_type = args[:platform_type] if args.key?(:platform_type)
        end
      end
      
      # A Release is owned by a Version. A Release contains information about the
      # release(s) of its parent version. This includes when the release began and
      # ended, as well as what percentage it was released at. If the version is
      # released again, or if the serving percentage changes, it will create another
      # release under the version.
      class Release
        include Google::Apis::Core::Hashable
      
        # Rollout fraction. This fraction indicates the fraction of people that should
        # receive this version in this release. If the fraction is not specified in
        # ReleaseManager, the API will assume fraction is 1.
        # Corresponds to the JSON property `fraction`
        # @return [Float]
        attr_accessor :fraction
      
        # Rollout fraction group. Only fractions with the same fraction_group are
        # statistically comparable: there may be non-fractional differences between
        # different fraction groups.
        # Corresponds to the JSON property `fractionGroup`
        # @return [Fixnum]
        attr_accessor :fraction_group
      
        # Release name. Format is "`product`/platforms/`platform`/channels/`channel`/
        # versions/`version`/releases/`release`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether or not the release was available for version pinning.
        # Corresponds to the JSON property `pinnable`
        # @return [Boolean]
        attr_accessor :pinnable
        alias_method :pinnable?, :pinnable
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `serving`
        # @return [Google::Apis::VersionhistoryV1::Interval]
        attr_accessor :serving
      
        # String containing just the version number. e.g. "84.0.4147.38"
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fraction = args[:fraction] if args.key?(:fraction)
          @fraction_group = args[:fraction_group] if args.key?(:fraction_group)
          @name = args[:name] if args.key?(:name)
          @pinnable = args[:pinnable] if args.key?(:pinnable)
          @serving = args[:serving] if args.key?(:serving)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Each Version is owned by a Channel. A Version only displays the Version number
      # (e.g. 84.0.4147.38). A Version owns a collection of releases.
      class Version
        include Google::Apis::Core::Hashable
      
        # Version name. Format is "`product`/platforms/`platform`/channels/`channel`/
        # versions/`version`" e.g. "chrome/platforms/win/channels/beta/versions/84.0.
        # 4147.38"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # String containing just the version number. e.g. "84.0.4147.38"
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
