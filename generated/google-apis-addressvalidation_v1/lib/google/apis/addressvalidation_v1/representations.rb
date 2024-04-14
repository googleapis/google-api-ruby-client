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
    module AddressvalidationV1
      
      class GoogleGeoTypeViewport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1AddressComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1AddressMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ComponentName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1Geocode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1LanguageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1PlusCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1UspsAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1UspsData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ValidateAddressRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ValidateAddressResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1ValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsAddressvalidationV1Verdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypePostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleGeoTypeViewport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high', class: Google::Apis::AddressvalidationV1::GoogleTypeLatLng, decorator: Google::Apis::AddressvalidationV1::GoogleTypeLatLng::Representation
      
          property :low, as: 'low', class: Google::Apis::AddressvalidationV1::GoogleTypeLatLng, decorator: Google::Apis::AddressvalidationV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleMapsAddressvalidationV1Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_components, as: 'addressComponents', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressComponent, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressComponent::Representation
      
          property :formatted_address, as: 'formattedAddress'
          collection :missing_component_types, as: 'missingComponentTypes'
          property :postal_address, as: 'postalAddress', class: Google::Apis::AddressvalidationV1::GoogleTypePostalAddress, decorator: Google::Apis::AddressvalidationV1::GoogleTypePostalAddress::Representation
      
          collection :unconfirmed_component_types, as: 'unconfirmedComponentTypes'
          collection :unresolved_tokens, as: 'unresolvedTokens'
        end
      end
      
      class GoogleMapsAddressvalidationV1AddressComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_name, as: 'componentName', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ComponentName, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ComponentName::Representation
      
          property :component_type, as: 'componentType'
          property :confirmation_level, as: 'confirmationLevel'
          property :inferred, as: 'inferred'
          property :replaced, as: 'replaced'
          property :spell_corrected, as: 'spellCorrected'
          property :unexpected, as: 'unexpected'
        end
      end
      
      class GoogleMapsAddressvalidationV1AddressMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :po_box, as: 'poBox'
          property :residential, as: 'residential'
        end
      end
      
      class GoogleMapsAddressvalidationV1ComponentName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class GoogleMapsAddressvalidationV1Geocode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounds, as: 'bounds', class: Google::Apis::AddressvalidationV1::GoogleGeoTypeViewport, decorator: Google::Apis::AddressvalidationV1::GoogleGeoTypeViewport::Representation
      
          property :feature_size_meters, as: 'featureSizeMeters'
          property :location, as: 'location', class: Google::Apis::AddressvalidationV1::GoogleTypeLatLng, decorator: Google::Apis::AddressvalidationV1::GoogleTypeLatLng::Representation
      
          property :place_id, as: 'placeId'
          collection :place_types, as: 'placeTypes'
          property :plus_code, as: 'plusCode', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1PlusCode, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1PlusCode::Representation
      
        end
      end
      
      class GoogleMapsAddressvalidationV1LanguageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_english_latin_address, as: 'returnEnglishLatinAddress'
        end
      end
      
      class GoogleMapsAddressvalidationV1PlusCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compound_code, as: 'compoundCode'
          property :global_code, as: 'globalCode'
        end
      end
      
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conclusion, as: 'conclusion'
          property :response_id, as: 'responseId'
        end
      end
      
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleMapsAddressvalidationV1UspsAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :city, as: 'city'
          property :city_state_zip_address_line, as: 'cityStateZipAddressLine'
          property :firm, as: 'firm'
          property :first_address_line, as: 'firstAddressLine'
          property :second_address_line, as: 'secondAddressLine'
          property :state, as: 'state'
          property :urbanization, as: 'urbanization'
          property :zip_code, as: 'zipCode'
          property :zip_code_extension, as: 'zipCodeExtension'
        end
      end
      
      class GoogleMapsAddressvalidationV1UspsData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abbreviated_city, as: 'abbreviatedCity'
          property :address_record_type, as: 'addressRecordType'
          property :carrier_route, as: 'carrierRoute'
          property :carrier_route_indicator, as: 'carrierRouteIndicator'
          property :cass_processed, as: 'cassProcessed'
          property :county, as: 'county'
          property :default_address, as: 'defaultAddress'
          property :delivery_point_check_digit, as: 'deliveryPointCheckDigit'
          property :delivery_point_code, as: 'deliveryPointCode'
          property :dpv_cmra, as: 'dpvCmra'
          property :dpv_confirmation, as: 'dpvConfirmation'
          property :dpv_door_not_accessible, as: 'dpvDoorNotAccessible'
          property :dpv_drop, as: 'dpvDrop'
          property :dpv_enhanced_delivery_code, as: 'dpvEnhancedDeliveryCode'
          property :dpv_footnote, as: 'dpvFootnote'
          property :dpv_no_secure_location, as: 'dpvNoSecureLocation'
          property :dpv_no_stat, as: 'dpvNoStat'
          property :dpv_no_stat_reason_code, as: 'dpvNoStatReasonCode'
          property :dpv_non_delivery_days, as: 'dpvNonDeliveryDays'
          property :dpv_non_delivery_days_values, as: 'dpvNonDeliveryDaysValues'
          property :dpv_pbsa, as: 'dpvPbsa'
          property :dpv_throwback, as: 'dpvThrowback'
          property :dpv_vacant, as: 'dpvVacant'
          property :elot_flag, as: 'elotFlag'
          property :elot_number, as: 'elotNumber'
          property :error_message, as: 'errorMessage'
          property :ews_no_match, as: 'ewsNoMatch'
          property :fips_county_code, as: 'fipsCountyCode'
          property :lacs_link_indicator, as: 'lacsLinkIndicator'
          property :lacs_link_return_code, as: 'lacsLinkReturnCode'
          property :pmb_designator, as: 'pmbDesignator'
          property :pmb_number, as: 'pmbNumber'
          property :po_box_only_postal_code, as: 'poBoxOnlyPostalCode'
          property :post_office_city, as: 'postOfficeCity'
          property :post_office_state, as: 'postOfficeState'
          property :standardized_address, as: 'standardizedAddress', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsAddress, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsAddress::Representation
      
          property :suitelink_footnote, as: 'suitelinkFootnote'
        end
      end
      
      class GoogleMapsAddressvalidationV1ValidateAddressRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::AddressvalidationV1::GoogleTypePostalAddress, decorator: Google::Apis::AddressvalidationV1::GoogleTypePostalAddress::Representation
      
          property :enable_usps_cass, as: 'enableUspsCass'
          property :language_options, as: 'languageOptions', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1LanguageOptions, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1LanguageOptions::Representation
      
          property :previous_response_id, as: 'previousResponseId'
          property :session_token, as: 'sessionToken'
        end
      end
      
      class GoogleMapsAddressvalidationV1ValidateAddressResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_id, as: 'responseId'
          property :result, as: 'result', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidationResult, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidationResult::Representation
      
        end
      end
      
      class GoogleMapsAddressvalidationV1ValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address::Representation
      
          property :english_latin_address, as: 'englishLatinAddress', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address::Representation
      
          property :geocode, as: 'geocode', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Geocode, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Geocode::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressMetadata, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressMetadata::Representation
      
          property :usps_data, as: 'uspsData', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsData, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsData::Representation
      
          property :verdict, as: 'verdict', class: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Verdict, decorator: Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Verdict::Representation
      
        end
      end
      
      class GoogleMapsAddressvalidationV1Verdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_complete, as: 'addressComplete'
          property :geocode_granularity, as: 'geocodeGranularity'
          property :has_inferred_components, as: 'hasInferredComponents'
          property :has_replaced_components, as: 'hasReplacedComponents'
          property :has_unconfirmed_components, as: 'hasUnconfirmedComponents'
          property :input_granularity, as: 'inputGranularity'
          property :validation_granularity, as: 'validationGranularity'
        end
      end
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class GoogleTypePostalAddress
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
    end
  end
end
