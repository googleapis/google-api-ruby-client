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
    module AcmednsV1
      # ACME DNS API
      #
      # Google Domains ACME DNS API that allows users to complete ACME DNS-01
      #  challenges for a domain.
      #
      # @example
      #    require 'google/apis/acmedns_v1'
      #
      #    Acmedns = Google::Apis::AcmednsV1 # Alias the module
      #    service = Acmedns::ACMEDNSService.new
      #
      # @see https://developers.google.com/domains/acme-dns/
      class ACMEDNSService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://acmedns.googleapis.com/', '',
                client_name: 'google-apis-acmedns_v1',
                client_version: Google::Apis::AcmednsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the ACME challenge set for a given domain name. Domain names must be
        # provided in Punycode.
        # @param [String] root_domain
        #   Required. SLD + TLD domain name to list challenges. For example, this would be
        #   "google.com" for any FQDN under "google.com". That includes challenges for "
        #   subdomain.google.com". This MAY be Unicode or Punycode.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AcmednsV1::AcmeChallengeSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AcmednsV1::AcmeChallengeSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_acme_challenge_set(root_domain, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/acmeChallengeSets/{rootDomain}', options)
          command.response_representation = Google::Apis::AcmednsV1::AcmeChallengeSet::Representation
          command.response_class = Google::Apis::AcmednsV1::AcmeChallengeSet
          command.params['rootDomain'] = root_domain unless root_domain.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rotate the ACME challenges for a given domain name. By default, removes any
        # challenges that are older than 30 days. Domain names must be provided in
        # Punycode.
        # @param [String] root_domain
        #   Required. SLD + TLD domain name to update records for. For example, this would
        #   be "google.com" for any FQDN under "google.com". That includes challenges for "
        #   subdomain.google.com". This MAY be Unicode or Punycode.
        # @param [Google::Apis::AcmednsV1::RotateChallengesRequest] rotate_challenges_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AcmednsV1::AcmeChallengeSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AcmednsV1::AcmeChallengeSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rotate_acme_challenge_set_challenges(root_domain, rotate_challenges_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/acmeChallengeSets/{rootDomain}:rotateChallenges', options)
          command.request_representation = Google::Apis::AcmednsV1::RotateChallengesRequest::Representation
          command.request_object = rotate_challenges_request_object
          command.response_representation = Google::Apis::AcmednsV1::AcmeChallengeSet::Representation
          command.response_class = Google::Apis::AcmednsV1::AcmeChallengeSet
          command.params['rootDomain'] = root_domain unless root_domain.nil?
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
