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
    module AddressvalidationV1
      # Address Validation API
      #
      # The Address Validation API allows developers to verify the accuracy of
      #  addresses. Given an address, it returns information about the correctness of
      #  the components of the parsed address, a geocode, and a verdict on the
      #  deliverability of the parsed address.
      #
      # @example
      #    require 'google/apis/addressvalidation_v1'
      #
      #    Addressvalidation = Google::Apis::AddressvalidationV1 # Alias the module
      #    service = Addressvalidation::AddressValidationService.new
      #
      # @see https://developers.google.com/maps/documentation/addressvalidation
      class AddressValidationService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://addressvalidation.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-addressvalidation_v1',
                client_version: Google::Apis::AddressvalidationV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Feedback about the outcome of the sequence of validation attempts. This should
        # be the last call made after a sequence of validation calls for the same
        # address, and should be called once the transaction is concluded. This should
        # only be sent once for the sequence of `ValidateAddress` requests needed to
        # validate an address fully.
        # @param [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest] google_maps_addressvalidation_v1_provide_validation_feedback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provide_validation_feedback(google_maps_addressvalidation_v1_provide_validation_feedback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1:provideValidationFeedback', options)
          command.request_representation = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest::Representation
          command.request_object = google_maps_addressvalidation_v1_provide_validation_feedback_request_object
          command.response_representation = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse::Representation
          command.response_class = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates an address.
        # @param [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressRequest] google_maps_addressvalidation_v1_validate_address_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_address(google_maps_addressvalidation_v1_validate_address_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1:validateAddress', options)
          command.request_representation = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressRequest::Representation
          command.request_object = google_maps_addressvalidation_v1_validate_address_request_object
          command.response_representation = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressResponse::Representation
          command.response_class = Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidateAddressResponse
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
