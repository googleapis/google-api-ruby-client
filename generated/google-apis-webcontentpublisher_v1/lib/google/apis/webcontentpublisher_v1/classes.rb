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
      
      # A predefined answer choice template for a catalog question.
      class AnswerChoiceTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. Category of the answer based on the IAB Audience Taxonomy.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. Text label used for aggregating responses by category in
        # analytics.
        # Corresponds to the JSON property `categoryLabel`
        # @return [String]
        attr_accessor :category_label
      
        # Output only. Localized answer choice text displayed to readers.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # Output only. Unique identifier of the answer choice within the question.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @category_label = args[:category_label] if args.key?(:category_label)
          @display_text = args[:display_text] if args.key?(:display_text)
          @id = args[:id] if args.key?(:id)
        end
      end
      
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
      
        # Configuration for survey calls-to-action (CTAs).
        # Corresponds to the JSON property `surveyConfig`
        # @return [Google::Apis::WebcontentpublisherV1::SurveyConfig]
        attr_accessor :survey_config
      
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
          @survey_config = args[:survey_config] if args.key?(:survey_config)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An answer choice for a custom survey question.
      class CustomAnswerChoice
        include Google::Apis::Core::Hashable
      
        # Required. The display text of the answer choice shown to readers.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
        end
      end
      
      # A custom question defined by the publisher.
      class CustomQuestion
        include Google::Apis::Core::Hashable
      
        # Required. Ordered list of answer choices for the custom question (2-5 items).
        # Corresponds to the JSON property `answerChoices`
        # @return [Array<Google::Apis::WebcontentpublisherV1::CustomAnswerChoice>]
        attr_accessor :answer_choices
      
        # Optional. Reporting category label sent to Google Analytics (up to 100
        # characters).
        # Corresponds to the JSON property `categoryLabel`
        # @return [String]
        attr_accessor :category_label
      
        # Required. The question prompt displayed to readers.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # Output only. Server-assigned unique identifier for the custom question.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_choices = args[:answer_choices] if args.key?(:answer_choices)
          @category_label = args[:category_label] if args.key?(:category_label)
          @display_text = args[:display_text] if args.key?(:display_text)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Represents a domain property associated with a publication, typically used to
      # verify ownership and scope access.
      class DomainProperty
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the domain ownership has been verified (e.g., via Google
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
      
      # Request message for `GeneratePlatformSiteTokens`.
      class GeneratePlatformSiteTokensRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for `GeneratePlatformSiteTokens`.
      class GeneratePlatformSiteTokensResponse
        include Google::Apis::Core::Hashable
      
        # List of domain-scoped secure token mappings.
        # Corresponds to the JSON property `siteTokens`
        # @return [Array<Google::Apis::WebcontentpublisherV1::SiteToken>]
        attr_accessor :site_tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_tokens = args[:site_tokens] if args.key?(:site_tokens)
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
      
        # Optional. Whether checking the opt-in checkbox is required.
        # Corresponds to the JSON property `optInRequired`
        # @return [Boolean]
        attr_accessor :opt_in_required
        alias_method :opt_in_required?, :opt_in_required
      
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
          @opt_in_required = args[:opt_in_required] if args.key?(:opt_in_required)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A preset question referencing a template in the survey question catalog.
      class PresetQuestion
        include Google::Apis::Core::Hashable
      
        # Optional. Selected answer choice IDs from the question template. Required (2-5
        # unique IDs) when the catalog question is `CONFIGURABLE_CHOICES`, and must be
        # omitted for `FIXED_CHOICES`.
        # Corresponds to the JSON property `answerIds`
        # @return [Array<Fixnum>]
        attr_accessor :answer_ids
      
        # Required. ID of the question template from `SurveyQuestionCatalog`.
        # Corresponds to the JSON property `questionId`
        # @return [Fixnum]
        attr_accessor :question_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_ids = args[:answer_ids] if args.key?(:answer_ids)
          @question_id = args[:question_id] if args.key?(:question_id)
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
      
        # Optional. The publication entity type (for-profit vs non-profit). Defaults to
        # FOR_PROFIT if omitted.
        # Corresponds to the JSON property `publicationType`
        # @return [String]
        attr_accessor :publication_type
      
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
          @publication_type = args[:publication_type] if args.key?(:publication_type)
          @region_code = args[:region_code] if args.key?(:region_code)
          @rrm_product = args[:rrm_product] if args.key?(:rrm_product)
          @sl_product = args[:sl_product] if args.key?(:sl_product)
        end
      end
      
      # A predefined question template in the survey question catalog.
      class QuestionTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. Possible answer choices for this question.
        # Corresponds to the JSON property `answerChoices`
        # @return [Array<Google::Apis::WebcontentpublisherV1::AnswerChoiceTemplate>]
        attr_accessor :answer_choices
      
        # Output only. Category of the question based on the IAB Audience Taxonomy.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. Text label used for aggregating responses by category in
        # analytics.
        # Corresponds to the JSON property `categoryLabel`
        # @return [String]
        attr_accessor :category_label
      
        # Output only. The type of answer choice configuration for this question.
        # Corresponds to the JSON property `configurationType`
        # @return [String]
        attr_accessor :configuration_type
      
        # Output only. Localized question text displayed to readers.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # Output only. Unique identifier of the question template.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_choices = args[:answer_choices] if args.key?(:answer_choices)
          @category = args[:category] if args.key?(:category)
          @category_label = args[:category_label] if args.key?(:category_label)
          @configuration_type = args[:configuration_type] if args.key?(:configuration_type)
          @display_text = args[:display_text] if args.key?(:display_text)
          @id = args[:id] if args.key?(:id)
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
      
      # Represents a domain-scoped secure token mapping.
      class SiteToken
        include Google::Apis::Core::Hashable
      
        # The domain scope this token is valid for.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The domain-scoped secure token value (ESUT).
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @token = args[:token] if args.key?(:token)
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
      
      # Configuration for survey calls-to-action (CTAs).
      class SurveyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Header prompt shown to readers. If omitted, the server populates the
        # default prompt localized to the parent publication's configured primary
        # language.
        # Corresponds to the JSON property `customMessage`
        # @return [String]
        attr_accessor :custom_message
      
        # Optional. Ordered list of questions presented in the survey (1-3 items when `
        # ACTIVE`; 0-3 when `DRAFT`).
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::WebcontentpublisherV1::SurveyQuestion>]
        attr_accessor :questions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_message = args[:custom_message] if args.key?(:custom_message)
          @questions = args[:questions] if args.key?(:questions)
        end
      end
      
      # A single question within a survey, which can be either a preset question from
      # the catalog or a custom publisher-defined question.
      class SurveyQuestion
        include Google::Apis::Core::Hashable
      
        # A custom question defined by the publisher.
        # Corresponds to the JSON property `customQuestion`
        # @return [Google::Apis::WebcontentpublisherV1::CustomQuestion]
        attr_accessor :custom_question
      
        # A preset question referencing a template in the survey question catalog.
        # Corresponds to the JSON property `presetQuestion`
        # @return [Google::Apis::WebcontentpublisherV1::PresetQuestion]
        attr_accessor :preset_question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_question = args[:custom_question] if args.key?(:custom_question)
          @preset_question = args[:preset_question] if args.key?(:preset_question)
        end
      end
      
      # Represents the catalog of predefined survey questions and localized answer
      # choices available for a publication.
      class SurveyQuestionCatalog
        include Google::Apis::Core::Hashable
      
        # Identifier. The resource name of the survey question catalog. Format: `
        # organizations/`organization`/publications/`publication`/surveyQuestionCatalog`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of available predefined question templates.
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::WebcontentpublisherV1::QuestionTemplate>]
        attr_accessor :questions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @questions = args[:questions] if args.key?(:questions)
        end
      end
      
      # Details about the acceptance of the Terms of Service (TOS).
      class TosAcceptance
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the user opted in to receive product updates and email
        # communications.
        # Corresponds to the JSON property `emailOptIn`
        # @return [Boolean]
        attr_accessor :email_opt_in
        alias_method :email_opt_in?, :email_opt_in
      
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
          @email_opt_in = args[:email_opt_in] if args.key?(:email_opt_in)
          @user_accepted = args[:user_accepted] if args.key?(:user_accepted)
        end
      end
    end
  end
end
