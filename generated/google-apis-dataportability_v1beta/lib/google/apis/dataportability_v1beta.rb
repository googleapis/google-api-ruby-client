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

      # Move a copy of messages between you and the businesses you have conversations with across Google services.
      AUTH_DATAPORTABILITY_BUSINESSMESSAGING_CONVERSATIONS = 'https://www.googleapis.com/auth/dataportability.businessmessaging.conversations'

      # Move a copy of the information you entered into online forms in Chrome.
      AUTH_DATAPORTABILITY_CHROME_AUTOFILL = 'https://www.googleapis.com/auth/dataportability.chrome.autofill'

      # Move a copy of pages you bookmarked in Chrome.
      AUTH_DATAPORTABILITY_CHROME_BOOKMARKS = 'https://www.googleapis.com/auth/dataportability.chrome.bookmarks'

      # Move a copy of words you added to Chrome's dictionary.
      AUTH_DATAPORTABILITY_CHROME_DICTIONARY = 'https://www.googleapis.com/auth/dataportability.chrome.dictionary'

      # Move a copy of extensions you installed from the Chrome Web Store.
      AUTH_DATAPORTABILITY_CHROME_EXTENSIONS = 'https://www.googleapis.com/auth/dataportability.chrome.extensions'

      # Move a copy of sites you visited in Chrome.
      AUTH_DATAPORTABILITY_CHROME_HISTORY = 'https://www.googleapis.com/auth/dataportability.chrome.history'

      # Move a copy of pages you added to your reading list in Chrome.
      AUTH_DATAPORTABILITY_CHROME_READING_LIST = 'https://www.googleapis.com/auth/dataportability.chrome.reading_list'

      # Move a copy of your settings in Chrome.
      AUTH_DATAPORTABILITY_CHROME_SETTINGS = 'https://www.googleapis.com/auth/dataportability.chrome.settings'

      # Move a copy of your pinned trips on Maps.
      AUTH_DATAPORTABILITY_MAPS_COMMUTE_ROUTES = 'https://www.googleapis.com/auth/dataportability.maps.commute_routes'

      # Move a copy of your commute settings on Maps.
      AUTH_DATAPORTABILITY_MAPS_COMMUTE_SETTINGS = 'https://www.googleapis.com/auth/dataportability.maps.commute_settings'

      # Move a copy of your electric vehicle profile on Maps.
      AUTH_DATAPORTABILITY_MAPS_EV_PROFILE = 'https://www.googleapis.com/auth/dataportability.maps.ev_profile'

      # Move a copy of your updates to places on Maps.
      AUTH_DATAPORTABILITY_MAPS_OFFERING_CONTRIBUTIONS = 'https://www.googleapis.com/auth/dataportability.maps.offering_contributions'

      # Move a copy of the photos and videos you posted on Maps.
      AUTH_DATAPORTABILITY_MAPS_PHOTOS_VIDEOS = 'https://www.googleapis.com/auth/dataportability.maps.photos_videos'

      # Move a copy of your reviews and posts on Maps.
      AUTH_DATAPORTABILITY_MAPS_REVIEWS = 'https://www.googleapis.com/auth/dataportability.maps.reviews'

      # Move a copy of your Starred places list on Maps.
      AUTH_DATAPORTABILITY_MAPS_STARRED_PLACES = 'https://www.googleapis.com/auth/dataportability.maps.starred_places'

      # Move a copy of your Maps activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_MAPS = 'https://www.googleapis.com/auth/dataportability.myactivity.maps'

      # Move a copy of your Google Search activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SEARCH = 'https://www.googleapis.com/auth/dataportability.myactivity.search'

      # Move a copy of your Shopping activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SHOPPING = 'https://www.googleapis.com/auth/dataportability.myactivity.shopping'

      # Move a copy of your YouTube activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_YOUTUBE = 'https://www.googleapis.com/auth/dataportability.myactivity.youtube'

      # Move a copy of your saved links, images, places, and collections from your use of Google services.
      AUTH_DATAPORTABILITY_SAVED_COLLECTIONS = 'https://www.googleapis.com/auth/dataportability.saved.collections'

      # Move a copy of your shipping information on Shopping.
      AUTH_DATAPORTABILITY_SHOPPING_ADDRESSES = 'https://www.googleapis.com/auth/dataportability.shopping.addresses'

      # Move a copy of reviews you wrote about products or online stores on Google Search.
      AUTH_DATAPORTABILITY_SHOPPING_REVIEWS = 'https://www.googleapis.com/auth/dataportability.shopping.reviews'

      # Move a copy of information about your YouTube channel.
      AUTH_DATAPORTABILITY_YOUTUBE_CHANNEL = 'https://www.googleapis.com/auth/dataportability.youtube.channel'

      # Move a copy of your YouTube comments.
      AUTH_DATAPORTABILITY_YOUTUBE_COMMENTS = 'https://www.googleapis.com/auth/dataportability.youtube.comments'

      # Move a copy of your YouTube messages in live chat.
      AUTH_DATAPORTABILITY_YOUTUBE_LIVE_CHAT = 'https://www.googleapis.com/auth/dataportability.youtube.live_chat'

      # Move a copy of your uploaded YouTube music tracks and your YouTube music library.
      AUTH_DATAPORTABILITY_YOUTUBE_MUSIC = 'https://www.googleapis.com/auth/dataportability.youtube.music'

      # Move a copy of your YouTube playables saved game progress files.
      AUTH_DATAPORTABILITY_YOUTUBE_PLAYABLE = 'https://www.googleapis.com/auth/dataportability.youtube.playable'

      # Move a copy of your YouTube posts.
      AUTH_DATAPORTABILITY_YOUTUBE_POSTS = 'https://www.googleapis.com/auth/dataportability.youtube.posts'

      # Move a copy of your YouTube private playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_PRIVATE_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.private_playlists'

      # Move a copy of your private YouTube videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_PRIVATE_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.private_videos'

      # Move a copy of your public YouTube playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_PUBLIC_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.public_playlists'

      # Move a copy of your public YouTube videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_PUBLIC_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.public_videos'

      # Move a copy of your YouTube shopping wishlists, and wishlist items.
      AUTH_DATAPORTABILITY_YOUTUBE_SHOPPING = 'https://www.googleapis.com/auth/dataportability.youtube.shopping'

      # Move a copy of your YouTube channel subscriptions, even if they're private.
      AUTH_DATAPORTABILITY_YOUTUBE_SUBSCRIPTIONS = 'https://www.googleapis.com/auth/dataportability.youtube.subscriptions'

      # Move a copy of your unlisted YouTube playlists.
      AUTH_DATAPORTABILITY_YOUTUBE_UNLISTED_PLAYLISTS = 'https://www.googleapis.com/auth/dataportability.youtube.unlisted_playlists'

      # Move a copy of your unlisted YouTube videos and information about them.
      AUTH_DATAPORTABILITY_YOUTUBE_UNLISTED_VIDEOS = 'https://www.googleapis.com/auth/dataportability.youtube.unlisted_videos'
    end
  end
end
