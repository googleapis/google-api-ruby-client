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
      
      # Response message for CheckFreeAccess
      class CheckFreeAccessResponse
        include Google::Apis::Core::Hashable
      
        # Output only. True if free access should be allowed, false otherwise.
        # Corresponds to the JSON property `isAllowed`
        # @return [Boolean]
        attr_accessor :is_allowed
        alias_method :is_allowed?, :is_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_allowed = args[:is_allowed] if args.key?(:is_allowed)
        end
      end
      
      # The content policy status of the publication, indicating any violations.
      class ContentPolicyStatus
        include Google::Apis::Core::Hashable
      
        # Output only. URL pointing to more details about the policy violation or status.
        # Corresponds to the JSON property `policyInfoUrl`
        # @return [String]
        attr_accessor :policy_info_url
      
        # Output only. The current policy state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_info_url = args[:policy_info_url] if args.key?(:policy_info_url)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a Call-To-Action (CTA) configuration for a publication.
      class Cta
        include Google::Apis::Core::Hashable
      
        # Required. The user-visible display name of the CTA.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the Cta. Format: organizations/`organization`/
        # publications/`publication`/ctas/`cta`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for newsletter signup calls-to-action (CTAs).
        # Corresponds to the JSON property `newsletterConfig`
        # @return [Google::Apis::WebcontentpublisherV1::NewsletterConfig]
        attr_accessor :newsletter_config
      
        # Output only. The current state of this CTA.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The type of this CTA.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @newsletter_config = args[:newsletter_config] if args.key?(:newsletter_config)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a domain property associated with a publication, typically used to
      # verify ownership and scope access.
      class DomainProperty
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the domain ownership has been verified (e.g., via Google
        # Search Console).
        # Corresponds to the JSON property `ownershipVerified`
        # @return [Boolean]
        attr_accessor :ownership_verified
        alias_method :ownership_verified?, :ownership_verified
      
        # Required. The URL of the domain property (e.g., "https://example.com").
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ownership_verified = args[:ownership_verified] if args.key?(:ownership_verified)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response message for `ListCtas`.
      class ListCtasResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The list of CTAs.
        # Corresponds to the JSON property `ctas`
        # @return [Array<Google::Apis::WebcontentpublisherV1::Cta>]
        attr_accessor :ctas
      
        # Output only. A token to retrieve the next page of results, or empty if there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ctas = args[:ctas] if args.key?(:ctas)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for `ListPublications`.
      class ListPublicationsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token to retrieve the next page of results, or empty if there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The list of publications.
        # Corresponds to the JSON property `publications`
        # @return [Array<Google::Apis::WebcontentpublisherV1::Publication>]
        attr_accessor :publications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @publications = args[:publications] if args.key?(:publications)
        end
      end
      
      # Configuration for newsletter signup calls-to-action (CTAs).
      class NewsletterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Custom consent or disclosure text shown to the user.
        # Corresponds to the JSON property `customConsentText`
        # @return [String]
        attr_accessor :custom_consent_text
      
        # Optional. A custom message displayed to the user in the signup prompt.
        # Corresponds to the JSON property `customMessage`
        # @return [String]
        attr_accessor :custom_message
      
        # Optional. Whether the user is required to provide their name to sign up.
        # Corresponds to the JSON property `nameRequired`
        # @return [Boolean]
        attr_accessor :name_required
        alias_method :name_required?, :name_required
      
        # Required. The title of the newsletter signup prompt.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_consent_text = args[:custom_consent_text] if args.key?(:custom_consent_text)
          @custom_message = args[:custom_message] if args.key?(:custom_message)
          @name_required = args[:name_required] if args.key?(:name_required)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a publisher's publication in Reader Revenue Manager.
      class Publication
        include Google::Apis::Core::Hashable
      
        # Optional. Additional domain properties verified for the publication.
        # Corresponds to the JSON property `additionalDomains`
        # @return [Array<Google::Apis::WebcontentpublisherV1::DomainProperty>]
        attr_accessor :additional_domains
      
        # The content policy status of the publication, indicating any violations.
        # Corresponds to the JSON property `contentPolicyStatus`
        # @return [Google::Apis::WebcontentpublisherV1::ContentPolicyStatus]
        attr_accessor :content_policy_status
      
        # Required. The user-visible display name of the publication.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The primary language of the publication (BCP-47 code, e.g., "en-US").
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Identifier. The resource name of the publication. Format: organizations/`
        # organization`/publications/`publication`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current onboarding state.
        # Corresponds to the JSON property `onboardingState`
        # @return [String]
        attr_accessor :onboarding_state
      
        # Output only. The unique identifier of the organization that owns this
        # publication.
        # Corresponds to the JSON property `organizationId`
        # @return [String]
        attr_accessor :organization_id
      
        # Output only. The configured payment option.
        # Corresponds to the JSON property `paymentOption`
        # @return [String]
        attr_accessor :payment_option
      
        # Represents a domain property associated with a publication, typically used to
        # verify ownership and scope access.
        # Corresponds to the JSON property `primaryDomain`
        # @return [Google::Apis::WebcontentpublisherV1::DomainProperty]
        attr_accessor :primary_domain
      
        # Output only. The list of active products/features enabled for this publication.
        # Corresponds to the JSON property `products`
        # @return [Array<String>]
        attr_accessor :products
      
        # Output only. The unique identifier of the publication.
        # Corresponds to the JSON property `publicationId`
        # @return [String]
        attr_accessor :publication_id
      
        # Optional. The URL to the publisher's Privacy Policy.
        # Corresponds to the JSON property `publicationPrivacyPolicyUrl`
        # @return [String]
        attr_accessor :publication_privacy_policy_url
      
        # Optional. The URL to the publisher's own Terms of Service.
        # Corresponds to the JSON property `publicationTosUrl`
        # @return [String]
        attr_accessor :publication_tos_url
      
        # Required. The ISO 3166-1 alpha-2 region code where the publication is
        # registered (e.g., "US").
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Configuration and status of the Reader Revenue Manager (RRM) product for a
        # publication.
        # Corresponds to the JSON property `rrmProduct`
        # @return [Google::Apis::WebcontentpublisherV1::RrmProduct]
        attr_accessor :rrm_product
      
        # Subscription Linking (SL) product settings and status.
        # Corresponds to the JSON property `slProduct`
        # @return [Google::Apis::WebcontentpublisherV1::SlProduct]
        attr_accessor :sl_product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_domains = args[:additional_domains] if args.key?(:additional_domains)
          @content_policy_status = args[:content_policy_status] if args.key?(:content_policy_status)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @onboarding_state = args[:onboarding_state] if args.key?(:onboarding_state)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
          @payment_option = args[:payment_option] if args.key?(:payment_option)
          @primary_domain = args[:primary_domain] if args.key?(:primary_domain)
          @products = args[:products] if args.key?(:products)
          @publication_id = args[:publication_id] if args.key?(:publication_id)
          @publication_privacy_policy_url = args[:publication_privacy_policy_url] if args.key?(:publication_privacy_policy_url)
          @publication_tos_url = args[:publication_tos_url] if args.key?(:publication_tos_url)
          @region_code = args[:region_code] if args.key?(:region_code)
          @rrm_product = args[:rrm_product] if args.key?(:rrm_product)
          @sl_product = args[:sl_product] if args.key?(:sl_product)
        end
      end
      
      # Configuration and status of the Reader Revenue Manager (RRM) product for a
      # publication.
      class RrmProduct
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the RRM product is enabled for the publication.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. The URL to the product-specific Terms of Service.
        # Corresponds to the JSON property `productTosUrl`
        # @return [String]
        attr_accessor :product_tos_url
      
        # Details about the acceptance of the Terms of Service (TOS).
        # Corresponds to the JSON property `tosAcceptance`
        # @return [Google::Apis::WebcontentpublisherV1::TosAcceptance]
        attr_accessor :tos_acceptance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @product_tos_url = args[:product_tos_url] if args.key?(:product_tos_url)
          @tos_acceptance = args[:tos_acceptance] if args.key?(:tos_acceptance)
        end
      end
      
      # Subscription Linking (SL) product settings and status.
      class SlProduct
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the Subscription Linking product is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The Google Cloud Project number associated with the publication.
        # Corresponds to the JSON property `gcpProjectNumber`
        # @return [Fixnum]
        attr_accessor :gcp_project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @gcp_project_number = args[:gcp_project_number] if args.key?(:gcp_project_number)
        end
      end
      
      # Details about the acceptance of the Terms of Service (TOS).
      class TosAcceptance
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the person who accepted the TOS.
        # Corresponds to the JSON property `signer`
        # @return [String]
        attr_accessor :signer
      
        # Optional. The job title or role of the signer.
        # Corresponds to the JSON property `signerTitle`
        # @return [String]
        attr_accessor :signer_title
      
        # Required. Whether the user has accepted the Terms of Service.
        # Corresponds to the JSON property `userAccepted`
        # @return [Boolean]
        attr_accessor :user_accepted
        alias_method :user_accepted?, :user_accepted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signer = args[:signer] if args.key?(:signer)
          @signer_title = args[:signer_title] if args.key?(:signer_title)
          @user_accepted = args[:user_accepted] if args.key?(:user_accepted)
        end
      end
    end
  end
end
