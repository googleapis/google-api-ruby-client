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
    module WebcontentpublisherV1
      
      class CheckFreeAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentPolicyStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCtasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPublicationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NewsletterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrmProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TosAcceptance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckFreeAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_allowed, as: 'isAllowed'
        end
      end
      
      class ContentPolicyStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_info_url, as: 'policyInfoUrl'
          property :state, as: 'state'
        end
      end
      
      class Cta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :newsletter_config, as: 'newsletterConfig', class: Google::Apis::WebcontentpublisherV1::NewsletterConfig, decorator: Google::Apis::WebcontentpublisherV1::NewsletterConfig::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class DomainProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ownership_verified, as: 'ownershipVerified'
          property :url, as: 'url'
        end
      end
      
      class ListCtasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ctas, as: 'ctas', class: Google::Apis::WebcontentpublisherV1::Cta, decorator: Google::Apis::WebcontentpublisherV1::Cta::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPublicationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :publications, as: 'publications', class: Google::Apis::WebcontentpublisherV1::Publication, decorator: Google::Apis::WebcontentpublisherV1::Publication::Representation
      
        end
      end
      
      class NewsletterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_consent_text, as: 'customConsentText'
          property :custom_message, as: 'customMessage'
          property :name_required, as: 'nameRequired'
          property :title, as: 'title'
        end
      end
      
      class Publication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_domains, as: 'additionalDomains', class: Google::Apis::WebcontentpublisherV1::DomainProperty, decorator: Google::Apis::WebcontentpublisherV1::DomainProperty::Representation
      
          property :content_policy_status, as: 'contentPolicyStatus', class: Google::Apis::WebcontentpublisherV1::ContentPolicyStatus, decorator: Google::Apis::WebcontentpublisherV1::ContentPolicyStatus::Representation
      
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :onboarding_state, as: 'onboardingState'
          property :organization_id, as: 'organizationId'
          property :payment_option, as: 'paymentOption'
          property :primary_domain, as: 'primaryDomain', class: Google::Apis::WebcontentpublisherV1::DomainProperty, decorator: Google::Apis::WebcontentpublisherV1::DomainProperty::Representation
      
          collection :products, as: 'products'
          property :publication_id, as: 'publicationId'
          property :publication_privacy_policy_url, as: 'publicationPrivacyPolicyUrl'
          property :publication_tos_url, as: 'publicationTosUrl'
          property :region_code, as: 'regionCode'
          property :rrm_product, as: 'rrmProduct', class: Google::Apis::WebcontentpublisherV1::RrmProduct, decorator: Google::Apis::WebcontentpublisherV1::RrmProduct::Representation
      
          property :sl_product, as: 'slProduct', class: Google::Apis::WebcontentpublisherV1::SlProduct, decorator: Google::Apis::WebcontentpublisherV1::SlProduct::Representation
      
        end
      end
      
      class RrmProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :product_tos_url, as: 'productTosUrl'
          property :tos_acceptance, as: 'tosAcceptance', class: Google::Apis::WebcontentpublisherV1::TosAcceptance, decorator: Google::Apis::WebcontentpublisherV1::TosAcceptance::Representation
      
        end
      end
      
      class SlProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :gcp_project_number, :numeric_string => true, as: 'gcpProjectNumber'
        end
      end
      
      class TosAcceptance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signer, as: 'signer'
          property :signer_title, as: 'signerTitle'
          property :user_accepted, as: 'userAccepted'
        end
      end
    end
  end
end
