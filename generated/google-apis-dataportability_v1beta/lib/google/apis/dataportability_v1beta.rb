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

require 'google/apis/dataportability_v1beta/service.rb'
require 'google/apis/dataportability_v1beta/classes.rb'
require 'google/apis/dataportability_v1beta/representations.rb'
require 'google/apis/dataportability_v1beta/gem_version.rb'

module Google
  module Apis
    # Data Portability API
    #
    # The Data Portability API lets you build applications that request
    # authorization from a user to move a copy of data from Google services into
    # your application. This enables data portability and facilitates switching
    # services.
    #
    # @see https://developers.google.com/data-portability
    module DataportabilityV1beta
      # Version of the Data Portability API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta'

      # Move a copy of messages between you and the businesses you have conversations with.
      AUTH_DATAPORTABILITY_BUSINESSMESSAGING_CONVERSATIONS = 'https://www.googleapis.com/auth/dataportability.businessmessaging.conversations'

      # Move a copy of your search activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SEARCH = 'https://www.googleapis.com/auth/dataportability.myactivity.search'

      # Move a copy of your Shopping activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SHOPPING = 'https://www.googleapis.com/auth/dataportability.myactivity.shopping'

      # Move a copy of your YouTube activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_YOUTUBE = 'https://www.googleapis.com/auth/dataportability.myactivity.youtube'

      # Move a copy of your shipping information.
      AUTH_DATAPORTABILITY_SHOPPING_ADDRESSES = 'https://www.googleapis.com/auth/dataportability.shopping.addresses'

      # Move a copy of reviews you wrote about products or online stores.
      AUTH_DATAPORTABILITY_SHOPPING_REVIEWS = 'https://www.googleapis.com/auth/dataportability.shopping.reviews'

      # Move a copy of information about your channel.
      AUTH_DATAPORTABILITY_YOUTUBE_CHANNEL = 'https://www.googleapis.com/auth/dataportability.youtube.channel'

      # Move a copy of your comments.
      AUTH_DATAPORTABILITY_YOUTUBE_COMMENTS = 'https://www.googleapis.com/auth/dataportability.youtube.comments'

      # Move a copy of your messages in live chat.
      AUTH_DATAPORTABILITY_YOUTUBE_LIVE_CHAT = 'https://www.googleapis.com/auth/dataportability.youtube.live_chat'

      # Move a copy of your uploaded YouTube Music tracks and your YouTube Music library.
      AUTH_DATAPORTABILITY_YOUTUBE_MUSIC = 'https://www.googleapis.com/auth/dataportability.youtube.music'

      # Move a copy of your private playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_PRIVATE_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.private_playlists'

      # Move a copy of your private videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_PRIVATE_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.private_videos'

      # Move a copy of your public playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_PUBLIC_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.public_playlists'

      # Move a copy of your public videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_PUBLIC_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.public_videos'

      # Move a copy of YouTube Shopping Wishlists, and wishlist items.
      AUTH_DATAPORTABILITY_YOUTUBE_SHOPPING = 'https://www.googleapis.com/auth/dataportability.youtube.shopping'

      # Move a copy of your channel subscriptions, even if they're private.
      AUTH_DATAPORTABILITY_YOUTUBE_SUBSCRIPTIONS = 'https://www.googleapis.com/auth/dataportability.youtube.subscriptions'

      # Move a copy of your unlisted playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_UNLISTED_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists'

      # Move a copy of your unlisted videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_UNLISTED_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos'
    end
  end
end
