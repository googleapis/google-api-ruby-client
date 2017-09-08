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
    module SpectrumV1explorer
      # Google Spectrum Database API
      #
      # API for spectrum-management functions.
      #
      # @example
      #    require 'google/apis/spectrum_v1explorer'
      #
      #    Spectrum = Google::Apis::SpectrumV1explorer # Alias the module
      #    service = Spectrum::SpectrumService.new
      #
      # @see http://developers.google.com/spectrum
      class SpectrumService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'spectrum/v1explorer/paws/')
          @batch_path = 'batch/spectrum/v1explorer'
        end
        
        # Requests information about the available spectrum for a device at a location.
        # Requests from a fixed-mode device must include owner information so the device
        # can be registered with the database.
        # @param [Google::Apis::SpectrumV1explorer::PawsGetSpectrumRequest] paws_get_spectrum_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsGetSpectrumResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsGetSpectrumResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_paw_spectrum(paws_get_spectrum_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'getSpectrum', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsGetSpectrumRequest::Representation
          command.request_object = paws_get_spectrum_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsGetSpectrumResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsGetSpectrumResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # The Google Spectrum Database does not support batch requests, so this method
        # always yields an UNIMPLEMENTED error.
        # @param [Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchRequest] paws_get_spectrum_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_paw_spectrum_batch(paws_get_spectrum_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'getSpectrumBatch', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchRequest::Representation
          command.request_object = paws_get_spectrum_batch_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsGetSpectrumBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initializes the connection between a white space device and the database.
        # @param [Google::Apis::SpectrumV1explorer::PawsInitRequest] paws_init_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsInitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsInitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def init_paw(paws_init_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'init', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsInitRequest::Representation
          command.request_object = paws_init_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsInitResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsInitResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notifies the database that the device has selected certain frequency ranges
        # for transmission. Only to be invoked when required by the regulator. The
        # Google Spectrum Database does not operate in domains that require notification,
        # so this always yields an UNIMPLEMENTED error.
        # @param [Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseRequest] paws_notify_spectrum_use_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def notify_paw_spectrum_use(paws_notify_spectrum_use_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'notifySpectrumUse', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseRequest::Representation
          command.request_object = paws_notify_spectrum_use_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsNotifySpectrumUseResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # The Google Spectrum Database implements registration in the getSpectrum method.
        # As such this always returns an UNIMPLEMENTED error.
        # @param [Google::Apis::SpectrumV1explorer::PawsRegisterRequest] paws_register_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsRegisterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsRegisterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_paw(paws_register_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'register', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsRegisterRequest::Representation
          command.request_object = paws_register_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsRegisterResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsRegisterResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a device for white space use in accordance with regulatory rules.
        # The Google Spectrum Database does not support master/slave configurations, so
        # this always yields an UNIMPLEMENTED error.
        # @param [Google::Apis::SpectrumV1explorer::PawsVerifyDeviceRequest] paws_verify_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpectrumV1explorer::PawsVerifyDeviceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpectrumV1explorer::PawsVerifyDeviceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_paw_device(paws_verify_device_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'verifyDevice', options)
          command.request_representation = Google::Apis::SpectrumV1explorer::PawsVerifyDeviceRequest::Representation
          command.request_object = paws_verify_device_request_object
          command.response_representation = Google::Apis::SpectrumV1explorer::PawsVerifyDeviceResponse::Representation
          command.response_class = Google::Apis::SpectrumV1explorer::PawsVerifyDeviceResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
