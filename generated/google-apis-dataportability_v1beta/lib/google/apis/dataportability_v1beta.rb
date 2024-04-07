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

      # Move a copy of the Google Alerts subscriptions you created.
      AUTH_DATAPORTABILITY_ALERTS_SUBSCRIPTIONS = 'https://www.googleapis.com/auth/dataportability.alerts.subscriptions'

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

      # Move a copy of searches and sites you follow, saved by Discover.
      AUTH_DATAPORTABILITY_DISCOVER_FOLLOWS = 'https://www.googleapis.com/auth/dataportability.discover.follows'

      # Move a copy of links to your liked documents, saved by Discover.
      AUTH_DATAPORTABILITY_DISCOVER_LIKES = 'https://www.googleapis.com/auth/dataportability.discover.likes'

      # Move a copy of content you marked as not interested, saved by Discover.
      AUTH_DATAPORTABILITY_DISCOVER_NOT_INTERESTED = 'https://www.googleapis.com/auth/dataportability.discover.not_interested'

      # Move a copy of the places you labeled on Maps.
      AUTH_DATAPORTABILITY_MAPS_ALIASED_PLACES = 'https://www.googleapis.com/auth/dataportability.maps.aliased_places'

      # Move a copy of your pinned trips on Maps.
      AUTH_DATAPORTABILITY_MAPS_COMMUTE_ROUTES = 'https://www.googleapis.com/auth/dataportability.maps.commute_routes'

      # Move a copy of your commute settings on Maps.
      AUTH_DATAPORTABILITY_MAPS_COMMUTE_SETTINGS = 'https://www.googleapis.com/auth/dataportability.maps.commute_settings'

      # Move a copy of your electric vehicle profile on Maps.
      AUTH_DATAPORTABILITY_MAPS_EV_PROFILE = 'https://www.googleapis.com/auth/dataportability.maps.ev_profile'

      # Move a copy of the corrections you made to places or map information on Maps.
      AUTH_DATAPORTABILITY_MAPS_FACTUAL_CONTRIBUTIONS = 'https://www.googleapis.com/auth/dataportability.maps.factual_contributions'

      # Move a copy of your updates to places on Maps.
      AUTH_DATAPORTABILITY_MAPS_OFFERING_CONTRIBUTIONS = 'https://www.googleapis.com/auth/dataportability.maps.offering_contributions'

      # Move a copy of the photos and videos you posted on Maps.
      AUTH_DATAPORTABILITY_MAPS_PHOTOS_VIDEOS = 'https://www.googleapis.com/auth/dataportability.maps.photos_videos'

      # Move a copy of the questions and answers you posted on Maps.
      AUTH_DATAPORTABILITY_MAPS_QUESTIONS_ANSWERS = 'https://www.googleapis.com/auth/dataportability.maps.questions_answers'

      # Move a copy of your reviews and posts on Maps.
      AUTH_DATAPORTABILITY_MAPS_REVIEWS = 'https://www.googleapis.com/auth/dataportability.maps.reviews'

      # Move a copy of your Starred places list on Maps.
      AUTH_DATAPORTABILITY_MAPS_STARRED_PLACES = 'https://www.googleapis.com/auth/dataportability.maps.starred_places'

      # Move a copy of your Maps activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_MAPS = 'https://www.googleapis.com/auth/dataportability.myactivity.maps'

      # Move a copy of your My Ad Center activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_MYADCENTER = 'https://www.googleapis.com/auth/dataportability.myactivity.myadcenter'

      # Move a copy of your Google Play activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_PLAY = 'https://www.googleapis.com/auth/dataportability.myactivity.play'

      # Move a copy of your Google Search activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SEARCH = 'https://www.googleapis.com/auth/dataportability.myactivity.search'

      # Move a copy of your Shopping activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_SHOPPING = 'https://www.googleapis.com/auth/dataportability.myactivity.shopping'

      # Move a copy of your YouTube activity.
      AUTH_DATAPORTABILITY_MYACTIVITY_YOUTUBE = 'https://www.googleapis.com/auth/dataportability.myactivity.youtube'

      # Move a copy of the maps you created in My Maps.
      AUTH_DATAPORTABILITY_MYMAPS_MAPS = 'https://www.googleapis.com/auth/dataportability.mymaps.maps'

      # Move a copy of your food purchase and reservation activity.
      AUTH_DATAPORTABILITY_ORDER_RESERVE_PURCHASES_RESERVATIONS = 'https://www.googleapis.com/auth/dataportability.order_reserve.purchases_reservations'

      # Move a copy of information about your devices with Google Play Store installed.
      AUTH_DATAPORTABILITY_PLAY_DEVICES = 'https://www.googleapis.com/auth/dataportability.play.devices'

      # Move a copy of your Google Play Store Grouping tags created by app developers.
      AUTH_DATAPORTABILITY_PLAY_GROUPING = 'https://www.googleapis.com/auth/dataportability.play.grouping'

      # Move a copy of your Google Play Store app installations.
      AUTH_DATAPORTABILITY_PLAY_INSTALLS = 'https://www.googleapis.com/auth/dataportability.play.installs'

      # Move a copy of your Google Play Store downloads, including books, games, and apps.
      AUTH_DATAPORTABILITY_PLAY_LIBRARY = 'https://www.googleapis.com/auth/dataportability.play.library'

      # Move a copy of information about your Google Play Store Points.
      AUTH_DATAPORTABILITY_PLAY_PLAYPOINTS = 'https://www.googleapis.com/auth/dataportability.play.playpoints'

      # Move a copy of information about your Google Play Store promotions.
      AUTH_DATAPORTABILITY_PLAY_PROMOTIONS = 'https://www.googleapis.com/auth/dataportability.play.promotions'

      # Move a copy of your Google Play Store purchases.
      AUTH_DATAPORTABILITY_PLAY_PURCHASES = 'https://www.googleapis.com/auth/dataportability.play.purchases'

      # Move a copy of your Google Play Store redemption activities.
      AUTH_DATAPORTABILITY_PLAY_REDEMPTIONS = 'https://www.googleapis.com/auth/dataportability.play.redemptions'

      # Move a copy of your Google Play Store subscriptions.
      AUTH_DATAPORTABILITY_PLAY_SUBSCRIPTIONS = 'https://www.googleapis.com/auth/dataportability.play.subscriptions'

      # Move a copy of your Google Play Store user settings and preferences.
      AUTH_DATAPORTABILITY_PLAY_USERSETTINGS = 'https://www.googleapis.com/auth/dataportability.play.usersettings'

      # Move a copy of your saved links, images, places, and collections from your use of Google services.
      AUTH_DATAPORTABILITY_SAVED_COLLECTIONS = 'https://www.googleapis.com/auth/dataportability.saved.collections'

      # Move a copy of your media reviews on Google Search.
      AUTH_DATAPORTABILITY_SEARCH_UGC_MEDIA_REVIEWS_AND_STARS = 'https://www.googleapis.com/auth/dataportability.search_ugc.media.reviews_and_stars'

      # Move a copy of your self-reported video streaming provider preferences from Google Search and Google TV.
      AUTH_DATAPORTABILITY_SEARCH_UGC_MEDIA_STREAMING_VIDEO_PROVIDERS = 'https://www.googleapis.com/auth/dataportability.search_ugc.media.streaming_video_providers'

      # Move a copy of your indicated thumbs up and thumbs down on media in Google Search and Google TV.
      AUTH_DATAPORTABILITY_SEARCH_UGC_MEDIA_THUMBS = 'https://www.googleapis.com/auth/dataportability.search_ugc.media.thumbs'

      # Move a copy of information about the movies and TV shows you marked as watched on Google Search and Google TV.
      AUTH_DATAPORTABILITY_SEARCH_UGC_MEDIA_WATCHED = 'https://www.googleapis.com/auth/dataportability.search_ugc.media.watched'

      # Move a copy of your notification settings on the Google Search app.
      AUTH_DATAPORTABILITY_SEARCHNOTIFICATIONS_SETTINGS = 'https://www.googleapis.com/auth/dataportability.searchnotifications.settings'

      # Move a copy of your notification subscriptions on Google Search app.
      AUTH_DATAPORTABILITY_SEARCHNOTIFICATIONS_SUBSCRIPTIONS = 'https://www.googleapis.com/auth/dataportability.searchnotifications.subscriptions'

      # Move a copy of your shipping information on Shopping.
      AUTH_DATAPORTABILITY_SHOPPING_ADDRESSES = 'https://www.googleapis.com/auth/dataportability.shopping.addresses'

      # Move a copy of reviews you wrote about products or online stores on Google Search.
      AUTH_DATAPORTABILITY_SHOPPING_REVIEWS = 'https://www.googleapis.com/auth/dataportability.shopping.reviews'

      # Move a copy of the images and videos you uploaded to Street View.
      AUTH_DATAPORTABILITY_STREETVIEW_IMAGERY = 'https://www.googleapis.com/auth/dataportability.streetview.imagery'

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
