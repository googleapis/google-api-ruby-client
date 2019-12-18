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
    module MapsbookingV1alpha
      # Google Maps Booking API
      #
      # Scheduling aggregators call this API to notify us of appointment updates, and
      #  update their inventories including merchants, services, and availability.
      #
      # @example
      #    require 'google/apis/mapsbooking_v1alpha'
      #
      #    Mapsbooking = Google::Apis::MapsbookingV1alpha # Alias the module
      #    service = Mapsbooking::GoogleMapsBookingAPIService.new
      #
      # @see https://developers.google.com
      class GoogleMapsBookingAPIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mapsbooking.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Replaces the Availability of
        # existing Services. This batch
        # call does not guarantee atomicity. Only successfully updated availability
        # slots will be returned.
        # @param [String] parent
        #   Format of `partners/`partner_id``.
        # @param [Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityRequest] batch_replace_service_availability_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_inventory_partner_availability(parent, batch_replace_service_availability_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/inventory/{+parent}/availability:replace', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityRequest::Representation
          command.request_object = batch_replace_service_availability_request_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityResponse::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::BatchReplaceServiceAvailabilityResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Status
        # of a previously uploaded feed by the specified aggregator, and returns it.
        # @param [String] name
        #   The feed resource name, which has the format of
        #   - `partners/`partner_id`/feeds/merchants/`file_name``
        #   - `partners/`partner_id`/feeds/services/`file_name``
        #   - `partners/`partner_id`/feeds/availability/`file_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::FeedStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::FeedStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inventory_partner_feed_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/inventory/{+name}/status', options)
          command.response_representation = Google::Apis::MapsbookingV1alpha::FeedStatus::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::FeedStatus
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Status
        # of multiple previously uploaded merchant, service, or availability feeds by
        # the specified aggregator, and returns them.
        # @param [String] name
        #   The feed resource name, which has the format of
        #   - `partners/`partner_id`/feeds/merchants`
        #   - `partners/`partner_id`/feeds/services`
        #   - `partners/`partner_id`/feeds/availability`
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] state_restrict
        #   Optional restrict to filter results by feed state.
        # @param [String] time_range_restrict_end_time
        #   The upper bound of the time range.
        # @param [String] time_range_restrict_start_time
        #   The lower bound of the time range.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::ListStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::ListStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inventory_partner_feed_statuses(name, page_size: nil, page_token: nil, state_restrict: nil, time_range_restrict_end_time: nil, time_range_restrict_start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/inventory/{+name}/status', options)
          command.response_representation = Google::Apis::MapsbookingV1alpha::ListStatusResponse::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::ListStatusResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['stateRestrict'] = state_restrict unless state_restrict.nil?
          command.query['timeRangeRestrict.endTime'] = time_range_restrict_end_time unless time_range_restrict_end_time.nil?
          command.query['timeRangeRestrict.startTime'] = time_range_restrict_start_time unless time_range_restrict_start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Merchant
        # managed by the specified aggregator, and returns it.
        # @param [String] parent
        #   The parent resource name for the partner who owns this merchant,
        #   in the format of `partners/`partner_id``.
        # @param [Google::Apis::MapsbookingV1alpha::Merchant] merchant_object
        # @param [String] merchant_id
        #   The merchant id to use for this merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Merchant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Merchant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inventory_partner_merchant(parent, merchant_object = nil, merchant_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/inventory/{+parent}/merchants', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Merchant::Representation
          command.request_object = merchant_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Merchant::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Merchant
          command.params['parent'] = parent unless parent.nil?
          command.query['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing Merchant
        # managed by the specified aggregator.
        # All the merchant's services and availability will be disabled, too.
        # If you re-add the merchant later, the same set of services and availability
        # slots will appear.
        # @param [String] name
        #   The resource name of the merchant to delete.
        #   In the format of partners/`partner_id`/merchants/`merchant_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inventory_partner_merchant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/inventory/{+name}', options)
          command.response_representation = Google::Apis::MapsbookingV1alpha::Empty::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Merchant
        # managed by the specified aggregator, and returns it.
        # @param [String] name
        #   The merchant resource name, which has the format of
        #   `partners/`partner_id`/merchants/`merchant_id``.
        # @param [Google::Apis::MapsbookingV1alpha::Merchant] merchant_object
        # @param [String] update_mask
        #   The specific fields to update for the merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Merchant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Merchant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inventory_partner_merchant(name, merchant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/inventory/{+name}', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Merchant::Representation
          command.request_object = merchant_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Merchant::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Merchant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Service
        # of a merchant managed by the specified aggregator, and returns it.
        # @param [String] parent
        #   The parent resource name for the merchant who owns this service,
        #   in the format of `partners/`partner_id`/merchants/`merchant_id``.
        # @param [Google::Apis::MapsbookingV1alpha::Service] service_object
        # @param [String] service_id
        #   The service id to use for this service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inventory_partner_merchant_service(parent, service_object = nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/inventory/{+parent}/services', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Service::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Service
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing Service
        # of a merchant managed by the specified aggregator.
        # All the service's availability will be deleted, too.
        # @param [String] name
        #   The resource name of the service to delete. In the format of
        #   `partners/`partner_id`/merchants/`merchant_id`/services/`service_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inventory_partner_merchant_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/inventory/{+name}', options)
          command.response_representation = Google::Apis::MapsbookingV1alpha::Empty::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Service
        # of a merchant managed by the specified aggregator, and returns it.
        # @param [String] name
        #   The service resource name, which has the format of
        #   `partners/`partner_id`/merchants/`merchant_id`/services/`service_id``.
        # @param [Google::Apis::MapsbookingV1alpha::Service] service_object
        # @param [String] update_mask
        #   The specific fields to update for the service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inventory_partner_merchant_service(name, service_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/inventory/{+name}', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Service::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Service
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces the Availability of an
        # existing Service of a merchant
        # managed by the specified aggregator, and returns it.
        # @param [String] name
        #   The resource name of the service to apply this to.
        #   In the format of
        #   `partners/`partner_id`/merchants/`merchant_id`/services/`service_id``
        # @param [Google::Apis::MapsbookingV1alpha::ReplaceServiceAvailabilityRequest] replace_service_availability_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::ServiceAvailability] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::ServiceAvailability]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_service_availability(name, replace_service_availability_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/inventory/{+name}/availability:replace', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::ReplaceServiceAvailabilityRequest::Representation
          command.request_object = replace_service_availability_request_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::ServiceAvailability::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::ServiceAvailability
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Booking.
        # @param [String] name
        #   Resource name of the booking:
        #   `partners/`partner ID`/bookings/`booking ID``
        # @param [Google::Apis::MapsbookingV1alpha::Booking] booking_object
        # @param [String] booking_failure_cause
        #   The reason why the booking failed. (required)
        # @param [String] booking_failure_description
        #   This optional field is used for the partner to include additional
        #   information for debugging purpose only. (optional)
        # @param [String] booking_failure_payment_failure_threeds1_parameters_acs_url
        #   The URL from which to load a form to present to the User for
        #   authentication.
        # @param [String] booking_failure_payment_failure_threeds1_parameters_md_merchant_data
        #   Merchant data.  To be posted to the ACSUrl form if supplied.
        # @param [String] booking_failure_payment_failure_threeds1_parameters_pa_req
        #   A PaymentAuthentication Request.  To be posted to the ACSUrl form if
        #   supplied.
        # @param [String] booking_failure_payment_failure_threeds1_parameters_transaction_id
        #   An identifier used by the ACS provider.  To be posted to the ACSUrl
        #   form if supplied.
        # @param [String] booking_failure_rejected_card_type
        #   (required only if cause is PAYMENT_ERROR_CARD_TYPE_REJECTED)
        # @param [String] update_mask
        #   Field mask of all booking fields to be updated
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Booking] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Booking]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_notification_partner_booking(name, booking_object = nil, booking_failure_cause: nil, booking_failure_description: nil, booking_failure_payment_failure_threeds1_parameters_acs_url: nil, booking_failure_payment_failure_threeds1_parameters_md_merchant_data: nil, booking_failure_payment_failure_threeds1_parameters_pa_req: nil, booking_failure_payment_failure_threeds1_parameters_transaction_id: nil, booking_failure_rejected_card_type: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/notification/{+name}', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Booking::Representation
          command.request_object = booking_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Booking::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Booking
          command.params['name'] = name unless name.nil?
          command.query['bookingFailure.cause'] = booking_failure_cause unless booking_failure_cause.nil?
          command.query['bookingFailure.description'] = booking_failure_description unless booking_failure_description.nil?
          command.query['bookingFailure.paymentFailure.threeds1Parameters.acsUrl'] = booking_failure_payment_failure_threeds1_parameters_acs_url unless booking_failure_payment_failure_threeds1_parameters_acs_url.nil?
          command.query['bookingFailure.paymentFailure.threeds1Parameters.mdMerchantData'] = booking_failure_payment_failure_threeds1_parameters_md_merchant_data unless booking_failure_payment_failure_threeds1_parameters_md_merchant_data.nil?
          command.query['bookingFailure.paymentFailure.threeds1Parameters.paReq'] = booking_failure_payment_failure_threeds1_parameters_pa_req unless booking_failure_payment_failure_threeds1_parameters_pa_req.nil?
          command.query['bookingFailure.paymentFailure.threeds1Parameters.transactionId'] = booking_failure_payment_failure_threeds1_parameters_transaction_id unless booking_failure_payment_failure_threeds1_parameters_transaction_id.nil?
          command.query['bookingFailure.rejectedCardType'] = booking_failure_rejected_card_type unless booking_failure_rejected_card_type.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Order.
        # @param [String] name
        #   Resource name of the order:
        #   `partners/`partner ID`/orders/`order ID``
        # @param [Google::Apis::MapsbookingV1alpha::Order] order_object
        # @param [String] update_mask
        #   Field mask of all order fields to be updated
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MapsbookingV1alpha::Order] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MapsbookingV1alpha::Order]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_notification_partner_order(name, order_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/notification/{+name}', options)
          command.request_representation = Google::Apis::MapsbookingV1alpha::Order::Representation
          command.request_object = order_object
          command.response_representation = Google::Apis::MapsbookingV1alpha::Order::Representation
          command.response_class = Google::Apis::MapsbookingV1alpha::Order
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
