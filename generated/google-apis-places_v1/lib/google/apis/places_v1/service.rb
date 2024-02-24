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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PlacesV1
      # Places API (New)
      #
      # 
      #
      # @example
      #    require 'google/apis/places_v1'
      #
      #    Places = Google::Apis::PlacesV1 # Alias the module
      #    service = Places::MapsPlacesService.new
      #
      # @see https://mapsplatform.google.com/maps-products/#places-section
      class MapsPlacesService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://places.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-places_v1',
                client_version: Google::Apis::PlacesV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns predictions for the given input.
        # @param [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequest] google_maps_places_v1_autocomplete_places_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def autocomplete_place(google_maps_places_v1_autocomplete_places_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/places:autocomplete', options)
          command.request_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesRequest::Representation
          command.request_object = google_maps_places_v1_autocomplete_places_request_object
          command.response_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponse::Representation
          command.response_class = Google::Apis::PlacesV1::GoogleMapsPlacesV1AutocompletePlacesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the details of a place based on its resource name, which is a string in
        # the `places/`place_id`` format.
        # @param [String] name
        #   Required. The resource name of a place, in the `places/`place_id`` format.
        # @param [String] language_code
        #   Optional. Place details will be displayed with the preferred language if
        #   available. Current list of supported languages: https://developers.google.com/
        #   maps/faq#languagesupport.
        # @param [String] region_code
        #   Optional. The Unicode country/region code (CLDR) of the location where the
        #   request is coming from. This parameter is used to display the place details,
        #   like region-specific place name, if available. The parameter can affect
        #   results based on applicable law. For more information, see https://www.unicode.
        #   org/cldr/charts/latest/supplemental/territory_language_information.html. Note
        #   that 3-digit region codes are not currently supported.
        # @param [String] session_token
        #   Optional. A string which identifies an Autocomplete session for billing
        #   purposes. Must be a URL and filename safe base64 string with at most 36 ASCII
        #   characters in length. Otherwise an INVALID_ARGUMENT error is returned. The
        #   session begins when the user starts typing a query, and concludes when they
        #   select a place and a call to Place Details or Address Validation is made. Each
        #   session can have multiple queries, followed by one Place Details or Address
        #   Validation request. The credentials used for each request within a session
        #   must belong to the same Google Cloud Console project. Once a session has
        #   concluded, the token is no longer valid; your app must generate a fresh token
        #   for each session. If the `session_token` parameter is omitted, or if you reuse
        #   a session token, the session is charged as if no session token was provided (
        #   each request is billed separately). We recommend the following guidelines: *
        #   Use session tokens for all Place Autocomplete calls. * Generate a fresh token
        #   for each session. Using a version 4 UUID is recommended. * Ensure that the
        #   credentials used for all Place Autocomplete, Place Details, and Address
        #   Validation requests within a session belong to the same Cloud Console project.
        #   * Be sure to pass a unique session token for each new session. Using the same
        #   token for more than one session will result in each request being billed
        #   individually.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlacesV1::GoogleMapsPlacesV1Place] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Place]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_place(name, language_code: nil, region_code: nil, session_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1Place::Representation
          command.response_class = Google::Apis::PlacesV1::GoogleMapsPlacesV1Place
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['sessionToken'] = session_token unless session_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search for places near locations.
        # @param [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequest] google_maps_places_v1_search_nearby_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_place_nearby(google_maps_places_v1_search_nearby_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/places:searchNearby', options)
          command.request_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequest::Representation
          command.request_object = google_maps_places_v1_search_nearby_request_object
          command.response_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyResponse::Representation
          command.response_class = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Text query based place search.
        # @param [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequest] google_maps_places_v1_search_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_place_text(google_maps_places_v1_search_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/places:searchText', options)
          command.request_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequest::Representation
          command.request_object = google_maps_places_v1_search_text_request_object
          command.response_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextResponse::Representation
          command.response_class = Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a photo media with a photo reference string.
        # @param [String] name
        #   Required. The resource name of a photo media in the format: `places/`place_id`/
        #   photos/`photo_reference`/media`. The resource name of a photo as returned in a
        #   Place object's `photos.name` field comes with the format `places/`place_id`/
        #   photos/`photo_reference``. You need to append `/media` at the end of the photo
        #   resource to get the photo media resource name.
        # @param [Fixnum] max_height_px
        #   Optional. Specifies the maximum desired height, in pixels, of the image. If
        #   the image is smaller than the values specified, the original image will be
        #   returned. If the image is larger in either dimension, it will be scaled to
        #   match the smaller of the two dimensions, restricted to its original aspect
        #   ratio. Both the max_height_px and max_width_px properties accept an integer
        #   between 1 and 4800, inclusively. If the value is not within the allowed range,
        #   an INVALID_ARGUMENT error will be returned. At least one of max_height_px or
        #   max_width_px needs to be specified. If neither max_height_px nor max_width_px
        #   is specified, an INVALID_ARGUMENT error will be returned.
        # @param [Fixnum] max_width_px
        #   Optional. Specifies the maximum desired width, in pixels, of the image. If the
        #   image is smaller than the values specified, the original image will be
        #   returned. If the image is larger in either dimension, it will be scaled to
        #   match the smaller of the two dimensions, restricted to its original aspect
        #   ratio. Both the max_height_px and max_width_px properties accept an integer
        #   between 1 and 4800, inclusively. If the value is not within the allowed range,
        #   an INVALID_ARGUMENT error will be returned. At least one of max_height_px or
        #   max_width_px needs to be specified. If neither max_height_px nor max_width_px
        #   is specified, an INVALID_ARGUMENT error will be returned.
        # @param [Boolean] skip_http_redirect
        #   Optional. If set, skip the default HTTP redirect behavior and render a text
        #   format (for example, in JSON format for HTTP use case) response. If not set,
        #   an HTTP redirect will be issued to redirect the call to the image media. This
        #   option is ignored for non-HTTP requests.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlacesV1::GoogleMapsPlacesV1PhotoMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PhotoMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_place_photo_media(name, max_height_px: nil, max_width_px: nil, skip_http_redirect: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::PlacesV1::GoogleMapsPlacesV1PhotoMedia::Representation
          command.response_class = Google::Apis::PlacesV1::GoogleMapsPlacesV1PhotoMedia
          command.params['name'] = name unless name.nil?
          command.query['maxHeightPx'] = max_height_px unless max_height_px.nil?
          command.query['maxWidthPx'] = max_width_px unless max_width_px.nil?
          command.query['skipHttpRedirect'] = skip_http_redirect unless skip_http_redirect.nil?
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
