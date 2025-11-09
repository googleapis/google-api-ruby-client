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
      
      class AdIdentifiers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudienceMember
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsWrappedKeyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CartData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Consent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExperimentalField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpWrappedKeyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestAudienceMembersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestAudienceMembersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestAudienceMembersStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestEventsStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestMobileDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestPairDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestUserDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PairData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProductAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveAudienceMembersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveAudienceMembersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveAudienceMembersStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveMobileDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemovePairDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveUserDataStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestStatusPerDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveRequestStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TermsOfService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarningCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WarningInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdIdentifiers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gbraid, as: 'gbraid'
          property :gclid, as: 'gclid'
          property :landing_page_device_info, as: 'landingPageDeviceInfo', class: Google::Apis::DatamanagerV1::DeviceInfo, decorator: Google::Apis::DatamanagerV1::DeviceInfo::Representation
      
          property :session_attributes, as: 'sessionAttributes'
          property :wbraid, as: 'wbraid'
        end
      end
      
      class AddressInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
          property :postal_code, as: 'postalCode'
          property :region_code, as: 'regionCode'
        end
      end
      
      class AudienceMember
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent', class: Google::Apis::DatamanagerV1::Consent, decorator: Google::Apis::DatamanagerV1::Consent::Representation
      
          collection :destination_references, as: 'destinationReferences'
          property :mobile_data, as: 'mobileData', class: Google::Apis::DatamanagerV1::MobileData, decorator: Google::Apis::DatamanagerV1::MobileData::Representation
      
          property :pair_data, as: 'pairData', class: Google::Apis::DatamanagerV1::PairData, decorator: Google::Apis::DatamanagerV1::PairData::Representation
      
          property :user_data, as: 'userData', class: Google::Apis::DatamanagerV1::UserData, decorator: Google::Apis::DatamanagerV1::UserData::Representation
      
        end
      end
      
      class AwsWrappedKeyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encrypted_dek, as: 'encryptedDek'
          property :kek_uri, as: 'kekUri'
          property :key_type, as: 'keyType'
          property :role_arn, as: 'roleArn'
        end
      end
      
      class CartData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DatamanagerV1::Item, decorator: Google::Apis::DatamanagerV1::Item::Representation
      
          property :merchant_feed_label, as: 'merchantFeedLabel'
          property :merchant_feed_language_code, as: 'merchantFeedLanguageCode'
          property :merchant_id, as: 'merchantId'
          property :transaction_discount, as: 'transactionDiscount'
        end
      end
      
      class Consent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_personalization, as: 'adPersonalization'
          property :ad_user_data, as: 'adUserData'
        end
      end
      
      class CustomVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_references, as: 'destinationReferences'
          property :value, as: 'value'
          property :variable, as: 'variable'
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_account, as: 'linkedAccount', class: Google::Apis::DatamanagerV1::ProductAccount, decorator: Google::Apis::DatamanagerV1::ProductAccount::Representation
      
          property :login_account, as: 'loginAccount', class: Google::Apis::DatamanagerV1::ProductAccount, decorator: Google::Apis::DatamanagerV1::ProductAccount::Representation
      
          property :operating_account, as: 'operatingAccount', class: Google::Apis::DatamanagerV1::ProductAccount, decorator: Google::Apis::DatamanagerV1::ProductAccount::Representation
      
          property :product_destination_id, as: 'productDestinationId'
          property :reference, as: 'reference'
        end
      end
      
      class DeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :user_agent, as: 'userAgent'
        end
      end
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_wrapped_key_info, as: 'awsWrappedKeyInfo', class: Google::Apis::DatamanagerV1::AwsWrappedKeyInfo, decorator: Google::Apis::DatamanagerV1::AwsWrappedKeyInfo::Representation
      
          property :gcp_wrapped_key_info, as: 'gcpWrappedKeyInfo', class: Google::Apis::DatamanagerV1::GcpWrappedKeyInfo, decorator: Google::Apis::DatamanagerV1::GcpWrappedKeyInfo::Representation
      
        end
      end
      
      class ErrorCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class ErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_counts, as: 'errorCounts', class: Google::Apis::DatamanagerV1::ErrorCount, decorator: Google::Apis::DatamanagerV1::ErrorCount::Representation
      
        end
      end
      
      class Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_identifiers, as: 'adIdentifiers', class: Google::Apis::DatamanagerV1::AdIdentifiers, decorator: Google::Apis::DatamanagerV1::AdIdentifiers::Representation
      
          collection :additional_event_parameters, as: 'additionalEventParameters', class: Google::Apis::DatamanagerV1::EventParameter, decorator: Google::Apis::DatamanagerV1::EventParameter::Representation
      
          property :cart_data, as: 'cartData', class: Google::Apis::DatamanagerV1::CartData, decorator: Google::Apis::DatamanagerV1::CartData::Representation
      
          property :client_id, as: 'clientId'
          property :consent, as: 'consent', class: Google::Apis::DatamanagerV1::Consent, decorator: Google::Apis::DatamanagerV1::Consent::Representation
      
          property :conversion_value, as: 'conversionValue'
          property :currency, as: 'currency'
          collection :custom_variables, as: 'customVariables', class: Google::Apis::DatamanagerV1::CustomVariable, decorator: Google::Apis::DatamanagerV1::CustomVariable::Representation
      
          collection :destination_references, as: 'destinationReferences'
          property :event_device_info, as: 'eventDeviceInfo', class: Google::Apis::DatamanagerV1::DeviceInfo, decorator: Google::Apis::DatamanagerV1::DeviceInfo::Representation
      
          property :event_name, as: 'eventName'
          property :event_source, as: 'eventSource'
          property :event_timestamp, as: 'eventTimestamp'
          collection :experimental_fields, as: 'experimentalFields', class: Google::Apis::DatamanagerV1::ExperimentalField, decorator: Google::Apis::DatamanagerV1::ExperimentalField::Representation
      
          property :last_updated_timestamp, as: 'lastUpdatedTimestamp'
          property :transaction_id, as: 'transactionId'
          property :user_data, as: 'userData', class: Google::Apis::DatamanagerV1::UserData, decorator: Google::Apis::DatamanagerV1::UserData::Representation
      
          property :user_id, as: 'userId'
          property :user_properties, as: 'userProperties', class: Google::Apis::DatamanagerV1::UserProperties, decorator: Google::Apis::DatamanagerV1::UserProperties::Representation
      
        end
      end
      
      class EventParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_name, as: 'parameterName'
          property :value, as: 'value'
        end
      end
      
      class ExperimentalField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :value, as: 'value'
        end
      end
      
      class GcpWrappedKeyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encrypted_dek, as: 'encryptedDek'
          property :kek_uri, as: 'kekUri'
          property :key_type, as: 'keyType'
          property :wip_provider, as: 'wipProvider'
        end
      end
      
      class IngestAudienceMembersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audience_members, as: 'audienceMembers', class: Google::Apis::DatamanagerV1::AudienceMember, decorator: Google::Apis::DatamanagerV1::AudienceMember::Representation
      
          property :consent, as: 'consent', class: Google::Apis::DatamanagerV1::Consent, decorator: Google::Apis::DatamanagerV1::Consent::Representation
      
          collection :destinations, as: 'destinations', class: Google::Apis::DatamanagerV1::Destination, decorator: Google::Apis::DatamanagerV1::Destination::Representation
      
          property :encoding, as: 'encoding'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::DatamanagerV1::EncryptionInfo, decorator: Google::Apis::DatamanagerV1::EncryptionInfo::Representation
      
          property :terms_of_service, as: 'termsOfService', class: Google::Apis::DatamanagerV1::TermsOfService, decorator: Google::Apis::DatamanagerV1::TermsOfService::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class IngestAudienceMembersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class IngestAudienceMembersStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_data_ingestion_status, as: 'mobileDataIngestionStatus', class: Google::Apis::DatamanagerV1::IngestMobileDataStatus, decorator: Google::Apis::DatamanagerV1::IngestMobileDataStatus::Representation
      
          property :pair_data_ingestion_status, as: 'pairDataIngestionStatus', class: Google::Apis::DatamanagerV1::IngestPairDataStatus, decorator: Google::Apis::DatamanagerV1::IngestPairDataStatus::Representation
      
          property :user_data_ingestion_status, as: 'userDataIngestionStatus', class: Google::Apis::DatamanagerV1::IngestUserDataStatus, decorator: Google::Apis::DatamanagerV1::IngestUserDataStatus::Representation
      
        end
      end
      
      class IngestEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent', class: Google::Apis::DatamanagerV1::Consent, decorator: Google::Apis::DatamanagerV1::Consent::Representation
      
          collection :destinations, as: 'destinations', class: Google::Apis::DatamanagerV1::Destination, decorator: Google::Apis::DatamanagerV1::Destination::Representation
      
          property :encoding, as: 'encoding'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::DatamanagerV1::EncryptionInfo, decorator: Google::Apis::DatamanagerV1::EncryptionInfo::Representation
      
          collection :events, as: 'events', class: Google::Apis::DatamanagerV1::Event, decorator: Google::Apis::DatamanagerV1::Event::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class IngestEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class IngestEventsStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class IngestMobileDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_id_count, :numeric_string => true, as: 'mobileIdCount'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class IngestPairDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pair_id_count, :numeric_string => true, as: 'pairIdCount'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class IngestUserDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record_count, :numeric_string => true, as: 'recordCount'
          property :upload_match_rate_range, as: 'uploadMatchRateRange'
          property :user_identifier_count, :numeric_string => true, as: 'userIdentifierCount'
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_item_parameters, as: 'additionalItemParameters', class: Google::Apis::DatamanagerV1::ItemParameter, decorator: Google::Apis::DatamanagerV1::ItemParameter::Representation
      
          property :item_id, as: 'itemId'
          property :merchant_product_id, as: 'merchantProductId'
          property :quantity, :numeric_string => true, as: 'quantity'
          property :unit_price, as: 'unitPrice'
        end
      end
      
      class ItemParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_name, as: 'parameterName'
          property :value, as: 'value'
        end
      end
      
      class MobileData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mobile_ids, as: 'mobileIds'
        end
      end
      
      class PairData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pair_ids, as: 'pairIds'
        end
      end
      
      class ProductAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_type, as: 'accountType'
          property :product, as: 'product'
        end
      end
      
      class RemoveAudienceMembersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audience_members, as: 'audienceMembers', class: Google::Apis::DatamanagerV1::AudienceMember, decorator: Google::Apis::DatamanagerV1::AudienceMember::Representation
      
          collection :destinations, as: 'destinations', class: Google::Apis::DatamanagerV1::Destination, decorator: Google::Apis::DatamanagerV1::Destination::Representation
      
          property :encoding, as: 'encoding'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::DatamanagerV1::EncryptionInfo, decorator: Google::Apis::DatamanagerV1::EncryptionInfo::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class RemoveAudienceMembersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class RemoveAudienceMembersStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_data_removal_status, as: 'mobileDataRemovalStatus', class: Google::Apis::DatamanagerV1::RemoveMobileDataStatus, decorator: Google::Apis::DatamanagerV1::RemoveMobileDataStatus::Representation
      
          property :pair_data_removal_status, as: 'pairDataRemovalStatus', class: Google::Apis::DatamanagerV1::RemovePairDataStatus, decorator: Google::Apis::DatamanagerV1::RemovePairDataStatus::Representation
      
          property :user_data_removal_status, as: 'userDataRemovalStatus', class: Google::Apis::DatamanagerV1::RemoveUserDataStatus, decorator: Google::Apis::DatamanagerV1::RemoveUserDataStatus::Representation
      
        end
      end
      
      class RemoveMobileDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_id_count, :numeric_string => true, as: 'mobileIdCount'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class RemovePairDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pair_id_count, :numeric_string => true, as: 'pairIdCount'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class RemoveUserDataStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :record_count, :numeric_string => true, as: 'recordCount'
          property :user_identifier_count, :numeric_string => true, as: 'userIdentifierCount'
        end
      end
      
      class RequestStatusPerDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience_members_ingestion_status, as: 'audienceMembersIngestionStatus', class: Google::Apis::DatamanagerV1::IngestAudienceMembersStatus, decorator: Google::Apis::DatamanagerV1::IngestAudienceMembersStatus::Representation
      
          property :audience_members_removal_status, as: 'audienceMembersRemovalStatus', class: Google::Apis::DatamanagerV1::RemoveAudienceMembersStatus, decorator: Google::Apis::DatamanagerV1::RemoveAudienceMembersStatus::Representation
      
          property :destination, as: 'destination', class: Google::Apis::DatamanagerV1::Destination, decorator: Google::Apis::DatamanagerV1::Destination::Representation
      
          property :error_info, as: 'errorInfo', class: Google::Apis::DatamanagerV1::ErrorInfo, decorator: Google::Apis::DatamanagerV1::ErrorInfo::Representation
      
          property :events_ingestion_status, as: 'eventsIngestionStatus', class: Google::Apis::DatamanagerV1::IngestEventsStatus, decorator: Google::Apis::DatamanagerV1::IngestEventsStatus::Representation
      
          property :request_status, as: 'requestStatus'
          property :warning_info, as: 'warningInfo', class: Google::Apis::DatamanagerV1::WarningInfo, decorator: Google::Apis::DatamanagerV1::WarningInfo::Representation
      
        end
      end
      
      class RetrieveRequestStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_status_per_destination, as: 'requestStatusPerDestination', class: Google::Apis::DatamanagerV1::RequestStatusPerDestination, decorator: Google::Apis::DatamanagerV1::RequestStatusPerDestination::Representation
      
        end
      end
      
      class TermsOfService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_match_terms_of_service_status, as: 'customerMatchTermsOfServiceStatus'
        end
      end
      
      class UserData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_identifiers, as: 'userIdentifiers', class: Google::Apis::DatamanagerV1::UserIdentifier, decorator: Google::Apis::DatamanagerV1::UserIdentifier::Representation
      
        end
      end
      
      class UserIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::DatamanagerV1::AddressInfo, decorator: Google::Apis::DatamanagerV1::AddressInfo::Representation
      
          property :email_address, as: 'emailAddress'
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class UserProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_user_properties, as: 'additionalUserProperties', class: Google::Apis::DatamanagerV1::UserProperty, decorator: Google::Apis::DatamanagerV1::UserProperty::Representation
      
          property :customer_type, as: 'customerType'
          property :customer_value_bucket, as: 'customerValueBucket'
        end
      end
      
      class UserProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property_name, as: 'propertyName'
          property :value, as: 'value'
        end
      end
      
      class WarningCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :record_count, :numeric_string => true, as: 'recordCount'
        end
      end
      
      class WarningInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warning_counts, as: 'warningCounts', class: Google::Apis::DatamanagerV1::WarningCount, decorator: Google::Apis::DatamanagerV1::WarningCount::Representation
      
        end
      end
    end
  end
end
