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
    module RecaptchaenterpriseV1
      
      # Account defender risk assessment.
      class GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
        include Google::Apis::Core::Hashable
      
        # Labels for this request.
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Information about account verification, used for identity verification.
      class GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
        include Google::Apis::Core::Hashable
      
        # Endpoints that can be used for identity verification.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo>]
        attr_accessor :endpoints
      
        # Language code preference for the verification message, set as a IETF BCP 47
        # language code.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Result of the latest account verification challenge.
        # Corresponds to the JSON property `latestVerificationResult`
        # @return [String]
        attr_accessor :latest_verification_result
      
        # Username of the account that is being verified. Deprecated. Customers should
        # now provide the hashed account ID field in Event.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @language_code = args[:language_code] if args.key?(:language_code)
          @latest_verification_result = args[:latest_verification_result] if args.key?(:latest_verification_result)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Settings specific to keys that can be used by Android apps.
      class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
        include Google::Apis::Core::Hashable
      
        # If set to true, allowed_package_names are not enforced.
        # Corresponds to the JSON property `allowAllPackageNames`
        # @return [Boolean]
        attr_accessor :allow_all_package_names
        alias_method :allow_all_package_names?, :allow_all_package_names
      
        # Android package names of apps allowed to use the key. Example: 'com.
        # companyname.appname'
        # Corresponds to the JSON property `allowedPackageNames`
        # @return [Array<String>]
        attr_accessor :allowed_package_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_package_names = args[:allow_all_package_names] if args.key?(:allow_all_package_names)
          @allowed_package_names = args[:allowed_package_names] if args.key?(:allowed_package_names)
        end
      end
      
      # The request message to annotate an Assessment.
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The annotation that will be assigned to the Event. This field can be
        # left empty to provide reasons that apply to an event without concluding
        # whether the event is legitimate or fraudulent.
        # Corresponds to the JSON property `annotation`
        # @return [String]
        attr_accessor :annotation
      
        # Optional. Unique stable hashed user identifier to apply to the assessment.
        # This is an alternative to setting the hashed_account_id in CreateAssessment,
        # for example when the account identifier is not yet known in the initial
        # request. It is recommended that the identifier is hashed using hmac-sha256
        # with stable secret.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Optional. Optional reasons for the annotation that will be assigned to the
        # Event.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation = args[:annotation] if args.key?(:annotation)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @reasons = args[:reasons] if args.key?(:reasons)
        end
      end
      
      # Empty response for AnnotateAssessment.
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A recaptcha assessment resource.
      class GoogleCloudRecaptchaenterpriseV1Assessment
        include Google::Apis::Core::Hashable
      
        # Account defender risk assessment.
        # Corresponds to the JSON property `accountDefenderAssessment`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment]
        attr_accessor :account_defender_assessment
      
        # Information about account verification, used for identity verification.
        # Corresponds to the JSON property `accountVerification`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo]
        attr_accessor :account_verification
      
        # The event being assessed.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Event]
        attr_accessor :event
      
        # Output only. The resource name for the Assessment in the format "projects/`
        # project`/assessments/`assessment`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Private password leak verification info.
        # Corresponds to the JSON property `privatePasswordLeakVerification`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification]
        attr_accessor :private_password_leak_verification
      
        # Risk analysis result for an event.
        # Corresponds to the JSON property `riskAnalysis`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RiskAnalysis]
        attr_accessor :risk_analysis
      
        # Output only. Properties of the provided event token.
        # Corresponds to the JSON property `tokenProperties`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TokenProperties]
        attr_accessor :token_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_defender_assessment = args[:account_defender_assessment] if args.key?(:account_defender_assessment)
          @account_verification = args[:account_verification] if args.key?(:account_verification)
          @event = args[:event] if args.key?(:event)
          @name = args[:name] if args.key?(:name)
          @private_password_leak_verification = args[:private_password_leak_verification] if args.key?(:private_password_leak_verification)
          @risk_analysis = args[:risk_analysis] if args.key?(:risk_analysis)
          @token_properties = args[:token_properties] if args.key?(:token_properties)
        end
      end
      
      # Metrics related to challenges.
      class GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
        include Google::Apis::Core::Hashable
      
        # Count of submitted challenge solutions that were incorrect or otherwise deemed
        # suspicious such that a subsequent challenge was triggered.
        # Corresponds to the JSON property `failedCount`
        # @return [Fixnum]
        attr_accessor :failed_count
      
        # Count of nocaptchas (successful verification without a challenge) issued.
        # Corresponds to the JSON property `nocaptchaCount`
        # @return [Fixnum]
        attr_accessor :nocaptcha_count
      
        # Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to
        # a count of pageloads for pages that include reCAPTCHA.
        # Corresponds to the JSON property `pageloadCount`
        # @return [Fixnum]
        attr_accessor :pageload_count
      
        # Count of nocaptchas (successful verification without a challenge) plus
        # submitted challenge solutions that were correct and resulted in verification.
        # Corresponds to the JSON property `passedCount`
        # @return [Fixnum]
        attr_accessor :passed_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_count = args[:failed_count] if args.key?(:failed_count)
          @nocaptcha_count = args[:nocaptcha_count] if args.key?(:nocaptcha_count)
          @pageload_count = args[:pageload_count] if args.key?(:pageload_count)
          @passed_count = args[:passed_count] if args.key?(:passed_count)
        end
      end
      
      # Information about a verification endpoint that can be used for 2FA.
      class GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
        include Google::Apis::Core::Hashable
      
        # Email address for which to trigger a verification request.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. Timestamp of the last successful verification for the endpoint,
        # if any.
        # Corresponds to the JSON property `lastVerificationTime`
        # @return [String]
        attr_accessor :last_verification_time
      
        # Phone number for which to trigger a verification request. Should be given in E.
        # 164 format.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Output only. Token to provide to the client to trigger endpoint verification.
        # It must be used within 15 minutes.
        # Corresponds to the JSON property `requestToken`
        # @return [String]
        attr_accessor :request_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @last_verification_time = args[:last_verification_time] if args.key?(:last_verification_time)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @request_token = args[:request_token] if args.key?(:request_token)
        end
      end
      
      # 
      class GoogleCloudRecaptchaenterpriseV1Event
        include Google::Apis::Core::Hashable
      
        # Optional. The expected action for this type of event. This should be the same
        # action provided at token generation time on client-side platforms already
        # integrated with recaptcha enterprise.
        # Corresponds to the JSON property `expectedAction`
        # @return [String]
        attr_accessor :expected_action
      
        # Optional. Unique stable hashed user identifier for the request. The identifier
        # must be hashed using hmac-sha256 with stable secret.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Optional. The site key that was used to invoke reCAPTCHA on your site and
        # generate the token.
        # Corresponds to the JSON property `siteKey`
        # @return [String]
        attr_accessor :site_key
      
        # Optional. The user response token provided by the reCAPTCHA client-side
        # integration on your site.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Optional. The user agent present in the request from the user's device related
        # to this event.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Optional. The IP address in the request from the user's device related to this
        # event.
        # Corresponds to the JSON property `userIpAddress`
        # @return [String]
        attr_accessor :user_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_action = args[:expected_action] if args.key?(:expected_action)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @site_key = args[:site_key] if args.key?(:site_key)
          @token = args[:token] if args.key?(:token)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_ip_address = args[:user_ip_address] if args.key?(:user_ip_address)
        end
      end
      
      # Settings specific to keys that can be used by iOS apps.
      class GoogleCloudRecaptchaenterpriseV1IosKeySettings
        include Google::Apis::Core::Hashable
      
        # If set to true, allowed_bundle_ids are not enforced.
        # Corresponds to the JSON property `allowAllBundleIds`
        # @return [Boolean]
        attr_accessor :allow_all_bundle_ids
        alias_method :allow_all_bundle_ids?, :allow_all_bundle_ids
      
        # iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.
        # productname.appname'
        # Corresponds to the JSON property `allowedBundleIds`
        # @return [Array<String>]
        attr_accessor :allowed_bundle_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_bundle_ids = args[:allow_all_bundle_ids] if args.key?(:allow_all_bundle_ids)
          @allowed_bundle_ids = args[:allowed_bundle_ids] if args.key?(:allowed_bundle_ids)
        end
      end
      
      # A key used to identify and configure applications (web and/or mobile) that use
      # reCAPTCHA Enterprise.
      class GoogleCloudRecaptchaenterpriseV1Key
        include Google::Apis::Core::Hashable
      
        # Settings specific to keys that can be used by Android apps.
        # Corresponds to the JSON property `androidSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AndroidKeySettings]
        attr_accessor :android_settings
      
        # The timestamp corresponding to the creation of this Key.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name of this key. Modifiable by user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Settings specific to keys that can be used by iOS apps.
        # Corresponds to the JSON property `iosSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IosKeySettings]
        attr_accessor :ios_settings
      
        # See Creating and managing labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name for the Key in the format "projects/`project`/keys/`key`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Options for user acceptance testing.
        # Corresponds to the JSON property `testingOptions`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TestingOptions]
        attr_accessor :testing_options
      
        # Settings specific to keys that can be used for WAF (Web Application Firewall).
        # Corresponds to the JSON property `wafSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WafSettings]
        attr_accessor :waf_settings
      
        # Settings specific to keys that can be used by websites.
        # Corresponds to the JSON property `webSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettings]
        attr_accessor :web_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_settings = args[:android_settings] if args.key?(:android_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ios_settings = args[:ios_settings] if args.key?(:ios_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @testing_options = args[:testing_options] if args.key?(:testing_options)
          @waf_settings = args[:waf_settings] if args.key?(:waf_settings)
          @web_settings = args[:web_settings] if args.key?(:web_settings)
        end
      end
      
      # Response to request to list keys in a project.
      class GoogleCloudRecaptchaenterpriseV1ListKeysResponse
        include Google::Apis::Core::Hashable
      
        # Key details.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key>]
        attr_accessor :keys
      
        # Token to retrieve the next page of results. It is set to empty if no keys
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response to a `ListRelatedAccountGroupMemberships` call.
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The memberships listed by the query.
        # Corresponds to the JSON property `relatedAccountGroupMemberships`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>]
        attr_accessor :related_account_group_memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @related_account_group_memberships = args[:related_account_group_memberships] if args.key?(:related_account_group_memberships)
        end
      end
      
      # The response to a `ListRelatedAccountGroups` call.
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The groups of related accounts listed by the query.
        # Corresponds to the JSON property `relatedAccountGroups`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup>]
        attr_accessor :related_account_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @related_account_groups = args[:related_account_groups] if args.key?(:related_account_groups)
        end
      end
      
      # Metrics for a single Key.
      class GoogleCloudRecaptchaenterpriseV1Metrics
        include Google::Apis::Core::Hashable
      
        # Metrics will be continuous and in order by dates, and in the granularity of
        # day. Only challenge-based keys (CHECKBOX, INVISIBLE), will have challenge-
        # based data.
        # Corresponds to the JSON property `challengeMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>]
        attr_accessor :challenge_metrics
      
        # Output only. The name of the metrics, in the format "projects/`project`/keys/`
        # key`/metrics".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metrics will be continuous and in order by dates, and in the granularity of
        # day. All Key types should have score-based data.
        # Corresponds to the JSON property `scoreMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreMetrics>]
        attr_accessor :score_metrics
      
        # Inclusive start time aligned to a day (UTC).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge_metrics = args[:challenge_metrics] if args.key?(:challenge_metrics)
          @name = args[:name] if args.key?(:name)
          @score_metrics = args[:score_metrics] if args.key?(:score_metrics)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The migrate key request message.
      class GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If true, skips the billing check. A reCAPTCHA Enterprise key or
        # migrated key behaves differently than a reCAPTCHA (non-Enterprise version) key
        # when you reach a quota limit (see https://cloud.google.com/recaptcha-
        # enterprise/quotas#quota_limit). To avoid any disruption of your usage, we
        # check that a billing account is present. If your usage of reCAPTCHA is under
        # the free quota, you can safely skip the billing check and proceed with the
        # migration. See https://cloud.google.com/recaptcha-enterprise/docs/billing-
        # information.
        # Corresponds to the JSON property `skipBillingCheck`
        # @return [Boolean]
        attr_accessor :skip_billing_check
        alias_method :skip_billing_check?, :skip_billing_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @skip_billing_check = args[:skip_billing_check] if args.key?(:skip_billing_check)
        end
      end
      
      # Private password leak verification info.
      class GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
        include Google::Apis::Core::Hashable
      
        # Output only. List of prefixes of the encrypted potential password leaks that
        # matched the given parameters. They must be compared with the client-side
        # decryption prefix of `reencrypted_user_credentials_hash`
        # Corresponds to the JSON property `encryptedLeakMatchPrefixes`
        # @return [Array<String>]
        attr_accessor :encrypted_leak_match_prefixes
      
        # Optional. Encrypted Scrypt hash of the canonicalized username+password. It is
        # re-encrypted by the server and returned through `
        # reencrypted_user_credentials_hash`.
        # Corresponds to the JSON property `encryptedUserCredentialsHash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_user_credentials_hash
      
        # Optional. Exactly 26-bit prefix of the SHA-256 hash of the canonicalized
        # username. It is used to look up password leaks associated with that hash
        # prefix.
        # Corresponds to the JSON property `lookupHashPrefix`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :lookup_hash_prefix
      
        # Output only. Corresponds to the re-encryption of the `
        # encrypted_user_credentials_hash` field. It is used to match potential password
        # leaks within `encrypted_leak_match_prefixes`.
        # Corresponds to the JSON property `reencryptedUserCredentialsHash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :reencrypted_user_credentials_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_leak_match_prefixes = args[:encrypted_leak_match_prefixes] if args.key?(:encrypted_leak_match_prefixes)
          @encrypted_user_credentials_hash = args[:encrypted_user_credentials_hash] if args.key?(:encrypted_user_credentials_hash)
          @lookup_hash_prefix = args[:lookup_hash_prefix] if args.key?(:lookup_hash_prefix)
          @reencrypted_user_credentials_hash = args[:reencrypted_user_credentials_hash] if args.key?(:reencrypted_user_credentials_hash)
        end
      end
      
      # A group of related accounts.
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
        include Google::Apis::Core::Hashable
      
        # Required. The resource name for the related account group in the format `
        # projects/`project`/relatedaccountgroups/`related_account_group``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A membership in a group of related accounts.
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
        include Google::Apis::Core::Hashable
      
        # The unique stable hashed user identifier of the member. The identifier
        # corresponds to a `hashed_account_id` provided in a previous `CreateAssessment`
        # or `AnnotateAssessment` call.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Required. The resource name for this membership in the format `projects/`
        # project`/relatedaccountgroups/`relatedaccountgroup`/memberships/`membership``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Secret key is used only in legacy reCAPTCHA. It must be used in a 3rd party
      # integration with legacy reCAPTCHA.
      class GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
        include Google::Apis::Core::Hashable
      
        # The secret key (also known as shared secret) authorizes communication between
        # your application backend and the reCAPTCHA Enterprise server to create an
        # assessment. The secret key needs to be kept safe for security purposes.
        # Corresponds to the JSON property `legacySecretKey`
        # @return [String]
        attr_accessor :legacy_secret_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legacy_secret_key = args[:legacy_secret_key] if args.key?(:legacy_secret_key)
        end
      end
      
      # Risk analysis result for an event.
      class GoogleCloudRecaptchaenterpriseV1RiskAnalysis
        include Google::Apis::Core::Hashable
      
        # Reasons contributing to the risk analysis verdict.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        # Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate
        # traffic while 0.0 means very likely non-legitimate traffic).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reasons = args[:reasons] if args.key?(:reasons)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Score distribution.
      class GoogleCloudRecaptchaenterpriseV1ScoreDistribution
        include Google::Apis::Core::Hashable
      
        # Map key is score value multiplied by 100. The scores are discrete values
        # between [0, 1]. The maximum number of buckets is on order of a few dozen, but
        # typically much lower (ie. 10).
        # Corresponds to the JSON property `scoreBuckets`
        # @return [Hash<String,Fixnum>]
        attr_accessor :score_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score_buckets = args[:score_buckets] if args.key?(:score_buckets)
        end
      end
      
      # Metrics related to scoring.
      class GoogleCloudRecaptchaenterpriseV1ScoreMetrics
        include Google::Apis::Core::Hashable
      
        # Action-based metrics. The map key is the action name which specified by the
        # site owners at time of the "execute" client-side call.
        # Corresponds to the JSON property `actionMetrics`
        # @return [Hash<String,Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution>]
        attr_accessor :action_metrics
      
        # Score distribution.
        # Corresponds to the JSON property `overallMetrics`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution]
        attr_accessor :overall_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_metrics = args[:action_metrics] if args.key?(:action_metrics)
          @overall_metrics = args[:overall_metrics] if args.key?(:overall_metrics)
        end
      end
      
      # The request message to search related account group memberships.
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The unique stable hashed user identifier we should search
        # connections to. The identifier should correspond to a `hashed_account_id`
        # provided in a previous `CreateAssessment` or `AnnotateAssessment` call.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Optional. The maximum number of groups to return. The service might return
        # fewer than this value. If unspecified, at most 50 groups are returned. The
        # maximum value is 1000; values above 1000 are coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `
        # SearchRelatedAccountGroupMemberships` call. Provide this to retrieve the
        # subsequent page. When paginating, all other parameters provided to `
        # SearchRelatedAccountGroupMemberships` must match the call that provided the
        # page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # The response to a `SearchRelatedAccountGroupMemberships` call.
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The queried memberships.
        # Corresponds to the JSON property `relatedAccountGroupMemberships`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership>]
        attr_accessor :related_account_group_memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @related_account_group_memberships = args[:related_account_group_memberships] if args.key?(:related_account_group_memberships)
        end
      end
      
      # Options for user acceptance testing.
      class GoogleCloudRecaptchaenterpriseV1TestingOptions
        include Google::Apis::Core::Hashable
      
        # For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests
        # for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge
        # if CHALLENGE.
        # Corresponds to the JSON property `testingChallenge`
        # @return [String]
        attr_accessor :testing_challenge
      
        # All assessments for this Key will return this score. Must be between 0 (likely
        # not legitimate) and 1 (likely legitimate) inclusive.
        # Corresponds to the JSON property `testingScore`
        # @return [Float]
        attr_accessor :testing_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @testing_challenge = args[:testing_challenge] if args.key?(:testing_challenge)
          @testing_score = args[:testing_score] if args.key?(:testing_score)
        end
      end
      
      # 
      class GoogleCloudRecaptchaenterpriseV1TokenProperties
        include Google::Apis::Core::Hashable
      
        # Action name provided at token generation.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The name of the Android package with which the token was generated (Android
        # keys only).
        # Corresponds to the JSON property `androidPackageName`
        # @return [String]
        attr_accessor :android_package_name
      
        # The timestamp corresponding to the generation of the token.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The hostname of the page on which the token was generated (Web keys only).
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Reason associated with the response when valid = false.
        # Corresponds to the JSON property `invalidReason`
        # @return [String]
        attr_accessor :invalid_reason
      
        # The ID of the iOS bundle with which the token was generated (iOS keys only).
        # Corresponds to the JSON property `iosBundleId`
        # @return [String]
        attr_accessor :ios_bundle_id
      
        # Whether the provided user response token is valid. When valid = false, the
        # reason could be specified in invalid_reason or it could also be due to a user
        # failing to solve a challenge or a sitekey mismatch (i.e the sitekey used to
        # generate the token was different than the one specified in the assessment).
        # Corresponds to the JSON property `valid`
        # @return [Boolean]
        attr_accessor :valid
        alias_method :valid?, :valid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @android_package_name = args[:android_package_name] if args.key?(:android_package_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hostname = args[:hostname] if args.key?(:hostname)
          @invalid_reason = args[:invalid_reason] if args.key?(:invalid_reason)
          @ios_bundle_id = args[:ios_bundle_id] if args.key?(:ios_bundle_id)
          @valid = args[:valid] if args.key?(:valid)
        end
      end
      
      # Settings specific to keys that can be used for WAF (Web Application Firewall).
      class GoogleCloudRecaptchaenterpriseV1WafSettings
        include Google::Apis::Core::Hashable
      
        # Required. The WAF feature for which this key is enabled.
        # Corresponds to the JSON property `wafFeature`
        # @return [String]
        attr_accessor :waf_feature
      
        # Required. The WAF service that uses this key.
        # Corresponds to the JSON property `wafService`
        # @return [String]
        attr_accessor :waf_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @waf_feature = args[:waf_feature] if args.key?(:waf_feature)
          @waf_service = args[:waf_service] if args.key?(:waf_service)
        end
      end
      
      # Settings specific to keys that can be used by websites.
      class GoogleCloudRecaptchaenterpriseV1WebKeySettings
        include Google::Apis::Core::Hashable
      
        # If set to true, it means allowed_domains will not be enforced.
        # Corresponds to the JSON property `allowAllDomains`
        # @return [Boolean]
        attr_accessor :allow_all_domains
        alias_method :allow_all_domains?, :allow_all_domains
      
        # If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites.
        # This is supported only for the SCORE integration type.
        # Corresponds to the JSON property `allowAmpTraffic`
        # @return [Boolean]
        attr_accessor :allow_amp_traffic
        alias_method :allow_amp_traffic?, :allow_amp_traffic
      
        # Domains or subdomains of websites allowed to use the key. All subdomains of an
        # allowed domain are automatically allowed. A valid domain requires a host and
        # must not include any path, port, query or fragment. Examples: 'example.com' or
        # 'subdomain.example.com'
        # Corresponds to the JSON property `allowedDomains`
        # @return [Array<String>]
        attr_accessor :allowed_domains
      
        # Settings for the frequency and difficulty at which this key triggers captcha
        # challenges. This should only be specified for IntegrationTypes CHECKBOX and
        # INVISIBLE.
        # Corresponds to the JSON property `challengeSecurityPreference`
        # @return [String]
        attr_accessor :challenge_security_preference
      
        # Required. Describes how this key is integrated with the website.
        # Corresponds to the JSON property `integrationType`
        # @return [String]
        attr_accessor :integration_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_domains = args[:allow_all_domains] if args.key?(:allow_all_domains)
          @allow_amp_traffic = args[:allow_amp_traffic] if args.key?(:allow_amp_traffic)
          @allowed_domains = args[:allowed_domains] if args.key?(:allowed_domains)
          @challenge_security_preference = args[:challenge_security_preference] if args.key?(:challenge_security_preference)
          @integration_type = args[:integration_type] if args.key?(:integration_type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
