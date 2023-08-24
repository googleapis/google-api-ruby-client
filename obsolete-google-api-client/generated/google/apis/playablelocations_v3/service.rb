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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PlayablelocationsV3
      # Playable Locations API
      #
      # 
      #
      # @example
      #    require 'google/apis/playablelocations_v3'
      #
      #    Playablelocations = Google::Apis::PlayablelocationsV3 # Alias the module
      #    service = Playablelocations::PlayableLocationsService.new
      #
      # @see https://developers.google.com/maps/contact-sales/
      class PlayableLocationsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playablelocations.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Logs new events when playable locations are displayed, and when they are
        # interacted with. Impressions are not partially saved; either all impressions
        # are saved and this request succeeds, or no impressions are saved, and this
        # request fails.
        # @param [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsRequest] google_maps_playablelocations_v3_log_impressions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def log_impressions(google_maps_playablelocations_v3_log_impressions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3:logImpressions', options)
          command.request_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsRequest::Representation
          command.request_object = google_maps_playablelocations_v3_log_impressions_request_object
          command.response_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsResponse::Representation
          command.response_class = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogImpressionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Logs bad playable location reports submitted by players. Reports are not
        # partially saved; either all reports are saved and this request succeeds, or no
        # reports are saved, and this request fails.
        # @param [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsRequest] google_maps_playablelocations_v3_log_player_reports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def log_player_reports(google_maps_playablelocations_v3_log_player_reports_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3:logPlayerReports', options)
          command.request_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsRequest::Representation
          command.request_object = google_maps_playablelocations_v3_log_player_reports_request_object
          command.response_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsResponse::Representation
          command.response_class = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a set of playable locations that lie within a specified area, that
        # satisfy optional filter criteria. Note: Identical `SamplePlayableLocations`
        # requests can return different results as the state of the world changes over
        # time.
        # @param [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest] google_maps_playablelocations_v3_sample_playable_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sample_playable_locations(google_maps_playablelocations_v3_sample_playable_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3:samplePlayableLocations', options)
          command.request_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest::Representation
          command.request_object = google_maps_playablelocations_v3_sample_playable_locations_request_object
          command.response_representation = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse::Representation
          command.response_class = Google::Apis::PlayablelocationsV3::GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
