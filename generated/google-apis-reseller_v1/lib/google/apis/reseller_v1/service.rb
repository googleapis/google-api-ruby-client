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
    module ResellerV1
      # Google Workspace Reseller API
      #
      # Perform common functions that are available on the Channel Services console at
      #  scale, like placing orders and viewing customer information
      #
      # @example
      #    require 'google/apis/reseller_v1'
      #
      #    Reseller = Google::Apis::ResellerV1 # Alias the module
      #    service = Reseller::ResellerService.new
      #
      # @see https://developers.google.com/google-apps/reseller/
      class ResellerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://reseller.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-reseller_v1',
                client_version: Google::Apis::ResellerV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets a customer account. Use this operation to see a customer account already
        # in your reseller management, or to see the minimal account information for an
        # existing customer that you do not manage. For more information about the API
        # response for existing customers, see [retrieving a customer account](/admin-
        # sdk/reseller/v1/how-tos/manage_customers#get_customer).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def get_customer(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps/reseller/v1/customers/{customerId}', options)
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Orders a new customer's account. Before ordering a new customer account,
        # establish whether the customer account already exists using the [`customers.
        # get`](/admin-sdk/reseller/v1/reference/customers/get) If the customer account
        # exists as a direct Google account or as a resold customer account from another
        # reseller, use the `customerAuthToken\` as described in [order a resold account
        # for an existing customer](/admin-sdk/reseller/v1/how-tos/manage_customers#
        # create_existing_customer). For more information about ordering a new customer
        # account, see [order a new customer account](/admin-sdk/reseller/v1/how-tos/
        # manage_customers#create_customer). After creating a new customer account, you
        # must provision a user as an administrator. The customer's administrator is
        # required to sign in to the Admin console and sign the G Suite via Reseller
        # agreement to activate the account. Resellers are prohibited from signing the G
        # Suite via Reseller agreement on the customer's behalf. For more information,
        # see [order a new customer account](/admin-sdk/reseller/v1/how-tos/
        # manage_customers#tos).
        # @param [Google::Apis::ResellerV1::Customer] customer_object
        # @param [String] customer_auth_token
        #   The `customerAuthToken` query string is required when creating a resold
        #   account that transfers a direct customer's subscription or transfers another
        #   reseller customer's subscription to your reseller management. This is a
        #   hexadecimal authentication token needed to complete the subscription transfer.
        #   For more information, see the administrator help center.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def insert_customer(customer_object = nil, customer_auth_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a customer account's settings. This method supports patch semantics.
        # You cannot update `customerType` via the Reseller API, but a `"team"` customer
        # can verify their domain and become `customerType = "domain"`. For more
        # information, see [Verify your domain to unlock Essentials features](https://
        # support.google.com/a/answer/9122284).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [Google::Apis::ResellerV1::Customer] customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def patch_customer(customer_id, customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'apps/reseller/v1/customers/{customerId}', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a customer account's settings. You cannot update `customerType` via
        # the Reseller API, but a `"team"` customer can verify their domain and become `
        # customerType = "domain"`. For more information, see [update a customer's
        # settings](/admin-sdk/reseller/v1/how-tos/manage_customers#update_customer).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [Google::Apis::ResellerV1::Customer] customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def update_customer(customer_id, customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'apps/reseller/v1/customers/{customerId}', options)
          command.request_representation = Google::Apis::ResellerV1::Customer::Representation
          command.request_object = customer_object
          command.response_representation = Google::Apis::ResellerV1::Customer::Representation
          command.response_class = Google::Apis::ResellerV1::Customer
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all the details of the watch corresponding to the reseller.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResellerV1::ResellernotifyGetwatchdetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::ResellernotifyGetwatchdetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getwatchdetails_resellernotify(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps/reseller/v1/resellernotify/getwatchdetails', options)
          command.response_representation = Google::Apis::ResellerV1::ResellernotifyGetwatchdetailsResponse::Representation
          command.response_class = Google::Apis::ResellerV1::ResellernotifyGetwatchdetailsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a Reseller for receiving notifications.
        # @param [String] service_account_email_address
        #   The service account which will own the created Cloud-PubSub topic.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResellerV1::ResellernotifyResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::ResellernotifyResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_resellernotify(service_account_email_address: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/resellernotify/register', options)
          command.response_representation = Google::Apis::ResellerV1::ResellernotifyResource::Representation
          command.response_class = Google::Apis::ResellerV1::ResellernotifyResource
          command.query['serviceAccountEmailAddress'] = service_account_email_address unless service_account_email_address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unregisters a Reseller for receiving notifications.
        # @param [String] service_account_email_address
        #   The service account which owns the Cloud-PubSub topic.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ResellerV1::ResellernotifyResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ResellerV1::ResellernotifyResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unregister_resellernotify(service_account_email_address: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/resellernotify/unregister', options)
          command.response_representation = Google::Apis::ResellerV1::ResellernotifyResource::Representation
          command.response_class = Google::Apis::ResellerV1::ResellernotifyResource
          command.query['serviceAccountEmailAddress'] = service_account_email_address unless service_account_email_address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates a subscription previously suspended by the reseller. If you did not
        # suspend the customer subscription and it is suspended for any other reason,
        # such as for abuse or a pending ToS acceptance, this call will not reactivate
        # the customer subscription.
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def activate_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/activate', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a subscription plan. Use this method to update a plan for a 30-day
        # trial or a flexible plan subscription to an annual commitment plan with
        # monthly or yearly payments. How a plan is updated differs depending on the
        # plan and the products. For more information, see the description in [manage
        # subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # update_subscription_plan).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [Google::Apis::ResellerV1::ChangePlanRequest] change_plan_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def change_subscription_plan(customer_id, subscription_id, change_plan_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changePlan', options)
          command.request_representation = Google::Apis::ResellerV1::ChangePlanRequest::Representation
          command.request_object = change_plan_request_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user license's renewal settings. This is applicable for accounts
        # with annual commitment plans only. For more information, see the description
        # in [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # update_renewal).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [Google::Apis::ResellerV1::RenewalSettings] renewal_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def change_subscription_renewal_settings(customer_id, subscription_id, renewal_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings', options)
          command.request_representation = Google::Apis::ResellerV1::RenewalSettings::Representation
          command.request_object = renewal_settings_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a subscription's user license settings. For more information about
        # updating an annual commitment plan or a flexible plan subscription’s licenses,
        # see [Manage Subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # update_subscription_seat).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [Google::Apis::ResellerV1::Seats] seats_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def change_subscription_seats(customer_id, subscription_id, seats_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeSeats', options)
          command.request_representation = Google::Apis::ResellerV1::Seats::Representation
          command.request_object = seats_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels, suspends, or transfers a subscription to direct.
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [String] deletion_type
        #   The `deletionType` query string enables the cancellation, downgrade, or
        #   suspension of a subscription.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_subscription(customer_id, subscription_id, deletion_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}', options)
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['deletionType'] = deletion_type unless deletion_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a specific subscription. The `subscriptionId` can be found using the [
        # Retrieve all reseller subscriptions](/admin-sdk/reseller/v1/how-tos/
        # manage_subscriptions#get_all_subscriptions) method. For more information about
        # retrieving a specific subscription, see the information descrived in [manage
        # subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # get_subscription).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def get_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or transfer a subscription. Create a subscription for a customer's
        # account that you ordered using the [Order a new customer account](/admin-sdk/
        # reseller/v1/reference/customers/insert.html) method. For more information
        # about creating a subscription for different payment plans, see [manage
        # subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # create_subscription).\ If you did not order the customer's account using the
        # customer insert method, use the customer's `customerAuthToken` when creating a
        # subscription for that customer. If transferring a G Suite subscription with an
        # associated Google Drive or Google Vault subscription, use the [batch operation]
        # (/admin-sdk/reseller/v1/how-tos/batch.html) to transfer all of these
        # subscriptions. For more information, see how to [transfer subscriptions](/
        # admin-sdk/reseller/v1/how-tos/manage_subscriptions#transfer_a_subscription).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [Google::Apis::ResellerV1::Subscription] subscription_object
        # @param [String] action
        #   The intented insert action. The usage of this field is governed by certain
        #   policies which are being developed & tested currently. Hence, these might not
        #   work as intended. Once this is fully tested & available to consume, we will
        #   share more information about its usage, limitations and policy documentation.
        # @param [String] customer_auth_token
        #   The `customerAuthToken` query string is required when creating a resold
        #   account that transfers a direct customer's subscription or transfers another
        #   reseller customer's subscription to your reseller management. This is a
        #   hexadecimal authentication token needed to complete the subscription transfer.
        #   For more information, see the administrator help center.
        # @param [String] source_sku_id
        #   The sku_id of the existing subscription to be upgraded or downgraded. This is
        #   required when action is SWITCH. The usage of this field is governed by certain
        #   policies which are being developed & tested currently. Hence, these might not
        #   work as intended. Once this is fully tested & available to consume, we will
        #   share more information about its usage, limitations and policy documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def insert_subscription(customer_id, subscription_object = nil, action: nil, customer_auth_token: nil, source_sku_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions', options)
          command.request_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['action'] = action unless action.nil?
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['sourceSkuId'] = source_sku_id unless source_sku_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists of subscriptions managed by the reseller. The list can be all
        # subscriptions, all of a customer's subscriptions, or all of a customer's
        # transferable subscriptions. Optionally, this method can filter the response by
        # a `customerNamePrefix`. For more information, see [manage subscriptions](/
        # admin-sdk/reseller/v1/how-tos/manage_subscriptions).
        # @param [String] customer_auth_token
        #   The `customerAuthToken` query string is required when creating a resold
        #   account that transfers a direct customer's subscription or transfers another
        #   reseller customer's subscription to your reseller management. This is a
        #   hexadecimal authentication token needed to complete the subscription transfer.
        #   For more information, see the administrator help center.
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] customer_name_prefix
        #   When retrieving all of your subscriptions and filtering for specific customers,
        #   you can enter a prefix for a customer name. Using an example customer group
        #   that includes `exam.com`, `example20.com` and `example.com`: - `exa` --
        #   Returns all customer names that start with 'exa' which could include `exam.com`
        #   , `example20.com`, and `example.com`. A name prefix is similar to using a
        #   regular expression's asterisk, exa*. - `example` -- Returns `example20.com`
        #   and `example.com`.
        # @param [Fixnum] max_results
        #   When retrieving a large list, the `maxResults` is the maximum number of
        #   results per page. The `nextPageToken` value takes you to the next page. The
        #   default is 20.
        # @param [String] page_token
        #   Token to specify next page in the list
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def list_subscriptions(customer_auth_token: nil, customer_id: nil, customer_name_prefix: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apps/reseller/v1/subscriptions', options)
          command.response_representation = Google::Apis::ResellerV1::Subscriptions::Representation
          command.response_class = Google::Apis::ResellerV1::Subscriptions
          command.query['customerAuthToken'] = customer_auth_token unless customer_auth_token.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['customerNamePrefix'] = customer_name_prefix unless customer_name_prefix.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately move a 30-day free trial subscription to a paid service
        # subscription. This method is only applicable if a payment plan has already
        # been set up for the 30-day trial subscription. For more information, see [
        # manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#
        # paid_service).
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def start_subscription_paid_service(customer_id, subscription_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/startPaidService', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suspends an active subscription. You can use this method to suspend a paid
        # subscription that is currently in the `ACTIVE` state. * For `FLEXIBLE`
        # subscriptions, billing is paused. * For `ANNUAL_MONTHLY_PAY` or `
        # ANNUAL_YEARLY_PAY` subscriptions: * Suspending the subscription does not
        # change the renewal date that was originally committed to. * A suspended
        # subscription does not renew. If you activate the subscription after the
        # original renewal date, a new annual subscription will be created, starting on
        # the day of activation. We strongly encourage you to suspend subscriptions only
        # for short periods of time as suspensions over 60 days may result in the
        # subscription being cancelled.
        # @param [String] customer_id
        #   This can be either the customer's primary domain name or the customer's unique
        #   identifier. If the domain name for a customer changes, the old domain name
        #   cannot be used to access the customer, but the customer's unique identifier (
        #   as returned by the API) can always be used. We recommend storing the unique
        #   identifier in your systems where applicable.
        # @param [String] subscription_id
        #   This is a required property. The `subscriptionId` is the subscription
        #   identifier and is unique for each customer. Since a `subscriptionId` changes
        #   when a subscription is updated, we recommend to not use this ID as a key for
        #   persistent data. And the `subscriptionId` can be found using the retrieve all
        #   reseller subscriptions method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def suspend_subscription(customer_id, subscription_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/suspend', options)
          command.response_representation = Google::Apis::ResellerV1::Subscription::Representation
          command.response_class = Google::Apis::ResellerV1::Subscription
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
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
