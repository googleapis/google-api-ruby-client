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
    module MybusinessverificationsV1
      
      class AddressVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplyWithGuidelines
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateVerificationTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateVerificationTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVerificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResolveOwnershipConflict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceBusinessContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Verification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerificationOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerificationToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Verify
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoiceOfMerchantState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaitForVoiceOfMerchant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessverificationsV1::PostalAddress, decorator: Google::Apis::MybusinessverificationsV1::PostalAddress::Representation
      
          property :business, as: 'business'
          property :expected_delivery_days_region, as: 'expectedDeliveryDaysRegion'
        end
      end
      
      class CompleteVerificationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pin, as: 'pin'
        end
      end
      
      class CompleteVerificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessverificationsV1::Verification, decorator: Google::Apis::MybusinessverificationsV1::Verification::Representation
      
        end
      end
      
      class ComplyWithGuidelines
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recommendation_reason, as: 'recommendationReason'
        end
      end
      
      class EmailVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :is_user_name_editable, as: 'isUserNameEditable'
          property :user, as: 'user'
        end
      end
      
      class FetchVerificationOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::MybusinessverificationsV1::ServiceBusinessContext, decorator: Google::Apis::MybusinessverificationsV1::ServiceBusinessContext::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class FetchVerificationOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::MybusinessverificationsV1::VerificationOption, decorator: Google::Apis::MybusinessverificationsV1::VerificationOption::Representation
      
        end
      end
      
      class GenerateVerificationTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::MybusinessverificationsV1::Location, decorator: Google::Apis::MybusinessverificationsV1::Location::Representation
      
        end
      end
      
      class GenerateVerificationTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token, as: 'token', class: Google::Apis::MybusinessverificationsV1::VerificationToken, decorator: Google::Apis::MybusinessverificationsV1::VerificationToken::Representation
      
        end
      end
      
      class ListVerificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :verifications, as: 'verifications', class: Google::Apis::MybusinessverificationsV1::Verification, decorator: Google::Apis::MybusinessverificationsV1::Verification::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessverificationsV1::PostalAddress, decorator: Google::Apis::MybusinessverificationsV1::PostalAddress::Representation
      
          property :name, as: 'name'
          property :primary_category_id, as: 'primaryCategoryId'
          property :primary_phone, as: 'primaryPhone'
          property :website_uri, as: 'websiteUri'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class ResolveOwnershipConflict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ServiceBusinessContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessverificationsV1::PostalAddress, decorator: Google::Apis::MybusinessverificationsV1::PostalAddress::Representation
      
        end
      end
      
      class Verification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :announcement, as: 'announcement'
          property :create_time, as: 'createTime'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class VerificationOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_data, as: 'addressData', class: Google::Apis::MybusinessverificationsV1::AddressVerificationData, decorator: Google::Apis::MybusinessverificationsV1::AddressVerificationData::Representation
      
          property :announcement, as: 'announcement'
          property :email_data, as: 'emailData', class: Google::Apis::MybusinessverificationsV1::EmailVerificationData, decorator: Google::Apis::MybusinessverificationsV1::EmailVerificationData::Representation
      
          property :phone_number, as: 'phoneNumber'
          property :verification_method, as: 'verificationMethod'
        end
      end
      
      class VerificationToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_string, as: 'tokenString'
        end
      end
      
      class Verify
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_pending_verification, as: 'hasPendingVerification'
        end
      end
      
      class VerifyLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::MybusinessverificationsV1::ServiceBusinessContext, decorator: Google::Apis::MybusinessverificationsV1::ServiceBusinessContext::Representation
      
          property :email_address, as: 'emailAddress'
          property :language_code, as: 'languageCode'
          property :mailer_contact, as: 'mailerContact'
          property :method_prop, as: 'method'
          property :phone_number, as: 'phoneNumber'
          property :token, as: 'token', class: Google::Apis::MybusinessverificationsV1::VerificationToken, decorator: Google::Apis::MybusinessverificationsV1::VerificationToken::Representation
      
        end
      end
      
      class VerifyLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessverificationsV1::Verification, decorator: Google::Apis::MybusinessverificationsV1::Verification::Representation
      
        end
      end
      
      class VoiceOfMerchantState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comply_with_guidelines, as: 'complyWithGuidelines', class: Google::Apis::MybusinessverificationsV1::ComplyWithGuidelines, decorator: Google::Apis::MybusinessverificationsV1::ComplyWithGuidelines::Representation
      
          property :has_business_authority, as: 'hasBusinessAuthority'
          property :has_voice_of_merchant, as: 'hasVoiceOfMerchant'
          property :resolve_ownership_conflict, as: 'resolveOwnershipConflict', class: Google::Apis::MybusinessverificationsV1::ResolveOwnershipConflict, decorator: Google::Apis::MybusinessverificationsV1::ResolveOwnershipConflict::Representation
      
          property :verify, as: 'verify', class: Google::Apis::MybusinessverificationsV1::Verify, decorator: Google::Apis::MybusinessverificationsV1::Verify::Representation
      
          property :wait_for_voice_of_merchant, as: 'waitForVoiceOfMerchant', class: Google::Apis::MybusinessverificationsV1::WaitForVoiceOfMerchant, decorator: Google::Apis::MybusinessverificationsV1::WaitForVoiceOfMerchant::Representation
      
        end
      end
      
      class WaitForVoiceOfMerchant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
