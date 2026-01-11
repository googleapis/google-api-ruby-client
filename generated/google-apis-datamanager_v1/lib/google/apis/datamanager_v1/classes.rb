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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DatamanagerV1
      
      # Identifiers and other information used to match the conversion event with
      # other online activity (such as ad clicks).
      class AdIdentifiers
        include Google::Apis::Core::Hashable
      
        # Optional. The click identifier for clicks associated with app events and
        # originating from iOS devices starting with iOS14.
        # Corresponds to the JSON property `gbraid`
        # @return [String]
        attr_accessor :gbraid
      
        # Optional. The Google click ID (gclid) associated with this event.
        # Corresponds to the JSON property `gclid`
        # @return [String]
        attr_accessor :gclid
      
        # Information about the device being used (if any) when the event happened.
        # Corresponds to the JSON property `landingPageDeviceInfo`
        # @return [Google::Apis::DatamanagerV1::DeviceInfo]
        attr_accessor :landing_page_device_info
      
        # Optional. Session attributes for event attribution and modeling.
        # Corresponds to the JSON property `sessionAttributes`
        # @return [String]
        attr_accessor :session_attributes
      
        # Optional. The click identifier for clicks associated with web events and
        # originating from iOS devices starting with iOS14.
        # Corresponds to the JSON property `wbraid`
        # @return [String]
        attr_accessor :wbraid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gbraid = args[:gbraid] if args.key?(:gbraid)
          @gclid = args[:gclid] if args.key?(:gclid)
          @landing_page_device_info = args[:landing_page_device_info] if args.key?(:landing_page_device_info)
          @session_attributes = args[:session_attributes] if args.key?(:session_attributes)
          @wbraid = args[:wbraid] if args.key?(:wbraid)
        end
      end
      
      # Address information for the user.
      class AddressInfo
        include Google::Apis::Core::Hashable
      
        # Required. Family (last) name of the user, all lowercase, with no punctuation,
        # no leading or trailing whitespace, and hashed as SHA-256.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Required. Given (first) name of the user, all lowercase, with no punctuation,
        # no leading or trailing whitespace, and hashed as SHA-256.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Required. The postal code of the user's address.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Required. The 2-letter region code in ISO-3166-1 alpha-2 of the user's address.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # The audience member to be operated on.
      class AudienceMember
        include Google::Apis::Core::Hashable
      
        # [Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en)
        # consent settings for the user.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # Optional. Defines which Destination to send the audience member to.
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # Mobile IDs for the audience. At least one mobile ID is required.
        # Corresponds to the JSON property `mobileData`
        # @return [Google::Apis::DatamanagerV1::MobileData]
        attr_accessor :mobile_data
      
        # [PAIR](//support.google.com/admanager/answer/15067908) IDs for the audience.
        # At least one PAIR ID is required.
        # Corresponds to the JSON property `pairData`
        # @return [Google::Apis::DatamanagerV1::PairData]
        attr_accessor :pair_data
      
        # Data that identifies the user. At least one identifier is required.
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @mobile_data = args[:mobile_data] if args.key?(:mobile_data)
          @pair_data = args[:pair_data] if args.key?(:pair_data)
          @user_data = args[:user_data] if args.key?(:user_data)
        end
      end
      
      # A data encryption key wrapped by an AWS KMS key.
      class AwsWrappedKeyInfo
        include Google::Apis::Core::Hashable
      
        # Required. The base64 encoded encrypted data encryption key.
        # Corresponds to the JSON property `encryptedDek`
        # @return [String]
        attr_accessor :encrypted_dek
      
        # Required. The URI of the AWS KMS key used to decrypt the DEK. Should be in the
        # format of `arn:`partition`:kms:`region`:`account_id`:key/`key_id`` or `aws-kms:
        # //arn:`partition`:kms:`region`:`account_id`:key/`key_id``
        # Corresponds to the JSON property `kekUri`
        # @return [String]
        attr_accessor :kek_uri
      
        # Required. The type of algorithm used to encrypt the data.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Required. The Amazon Resource Name of the IAM Role to assume for KMS
        # decryption access. Should be in the format of `arn:`partition`:iam::`
        # account_id`:role/`role_name``
        # Corresponds to the JSON property `roleArn`
        # @return [String]
        attr_accessor :role_arn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_dek = args[:encrypted_dek] if args.key?(:encrypted_dek)
          @kek_uri = args[:kek_uri] if args.key?(:kek_uri)
          @key_type = args[:key_type] if args.key?(:key_type)
          @role_arn = args[:role_arn] if args.key?(:role_arn)
        end
      end
      
      # The cart data associated with the event.
      class CartData
        include Google::Apis::Core::Hashable
      
        # Optional. The list of items associated with the event.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DatamanagerV1::Item>]
        attr_accessor :items
      
        # Optional. The Merchant Center feed label associated with the feed of the items.
        # Corresponds to the JSON property `merchantFeedLabel`
        # @return [String]
        attr_accessor :merchant_feed_label
      
        # Optional. The language code in ISO 639-1 associated with the Merchant Center
        # feed of the items.where your items are uploaded.
        # Corresponds to the JSON property `merchantFeedLanguageCode`
        # @return [String]
        attr_accessor :merchant_feed_language_code
      
        # Optional. The Merchant Center ID associated with the items.
        # Corresponds to the JSON property `merchantId`
        # @return [String]
        attr_accessor :merchant_id
      
        # Optional. The sum of all discounts associated with the transaction.
        # Corresponds to the JSON property `transactionDiscount`
        # @return [Float]
        attr_accessor :transaction_discount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @merchant_feed_label = args[:merchant_feed_label] if args.key?(:merchant_feed_label)
          @merchant_feed_language_code = args[:merchant_feed_language_code] if args.key?(:merchant_feed_language_code)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @transaction_discount = args[:transaction_discount] if args.key?(:transaction_discount)
        end
      end
      
      # [Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en)
      # consent settings for the user.
      class Consent
        include Google::Apis::Core::Hashable
      
        # Optional. Represents if the user consents to ad personalization.
        # Corresponds to the JSON property `adPersonalization`
        # @return [String]
        attr_accessor :ad_personalization
      
        # Optional. Represents if the user consents to ad user data.
        # Corresponds to the JSON property `adUserData`
        # @return [String]
        attr_accessor :ad_user_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_personalization = args[:ad_personalization] if args.key?(:ad_personalization)
          @ad_user_data = args[:ad_user_data] if args.key?(:ad_user_data)
        end
      end
      
      # Custom variable for ads conversions.
      class CustomVariable
        include Google::Apis::Core::Hashable
      
        # Optional. Reference string used to determine which of the Event.
        # destination_references the custom variable should be sent to. If empty, the
        # Event.destination_references will be used.
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # Optional. The value to store for the custom variable.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Optional. The name of the custom variable to set. If the variable is not found
        # for the given destination, it will be ignored.
        # Corresponds to the JSON property `variable`
        # @return [String]
        attr_accessor :variable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @value = args[:value] if args.key?(:value)
          @variable = args[:variable] if args.key?(:variable)
        end
      end
      
      # The Google product you're sending data to. For example, a Google Ads account.
      class Destination
        include Google::Apis::Core::Hashable
      
        # Represents a specific account.
        # Corresponds to the JSON property `linkedAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :linked_account
      
        # Represents a specific account.
        # Corresponds to the JSON property `loginAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :login_account
      
        # Represents a specific account.
        # Corresponds to the JSON property `operatingAccount`
        # @return [Google::Apis::DatamanagerV1::ProductAccount]
        attr_accessor :operating_account
      
        # Required. The object within the product account to ingest into. For example, a
        # Google Ads audience ID, a Display & Video 360 audience ID or a Google Ads
        # conversion action ID.
        # Corresponds to the JSON property `productDestinationId`
        # @return [String]
        attr_accessor :product_destination_id
      
        # Optional. ID for this `Destination` resource, unique within the request. Use
        # to reference this `Destination` in the IngestEventsRequest and
        # IngestAudienceMembersRequest.
        # Corresponds to the JSON property `reference`
        # @return [String]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_account = args[:linked_account] if args.key?(:linked_account)
          @login_account = args[:login_account] if args.key?(:login_account)
          @operating_account = args[:operating_account] if args.key?(:operating_account)
          @product_destination_id = args[:product_destination_id] if args.key?(:product_destination_id)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # Information about the device being used (if any) when the event happened.
      class DeviceInfo
        include Google::Apis::Core::Hashable
      
        # Optional. The IP address of the device for the given context. **Note:** Google
        # Ads does not support IP address matching for end users in the European
        # Economic Area (EEA), United Kingdom (UK), or Switzerland (CH). Add logic to
        # conditionally exclude sharing IP addresses from users from these regions and
        # ensure that you provide users with clear and comprehensive information about
        # the data you collect on your sites, apps, and other properties and get consent
        # where required by law or any applicable Google policies. See the [About
        # offline conversion imports](https://support.google.com/google-ads/answer/
        # 2998031) page for more details.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Optional. The user-agent string of the device for the given context.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # Encryption information for the data being ingested.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # A data encryption key wrapped by an AWS KMS key.
        # Corresponds to the JSON property `awsWrappedKeyInfo`
        # @return [Google::Apis::DatamanagerV1::AwsWrappedKeyInfo]
        attr_accessor :aws_wrapped_key_info
      
        # Information about the Google Cloud Platform wrapped key.
        # Corresponds to the JSON property `gcpWrappedKeyInfo`
        # @return [Google::Apis::DatamanagerV1::GcpWrappedKeyInfo]
        attr_accessor :gcp_wrapped_key_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_wrapped_key_info = args[:aws_wrapped_key_info] if args.key?(:aws_wrapped_key_info)
          @gcp_wrapped_key_info = args[:gcp_wrapped_key_info] if args.key?(:gcp_wrapped_key_info)
        end
      end
      
      # The error count for a given error reason.
      class ErrorCount
        include Google::Apis::Core::Hashable
      
        # The error reason of the failed records.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The count of records that failed to upload for a given reason.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # Error counts for each type of error.
      class ErrorInfo
        include Google::Apis::Core::Hashable
      
        # A list of errors and counts per error reason. May not be populated in all
        # cases.
        # Corresponds to the JSON property `errorCounts`
        # @return [Array<Google::Apis::DatamanagerV1::ErrorCount>]
        attr_accessor :error_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_counts = args[:error_counts] if args.key?(:error_counts)
        end
      end
      
      # An event representing a user interaction with an advertiser's website or app.
      class Event
        include Google::Apis::Core::Hashable
      
        # Identifiers and other information used to match the conversion event with
        # other online activity (such as ad clicks).
        # Corresponds to the JSON property `adIdentifiers`
        # @return [Google::Apis::DatamanagerV1::AdIdentifiers]
        attr_accessor :ad_identifiers
      
        # Optional. A bucket of any [event parameters](https://developers.google.com/
        # analytics/devguides/collection/protocol/ga4/reference/events) to be included
        # within the event that were not already specified using other structured fields.
        # Corresponds to the JSON property `additionalEventParameters`
        # @return [Array<Google::Apis::DatamanagerV1::EventParameter>]
        attr_accessor :additional_event_parameters
      
        # The cart data associated with the event.
        # Corresponds to the JSON property `cartData`
        # @return [Google::Apis::DatamanagerV1::CartData]
        attr_accessor :cart_data
      
        # Optional. A unique identifier for the user instance of a web client for this
        # GA4 web stream.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # [Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en)
        # consent settings for the user.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # Optional. The conversion value associated with the event, for value-based
        # conversions.
        # Corresponds to the JSON property `conversionValue`
        # @return [Float]
        attr_accessor :conversion_value
      
        # Optional. The currency code associated with all monetary values within this
        # event.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # Optional. Additional key/value pair information to send to the conversion
        # containers (conversion action or FL activity).
        # Corresponds to the JSON property `customVariables`
        # @return [Array<Google::Apis::DatamanagerV1::CustomVariable>]
        attr_accessor :custom_variables
      
        # Optional. Reference string used to determine the destination. If empty, the
        # event will be sent to all destinations in the request.
        # Corresponds to the JSON property `destinationReferences`
        # @return [Array<String>]
        attr_accessor :destination_references
      
        # Information about the device being used (if any) when the event happened.
        # Corresponds to the JSON property `eventDeviceInfo`
        # @return [Google::Apis::DatamanagerV1::DeviceInfo]
        attr_accessor :event_device_info
      
        # Optional. The name of the event. Required for GA4 events.
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # Optional. Signal for where the event happened (web, app, in-store, etc.).
        # Corresponds to the JSON property `eventSource`
        # @return [String]
        attr_accessor :event_source
      
        # Required. The time the event occurred.
        # Corresponds to the JSON property `eventTimestamp`
        # @return [String]
        attr_accessor :event_timestamp
      
        # Optional. A list of key/value pairs for experimental fields that may
        # eventually be promoted to be part of the API.
        # Corresponds to the JSON property `experimentalFields`
        # @return [Array<Google::Apis::DatamanagerV1::ExperimentalField>]
        attr_accessor :experimental_fields
      
        # Optional. The last time the event was updated.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        # Optional. The unique identifier for this event. Required for conversions using
        # multiple data sources.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        # Data that identifies the user. At least one identifier is required.
        # Corresponds to the JSON property `userData`
        # @return [Google::Apis::DatamanagerV1::UserData]
        attr_accessor :user_data
      
        # Optional. A unique identifier for a user, as defined by the advertiser.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Advertiser-assessed information about the user at the time that the event
        # happened. See https://support.google.com/google-ads/answer/14007601 for more
        # details.
        # Corresponds to the JSON property `userProperties`
        # @return [Google::Apis::DatamanagerV1::UserProperties]
        attr_accessor :user_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_identifiers = args[:ad_identifiers] if args.key?(:ad_identifiers)
          @additional_event_parameters = args[:additional_event_parameters] if args.key?(:additional_event_parameters)
          @cart_data = args[:cart_data] if args.key?(:cart_data)
          @client_id = args[:client_id] if args.key?(:client_id)
          @consent = args[:consent] if args.key?(:consent)
          @conversion_value = args[:conversion_value] if args.key?(:conversion_value)
          @currency = args[:currency] if args.key?(:currency)
          @custom_variables = args[:custom_variables] if args.key?(:custom_variables)
          @destination_references = args[:destination_references] if args.key?(:destination_references)
          @event_device_info = args[:event_device_info] if args.key?(:event_device_info)
          @event_name = args[:event_name] if args.key?(:event_name)
          @event_source = args[:event_source] if args.key?(:event_source)
          @event_timestamp = args[:event_timestamp] if args.key?(:event_timestamp)
          @experimental_fields = args[:experimental_fields] if args.key?(:experimental_fields)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
          @user_data = args[:user_data] if args.key?(:user_data)
          @user_id = args[:user_id] if args.key?(:user_id)
          @user_properties = args[:user_properties] if args.key?(:user_properties)
        end
      end
      
      # Event parameter for GA4 events.
      class EventParameter
        include Google::Apis::Core::Hashable
      
        # Required. The name of the parameter to use.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Required. The string representation of the value of the parameter to set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Experimental field representing unofficial fields.
      class ExperimentalField
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the field to use.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Optional. The value the field to set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Information about the Google Cloud Platform wrapped key.
      class GcpWrappedKeyInfo
        include Google::Apis::Core::Hashable
      
        # Required. The base64 encoded encrypted data encryption key.
        # Corresponds to the JSON property `encryptedDek`
        # @return [String]
        attr_accessor :encrypted_dek
      
        # Required. Google Cloud Platform [Cloud Key Management Service resource ID](//
        # cloud.google.com/kms/docs/getting-resource-ids). Should be in the format of `
        # projects/`project`/locations/`location`/keyRings/`key_ring`/cryptoKeys/`key``
        # or `gcp-kms://projects/`project`/locations/`location`/keyRings/`key_ring`/
        # cryptoKeys/`key``
        # Corresponds to the JSON property `kekUri`
        # @return [String]
        attr_accessor :kek_uri
      
        # Required. The type of algorithm used to encrypt the data.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Required. The [Workload Identity](//cloud.google.com/iam/docs/workload-
        # identity-federation) pool provider required to use KEK.
        # Corresponds to the JSON property `wipProvider`
        # @return [String]
        attr_accessor :wip_provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_dek = args[:encrypted_dek] if args.key?(:encrypted_dek)
          @kek_uri = args[:kek_uri] if args.key?(:kek_uri)
          @key_type = args[:key_type] if args.key?(:key_type)
          @wip_provider = args[:wip_provider] if args.key?(:wip_provider)
        end
      end
      
      # Request to upload audience members to the provided destinations. Returns an
      # IngestAudienceMembersResponse.
      class IngestAudienceMembersRequest
        include Google::Apis::Core::Hashable
      
        # Required. The list of users to send to the specified destinations. At most
        # 10000 AudienceMember resources can be sent in a single request.
        # Corresponds to the JSON property `audienceMembers`
        # @return [Array<Google::Apis::DatamanagerV1::AudienceMember>]
        attr_accessor :audience_members
      
        # [Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en)
        # consent settings for the user.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # Required. The list of destinations to send the audience members to.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # Optional. Required for UserData uploads. The encoding type of the user
        # identifiers. For hashed user identifiers, this is the encoding type of the
        # hashed string. For encrypted hashed user identifiers, this is the encoding
        # type of the outer encrypted string, but not necessarily the inner hashed
        # string, meaning the inner hashed string could be encoded in a different way
        # than the outer encrypted string. For non `UserData` uploads, this field is
        # ignored.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Encryption information for the data being ingested.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # The terms of service that the user has accepted/rejected.
        # Corresponds to the JSON property `termsOfService`
        # @return [Google::Apis::DatamanagerV1::TermsOfService]
        attr_accessor :terms_of_service
      
        # Optional. For testing purposes. If `true`, the request is validated but not
        # executed. Only errors are returned, not results.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members = args[:audience_members] if args.key?(:audience_members)
          @consent = args[:consent] if args.key?(:consent)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @terms_of_service = args[:terms_of_service] if args.key?(:terms_of_service)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response from the IngestAudienceMembersRequest.
      class IngestAudienceMembersResponse
        include Google::Apis::Core::Hashable
      
        # The auto-generated ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The status of the ingest audience members request.
      class IngestAudienceMembersStatus
        include Google::Apis::Core::Hashable
      
        # The status of the mobile data ingestion to the destination containing stats
        # related to the ingestion.
        # Corresponds to the JSON property `mobileDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestMobileDataStatus]
        attr_accessor :mobile_data_ingestion_status
      
        # The status of the pair data ingestion to the destination containing stats
        # related to the ingestion.
        # Corresponds to the JSON property `pairDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestPairDataStatus]
        attr_accessor :pair_data_ingestion_status
      
        # The status of the user data ingestion to the destination containing stats
        # related to the ingestion.
        # Corresponds to the JSON property `userDataIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestUserDataStatus]
        attr_accessor :user_data_ingestion_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_data_ingestion_status = args[:mobile_data_ingestion_status] if args.key?(:mobile_data_ingestion_status)
          @pair_data_ingestion_status = args[:pair_data_ingestion_status] if args.key?(:pair_data_ingestion_status)
          @user_data_ingestion_status = args[:user_data_ingestion_status] if args.key?(:user_data_ingestion_status)
        end
      end
      
      # Request to upload audience members to the provided destinations. Returns an
      # IngestEventsResponse.
      class IngestEventsRequest
        include Google::Apis::Core::Hashable
      
        # [Digital Markets Act (DMA)](//digital-markets-act.ec.europa.eu/index_en)
        # consent settings for the user.
        # Corresponds to the JSON property `consent`
        # @return [Google::Apis::DatamanagerV1::Consent]
        attr_accessor :consent
      
        # Required. The list of destinations to send the events to.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # Optional. Required for UserData uploads. The encoding type of the user
        # identifiers. For hashed user identifiers, this is the encoding type of the
        # hashed string. For encrypted hashed user identifiers, this is the encoding
        # type of the outer encrypted string, but not necessarily the inner hashed
        # string, meaning the inner hashed string could be encoded in a different way
        # than the outer encrypted string. For non `UserData` uploads, this field is
        # ignored.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Encryption information for the data being ingested.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Required. The list of events to send to the specified destinations. At most
        # 2000 Event resources can be sent in a single request.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::DatamanagerV1::Event>]
        attr_accessor :events
      
        # Optional. For testing purposes. If `true`, the request is validated but not
        # executed. Only errors are returned, not results.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @events = args[:events] if args.key?(:events)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response from the IngestEventsRequest.
      class IngestEventsResponse
        include Google::Apis::Core::Hashable
      
        # The auto-generated ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The status of the events ingestion to the destination.
      class IngestEventsStatus
        include Google::Apis::Core::Hashable
      
        # The total count of events sent in the upload request. Includes all events in
        # the request, regardless of whether they were successfully ingested or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # The status of the mobile data ingestion to the destination containing stats
      # related to the ingestion.
      class IngestMobileDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of mobile ids sent in the upload request for the destination.
        # Includes all mobile ids in the request, regardless of whether they were
        # successfully ingested or not.
        # Corresponds to the JSON property `mobileIdCount`
        # @return [Fixnum]
        attr_accessor :mobile_id_count
      
        # The total count of audience members sent in the upload request for the
        # destination. Includes all audience members in the request, regardless of
        # whether they were successfully ingested or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_id_count = args[:mobile_id_count] if args.key?(:mobile_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # The status of the pair data ingestion to the destination containing stats
      # related to the ingestion.
      class IngestPairDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of pair ids sent in the upload request for the destination.
        # Includes all pair ids in the request, regardless of whether they were
        # successfully ingested or not.
        # Corresponds to the JSON property `pairIdCount`
        # @return [Fixnum]
        attr_accessor :pair_id_count
      
        # The total count of audience members sent in the upload request for the
        # destination. Includes all audience members in the request, regardless of
        # whether they were successfully ingested or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_id_count = args[:pair_id_count] if args.key?(:pair_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # The status of the user data ingestion to the destination containing stats
      # related to the ingestion.
      class IngestUserDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of audience members sent in the upload request for the
        # destination. Includes all audience members in the request, regardless of
        # whether they were successfully ingested or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # The match rate range of the upload.
        # Corresponds to the JSON property `uploadMatchRateRange`
        # @return [String]
        attr_accessor :upload_match_rate_range
      
        # The total count of user identifiers sent in the upload request for the
        # destination. Includes all user identifiers in the request, regardless of
        # whether they were successfully ingested or not.
        # Corresponds to the JSON property `userIdentifierCount`
        # @return [Fixnum]
        attr_accessor :user_identifier_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @upload_match_rate_range = args[:upload_match_rate_range] if args.key?(:upload_match_rate_range)
          @user_identifier_count = args[:user_identifier_count] if args.key?(:user_identifier_count)
        end
      end
      
      # Represents an item in the cart associated with the event.
      class Item
        include Google::Apis::Core::Hashable
      
        # Optional. A bucket of any [event parameters related to an item](https://
        # developers.google.com/analytics/devguides/collection/protocol/ga4/reference/
        # events) to be included within the event that were not already specified using
        # other structured fields.
        # Corresponds to the JSON property `additionalItemParameters`
        # @return [Array<Google::Apis::DatamanagerV1::ItemParameter>]
        attr_accessor :additional_item_parameters
      
        # Optional. A unique identifier to reference the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Optional. The product ID within the Merchant Center account.
        # Corresponds to the JSON property `merchantProductId`
        # @return [String]
        attr_accessor :merchant_product_id
      
        # Optional. The number of this item associated with the event.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Optional. The unit price excluding tax, shipping, and any transaction level
        # discounts.
        # Corresponds to the JSON property `unitPrice`
        # @return [Float]
        attr_accessor :unit_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_item_parameters = args[:additional_item_parameters] if args.key?(:additional_item_parameters)
          @item_id = args[:item_id] if args.key?(:item_id)
          @merchant_product_id = args[:merchant_product_id] if args.key?(:merchant_product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @unit_price = args[:unit_price] if args.key?(:unit_price)
        end
      end
      
      # A bucket of any [event parameters related to an item](https://developers.
      # google.com/analytics/devguides/collection/protocol/ga4/reference/events) to be
      # included within the event that were not already specified using other
      # structured fields.
      class ItemParameter
        include Google::Apis::Core::Hashable
      
        # Required. The name of the parameter to use.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Required. The string representation of the value of the parameter to set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Mobile IDs for the audience. At least one mobile ID is required.
      class MobileData
        include Google::Apis::Core::Hashable
      
        # Required. The list of mobile device IDs (advertising ID/IDFA). At most 10 `
        # mobileIds` can be provided in a single AudienceMember.
        # Corresponds to the JSON property `mobileIds`
        # @return [Array<String>]
        attr_accessor :mobile_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_ids = args[:mobile_ids] if args.key?(:mobile_ids)
        end
      end
      
      # [PAIR](//support.google.com/admanager/answer/15067908) IDs for the audience.
      # At least one PAIR ID is required.
      class PairData
        include Google::Apis::Core::Hashable
      
        # Required. Cleanroom-provided PII data, hashed with SHA256, and encrypted with
        # an EC commutative cipher using publisher key for the [PAIR]((//support.google.
        # com/admanager/answer/15067908)) user list. At most 10 `pairIds` can be
        # provided in a single AudienceMember.
        # Corresponds to the JSON property `pairIds`
        # @return [Array<String>]
        attr_accessor :pair_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_ids = args[:pair_ids] if args.key?(:pair_ids)
        end
      end
      
      # Represents a specific account.
      class ProductAccount
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the account. For example, your Google Ads account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional. The type of the account. For example, `GOOGLE_ADS`. Either `
        # account_type` or the deprecated `product` is required. If both are set, the
        # values must match.
        # Corresponds to the JSON property `accountType`
        # @return [String]
        attr_accessor :account_type
      
        # Deprecated. Use `account_type` instead.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_type = args[:account_type] if args.key?(:account_type)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # Request to remove users from an audience in the provided destinations. Returns
      # a RemoveAudienceMembersResponse.
      class RemoveAudienceMembersRequest
        include Google::Apis::Core::Hashable
      
        # Required. The list of users to remove.
        # Corresponds to the JSON property `audienceMembers`
        # @return [Array<Google::Apis::DatamanagerV1::AudienceMember>]
        attr_accessor :audience_members
      
        # Required. The list of destinations to remove the users from.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::DatamanagerV1::Destination>]
        attr_accessor :destinations
      
        # Optional. Required for UserData uploads. The encoding type of the user
        # identifiers. Applies to only the outer encoding for encrypted user identifiers.
        # For non `UserData` uploads, this field is ignored.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Encryption information for the data being ingested.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::DatamanagerV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Optional. For testing purposes. If `true`, the request is validated but not
        # executed. Only errors are returned, not results.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members = args[:audience_members] if args.key?(:audience_members)
          @destinations = args[:destinations] if args.key?(:destinations)
          @encoding = args[:encoding] if args.key?(:encoding)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response from the RemoveAudienceMembersRequest.
      class RemoveAudienceMembersResponse
        include Google::Apis::Core::Hashable
      
        # The auto-generated ID of the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The status of the remove audience members request.
      class RemoveAudienceMembersStatus
        include Google::Apis::Core::Hashable
      
        # The status of the mobile data removal from the destination.
        # Corresponds to the JSON property `mobileDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveMobileDataStatus]
        attr_accessor :mobile_data_removal_status
      
        # The status of the pair data removal from the destination.
        # Corresponds to the JSON property `pairDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemovePairDataStatus]
        attr_accessor :pair_data_removal_status
      
        # The status of the user data removal from the destination.
        # Corresponds to the JSON property `userDataRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveUserDataStatus]
        attr_accessor :user_data_removal_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_data_removal_status = args[:mobile_data_removal_status] if args.key?(:mobile_data_removal_status)
          @pair_data_removal_status = args[:pair_data_removal_status] if args.key?(:pair_data_removal_status)
          @user_data_removal_status = args[:user_data_removal_status] if args.key?(:user_data_removal_status)
        end
      end
      
      # The status of the mobile data removal from the destination.
      class RemoveMobileDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of mobile Ids sent in the removal request. Includes all mobile
        # ids in the request, regardless of whether they were successfully removed or
        # not.
        # Corresponds to the JSON property `mobileIdCount`
        # @return [Fixnum]
        attr_accessor :mobile_id_count
      
        # The total count of audience members sent in the removal request. Includes all
        # audience members in the request, regardless of whether they were successfully
        # removed or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_id_count = args[:mobile_id_count] if args.key?(:mobile_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # The status of the pair data removal from the destination.
      class RemovePairDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of pair ids sent in the removal request. Includes all pair ids
        # in the request, regardless of whether they were successfully removed or not.
        # Corresponds to the JSON property `pairIdCount`
        # @return [Fixnum]
        attr_accessor :pair_id_count
      
        # The total count of audience members sent in the removal request. Includes all
        # audience members in the request, regardless of whether they were successfully
        # removed or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pair_id_count = args[:pair_id_count] if args.key?(:pair_id_count)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # The status of the user data removal from the destination.
      class RemoveUserDataStatus
        include Google::Apis::Core::Hashable
      
        # The total count of audience members sent in the removal request. Includes all
        # audience members in the request, regardless of whether they were successfully
        # removed or not.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        # The total count of user identifiers sent in the removal request. Includes all
        # user identifiers in the request, regardless of whether they were successfully
        # removed or not.
        # Corresponds to the JSON property `userIdentifierCount`
        # @return [Fixnum]
        attr_accessor :user_identifier_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record_count = args[:record_count] if args.key?(:record_count)
          @user_identifier_count = args[:user_identifier_count] if args.key?(:user_identifier_count)
        end
      end
      
      # A request status per destination.
      class RequestStatusPerDestination
        include Google::Apis::Core::Hashable
      
        # The status of the ingest audience members request.
        # Corresponds to the JSON property `audienceMembersIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestAudienceMembersStatus]
        attr_accessor :audience_members_ingestion_status
      
        # The status of the remove audience members request.
        # Corresponds to the JSON property `audienceMembersRemovalStatus`
        # @return [Google::Apis::DatamanagerV1::RemoveAudienceMembersStatus]
        attr_accessor :audience_members_removal_status
      
        # The Google product you're sending data to. For example, a Google Ads account.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::DatamanagerV1::Destination]
        attr_accessor :destination
      
        # Error counts for each type of error.
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::DatamanagerV1::ErrorInfo]
        attr_accessor :error_info
      
        # The status of the events ingestion to the destination.
        # Corresponds to the JSON property `eventsIngestionStatus`
        # @return [Google::Apis::DatamanagerV1::IngestEventsStatus]
        attr_accessor :events_ingestion_status
      
        # The request status of the destination.
        # Corresponds to the JSON property `requestStatus`
        # @return [String]
        attr_accessor :request_status
      
        # Warning counts for each type of warning.
        # Corresponds to the JSON property `warningInfo`
        # @return [Google::Apis::DatamanagerV1::WarningInfo]
        attr_accessor :warning_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_members_ingestion_status = args[:audience_members_ingestion_status] if args.key?(:audience_members_ingestion_status)
          @audience_members_removal_status = args[:audience_members_removal_status] if args.key?(:audience_members_removal_status)
          @destination = args[:destination] if args.key?(:destination)
          @error_info = args[:error_info] if args.key?(:error_info)
          @events_ingestion_status = args[:events_ingestion_status] if args.key?(:events_ingestion_status)
          @request_status = args[:request_status] if args.key?(:request_status)
          @warning_info = args[:warning_info] if args.key?(:warning_info)
        end
      end
      
      # Response from the RetrieveRequestStatusRequest.
      class RetrieveRequestStatusResponse
        include Google::Apis::Core::Hashable
      
        # A list of request statuses per destination. The order of the statuses matches
        # the order of the destinations in the original request.
        # Corresponds to the JSON property `requestStatusPerDestination`
        # @return [Array<Google::Apis::DatamanagerV1::RequestStatusPerDestination>]
        attr_accessor :request_status_per_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_status_per_destination = args[:request_status_per_destination] if args.key?(:request_status_per_destination)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # The terms of service that the user has accepted/rejected.
      class TermsOfService
        include Google::Apis::Core::Hashable
      
        # Optional. The Customer Match terms of service: https://support.google.com/
        # adspolicy/answer/6299717. This must be accepted when ingesting UserData or
        # MobileData. This field is not required for Partner Match User list.
        # Corresponds to the JSON property `customerMatchTermsOfServiceStatus`
        # @return [String]
        attr_accessor :customer_match_terms_of_service_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_match_terms_of_service_status = args[:customer_match_terms_of_service_status] if args.key?(:customer_match_terms_of_service_status)
        end
      end
      
      # Data that identifies the user. At least one identifier is required.
      class UserData
        include Google::Apis::Core::Hashable
      
        # Required. The identifiers for the user. It's possible to provide multiple
        # instances of the same type of data (for example, multiple email addresses). To
        # increase the likelihood of a match, provide as many identifiers as possible.
        # At most 10 `userIdentifiers` can be provided in a single AudienceMember or
        # Event.
        # Corresponds to the JSON property `userIdentifiers`
        # @return [Array<Google::Apis::DatamanagerV1::UserIdentifier>]
        attr_accessor :user_identifiers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_identifiers = args[:user_identifiers] if args.key?(:user_identifiers)
        end
      end
      
      # A single identifier for the user.
      class UserIdentifier
        include Google::Apis::Core::Hashable
      
        # Address information for the user.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::DatamanagerV1::AddressInfo]
        attr_accessor :address
      
        # Hashed email address using SHA-256 hash function after normalization.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Hashed phone number using SHA-256 hash function after normalization (E164
        # standard).
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @email_address = args[:email_address] if args.key?(:email_address)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Advertiser-assessed information about the user at the time that the event
      # happened. See https://support.google.com/google-ads/answer/14007601 for more
      # details.
      class UserProperties
        include Google::Apis::Core::Hashable
      
        # Optional. A bucket of any additional [user properties](https://developers.
        # google.com/analytics/devguides/collection/protocol/ga4/user-properties) for
        # the user associated with this event.
        # Corresponds to the JSON property `additionalUserProperties`
        # @return [Array<Google::Apis::DatamanagerV1::UserProperty>]
        attr_accessor :additional_user_properties
      
        # Optional. Type of the customer associated with the event.
        # Corresponds to the JSON property `customerType`
        # @return [String]
        attr_accessor :customer_type
      
        # Optional. The advertiser-assessed value of the customer.
        # Corresponds to the JSON property `customerValueBucket`
        # @return [String]
        attr_accessor :customer_value_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_user_properties = args[:additional_user_properties] if args.key?(:additional_user_properties)
          @customer_type = args[:customer_type] if args.key?(:customer_type)
          @customer_value_bucket = args[:customer_value_bucket] if args.key?(:customer_value_bucket)
        end
      end
      
      # A bucket of any additional [user properties](https://developers.google.com/
      # analytics/devguides/collection/protocol/ga4/user-properties) for the user
      # associated with this event.
      class UserProperty
        include Google::Apis::Core::Hashable
      
        # Required. The name of the user property to use.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        # Required. The string representation of the value of the user property to use.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_name = args[:property_name] if args.key?(:property_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The warning count for a given warning reason.
      class WarningCount
        include Google::Apis::Core::Hashable
      
        # The warning reason.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The count of records that have a warning.
        # Corresponds to the JSON property `recordCount`
        # @return [Fixnum]
        attr_accessor :record_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @record_count = args[:record_count] if args.key?(:record_count)
        end
      end
      
      # Warning counts for each type of warning.
      class WarningInfo
        include Google::Apis::Core::Hashable
      
        # A list of warnings and counts per warning reason.
        # Corresponds to the JSON property `warningCounts`
        # @return [Array<Google::Apis::DatamanagerV1::WarningCount>]
        attr_accessor :warning_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warning_counts = args[:warning_counts] if args.key?(:warning_counts)
        end
      end
    end
  end
end
