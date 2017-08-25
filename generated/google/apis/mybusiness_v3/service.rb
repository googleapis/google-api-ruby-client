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
    module MybusinessV3
      # Google My Business API
      #
      # The Google My Business API provides an interface for managing business
      #  location information on Google.
      #
      # @example
      #    require 'google/apis/mybusiness_v3'
      #
      #    Mybusiness = Google::Apis::MybusinessV3 # Alias the module
      #    service = Mybusiness::MybusinessService.new
      #
      # @see https://developers.google.com/my-business/
      class MybusinessService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusiness.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets the specified account. Returns `NOT_FOUND` if the
        # account does not exist or if the caller does not have access rights to it.
        # @param [String] name
        #   The name of the account to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Account::Representation
          command.response_class = Google::Apis::MybusinessV3::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the accounts for the authenticated user. This includes all
        # accounts that the user owns, as well as any accounts for which the user
        # has management rights.
        # @param [Fixnum] page_size
        #   How many accounts to fetch per page. Default is 50,
        #   minimum is 1, and maximum page size is 50.
        # @param [String] page_token
        #   If specified, the next page of accounts is retrieved. The `pageToken` is
        #   returned when a call to `accounts.list` returns more results than can fit
        #   into the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/accounts', options)
          command.response_representation = Google::Apis::MybusinessV3::ListAccountsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified business account. Personal accounts cannot be
        # updated using this method.
        # Note: At this time the only editable field for an account is
        # `account_name`.
        # Any other fields passed in (such as `type`, `role`, and `verified`) is
        # ignored.
        # @param [String] name
        #   The name of the account to update.
        # @param [Google::Apis::MybusinessV3::Account] account_object
        # @param [String] language_code
        #   The language of the account update.
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually updating the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(name, account_object = nil, language_code: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV3::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MybusinessV3::Account::Representation
          command.response_class = Google::Apis::MybusinessV3::Account
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator on the specified
        # account. The invitee must accept the invitation in order to be granted
        # access to the account.
        # @param [String] name
        #   The resource name. For account admins, this is in the form:
        #   `accounts/`account_id`/admins/`admin_id``
        #   For location admins, this is in the form:
        #   `accounts/`account_id`/locations/`location_id`/admins/`admin_id``
        # @param [Google::Apis::MybusinessV3::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_admin(name, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/admins', options)
          command.request_representation = Google::Apis::MybusinessV3::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV3::Admin::Representation
          command.response_class = Google::Apis::MybusinessV3::Admin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin from the specified account.
        # @param [String] name
        #   The resource name of the admin to remove from the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the admins for the specified account.
        # @param [String] name
        #   The name of the account from which to retrieve a list of admins.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListAccountAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListAccountAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_admins(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/admins', options)
          command.response_representation = Google::Apis::MybusinessV3::ListAccountAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListAccountAdminsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associates a location to a place ID. Any previous association is
        # overwritten. This operation is only valid if the location is unverified.
        # The association must be valid, i.e. appear in the list of
        # FindMatchingLocations.
        # @param [String] name
        #   The resource name of the location to associate.
        # @param [Google::Apis::MybusinessV3::AssociateLocationRequest] associate_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def associate_location(name, associate_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}:associate', options)
          command.request_representation = Google::Apis::MybusinessV3::AssociateLocationRequest::Representation
          command.request_object = associate_location_request_object
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets all of the specified locations in the given account.
        # @param [String] name
        #   The name of the account from which to fetch locations.
        # @param [Google::Apis::MybusinessV3::BatchGetLocationsRequest] batch_get_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::BatchGetLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::BatchGetLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_get_locations(name, batch_get_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/locations:batchGet', options)
          command.request_representation = Google::Apis::MybusinessV3::BatchGetLocationsRequest::Representation
          command.request_object = batch_get_locations_request_object
          command.response_representation = Google::Apis::MybusinessV3::BatchGetLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::BatchGetLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears an assocation between a location and its place ID. This
        # operation is only valid if the location is unverified.
        # @param [String] name
        #   The resource name of the location to disassociate.
        # @param [Google::Apis::MybusinessV3::ClearLocationAssociationRequest] clear_location_association_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_account_location_association(name, clear_location_association_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}:clearAssociation', options)
          command.request_representation = Google::Apis::MybusinessV3::ClearLocationAssociationRequest::Representation
          command.request_object = clear_location_association_request_object
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new location owned by the
        # specified account, and returns it.
        # @param [String] name
        #   The name of the account in which to create this location.
        # @param [Google::Apis::MybusinessV3::Location] location_object
        # @param [String] language_code
        #   The language of the location update. Currently this is used to disambiguate
        #   what localized categories are valid for this create request.
        # @param [String] request_id
        #   A unique request ID for the server to detect duplicated requests. UUIDs are
        #   recommended. Max length is 50 characters.
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually creating the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location(name, location_object = nil, language_code: nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/locations', options)
          command.request_representation = Google::Apis::MybusinessV3::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessV3::Location::Representation
          command.response_class = Google::Apis::MybusinessV3::Location
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a location. Note: If this location has an associated Google+ page, as
        # indicated by a `plus_page_id` in the LocationKey, it cannot be deleted using
        # the API, it
        # must be done using the [Google My Business]
        # (https://www.google.com/local/manage/) website.
        # Returns `NOT_FOUND` if the location does not exist.
        # @param [String] name
        #   The name of the location to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds all of the possible locations that are a match to the specified
        # location. This operation is only valid if the location is unverified.
        # @param [String] name
        #   The resource name of the location to find matches for.
        # @param [Google::Apis::MybusinessV3::FindMatchingLocationsRequest] find_matching_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::FindMatchingLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::FindMatchingLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_account_location_matches(name, find_matching_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}:findMatches', options)
          command.request_representation = Google::Apis::MybusinessV3::FindMatchingLocationsRequest::Representation
          command.request_object = find_matching_locations_request_object
          command.response_representation = Google::Apis::MybusinessV3::FindMatchingLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::FindMatchingLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified location. Returns `NOT_FOUND` if the
        # location does not exist.
        # @param [String] name
        #   The name of the location to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Location::Representation
          command.response_class = Google::Apis::MybusinessV3::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Google updated version of the specified location.
        # Returns `NOT_FOUND` if the location does not exist.
        # @param [String] name
        #   The name of the location to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::GoogleUpdatedLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::GoogleUpdatedLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_google_updated_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}:googleUpdated', options)
          command.response_representation = Google::Apis::MybusinessV3::GoogleUpdatedLocation::Representation
          command.response_class = Google::Apis::MybusinessV3::GoogleUpdatedLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the locations for the specified account.
        # @param [String] name
        #   The name of the account to fetch locations from.
        # @param [String] filter
        #   A filter constraining the locations to return. The response includes
        #   only entries that match the filter. If `filter` is empty, then
        #   constraints are applied and all locations (paginated) are retrieved for
        #   the requested account.
        #   Further information on valid filter fields and example usage is available
        #   [here](https://developers.google.com/my-business/content/location-data#
        #   filter_results_when_listing_locations)
        #   .
        # @param [Fixnum] page_size
        #   How many locations to fetch per page. Default is 100,
        #   minimum is 1, and maximum page size is 100.
        # @param [String] page_token
        #   If specified, it fetches the next `page` of locations. The page token
        #   is returned by previous calls to ListLocations when there were more
        #   locations than could fit in the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/locations', options)
          command.response_representation = Google::Apis::MybusinessV3::ListLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified location.
        # Photos are only allowed on a location that has a Google+ page.
        # Returns `NOT_FOUND` if the location does not exist.
        # @param [String] name
        #   The name of the location to update.
        # @param [Google::Apis::MybusinessV3::Location] location_object
        # @param [String] field_mask
        #   The specific fields to update. If no mask is specified, then this is
        #   treated as a full update and all fields are set to the values passed
        #   in, which may include unsetting empty fields in the request.
        # @param [String] language_code
        #   The language of the location update. Currently this is used to disambiguate
        #   what localized categories are valid for this update request.
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually updating the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location(name, location_object = nil, field_mask: nil, language_code: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV3::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessV3::Location::Representation
          command.response_class = Google::Apis::MybusinessV3::Location
          command.params['name'] = name unless name.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Transfer a location from one account to another. The current account that
        # the location is associated with and the destination account must have the
        # same ultimate owner. Returns the Location with its new resource name.
        # @param [String] name
        #   The name of the location to transfer.
        # @param [Google::Apis::MybusinessV3::TransferLocationRequest] transfer_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transfer_location(name, transfer_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}:transfer', options)
          command.request_representation = Google::Apis::MybusinessV3::TransferLocationRequest::Representation
          command.request_object = transfer_location_request_object
          command.response_representation = Google::Apis::MybusinessV3::Location::Representation
          command.response_class = Google::Apis::MybusinessV3::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator on the specified
        # location. The invitee must accept the invitation in order to be granted
        # access to the location.
        # @param [String] name
        #   The resource name. For account admins, this is in the form:
        #   `accounts/`account_id`/admins/`admin_id``
        #   For location admins, this is in the form:
        #   `accounts/`account_id`/locations/`location_id`/admins/`admin_id``
        # @param [Google::Apis::MybusinessV3::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location_admin(name, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/admins', options)
          command.request_representation = Google::Apis::MybusinessV3::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV3::Admin::Representation
          command.response_class = Google::Apis::MybusinessV3::Admin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin as a manager of the specified location.
        # @param [String] name
        #   The resource name of the admin to remove from the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the admins for the specified location.
        # @param [String] name
        #   The name of the location to list admins of.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListLocationAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListLocationAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_admins(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/admins', options)
          command.response_representation = Google::Apis::MybusinessV3::ListLocationAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListLocationAdminsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the response to the specified review.
        # This operation is only valid if the specified location is verified.
        # @param [String] name
        #   The name of the review reply to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_reply(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v3/{+name}/reply', options)
          command.response_representation = Google::Apis::MybusinessV3::Empty::Representation
          command.response_class = Google::Apis::MybusinessV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified review.
        # This operation is only valid if the specified location is verified.
        # Returns `NOT_FOUND` if the review does not exist, or has been deleted.
        # @param [String] name
        #   The name of the review to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::Review] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::Review]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV3::Review::Representation
          command.response_class = Google::Apis::MybusinessV3::Review
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of reviews for the specified location.
        # This operation is only valid if the specified location is verified.
        # @param [String] name
        #   The name of the location to fetch reviews for.
        # @param [String] order_by
        #   Specifies the field to sort reviews by.
        #   If unspecified, the order of reviews returned will
        #   default to "update_timedesc".
        #   Valid orders to sort by are `rating` and `ratingdesc` and `update_timedesc`.
        # @param [Fixnum] page_size
        #   How many reviews to fetch per page. The maximum page_size is 200.
        # @param [String] page_token
        #   If specified, it fetches the next ‘page’ of reviews.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_reviews(name, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/reviews', options)
          command.response_representation = Google::Apis::MybusinessV3::ListReviewsResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListReviewsResponse
          command.params['name'] = name unless name.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the reply to the specified review.
        # A reply is created if one does not exist.
        # This operation is only valid if the specified location is verified.
        # @param [String] name
        #   The name of the review to respond to.
        # @param [Google::Apis::MybusinessV3::ReviewReply] review_reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ReviewReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ReviewReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reply_to_review(name, review_reply_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/reply', options)
          command.request_representation = Google::Apis::MybusinessV3::ReviewReply::Representation
          command.request_object = review_reply_object
          command.response_representation = Google::Apis::MybusinessV3::ReviewReply::Representation
          command.response_class = Google::Apis::MybusinessV3::ReviewReply
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of available attributes that would be available for a
        # location with the given primary category and country.
        # @param [String] category_id
        #   The primary category stable id to find available attributes.
        # @param [String] country
        #   The ISO 3166-1 alpha-2 country code to find available attributes.
        # @param [String] language_code
        #   The BCP 47 code of language to get attribute display names in. If this
        #   language is not available, they will be provided in English.
        # @param [String] name
        #   Resource name of the location to lookup available attributes.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV3::ListLocationAttributeMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV3::ListLocationAttributeMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_attributes(category_id: nil, country: nil, language_code: nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/attributes', options)
          command.response_representation = Google::Apis::MybusinessV3::ListLocationAttributeMetadataResponse::Representation
          command.response_class = Google::Apis::MybusinessV3::ListLocationAttributeMetadataResponse
          command.query['categoryId'] = category_id unless category_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['name'] = name unless name.nil?
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
