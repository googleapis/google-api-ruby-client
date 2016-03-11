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
    module ResellerV1
      # Enterprise Apps Reseller API
      #
      # Creates and manages your customers and their subscriptions.
      #
      # @example
      #    require 'google/apis/reseller_v1'
      #
      #    Reseller = Google::Apis::ResellerV1 # Alias the module
      #    service = Reseller::ResellerService.new
      #
      # @see https://developers.google.com/google-apps/reseller/
      class ResellerService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'apps/reseller/v1/')
        end
        
        # Gets a customer resource if one exists and is owned by the reseller.
        # @param [String] customer_id
        #   Id of the Customer
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
        # @yieldparam result [Google::Apis::ResellerV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer(customer_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'customers/{customerId}', options)
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a customer resource if one does not already exist.
        # @param [Google::Apis::ResellerV1::Customer] customer_object
        # @param [String] customer_auth_token
        #   An auth token needed for inserting a customer for which domain already exists.
        #   Can be generated at https://admin.google.com/TransferToken. Optional.
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
        # @yieldparam result [Google::Apis::ResellerV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_customer(customer_object = nil, customer_auth_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a customer resource if one it exists and is owned by the reseller. This
        # method supports patch semantics.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [Google::Apis::ResellerV1::Customer] customer_object
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
        # @yieldparam result [Google::Apis::ResellerV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_customer(customer_id, customer_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'customers/{customerId}', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a customer resource if one it exists and is owned by the reseller.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [Google::Apis::ResellerV1::Customer] customer_object
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
        # @yieldparam result [Google::Apis::ResellerV1::Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_customer(customer_id, customer_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'customers/{customerId}', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates a subscription previously suspended by the reseller
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/activate', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the plan of a subscription
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
        # @param [Google::Apis::ResellerV1::ChangePlanRequest] change_plan_request_object
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_subscription_plan(customer_id, subscription_id, change_plan_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/changePlan', options)
          command.request_representation = Google::Apis::ResellerV1::ChangePlanRequest::Representation
          command.request_object = change_plan_request_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the renewal settings of a subscription
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
        # @param [Google::Apis::ResellerV1::RenewalSettings] renewal_settings_object
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_subscription_renewal_settings(customer_id, subscription_id, renewal_settings_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings', options)
          command.request_representation = Google::Apis::ResellerV1::RenewalSettings::Representation
          command.request_object = renewal_settings_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the seats configuration of a subscription
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
        # @param [Google::Apis::ResellerV1::Seats] seats_object
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_subscription_seats(customer_id, subscription_id, seats_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/changeSeats', options)
          command.request_representation = Google::Apis::ResellerV1::Seats::Representation
          command.request_object = seats_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels/Downgrades a subscription.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
        # @param [String] deletion_type
        #   Whether the subscription is to be fully cancelled or downgraded
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_subscription(customer_id, subscription_id, deletion_type, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'customers/{customerId}/subscriptions/{subscriptionId}', options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['deletionType'] = deletion_type unless deletion_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a subscription of the customer.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'customers/{customerId}/subscriptions/{subscriptionId}', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates/Transfers a subscription for the customer.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [Google::Apis::ResellerV1::Subscription] subscription_object
        # @param [String] customer_auth_token
        #   An auth token needed for transferring a subscription. Can be generated at
        #   https://www.google.com/a/cpanel/customer-domain/TransferToken. Optional.
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_subscription(customer_id, subscription_object = nil, customer_auth_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions', options)
          command.request_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists subscriptions of a reseller, optionally filtered by a customer name
        # prefix.
        # @param [String] customer_auth_token
        #   An auth token needed if the customer is not a resold customer of this reseller.
        #   Can be generated at https://www.google.com/a/cpanel/customer-domain/
        #   TransferToken.Optional.
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] customer_name_prefix
        #   Prefix of the customer's domain name by which the subscriptions should be
        #   filtered. Optional
        # @param [Fixnum] max_results
        #   Maximum number of results to return
        # @param [String] page_token
        #   Token to specify next page in the list
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscriptions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscriptions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(customer_auth_token: nil, customer_id: nil, customer_name_prefix: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'subscriptions', options)
          command.response_representation = Google::Apis::ResellerV1::Subscriptions::Representation
          command.response_class = Google::Apis::ResellerV1::Subscriptions
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['customerNamePrefix'] = customer_name_prefix unless customer_name_prefix.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts paid service of a trial subscription
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_subscription_paid_service(customer_id, subscription_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/startPaidService', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suspends an active subscription
        # @param [String] customer_id
        #   Id of the Customer
        # @param [String] subscription_id
        #   Id of the subscription, which is unique for a customer
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
        # @yieldparam result [Google::Apis::ResellerV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suspend_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'customers/{customerId}/subscriptions/{subscriptionId}/suspend', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
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
