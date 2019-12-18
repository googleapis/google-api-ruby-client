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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module MapsbookingV1alpha
      
      # An action URL with associated language, list of countries restricted to, and
      # optional platform that indicates which platform this action should be
      # performed on.
      class ActionLink
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language tag identifying the language in which the content
        # from this URI is available.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The platform that this action should be performed on. If this field is
        # unset, ACTION_PLATFORM_WEB_APPLICATION will be used as fallback.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # ISO 3166-1 alpha-2 country code. Leave empty for unrestricted visibility.
        # Corresponds to the JSON property `restrictedCountry`
        # @return [Array<String>]
        attr_accessor :restricted_country
      
        # The entry point URL for this action link.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] if args.key?(:language)
          @platform = args[:platform] if args.key?(:platform)
          @restricted_country = args[:restricted_country] if args.key?(:restricted_country)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Attribution information for this media.
      class Attribution
        include Google::Apis::Core::Hashable
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedText`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_text
      
        # Deprecated, prefer to use localized_text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @localized_text = args[:localized_text] if args.key?(:localized_text)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # An availability slot of the merchant's service, indicating time and number of
      # spots.
      class Availability
        include Google::Apis::Core::Hashable
      
        # An optional opaque string to identify this availability slot. If set, it
        # will be included in the requests that book/update/cancel appointments.
        # Corresponds to the JSON property `availabilityTag`
        # @return [String]
        attr_accessor :availability_tag
      
        # The confirmation mode that will be used when booking this availability.
        # Attempts to create bookings for availabilities with a confirmation mode
        # of CONFIRMATION_MODE_SYNCHRONOUS must be immediatlely confirmed or denied.
        # Attempts to create bookings for availabilities with confirmation mode
        # of CONFIRMATION_MODE_ASYNCHRONOUS must be either immediately denied
        # or created with status PENDING.
        # Corresponds to the JSON property `confirmationMode`
        # @return [String]
        attr_accessor :confirmation_mode
      
        # A deposit that the user may be charged or have a hold on their credit card
        # for.
        # Corresponds to the JSON property `deposit`
        # @return [Google::Apis::MapsbookingV1alpha::Deposit]
        attr_accessor :deposit
      
        # Duration of the appointment slot
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # A fee that a user may be charged if they have made a booking but do not
        # show up.
        # Corresponds to the JSON property `noShowFee`
        # @return [Google::Apis::MapsbookingV1alpha::NoShowFee]
        attr_accessor :no_show_fee
      
        # A list of ids referencing the payment options which can be used to pay
        # for this slot. The actual payment options are defined at the Merchant
        # level, and can also be shared among multiple Merchants.
        # This field overrides any payment_option_ids specified in the service
        # message. Similarly payment_option_ids specified here do NOT have to be
        # present in the service message, though must be defined at the
        # Merchant level.
        # Corresponds to the JSON property `paymentOptionId`
        # @return [Array<String>]
        attr_accessor :payment_option_id
      
        # Recurrence messages are optional, but allow for a more compact
        # representation of consistently repeating availability slots. They typically
        # represent a day's working schedule.
        # ScheduleException messages are then used to represent booked/unavailable
        # time ranges within the work day.
        # Requirements:
        # 1. The expansion of availability slots or recurrences must NOT create
        # identical slots. If the ids, start_time, duration, and resources
        # match, slots are considered identical.
        # 2. Do NOT mix the standard availability format and recurrence within the
        # slots of a single service. Recurrence benefits merchants/services that
        # offer appointments. The standard format is geared towards
        # merchants/services with regularly scheduled classes.
        # 3. Recurrences should not last for more than 24 hours.
        # Corresponds to the JSON property `recurrence`
        # @return [Google::Apis::MapsbookingV1alpha::Recurrence]
        attr_accessor :recurrence
      
        # Indicates whether the user must provide a credit card in order to book this
        # availability slot.
        # If the value is not set, it is inherited from the service level if it's set
        # there. (optional)
        # Corresponds to the JSON property `requireCreditCard`
        # @return [String]
        attr_accessor :require_credit_card
      
        # A resource is used to disambiguate availability slots from one another when
        # different staff members, or rooms are part of the service. Multiple slots for
        # the same service and time interval can co-exist when they have different
        # resources.
        # Corresponds to the JSON property `resources`
        # @return [Google::Apis::MapsbookingV1alpha::Resources]
        attr_accessor :resources
      
        # Times when this service cannot be scheduled. To limit the number of
        # schedule_exception messages, consider joining adjacent exceptions.
        # Corresponds to the JSON property `scheduleException`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ScheduleException>]
        attr_accessor :schedule_exception
      
        # Availability level scheduling rules.
        # Corresponds to the JSON property `schedulingRuleOverrides`
        # @return [Google::Apis::MapsbookingV1alpha::SchedulingRuleOverrides]
        attr_accessor :scheduling_rule_overrides
      
        # Number of open spots.
        # Corresponds to the JSON property `spotsOpen`
        # @return [Fixnum]
        attr_accessor :spots_open
      
        # Number of total spots and open spots of this availability.
        # Examples:
        # * Yoga class of 10 spots with 3 booked:
        # `availability `spots_total: 10, spots_open: 7 ...``
        # * Chair massage session which is already fully booked:
        # `availability `spots_total: 1, spots_open: 0 ...``
        # Note: If sending requests using the availability compression format defined
        # below, these two fields will be inferred.
        # * A Recurrence implies `spots_total=1` and `spots_open=1`.
        # * A ScheduleException implies `spots_total=1` and `spots_open=0`.
        # Corresponds to the JSON property `spotsTotal`
        # @return [Fixnum]
        attr_accessor :spots_total
      
        # Start time of the appointment slot.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Indicates a list of supported ticket types for this availability slot. If
        # unset, all ticket types in the parent service are available for this slot.
        # Note that the values of this field must be defined in the parent service.
        # Examples:
        # * Service with four ticket types:
        # TicketType `ticket_type_id: "adult_1" short_description: "Adult weekdays"`
        # TicketType `ticket_type_id: "adult_2" short_description: "Adult weekends"`
        # TicketType `ticket_type_id: "youth_1" short_description: "Youth weekdays"`
        # TicketType `ticket_type_id: "youth_2" short_description: "Youth weekends"`
        # To represent the inventory during the weekdays:
        # `availability `ticket_type_id: "adult_1" ticket_type_id: "youth_1"...``.
        # To represent the inventory during the holidays:
        # `availability `ticket_type_id: "adult_2" ticket_type_id: "youth_2"...``.
        # * Service with three ticket types:
        # TicketType `ticket_type_id: "adult" short_description: "Adult"`
        # TicketType `ticket_type_id: "youth" short_description: "Youth"`
        # TicketType `ticket_type_id: "senior" short_description: "Senior"`
        # To indicate that all three ticket types are available for this time slot,
        # use either
        # `availability `ticket_type_id: "adult" ticket_type_id: "youth"
        # ticket_type_id: "senior" ...``
        # or
        # `availability `...`' (do not set ticket_type_id in this slot).
        # (optional)
        # Corresponds to the JSON property `ticketTypeId`
        # @return [Array<String>]
        attr_accessor :ticket_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_tag = args[:availability_tag] if args.key?(:availability_tag)
          @confirmation_mode = args[:confirmation_mode] if args.key?(:confirmation_mode)
          @deposit = args[:deposit] if args.key?(:deposit)
          @duration = args[:duration] if args.key?(:duration)
          @no_show_fee = args[:no_show_fee] if args.key?(:no_show_fee)
          @payment_option_id = args[:payment_option_id] if args.key?(:payment_option_id)
          @recurrence = args[:recurrence] if args.key?(:recurrence)
          @require_credit_card = args[:require_credit_card] if args.key?(:require_credit_card)
          @resources = args[:resources] if args.key?(:resources)
          @schedule_exception = args[:schedule_exception] if args.key?(:schedule_exception)
          @scheduling_rule_overrides = args[:scheduling_rule_overrides] if args.key?(:scheduling_rule_overrides)
          @spots_open = args[:spots_open] if args.key?(:spots_open)
          @spots_total = args[:spots_total] if args.key?(:spots_total)
          @start_time = args[:start_time] if args.key?(:start_time)
          @ticket_type_id = args[:ticket_type_id] if args.key?(:ticket_type_id)
        end
      end
      
      # The batch request to replace multiple Service's availability slots.
      class BatchReplaceServiceAvailabilityRequest
        include Google::Apis::Core::Hashable
      
        # The extended service availability that is used to replace the
        # existing availability slots.
        # Corresponds to the JSON property `extendedServiceAvailability`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability>]
        attr_accessor :extended_service_availability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extended_service_availability = args[:extended_service_availability] if args.key?(:extended_service_availability)
        end
      end
      
      # The batch response to replace multiple Service's availability slots. Only
      # successfully
      # updated slots will be included in this message
      class BatchReplaceServiceAvailabilityResponse
        include Google::Apis::Core::Hashable
      
        # The successfully updated extended service availability messages that were
        # used to replace the existing availability slots.
        # Corresponds to the JSON property `extendedServiceAvailability`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ExtendedServiceAvailability>]
        attr_accessor :extended_service_availability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extended_service_availability = args[:extended_service_availability] if args.key?(:extended_service_availability)
        end
      end
      
      # A booking for an inventory slot
      class Booking
        include Google::Apis::Core::Hashable
      
        # Personal information about the person making a booking
        # Corresponds to the JSON property `clientInformation`
        # @return [Google::Apis::MapsbookingV1alpha::ClientInformation]
        attr_accessor :client_information
      
        # Duration of the appointment slot
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # ID of the merchant for the slot
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # Resource name of the booking:
        # `partners/`partner ID`/bookings/`booking ID``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Party size of the booking
        # Corresponds to the JSON property `partySize`
        # @return [Fixnum]
        attr_accessor :party_size
      
        # Payment details that relate to a booking
        # Corresponds to the JSON property `paymentInformation`
        # @return [Google::Apis::MapsbookingV1alpha::PaymentInformation]
        attr_accessor :payment_information
      
        # ID of the merchant service
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        # Start time of the appointment slot
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the booking
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_information = args[:client_information] if args.key?(:client_information)
          @duration = args[:duration] if args.key?(:duration)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @name = args[:name] if args.key?(:name)
          @party_size = args[:party_size] if args.key?(:party_size)
          @payment_information = args[:payment_information] if args.key?(:payment_information)
          @service_id = args[:service_id] if args.key?(:service_id)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Cancellation policy for a service.
      class CancellationPolicy
        include Google::Apis::Core::Hashable
      
        # Zero or more refund conditions applicable to the policy.
        # Corresponds to the JSON property `refundCondition`
        # @return [Array<Google::Apis::MapsbookingV1alpha::RefundCondition>]
        attr_accessor :refund_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @refund_condition = args[:refund_condition] if args.key?(:refund_condition)
        end
      end
      
      # Personal information about the person making a booking
      class ClientInformation
        include Google::Apis::Core::Hashable
      
        # Address of a customer or a business.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MapsbookingV1alpha::PostalAddress]
        attr_accessor :address
      
        # Email address of the client
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Family name of the client
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Given name of the client
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Phone number of the client
        # Corresponds to the JSON property `telephone`
        # @return [String]
        attr_accessor :telephone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @email = args[:email] if args.key?(:email)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @telephone = args[:telephone] if args.key?(:telephone)
        end
      end
      
      # Restrictions to the credit card types this merchant accepts.
      class CreditCardRestrictions
        include Google::Apis::Core::Hashable
      
        # A list of supported credit cards. No credit cards are supported if empty.
        # Corresponds to the JSON property `creditCardType`
        # @return [Array<String>]
        attr_accessor :credit_card_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credit_card_type = args[:credit_card_type] if args.key?(:credit_card_type)
        end
      end
      
      # A deposit that the user may be charged or have a hold on their credit card
      # for.
      class Deposit
        include Google::Apis::Core::Hashable
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `deposit`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :deposit
      
        # Defines how the deposit is determined from the availability.
        # Corresponds to the JSON property `depositType`
        # @return [String]
        attr_accessor :deposit_type
      
        # Minimum advance cancellation for the deposit.
        # Corresponds to the JSON property `minAdvanceCancellationSec`
        # @return [Fixnum]
        attr_accessor :min_advance_cancellation_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deposit = args[:deposit] if args.key?(:deposit)
          @deposit_type = args[:deposit_type] if args.key?(:deposit_type)
          @min_advance_cancellation_sec = args[:min_advance_cancellation_sec] if args.key?(:min_advance_cancellation_sec)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an entity related to the event.
      class Entity
        include Google::Apis::Core::Hashable
      
        # The role of the entity in the event. (optional)
        # Corresponds to the JSON property `entityRole`
        # @return [String]
        attr_accessor :entity_role
      
        # The type of the entity. (optional)
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Unique identifier of the entity in the partner's database. (optional)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the entity. (required)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifiers, webpages, or any other public sources that refernece an
        # entity.
        # Corresponds to the JSON property `publicIdentificationData`
        # @return [Google::Apis::MapsbookingV1alpha::PublicIdentificationData]
        attr_accessor :public_identification_data
      
        # Url of the webpage that unambiguously describes the entity.
        # This is the webpage on the partner's website for the entity if any; for
        # other public URLs of the entity, use relevant_url in
        # public_identification_data. (optional)
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_role = args[:entity_role] if args.key?(:entity_role)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @public_identification_data = args[:public_identification_data] if args.key?(:public_identification_data)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A list of availability and who/when they should be applied to.
      class ExtendedServiceAvailability
        include Google::Apis::Core::Hashable
      
        # The new list of availability.
        # Corresponds to the JSON property `availability`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Availability>]
        attr_accessor :availability
      
        # Setting duration further restricts the scope of the update to just the
        # availability with matching duration.
        # Corresponds to the JSON property `durationRestrict`
        # @return [String]
        attr_accessor :duration_restrict
      
        # Setting end_time_restrict while leaving start_time_restrict unset
        # is interpreted to mean all time up to the end_time_restrict.
        # Corresponds to the JSON property `endTimeRestrict`
        # @return [String]
        attr_accessor :end_time_restrict
      
        # This is a mandatory field required to specify which merchant the
        # availability messages below belong to.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # A resource is used to disambiguate availability slots from one another when
        # different staff members, or rooms are part of the service. Multiple slots for
        # the same service and time interval can co-exist when they have different
        # resources.
        # Corresponds to the JSON property `resourcesRestrict`
        # @return [Google::Apis::MapsbookingV1alpha::Resources]
        attr_accessor :resources_restrict
      
        # This is a mandatory field required to specify which service the
        # availability messages below belong to.
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        # If provided, we will consider the Availability entities provided to be a
        # complete snapshot from [start_time_restrict, end_time_restrict).
        # That is, all existing availability will be deleted if the following
        # condition holds true:
        # ```
        # start_time_restrict <= availability.start_sec &&
        # availability.start_sec < end_time_restrict
        # ```
        # If a duration message is set, the condition is futher restricted:
        # ```
        # availability.duration == duration_restrict
        # ```
        # If a resources_restrict message is set, the condition is further
        # restricted:
        # ```
        # availability.resources.staff_id == resources_restrict.staff_id &&
        # availability.resources.room_id == resources_restrict.room_id
        # ```
        # These fields are typically used to provide a complete update of
        # availability in a given time range.
        # Setting start_time_restrict while leaving end_time_restrict unset
        # is interpreted to mean all time beginning at start_time_restrict.
        # Corresponds to the JSON property `startTimeRestrict`
        # @return [String]
        attr_accessor :start_time_restrict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @duration_restrict = args[:duration_restrict] if args.key?(:duration_restrict)
          @end_time_restrict = args[:end_time_restrict] if args.key?(:end_time_restrict)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @resources_restrict = args[:resources_restrict] if args.key?(:resources_restrict)
          @service_id = args[:service_id] if args.key?(:service_id)
          @start_time_restrict = args[:start_time_restrict] if args.key?(:start_time_restrict)
        end
      end
      
      # Statistics obtained while processing an uploaded feed.
      class FeedStatistics
        include Google::Apis::Core::Hashable
      
        # Items no longer present in this feed, and that were removed as a result.
        # Corresponds to the JSON property `deletedItems`
        # @return [Fixnum]
        attr_accessor :deleted_items
      
        # Existing items, updated as needed from newer information from the feed.
        # Corresponds to the JSON property `existingItems`
        # @return [Fixnum]
        attr_accessor :existing_items
      
        # Newly added items by this feed. Items can be merchants, services or
        # availability slots, depending on the type of the feed.
        # Corresponds to the JSON property `newItems`
        # @return [Fixnum]
        attr_accessor :new_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted_items = args[:deleted_items] if args.key?(:deleted_items)
          @existing_items = args[:existing_items] if args.key?(:existing_items)
          @new_items = args[:new_items] if args.key?(:new_items)
        end
      end
      
      # Status of a feed uploaded by the aggregator's platform.
      class FeedStatus
        include Google::Apis::Core::Hashable
      
        # Human readable string providing more details if we failed to process this
        # feed.
        # Corresponds to the JSON property `errorDetails`
        # @return [String]
        attr_accessor :error_details
      
        # The feed resource name, which has the format of
        # - `partners/`partner_id`/feeds/merchants/`file_name``
        # - `partners/`partner_id`/feeds/services/`file_name``
        # - `partners/`partner_id`/feeds/availability/`file_name``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing state of this feed.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Statistics obtained while processing an uploaded feed.
        # Corresponds to the JSON property `statistics`
        # @return [Google::Apis::MapsbookingV1alpha::FeedStatistics]
        attr_accessor :statistics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_details = args[:error_details] if args.key?(:error_details)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @statistics = args[:statistics] if args.key?(:statistics)
        end
      end
      
      # The Geo data of a location, including latitude, longitude, and address.
      class GeoCoordinates
        include Google::Apis::Core::Hashable
      
        # Address of a customer or a business.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MapsbookingV1alpha::PostalAddress]
        attr_accessor :address
      
        # Latitude in degrees. (optional)
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Longitude in degrees. (optional)
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        # An unstructured address could also be provided as a fallback.
        # E.g. "1600 amphitheatre parkway mountain view, ca 94043"
        # Corresponds to the JSON property `unstructuredAddress`
        # @return [String]
        attr_accessor :unstructured_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
          @unstructured_address = args[:unstructured_address] if args.key?(:unstructured_address)
        end
      end
      
      # Additional information required to be provided for home service vertical.
      class HomeServiceData
        include Google::Apis::Core::Hashable
      
        # The high level category to which this home service belongs to. E.g.
        # plumber, electrician etc.
        # Corresponds to the JSON property `categoryType`
        # @return [String]
        attr_accessor :category_type
      
        # The job type under the category to which the given home service belongs to.
        # E.g. unclog_drain, install_faucet are the job types under plumber
        # category.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_type = args[:category_type] if args.key?(:category_type)
          @job_type = args[:job_type] if args.key?(:job_type)
        end
      end
      
      # A single item in an order--the booking of a single service in a single time
      # slot.
      class LineItem
        include Google::Apis::Core::Hashable
      
        # Duration of the appointment slot in seconds.
        # Corresponds to the JSON property `durationSec`
        # @return [Fixnum]
        attr_accessor :duration_sec
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :price
      
        # ID of the merchant Service.
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        # Start time of the appointment slot in seconds of UTC time since Unix epoch.
        # Corresponds to the JSON property `startSec`
        # @return [Fixnum]
        attr_accessor :start_sec
      
        # Status of the Line Item.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Number of tickets ordered by Ticket Type.
        # Corresponds to the JSON property `tickets`
        # @return [Array<Google::Apis::MapsbookingV1alpha::OrderedTickets>]
        attr_accessor :tickets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_sec = args[:duration_sec] if args.key?(:duration_sec)
          @price = args[:price] if args.key?(:price)
          @service_id = args[:service_id] if args.key?(:service_id)
          @start_sec = args[:start_sec] if args.key?(:start_sec)
          @status = args[:status] if args.key?(:status)
          @tickets = args[:tickets] if args.key?(:tickets)
        end
      end
      
      # The request to retrieve the Status
      # for multiple feeds uploaded by the aggregator's platform.
      class ListStatusResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results. There are no more results in
        # the list if empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Reverse chronological list of statuses for uploaded feeds. The maximum
        # number of items returned is based on the page_size field in the request.
        # Corresponds to the JSON property `status`
        # @return [Array<Google::Apis::MapsbookingV1alpha::FeedStatus>]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Instance of a string in one locale.
      class LocalizedString
        include Google::Apis::Core::Hashable
      
        # IETF BCP 47 language code, such as "en", "mas", "zh-Hant", "de-CH-1901".
        # See http://www.w3.org/International/articles/language-tags/.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Message in the locale above (UTF-8).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Geographic information about a location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The Geo data of a location, including latitude, longitude, and address.
        # Corresponds to the JSON property `geo`
        # @return [Google::Apis::MapsbookingV1alpha::GeoCoordinates]
        attr_accessor :geo
      
        # Unique reference of the location within the service. This id can be used to
        # refer to this location in other service fields. E.g in the custom intake
        # form, a set of location ids can be used to specify pick up location
        # options. If set, this id should be unique within the same service.
        # (optional)
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The type of the location, must be supplied if this location is provided for
        # a Service.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        # The location's name, telephone, url and geo are used to support matching
        # the location with places already present on Google Maps. It is recommended
        # to provide the location name if possible. (optional)
        # The name of the location. (optional)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Place ID for a place in the Google Places database and on Google Maps.
        # See https://developers.google.com/places/place-id for more about Place IDs.
        # If this is provided, Google will match the location to this place.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # The public telephone number of the location including its country and area
        # codes, e.g. +14567891234. (optional)
        # Corresponds to the JSON property `telephone`
        # @return [String]
        attr_accessor :telephone
      
        # The url of the location's public website. (optional)
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo = args[:geo] if args.key?(:geo)
          @location_id = args[:location_id] if args.key?(:location_id)
          @location_type = args[:location_type] if args.key?(:location_type)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
          @telephone = args[:telephone] if args.key?(:telephone)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Info about a merchant that is on the aggregator's platform.
      class Merchant
        include Google::Apis::Core::Hashable
      
        # An opaque string that identifies the consumer-facing brand to use when
        # displaying partner attribution. This field allows partners with multiple
        # consumer-facing brands to provide merchants for all brands within the same
        # feed.
        # A brand consists of consumer-facing properties like the name, logo, Terms
        # of Service, and Privacy Policy.
        # If there is only one consumer-facing partner brand, this field does not
        # need to be set and can be ignored.
        # If the partner...
        # Does not have multiple consumer-facing brands?
        # --> Ignore this field
        # Has Multiple Brands that are configured?
        # If this field is set
        # --> Associated consumer-facing brand attribution is used
        # If this field is unset or the empty string
        # --> Default consumer-facing brand attribution is used
        # Careful Note: most partners do not need to set this field. If a partner
        # wishes to use this field, they must contact us first to configure separate
        # brands, including the default brand.
        # Corresponds to the JSON property `brandId`
        # @return [String]
        attr_accessor :brand_id
      
        # The category of the business in aggregator's platform.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The Geo data of a location, including latitude, longitude, and address.
        # Corresponds to the JSON property `geo`
        # @return [Google::Apis::MapsbookingV1alpha::GeoCoordinates]
        attr_accessor :geo
      
        # Hints used to help Google match a merchant to a place on Google Maps.
        # Corresponds to the JSON property `matchingHints`
        # @return [Google::Apis::MapsbookingV1alpha::MerchantMatchingHints]
        attr_accessor :matching_hints
      
        # The merchant_name, telephone, url and geo are used to support matching
        # partner inventory with merchants already present on Google Maps. This
        # information will not be displayed.
        # The name of the merchant.
        # Corresponds to the JSON property `merchantName`
        # @return [String]
        attr_accessor :merchant_name
      
        # The merchant resource name, which has the format of
        # `partners/`partner_id`/merchants/`merchant_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field is deprecated.
        # Corresponds to the JSON property `numBookings30d`
        # @return [Fixnum]
        attr_accessor :num_bookings30d
      
        # Payment options available for this merchant. Services under this merchant
        # will be able to individually limit the payment options they allow.
        # Corresponds to the JSON property `paymentOption`
        # @return [Array<Google::Apis::MapsbookingV1alpha::PaymentOption>]
        attr_accessor :payment_option
      
        # A configuration for a payment processor, setup on a per Merchant basis.
        # Corresponds to the JSON property `paymentProcessorConfig`
        # @return [Google::Apis::MapsbookingV1alpha::PaymentProcessorConfig]
        attr_accessor :payment_processor_config
      
        # Restrictions to the payment methods this merchant accepts.
        # Corresponds to the JSON property `paymentRestrictions`
        # @return [Google::Apis::MapsbookingV1alpha::PaymentRestrictions]
        attr_accessor :payment_restrictions
      
        # Definitions for any service attributes used to describe the Services for
        # this Merchant. (optional)
        # Corresponds to the JSON property `serviceAttribute`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ServiceAttribute>]
        attr_accessor :service_attribute
      
        # A tax rate applied when charging the user for a service, and which can be set
        # on either a per merchant, or per service basis.
        # Corresponds to the JSON property `taxRate`
        # @return [Google::Apis::MapsbookingV1alpha::TaxRate]
        attr_accessor :tax_rate
      
        # The merchant's tax rate in basis points (one hundredth of one percent).
        # For example, if the tax rate is 7.5%, this field should be set to 750.
        # If this field is left unset or set to 0, the total price charged to a user
        # for any service provided by this merchant is the exact price specified by
        # Service.price. The service price is assumed to be exempt from or already
        # inclusive of applicable taxes. Taxes will not be shown to the user as a
        # separate line item.
        # If this field is set to any nonzero value, the total price charged to a
        # user for any service provided by this merchant will include the service
        # price plus the tax assessed using the tax rate provided here. Fractions of
        # the smallest currency unit (for example, fractions of one cent) will be
        # rounded using nearest even rounding. Taxes will be shown to the user as a
        # separate line item.
        # This field is deprecated, please use tax_rate instead.
        # Corresponds to the JSON property `taxRateBasisPoints`
        # @return [Fixnum]
        attr_accessor :tax_rate_basis_points
      
        # The public telephone number of the merchant including its country and area
        # codes, e.g. +14567891234.
        # Corresponds to the JSON property `telephone`
        # @return [String]
        attr_accessor :telephone
      
        # A set of rules and guidelines that are displayed to the
        # user in order to make a booking through Reserve with Google.
        # Corresponds to the JSON property `terms`
        # @return [Google::Apis::MapsbookingV1alpha::Terms]
        attr_accessor :terms
      
        # A configuration for payment-processor tokenization, set up on a per-Merchant
        # basis.
        # Corresponds to the JSON property `tokenizationConfig`
        # @return [Google::Apis::MapsbookingV1alpha::TokenizationConfig]
        attr_accessor :tokenization_config
      
        # The url of the merchant's public website.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand_id = args[:brand_id] if args.key?(:brand_id)
          @category = args[:category] if args.key?(:category)
          @geo = args[:geo] if args.key?(:geo)
          @matching_hints = args[:matching_hints] if args.key?(:matching_hints)
          @merchant_name = args[:merchant_name] if args.key?(:merchant_name)
          @name = args[:name] if args.key?(:name)
          @num_bookings30d = args[:num_bookings30d] if args.key?(:num_bookings30d)
          @payment_option = args[:payment_option] if args.key?(:payment_option)
          @payment_processor_config = args[:payment_processor_config] if args.key?(:payment_processor_config)
          @payment_restrictions = args[:payment_restrictions] if args.key?(:payment_restrictions)
          @service_attribute = args[:service_attribute] if args.key?(:service_attribute)
          @tax_rate = args[:tax_rate] if args.key?(:tax_rate)
          @tax_rate_basis_points = args[:tax_rate_basis_points] if args.key?(:tax_rate_basis_points)
          @telephone = args[:telephone] if args.key?(:telephone)
          @terms = args[:terms] if args.key?(:terms)
          @tokenization_config = args[:tokenization_config] if args.key?(:tokenization_config)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Hints used to help Google match a merchant to a place on Google Maps.
      class MerchantMatchingHints
        include Google::Apis::Core::Hashable
      
        # The Place ID for a place in the Google Places database and on Google Maps.
        # See https://developers.google.com/places/place-id for more about Place IDs.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # A fee that a user may be charged if they have made a booking but do not
      # show up.
      class NoShowFee
        include Google::Apis::Core::Hashable
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `fee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :fee
      
        # Defines how the fee is determined from the availability.
        # Corresponds to the JSON property `feeType`
        # @return [String]
        attr_accessor :fee_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fee = args[:fee] if args.key?(:fee)
          @fee_type = args[:fee_type] if args.key?(:fee_type)
        end
      end
      
      # An order for service appointments with a merchant.
      class Order
        include Google::Apis::Core::Hashable
      
        # Personal information about the person making a booking
        # Corresponds to the JSON property `clientInformation`
        # @return [Google::Apis::MapsbookingV1alpha::ClientInformation]
        attr_accessor :client_information
      
        # Line items in this order.
        # Corresponds to the JSON property `item`
        # @return [Array<Google::Apis::MapsbookingV1alpha::LineItem>]
        attr_accessor :item
      
        # ID of the merchant that all services in this order belong to.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # Resource name of the order:
        # `partners/`partner ID`/orders/`order ID``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Payment details that relate to a booking
        # Corresponds to the JSON property `paymentInformation`
        # @return [Google::Apis::MapsbookingV1alpha::PaymentInformation]
        attr_accessor :payment_information
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_information = args[:client_information] if args.key?(:client_information)
          @item = args[:item] if args.key?(:item)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @name = args[:name] if args.key?(:name)
          @payment_information = args[:payment_information] if args.key?(:payment_information)
        end
      end
      
      # Number of ordered tickets by Ticket Type.
      class OrderedTickets
        include Google::Apis::Core::Hashable
      
        # Number of tickets ordered for this type.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # ID of a Ticket Type.
        # Corresponds to the JSON property `ticketId`
        # @return [String]
        attr_accessor :ticket_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @ticket_id = args[:ticket_id] if args.key?(:ticket_id)
        end
      end
      
      # Payment details that relate to a booking
      class PaymentInformation
        include Google::Apis::Core::Hashable
      
        # Unique identifier for a payment transaction associated with the booking.
        # Empty if not applicable.
        # Corresponds to the JSON property `paymentTransactionId`
        # @return [String]
        attr_accessor :payment_transaction_id
      
        # Prepayment status of the booking. If the prepayment_status is
        # PREPAYMENT_PROVIDED or PREPAYMENT_REFUNDED, then payment_transaction_id
        # contains the associated unique transaction id.
        # Corresponds to the JSON property `prepaymentStatus`
        # @return [String]
        attr_accessor :prepayment_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payment_transaction_id = args[:payment_transaction_id] if args.key?(:payment_transaction_id)
          @prepayment_status = args[:prepayment_status] if args.key?(:prepayment_status)
        end
      end
      
      # A payment option, which can be used to pay for services provided by a
      # merchant. Payment options can be shared among multiple merchants
      # (e.g. merchants belonging to the same chain).
      class PaymentOption
        include Google::Apis::Core::Hashable
      
        # Defines how the validity start date is determined for this payment option.
        # Corresponds to the JSON property `activationType`
        # @return [String]
        attr_accessor :activation_type
      
        # A description of the payment option. This can be user visible.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of the payment option. This can be user visible.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This ID is used to identify this payment option.
        # This ID is global to the whole aggregator, and re-using a value across
        # multiple merchants will allow a user to pay with the corresponding payment
        # option across those merchants.
        # When re-using an ID accoss multiple merchants, updating any value for a
        # payment option under one merchant will also update any other payment option
        # with the same ID, under a different merchant. As such, it's a best practice
        # to have all payment options sharing the same ID, always be updated to
        # identical values, to avoid any possibility of underministic behavior.
        # Corresponds to the JSON property `paymentOptionId`
        # @return [String]
        attr_accessor :payment_option_id
      
        # The type of this payment option. Single-use for drop-ins, multi-use for
        # packs, and unlimited for memberships.
        # Corresponds to the JSON property `paymentOptionType`
        # @return [String]
        attr_accessor :payment_option_type
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :price
      
        # A closed-open time range, i.e. [start_time, end_time).
        # Corresponds to the JSON property `purchaseInterval`
        # @return [Google::Apis::MapsbookingV1alpha::TimeRange]
        attr_accessor :purchase_interval
      
        # How many sessions this payment option can be used for. Valid only for
        # multi-session / packs, where the value should be > 1.
        # Corresponds to the JSON property `sessionCount`
        # @return [Fixnum]
        attr_accessor :session_count
      
        # A tax rate applied when charging the user for a service, and which can be set
        # on either a per merchant, or per service basis.
        # Corresponds to the JSON property `taxRate`
        # @return [Google::Apis::MapsbookingV1alpha::TaxRate]
        attr_accessor :tax_rate
      
        # Restricts the users eligible to purchase a payment option.
        # Corresponds to the JSON property `userRestriction`
        # @return [Google::Apis::MapsbookingV1alpha::UserPurchaseRestriction]
        attr_accessor :user_restriction
      
        # Duration of the payment option validity (e.g. 30 day membership).
        # Corresponds to the JSON property `validDuration`
        # @return [String]
        attr_accessor :valid_duration
      
        # A closed-open time range, i.e. [start_time, end_time).
        # Corresponds to the JSON property `validInterval`
        # @return [Google::Apis::MapsbookingV1alpha::TimeRange]
        attr_accessor :valid_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_type = args[:activation_type] if args.key?(:activation_type)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @payment_option_id = args[:payment_option_id] if args.key?(:payment_option_id)
          @payment_option_type = args[:payment_option_type] if args.key?(:payment_option_type)
          @price = args[:price] if args.key?(:price)
          @purchase_interval = args[:purchase_interval] if args.key?(:purchase_interval)
          @session_count = args[:session_count] if args.key?(:session_count)
          @tax_rate = args[:tax_rate] if args.key?(:tax_rate)
          @user_restriction = args[:user_restriction] if args.key?(:user_restriction)
          @valid_duration = args[:valid_duration] if args.key?(:valid_duration)
          @valid_interval = args[:valid_interval] if args.key?(:valid_interval)
        end
      end
      
      # A configuration for a payment processor, setup on a per Merchant basis.
      class PaymentProcessorConfig
        include Google::Apis::Core::Hashable
      
        # Defines the payment processor partner this configuration applies to.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        # The key used to identify this merchant with the payment processor.
        # For Stripe, refer to: https://stripe.com/docs/dashboard#api-keys
        # For Braintree, refer to:
        # https://articles.braintreepayments.com/control-panel/important-gateway-
        # credentials
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # The API version number sent to the payment processor along with payment
        # requests.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor = args[:processor] if args.key?(:processor)
          @public_key = args[:public_key] if args.key?(:public_key)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Restrictions to the payment methods this merchant accepts.
      class PaymentRestrictions
        include Google::Apis::Core::Hashable
      
        # Restrictions to the credit card types this merchant accepts.
        # Corresponds to the JSON property `creditCardRestrictions`
        # @return [Google::Apis::MapsbookingV1alpha::CreditCardRestrictions]
        attr_accessor :credit_card_restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credit_card_restrictions = args[:credit_card_restrictions] if args.key?(:credit_card_restrictions)
        end
      end
      
      # Fees that must be paid once per order, regardless of number of tickets.
      class PerOrderFee
        include Google::Apis::Core::Hashable
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `deliveryFee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :delivery_fee
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `processingFee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :processing_fee
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_fee = args[:delivery_fee] if args.key?(:delivery_fee)
          @processing_fee = args[:processing_fee] if args.key?(:processing_fee)
        end
      end
      
      # Fees that must be paid for each ticket the user purchases.
      class PerTicketFee
        include Google::Apis::Core::Hashable
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `facilityFee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :facility_fee
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `serviceCharge`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :service_charge
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `taxes`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :taxes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @facility_fee = args[:facility_fee] if args.key?(:facility_fee)
          @service_charge = args[:service_charge] if args.key?(:service_charge)
          @taxes = args[:taxes] if args.key?(:taxes)
        end
      end
      
      # Address of a customer or a business.
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # The country, specified using its ISO 3166-1 alpha-2 country code, e.g. "US"
        # (required)
        # Corresponds to the JSON property `addressCountry`
        # @return [String]
        attr_accessor :address_country
      
        # The locality, e.g. "Mountain View". (required)
        # Corresponds to the JSON property `addressLocality`
        # @return [String]
        attr_accessor :address_locality
      
        # The region, e.g. "CA". This field is only required in countries where
        # region is commonly a part of the address. (optional)
        # Corresponds to the JSON property `addressRegion`
        # @return [String]
        attr_accessor :address_region
      
        # The postal code, e.g. "94043". (required)
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The street address, e.g. "1600 Amphitheatre Pkwy". (required)
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_country = args[:address_country] if args.key?(:address_country)
          @address_locality = args[:address_locality] if args.key?(:address_locality)
          @address_region = args[:address_region] if args.key?(:address_region)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # The price of a service or a fee.
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency of the price that is defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The price in micro-units of the currency.
        # Fractions of smallest currency unit will be rounded using nearest even
        # rounding. (e.g. For USD 2.5 cents rounded to 2 cents, 3.5 cents rounded to
        # 4 cents, 0.5 cents rounded to 0 cents, 2.51 cents rounded to 3 cents).
        # Corresponds to the JSON property `priceMicros`
        # @return [Fixnum]
        attr_accessor :price_micros
      
        # An optional and opaque string that identifies the pricing option that is
        # associated with the extended price.
        # Corresponds to the JSON property `pricingOptionTag`
        # @return [String]
        attr_accessor :pricing_option_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @price_micros = args[:price_micros] if args.key?(:price_micros)
          @pricing_option_tag = args[:pricing_option_tag] if args.key?(:pricing_option_tag)
        end
      end
      
      # Identifiers, webpages, or any other public sources that refernece an
      # entity.
      class PublicIdentificationData
        include Google::Apis::Core::Hashable
      
        # The 36-character musicbrainz identifier of the artist or other music
        # entities, if applicable. See
        # https://musicbrainz.org/doc/MusicBrainz_Identifier.
        # (optional)
        # Corresponds to the JSON property `musicbrainzId`
        # @return [String]
        attr_accessor :musicbrainz_id
      
        # Public URL of any webpage that is dedicated to only the topic. This could
        # include official websites, discogs, social media platforms, wikipedia or
        # imdb pages, e.g. https://www.discogs.com/artist/1124645-Taylor-Swift,
        # https://www.wikidata.org/wiki/Q19320959, https://twitter.com/acmilan.
        # (optional)
        # Corresponds to the JSON property `relevantUrl`
        # @return [Array<String>]
        attr_accessor :relevant_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @musicbrainz_id = args[:musicbrainz_id] if args.key?(:musicbrainz_id)
          @relevant_url = args[:relevant_url] if args.key?(:relevant_url)
        end
      end
      
      # Defines Rating for an entity.
      class Rating
        include Google::Apis::Core::Hashable
      
        # Number of ratings used in calculating the value (required).
        # Corresponds to the JSON property `numberOfRatings`
        # @return [Fixnum]
        attr_accessor :number_of_ratings
      
        # Average rating value (required when number_of_ratings > 0).
        # The value must be in the range of [1, 5] and can be omitted if and only if
        # the number_of_ratings is zero.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number_of_ratings = args[:number_of_ratings] if args.key?(:number_of_ratings)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Recurrence messages are optional, but allow for a more compact
      # representation of consistently repeating availability slots. They typically
      # represent a day's working schedule.
      # ScheduleException messages are then used to represent booked/unavailable
      # time ranges within the work day.
      # Requirements:
      # 1. The expansion of availability slots or recurrences must NOT create
      # identical slots. If the ids, start_time, duration, and resources
      # match, slots are considered identical.
      # 2. Do NOT mix the standard availability format and recurrence within the
      # slots of a single service. Recurrence benefits merchants/services that
      # offer appointments. The standard format is geared towards
      # merchants/services with regularly scheduled classes.
      # 3. Recurrences should not last for more than 24 hours.
      class Recurrence
        include Google::Apis::Core::Hashable
      
        # Defines the time between successive availability slots.
        # Example: An availability with a duration of 20 min, a repeat_every of
        # 30 min, a start_time of 9:00am, and a repeat_until of 11:00am will
        # yield slots at 9-9:20am, 9:30-9:50am, 10-10:20am, 10:30-10:50am,
        # 11-11:20am. (required)
        # Corresponds to the JSON property `repeatEvery`
        # @return [String]
        attr_accessor :repeat_every
      
        # The inclusive maximum UTC timestamp the availability repeats until.
        # Corresponds to the JSON property `repeatUntil`
        # @return [String]
        attr_accessor :repeat_until
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repeat_every = args[:repeat_every] if args.key?(:repeat_every)
          @repeat_until = args[:repeat_until] if args.key?(:repeat_until)
        end
      end
      
      # Defines a single refund condition. Multiple refund conditions could be
      # used together to describe "refund steps" as various durations before the
      # service start time.
      class RefundCondition
        include Google::Apis::Core::Hashable
      
        # Duration before the start time, until when the customer can receive a
        # refund for part of the service's cost specified in `refund_percent`.
        # When set to 0 (default), the service can be cancelled at any time.
        # Corresponds to the JSON property `minDurationBeforeStartTime`
        # @return [String]
        attr_accessor :min_duration_before_start_time
      
        # The percent that can be refunded, as long as the service booking is
        # cancelled at least `min_duration_before_start_time` before the service
        # start time, in the range of [0, 100]. When set to 0 (default), the
        # service is not refundable. When set to 100 this service is fully
        # refundable.
        # Corresponds to the JSON property `refundPercent`
        # @return [Fixnum]
        attr_accessor :refund_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_duration_before_start_time = args[:min_duration_before_start_time] if args.key?(:min_duration_before_start_time)
          @refund_percent = args[:refund_percent] if args.key?(:refund_percent)
        end
      end
      
      # Photos related to this service. Google will crawl these media to ensure
      # that they are displayed correctly to end-users. (optional)
      class RelatedMedia
        include Google::Apis::Core::Hashable
      
        # Attribution information for this media.
        # Corresponds to the JSON property `attribution`
        # @return [Google::Apis::MapsbookingV1alpha::Attribution]
        attr_accessor :attribution
      
        # Deprecated, prefer to use localized_caption.
        # Corresponds to the JSON property `caption`
        # @return [String]
        attr_accessor :caption
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedCaption`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_caption
      
        # Type of this media source.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # URL of this media source. Google will crawl the media hosted at this URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution = args[:attribution] if args.key?(:attribution)
          @caption = args[:caption] if args.key?(:caption)
          @localized_caption = args[:localized_caption] if args.key?(:localized_caption)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # The request to replace a Service's
      # availability.
      class ReplaceServiceAvailabilityRequest
        include Google::Apis::Core::Hashable
      
        # A list of availability and who/when they should be applied to.
        # Corresponds to the JSON property `serviceAvailability`
        # @return [Google::Apis::MapsbookingV1alpha::ServiceAvailability]
        attr_accessor :service_availability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_availability = args[:service_availability] if args.key?(:service_availability)
        end
      end
      
      # A resource is used to disambiguate availability slots from one another when
      # different staff members, or rooms are part of the service. Multiple slots for
      # the same service and time interval can co-exist when they have different
      # resources.
      class Resources
        include Google::Apis::Core::Hashable
      
        # Applicable only for Dining: The party size which can be accommodated
        # during this time slot. A restaurant can be associated with multiple Slots
        # for the same time, each specifying a different party_size, if for instance
        # 2, 3, or 4 people can be seated with a reservation.
        # Corresponds to the JSON property `partySize`
        # @return [Fixnum]
        attr_accessor :party_size
      
        # An optional ID for the room the service is located in. This field
        # identifies the room across all merchants, services, and availability
        # records. It also needs to be stable over time to allow correlation with
        # past bookings.
        # This field must be present if room_name is present.
        # Corresponds to the JSON property `roomId`
        # @return [String]
        attr_accessor :room_id
      
        # An optional name for the room the service is located in. This
        # field will be displayed to users making a booking, and should be human
        # readable, as opposed to an opaque identifier. (optional but required if
        # room_id is present)
        # In dining a room name should only be used for seating areas such as the bar
        # or patio and should not be used for fixed price menus, special activities,
        # or any other non-room value (such as reservation or dinner). It is strongly
        # recommended that the default seating area not have a room associated with
        # it.
        # Corresponds to the JSON property `roomName`
        # @return [String]
        attr_accessor :room_name
      
        # Optional ID for a staff member providing the service. This field identifies
        # the staff member across all merchants, services, and availability records.
        # It also needs to be stable over time to allow correlation with past
        # bookings.
        # This field must be present if staff_name is present.
        # Corresponds to the JSON property `staffId`
        # @return [String]
        attr_accessor :staff_id
      
        # Optional name of a staff member providing the service. This field will be
        # displayed to users making a booking, and should be human readable, as
        # opposed to an opaque identifier.
        # This field must be present if staff_id is present.
        # Corresponds to the JSON property `staffName`
        # @return [String]
        attr_accessor :staff_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @party_size = args[:party_size] if args.key?(:party_size)
          @room_id = args[:room_id] if args.key?(:room_id)
          @room_name = args[:room_name] if args.key?(:room_name)
          @staff_id = args[:staff_id] if args.key?(:staff_id)
          @staff_name = args[:staff_name] if args.key?(:staff_name)
        end
      end
      
      # ScheduleException messages represent booked/unavailable time ranges within
      # the workday, which are exceptions to the recurrence described above. As
      # time slots are booked, the list of exceptions should be updated to reflect
      # the newly unavailable time ranges. The recurrence itself shouldn't be
      # modified.
      class ScheduleException
        include Google::Apis::Core::Hashable
      
        # A closed-open time range, i.e. [start_time, end_time).
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::MapsbookingV1alpha::TimeRange]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Availability level scheduling rules.
      class SchedulingRuleOverrides
        include Google::Apis::Core::Hashable
      
        # The first time (in seconds) that this slot is able to be booked. This
        # timestamp must be before the start_sec of the slot, or last_bookable_sec
        # if specified.
        # Corresponds to the JSON property `firstBookableSec`
        # @return [Fixnum]
        attr_accessor :first_bookable_sec
      
        # The last time (in seconds) that this slot is able to be booked. This
        # timestamp must be before the start_sec of the slot to be respected
        # (if users should be able to book after the start time, use service level
        # SchedulingRules.min_booking_before_end_time). If present, will override
        # anything specified in the min_booking_buffer of the corresponding
        # Service's SchedulingRules.
        # Corresponds to the JSON property `lastBookableSec`
        # @return [Fixnum]
        attr_accessor :last_bookable_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_bookable_sec = args[:first_bookable_sec] if args.key?(:first_bookable_sec)
          @last_bookable_sec = args[:last_bookable_sec] if args.key?(:last_bookable_sec)
        end
      end
      
      # The scheduling rules for a service.
      class SchedulingRules
        include Google::Apis::Core::Hashable
      
        # The admission policy that applies to this service. If unset, defaults to
        # TIME_STRICT. (optional)
        # Corresponds to the JSON property `admissionPolicy`
        # @return [String]
        attr_accessor :admission_policy
      
        # Cancellation policy for a service.
        # Corresponds to the JSON property `cancellationPolicy`
        # @return [Google::Apis::MapsbookingV1alpha::CancellationPolicy]
        attr_accessor :cancellation_policy
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `lateCancellationFee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :late_cancellation_fee
      
        # The duration (in seconds) from when the last booking can be made to
        # when the availability slot starts.
        # Corresponds to the JSON property `minAdvanceBooking`
        # @return [Fixnum]
        attr_accessor :min_advance_booking
      
        # The minimum advance notice in seconds required to cancel a booked
        # appointment online. (optional)
        # Corresponds to the JSON property `minAdvanceOnlineCanceling`
        # @return [Fixnum]
        attr_accessor :min_advance_online_canceling
      
        # The duration (in seconds) from when the last booking can be made to
        # when the availability slot ends. If this field is set, the
        # "admission_policy" field must be set to TIME_FLEXIBLE to indicate that
        # users can use the purchased tickets after slots start.
        # Corresponds to the JSON property `minBookingBufferBeforeEndTime`
        # @return [Fixnum]
        attr_accessor :min_booking_buffer_before_end_time
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `noshowFee`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :noshow_fee
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admission_policy = args[:admission_policy] if args.key?(:admission_policy)
          @cancellation_policy = args[:cancellation_policy] if args.key?(:cancellation_policy)
          @late_cancellation_fee = args[:late_cancellation_fee] if args.key?(:late_cancellation_fee)
          @min_advance_booking = args[:min_advance_booking] if args.key?(:min_advance_booking)
          @min_advance_online_canceling = args[:min_advance_online_canceling] if args.key?(:min_advance_online_canceling)
          @min_booking_buffer_before_end_time = args[:min_booking_buffer_before_end_time] if args.key?(:min_booking_buffer_before_end_time)
          @noshow_fee = args[:noshow_fee] if args.key?(:noshow_fee)
        end
      end
      
      # Info about a service that is provided by the merchant, e.g. haircut.
      # Next ID: 32
      class Service
        include Google::Apis::Core::Hashable
      
        # An action link related to this service. If action link exists, type (see
        # below) must be set in the Service.
        # Corresponds to the JSON property `actionLink`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ActionLink>]
        attr_accessor :action_link
      
        # A deposit that the user may be charged or have a hold on their credit card
        # for.
        # Corresponds to the JSON property `deposit`
        # @return [Google::Apis::MapsbookingV1alpha::Deposit]
        attr_accessor :deposit
      
        # The user-visible description of the service.
        # Deprecated, use localized_description instead.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Intake forms to show to the user in order to customize the service.
        # Deprecated. Please see intake_form and per_ticket_intake_form.
        # Corresponds to the JSON property `form`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ServiceIntakeForm>]
        attr_accessor :form
      
        # Additional information required to be provided for home service vertical.
        # Corresponds to the JSON property `homeServiceData`
        # @return [Google::Apis::MapsbookingV1alpha::HomeServiceData]
        attr_accessor :home_service_data
      
        # Defines an intake form that customizes the service provided by a merchant.
        # Corresponds to the JSON property `intakeForm`
        # @return [Google::Apis::MapsbookingV1alpha::ServiceIntakeForm]
        attr_accessor :intake_form
      
        # Depth of integration we support for this service. (optional)
        # Irrelevant for partners with the starter integration. End to end will
        # always be disabled for these partners.
        # Corresponds to the JSON property `integrationType`
        # @return [String]
        attr_accessor :integration_type
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedDescription`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_description
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedServiceName`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_service_name
      
        # Locations related to this service.
        # IMPORTANT NOTES:
        # If there are multiple visited locations related to this service, or the
        # START_LOCATION is different from the VISITED_LOCATION, the
        # START_LOCATION must be specified.
        # Example:
        # - A guided biking tour visiting three venues, the start venue needs to be
        # specified.
        # - A bus tour meeting at a hotel lobby and then head to the visited venue.
        # The meeting location needs to be specified.
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Location>]
        attr_accessor :location
      
        # The service resource name, which has the format of
        # `partners/`partner_id`/merchants/`merchant_id`/services/`service_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A fee that a user may be charged if they have made a booking but do not
        # show up.
        # Corresponds to the JSON property `noShowFee`
        # @return [Google::Apis::MapsbookingV1alpha::NoShowFee]
        attr_accessor :no_show_fee
      
        # A list of ids referencing the payment options which can be used to pay
        # for this service. The actual payment options are defined at the Merchant
        # level, and can also be shared among multiple Merchants.
        # Corresponds to the JSON property `paymentOptionId`
        # @return [Array<String>]
        attr_accessor :payment_option_id
      
        # Fees that must be paid once per order, regardless of number of tickets.
        # Corresponds to the JSON property `perOrderFee`
        # @return [Google::Apis::MapsbookingV1alpha::PerOrderFee]
        attr_accessor :per_order_fee
      
        # Defines an intake form that customizes the service provided by a merchant.
        # Corresponds to the JSON property `perTicketIntakeForm`
        # @return [Google::Apis::MapsbookingV1alpha::ServiceIntakeForm]
        attr_accessor :per_ticket_intake_form
      
        # Whether a prepayment is required, optional or not supported.
        # Corresponds to the JSON property `prepaymentType`
        # @return [String]
        attr_accessor :prepayment_type
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :price
      
        # Describes how the price is interpreted and displayed to the user. Can be
        # used by any vertical except Dining and Things To Do to configure display of
        # the service price.
        # Corresponds to the JSON property `priceInterpretation`
        # @return [String]
        attr_accessor :price_interpretation
      
        # Defines Rating for an entity.
        # Corresponds to the JSON property `rating`
        # @return [Google::Apis::MapsbookingV1alpha::Rating]
        attr_accessor :rating
      
        # Photos related to this service. Google will crawl and store the media to
        # ensure that they are displayed to end-users in the most efficient way.
        # (optional)
        # Corresponds to the JSON property `relatedMedia`
        # @return [Array<Google::Apis::MapsbookingV1alpha::RelatedMedia>]
        attr_accessor :related_media
      
        # Indicates whether the user must provide a credit card in order to book this
        # service.
        # This field can be overridden at the availability level. (optional)
        # Corresponds to the JSON property `requireCreditCard`
        # @return [String]
        attr_accessor :require_credit_card
      
        # The scheduling rules for a service.
        # Corresponds to the JSON property `rules`
        # @return [Google::Apis::MapsbookingV1alpha::SchedulingRules]
        attr_accessor :rules
      
        # Service attribute values that apply to this service (optional).
        # Each Service may have zero or more values for each service attribute
        # defined in the corresponding Merchant. (optional)
        # Corresponds to the JSON property `serviceAttributeValueId`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ServiceAttributeValueId>]
        attr_accessor :service_attribute_value_id
      
        # The name of the service, e.g. "Men's haircut".
        # Deprecated, use localized_service_name instead.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # A tax rate applied when charging the user for a service, and which can be set
        # on either a per merchant, or per service basis.
        # Corresponds to the JSON property `taxRate`
        # @return [Google::Apis::MapsbookingV1alpha::TaxRate]
        attr_accessor :tax_rate
      
        # Types of tickets that can be booked/purchased for this service, if tickets
        # are supported. (optional)
        # Corresponds to the JSON property `ticketType`
        # @return [Array<Google::Apis::MapsbookingV1alpha::TicketType>]
        attr_accessor :ticket_type
      
        # Additional information unique to the event ticketing vertical.
        # Corresponds to the JSON property `ticketingVerticalSpecificData`
        # @return [Google::Apis::MapsbookingV1alpha::TicketingVerticalSpecificData]
        attr_accessor :ticketing_vertical_specific_data
      
        # Content fields specific to Tours and Activities. Each element in the repeated
        # field should be independent to allow separate rendering (e.g. as a bullet
        # point).
        # Populating ToursAndActivitiesContent is strongly recommended for tours and
        # activities, but not strictly required. All fields support both plain-text
        # and HTML-like text for basic formatting. Supported HTML-like formatting tags:
        # Phrase tags: <br>, <strong>, <em>, <i>:
        # Only the three tags mentioned above are supported. <br> can be used to
        # break lines in paragraphs, and <strong>/<em>/<i> can be used to highlight
        # an important text. Any other phrase tags will be ignored.
        # All other tags and custom styles are not allowed and will be removed. Any
        # URLs, anchors, and links will be stripped, and will never be displayed to
        # end-users.
        # Important notes:
        # * Don't duplicate data already supplied in `highlights`, `exclusion` and
        # other, more specific, fields in the service description.
        # * Avoid using other tags except for the supported ones mentioned above,
        # because the contents within unsupported tags will be stripped, and may
        # lead to an undesirable user experience.
        # Corresponds to the JSON property `toursAndActivitiesContent`
        # @return [Google::Apis::MapsbookingV1alpha::ToursAndActivitiesContent]
        attr_accessor :tours_and_activities_content
      
        # The predefined type of this service. (optional)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Rules related to joining the waitlist.
        # Corresponds to the JSON property `waitlistRules`
        # @return [Google::Apis::MapsbookingV1alpha::WaitlistRules]
        attr_accessor :waitlist_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_link = args[:action_link] if args.key?(:action_link)
          @deposit = args[:deposit] if args.key?(:deposit)
          @description = args[:description] if args.key?(:description)
          @form = args[:form] if args.key?(:form)
          @home_service_data = args[:home_service_data] if args.key?(:home_service_data)
          @intake_form = args[:intake_form] if args.key?(:intake_form)
          @integration_type = args[:integration_type] if args.key?(:integration_type)
          @localized_description = args[:localized_description] if args.key?(:localized_description)
          @localized_service_name = args[:localized_service_name] if args.key?(:localized_service_name)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @no_show_fee = args[:no_show_fee] if args.key?(:no_show_fee)
          @payment_option_id = args[:payment_option_id] if args.key?(:payment_option_id)
          @per_order_fee = args[:per_order_fee] if args.key?(:per_order_fee)
          @per_ticket_intake_form = args[:per_ticket_intake_form] if args.key?(:per_ticket_intake_form)
          @prepayment_type = args[:prepayment_type] if args.key?(:prepayment_type)
          @price = args[:price] if args.key?(:price)
          @price_interpretation = args[:price_interpretation] if args.key?(:price_interpretation)
          @rating = args[:rating] if args.key?(:rating)
          @related_media = args[:related_media] if args.key?(:related_media)
          @require_credit_card = args[:require_credit_card] if args.key?(:require_credit_card)
          @rules = args[:rules] if args.key?(:rules)
          @service_attribute_value_id = args[:service_attribute_value_id] if args.key?(:service_attribute_value_id)
          @service_name = args[:service_name] if args.key?(:service_name)
          @tax_rate = args[:tax_rate] if args.key?(:tax_rate)
          @ticket_type = args[:ticket_type] if args.key?(:ticket_type)
          @ticketing_vertical_specific_data = args[:ticketing_vertical_specific_data] if args.key?(:ticketing_vertical_specific_data)
          @tours_and_activities_content = args[:tours_and_activities_content] if args.key?(:tours_and_activities_content)
          @type = args[:type] if args.key?(:type)
          @waitlist_rules = args[:waitlist_rules] if args.key?(:waitlist_rules)
        end
      end
      
      # Service attributes are partner-defined categories that describe the Services
      # for a Merchant. For example, a bank may define an "Account Type"
      # service attribute with possible values of "Personal" and "Business", while a
      # hair salon may define a "Service Type" service attribute with possible
      # values of "Haircut", "Color", and "Style".
      class ServiceAttribute
        include Google::Apis::Core::Hashable
      
        # An identifier that uniquely identifies this service attribute among others
        # for the same merchant, e.g. "account-type".
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # A user-visible name for this attribute, e.g. "Account Type".
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # All possible values for this service attribute.
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Value>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Identifies a particular value of a service attribute to be applied to a
      # Service.
      class ServiceAttributeValueId
        include Google::Apis::Core::Hashable
      
        # ID of an attribute as defined in Merchant.service_attribute, e.g.
        # "service-type".
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # ID of the value for this attribute, e.g. "haircut". Must match a value_id
        # in the service attribute definition.
        # Corresponds to the JSON property `valueId`
        # @return [String]
        attr_accessor :value_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @value_id = args[:value_id] if args.key?(:value_id)
        end
      end
      
      # A list of availability and who/when they should be applied to.
      class ServiceAvailability
        include Google::Apis::Core::Hashable
      
        # The new list of availability.
        # Corresponds to the JSON property `availability`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Availability>]
        attr_accessor :availability
      
        # Setting duration further restricts the scope of the update to just the
        # availability with matching duration.
        # Corresponds to the JSON property `durationRestrict`
        # @return [String]
        attr_accessor :duration_restrict
      
        # Setting end_time_restrict while leaving start_time_restrict unset
        # is interpreted to mean all time up to the end_time_restrict.
        # Corresponds to the JSON property `endTimeRestrict`
        # @return [String]
        attr_accessor :end_time_restrict
      
        # The resource name of the service to apply this to.
        # In the format of
        # `partners/`partner_id`/merchants/`merchant_id`/services/`service_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A resource is used to disambiguate availability slots from one another when
        # different staff members, or rooms are part of the service. Multiple slots for
        # the same service and time interval can co-exist when they have different
        # resources.
        # Corresponds to the JSON property `resourcesRestrict`
        # @return [Google::Apis::MapsbookingV1alpha::Resources]
        attr_accessor :resources_restrict
      
        # If provided, we will consider the Availability entities provided to be a
        # complete snapshot from [start_time_restrict, end_time_restrict).
        # That is, all existing availability will be deleted if the following
        # condition holds true:
        # ```
        # start_time_restrict <= availability.start_sec &&
        # availability.start_sec < end_time_restrict
        # ```
        # If a duration message is set, the condition is further restricted:
        # ```
        # availability.duration == duration_restrict
        # ```
        # If a resources_restrict message is set, the condition is further
        # restricted:
        # ```
        # availability.resources.staff_id == resources_restrict.staff_id &&
        # availability.resources.room_id == resources_restrict.room_id
        # ```
        # These fields are typically used to provide a complete update of
        # availability in a given time range.
        # Setting start_time_restrict while leaving end_time_restrict unset
        # is interpreted to mean all time beginning at start_time_restrict.
        # Corresponds to the JSON property `startTimeRestrict`
        # @return [String]
        attr_accessor :start_time_restrict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @duration_restrict = args[:duration_restrict] if args.key?(:duration_restrict)
          @end_time_restrict = args[:end_time_restrict] if args.key?(:end_time_restrict)
          @name = args[:name] if args.key?(:name)
          @resources_restrict = args[:resources_restrict] if args.key?(:resources_restrict)
          @start_time_restrict = args[:start_time_restrict] if args.key?(:start_time_restrict)
        end
      end
      
      # Defines an intake form that customizes the service provided by a merchant.
      class ServiceIntakeForm
        include Google::Apis::Core::Hashable
      
        # Fields that will be displayed to the user.
        # Corresponds to the JSON property `field`
        # @return [Array<Google::Apis::MapsbookingV1alpha::ServiceIntakeFormField>]
        attr_accessor :field
      
        # If true, this form will be shown to first time customers.
        # Deprecated. This functionality is not supported for intake forms.
        # Corresponds to the JSON property `firstTimeCustomers`
        # @return [Boolean]
        attr_accessor :first_time_customers
        alias_method :first_time_customers?, :first_time_customers
      
        # If true, this form will be shown to repeat customers.
        # Deprecated. This functionality is not supported for intake forms.
        # Corresponds to the JSON property `returningCustomers`
        # @return [Boolean]
        attr_accessor :returning_customers
        alias_method :returning_customers?, :returning_customers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @first_time_customers = args[:first_time_customers] if args.key?(:first_time_customers)
          @returning_customers = args[:returning_customers] if args.key?(:returning_customers)
        end
      end
      
      # Defines a field that is included in a ServiceIntakeForm.
      class ServiceIntakeFormField
        include Google::Apis::Core::Hashable
      
        # Additional options provided in addition to the provided values. Only
        # applicable when the field type is LOCATION_SEARCH.
        # E.g. in addition to the provided location list, another available option
        # can be "I will contact supplier later". (optional)
        # Corresponds to the JSON property `additionalOption`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :additional_option
      
        # Indicates whether a custom value is allowed in additional to predefined
        # answers. This is only applicable when the field type is LOCATION_SEARCH.
        # (optional)
        # Corresponds to the JSON property `allowCustomAnswer`
        # @return [Boolean]
        attr_accessor :allow_custom_answer
        alias_method :allow_custom_answer?, :allow_custom_answer
      
        # Set if and only if the field type is MULTIPLE_CHOICE, CHECKBOXES, or
        # DROPDOWN. Used to enumerate possible choices.
        # Corresponds to the JSON property `choiceText`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :choice_text
      
        # A string from an aggregator partner which uniquely identifies a form field.
        # This id should be the same as the id in the corresponding form field
        # answer and must be unique across both the service level and per ticket
        # intake forms. (required)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether an answer to this field is required by a user.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # The text shown to the user for this field. Deprecated, please use
        # `localized_label` instead.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedLabel`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_label
      
        # If this question should only be shown when the user books certain ticket
        # types, this field should be set as the set of applicable ticket type ids.
        # Leave the field empty if the question is always applicable.
        # Corresponds to the JSON property `ticketTypeRestrict`
        # @return [Array<String>]
        attr_accessor :ticket_type_restrict
      
        # The type of this field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Set if and only if the field type is LOCATION_SEARCH. Please use the
        # "location_id" in the "location" field to specify the location value.
        # Corresponds to the JSON property `value`
        # @return [Array<String>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_option = args[:additional_option] if args.key?(:additional_option)
          @allow_custom_answer = args[:allow_custom_answer] if args.key?(:allow_custom_answer)
          @choice_text = args[:choice_text] if args.key?(:choice_text)
          @id = args[:id] if args.key?(:id)
          @is_required = args[:is_required] if args.key?(:is_required)
          @label = args[:label] if args.key?(:label)
          @localized_label = args[:localized_label] if args.key?(:localized_label)
          @ticket_type_restrict = args[:ticket_type_restrict] if args.key?(:ticket_type_restrict)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A tax rate applied when charging the user for a service, and which can be set
      # on either a per merchant, or per service basis.
      class TaxRate
        include Google::Apis::Core::Hashable
      
        # A tax rate in millionths of one percent, effectively giving 6 decimals of
        # precision. For example, if the tax rate is 7.253%, this field should be set
        # to 7253000.
        # If this field is left unset or set to 0, the total price charged to a user
        # for any service provided by this merchant is the exact price specified by
        # Service.price. The service price is assumed to be exempt from or already
        # inclusive of applicable taxes. Taxes will not be shown to the user as a
        # separate line item.
        # If this field is set to any nonzero value, the total price charged to a
        # user for any service provided by this merchant will include the service
        # price plus the tax assessed using the tax rate provided here. Fractions of
        # the smallest currency unit (for example, fractions of one cent) will be
        # rounded using nearest even rounding. Taxes will be shown to the user as a
        # separate line item.
        # Corresponds to the JSON property `microPercent`
        # @return [Fixnum]
        attr_accessor :micro_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @micro_percent = args[:micro_percent] if args.key?(:micro_percent)
        end
      end
      
      # A set of rules and guidelines that are displayed to the
      # user in order to make a booking through Reserve with Google.
      class Terms
        include Google::Apis::Core::Hashable
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedText`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_text
      
        # The text to be displayed to the user.
        # Use localized_text below for new integrations.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optionally, the URL to the Terms and Conditions.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @localized_text = args[:localized_text] if args.key?(:localized_text)
          @text = args[:text] if args.key?(:text)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A possibly-localized text payload. Some Text fields may contain marked-up
      # content.
      class Text
        include Google::Apis::Core::Hashable
      
        # Per-locale text values. Optional.
        # Corresponds to the JSON property `localizedValue`
        # @return [Array<Google::Apis::MapsbookingV1alpha::LocalizedString>]
        attr_accessor :localized_value
      
        # Text value in an unknown locale. Required if and only if `localized_value`
        # is empty. The locale for this value may depend on the partner or service
        # provider -- it should not be assumed to be any specific language.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @localized_value = args[:localized_value] if args.key?(:localized_value)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # TicketType is used to differentiate among tickets with different prices
      # and/or availabilities due to different user types, different
      # service attributes, or different options/add-ons.
      # A ticket is the minimal bookable unit to a service, e.g. a spot on a rafting
      # trip, an admission to a museum, a full day double kayak rental.
      class TicketType
        include Google::Apis::Core::Hashable
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedOptionDescription`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_option_description
      
        # A possibly-localized text payload. Some Text fields may contain marked-up
        # content.
        # Corresponds to the JSON property `localizedShortDescription`
        # @return [Google::Apis::MapsbookingV1alpha::Text]
        attr_accessor :localized_short_description
      
        # Description of any additional option which this ticket type represents, if
        # any. Deprecated, use localized_option_description instead.
        # Corresponds to the JSON property `optionDescription`
        # @return [String]
        attr_accessor :option_description
      
        # Fees that must be paid for each ticket the user purchases.
        # Corresponds to the JSON property `perTicketFee`
        # @return [Google::Apis::MapsbookingV1alpha::PerTicketFee]
        attr_accessor :per_ticket_fee
      
        # The price of a service or a fee.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MapsbookingV1alpha::Price]
        attr_accessor :price
      
        # A short description to this TicketType.
        # This can be user visible, e.g., “adult”, "child", “veteran”, “Row J”, etc.
        # Required, each ticket type should have a description to be user visible.
        # Deprecated, use localized_short_description instead.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # The ticket id is used to differentiate among different ticket types of the
        # same service, and is only expected to be unique within a service.
        # Corresponds to the JSON property `ticketTypeId`
        # @return [String]
        attr_accessor :ticket_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @localized_option_description = args[:localized_option_description] if args.key?(:localized_option_description)
          @localized_short_description = args[:localized_short_description] if args.key?(:localized_short_description)
          @option_description = args[:option_description] if args.key?(:option_description)
          @per_ticket_fee = args[:per_ticket_fee] if args.key?(:per_ticket_fee)
          @price = args[:price] if args.key?(:price)
          @short_description = args[:short_description] if args.key?(:short_description)
          @ticket_type_id = args[:ticket_type_id] if args.key?(:ticket_type_id)
        end
      end
      
      # Additional information unique to the event ticketing vertical.
      class TicketingVerticalSpecificData
        include Google::Apis::Core::Hashable
      
        # A list of entities related to the event. (optional)
        # Corresponds to the JSON property `entity`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Entity>]
        attr_accessor :entity
      
        # The category of the event. Set only when event falls into one of the
        # predefined categories. (optional)
        # Corresponds to the JSON property `eventCategory`
        # @return [String]
        attr_accessor :event_category
      
        # The URL of the event on the partner's website. (optional)
        # Corresponds to the JSON property `eventUrl`
        # @return [String]
        attr_accessor :event_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @event_category = args[:event_category] if args.key?(:event_category)
          @event_url = args[:event_url] if args.key?(:event_url)
        end
      end
      
      # A closed-open time range, i.e. [start_time, end_time).
      class TimeRange
        include Google::Apis::Core::Hashable
      
        # The upper bound of the time range.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The lower bound of the time range.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A configuration for payment-processor tokenization, set up on a per-Merchant
      # basis.
      class TokenizationConfig
        include Google::Apis::Core::Hashable
      
        # Include in the payment token the user's billing information as entered into
        # Google Pay with their FOP (see above).  Leaving the field empty is
        # equivalent to specifying MIN.
        # Corresponds to the JSON property `billingInformationFormat`
        # @return [String]
        attr_accessor :billing_information_format
      
        # A tokenization configuration will typically have one
        # tokenization_parameter whose key is "gateway" and whose value is the
        # name of the processor.
        # The rest of the parameters are dependent on the processor.  See
        # Google Pay's documentation for further information.
        # Braintree example:
        # tokenization_parameter ` key: "gateway" value: "braintree" `
        # tokenization_parameter ` key: "braintree:apiVersion" value: "v1" `
        # tokenization_parameter ` key: "braintree:sdkVersion" value: "2.30.0" `
        # tokenization_parameter ` key: "braintree:merchantId" value: "abcdef" `
        # tokenization_parameter ` key: "braintree:clientKey"
        # value: "production_xxx_yyy" `
        # Stripe example:
        # tokenization_parameter ` key: "gateway" value: "stripe" `
        # tokenization_parameter ` key: "stripe:version" value: "2018-02-28" `
        # tokenization_parameter ` key: "stripe:publishableKey" value: "pk_1234" `
        # Adyen example:
        # tokenization_parameter ` key: "gateway" value: "adyen" `
        # tokenization_parameter ` key: "gatewayMerchantId" value: "yourId" `
        # Corresponds to the JSON property `tokenizationParameter`
        # @return [Hash<String,String>]
        attr_accessor :tokenization_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_information_format = args[:billing_information_format] if args.key?(:billing_information_format)
          @tokenization_parameter = args[:tokenization_parameter] if args.key?(:tokenization_parameter)
        end
      end
      
      # Content fields specific to Tours and Activities. Each element in the repeated
      # field should be independent to allow separate rendering (e.g. as a bullet
      # point).
      # Populating ToursAndActivitiesContent is strongly recommended for tours and
      # activities, but not strictly required. All fields support both plain-text
      # and HTML-like text for basic formatting. Supported HTML-like formatting tags:
      # Phrase tags: <br>, <strong>, <em>, <i>:
      # Only the three tags mentioned above are supported. <br> can be used to
      # break lines in paragraphs, and <strong>/<em>/<i> can be used to highlight
      # an important text. Any other phrase tags will be ignored.
      # All other tags and custom styles are not allowed and will be removed. Any
      # URLs, anchors, and links will be stripped, and will never be displayed to
      # end-users.
      # Important notes:
      # * Don't duplicate data already supplied in `highlights`, `exclusion` and
      # other, more specific, fields in the service description.
      # * Avoid using other tags except for the supported ones mentioned above,
      # because the contents within unsupported tags will be stripped, and may
      # lead to an undesirable user experience.
      class ToursAndActivitiesContent
        include Google::Apis::Core::Hashable
      
        # The user-visible list of exclusions.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :exclusions
      
        # The user-visible list of highlights.
        # Corresponds to the JSON property `highlights`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :highlights
      
        # The user-visible list of inclusions.
        # Corresponds to the JSON property `inclusions`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :inclusions
      
        # The user-visible list of important notes, use for details such as age
        # restrictions or other conditions that make this service unsuitable.
        # Corresponds to the JSON property `mustKnow`
        # @return [Array<Google::Apis::MapsbookingV1alpha::Text>]
        attr_accessor :must_know
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @highlights = args[:highlights] if args.key?(:highlights)
          @inclusions = args[:inclusions] if args.key?(:inclusions)
          @must_know = args[:must_know] if args.key?(:must_know)
        end
      end
      
      # Restricts the users eligible to purchase a payment option.
      class UserPurchaseRestriction
        include Google::Apis::Core::Hashable
      
        # A payment option that can only be purchased by users who have never
        # purchased from the same merchant before.
        # Corresponds to the JSON property `newToMerchant`
        # @return [Boolean]
        attr_accessor :new_to_merchant
        alias_method :new_to_merchant?, :new_to_merchant
      
        # A payment option that can only be purchased by users who have never
        # purchased the same payment option before.
        # Corresponds to the JSON property `newToPaymentOption`
        # @return [Boolean]
        attr_accessor :new_to_payment_option
        alias_method :new_to_payment_option?, :new_to_payment_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_to_merchant = args[:new_to_merchant] if args.key?(:new_to_merchant)
          @new_to_payment_option = args[:new_to_payment_option] if args.key?(:new_to_payment_option)
        end
      end
      
      # Represents a possible value for a particular service attribute.
      class Value
        include Google::Apis::Core::Hashable
      
        # An identifier that uniquely identifies this value among others for
        # this service attribute, e.g. "personal".
        # Corresponds to the JSON property `valueId`
        # @return [String]
        attr_accessor :value_id
      
        # A user-visible name for the value, e.g. "Personal".
        # Corresponds to the JSON property `valueName`
        # @return [String]
        attr_accessor :value_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_id = args[:value_id] if args.key?(:value_id)
          @value_name = args[:value_name] if args.key?(:value_name)
        end
      end
      
      # Rules related to joining the waitlist.
      class WaitlistRules
        include Google::Apis::Core::Hashable
      
        # Required. Must be a positive integer for services providing waitlist
        # functionality. If the service or merchant does not provide waitlist
        # functionality, this must not be populated.
        # Corresponds to the JSON property `maxPartySize`
        # @return [Fixnum]
        attr_accessor :max_party_size
      
        # Required. Must be a positive integer for services providing waitlist
        # functionality. If the service or merchant does not provide waitlist
        # functionality, this must not be populated.
        # Corresponds to the JSON property `minPartySize`
        # @return [Fixnum]
        attr_accessor :min_party_size
      
        # If true, the user will be able to send a free-form additional text request
        # when joining the waitlist for this service.
        # Corresponds to the JSON property `supportsAdditionalRequest`
        # @return [Boolean]
        attr_accessor :supports_additional_request
        alias_method :supports_additional_request?, :supports_additional_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_party_size = args[:max_party_size] if args.key?(:max_party_size)
          @min_party_size = args[:min_party_size] if args.key?(:min_party_size)
          @supports_additional_request = args[:supports_additional_request] if args.key?(:supports_additional_request)
        end
      end
    end
  end
end
