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
      
        # Output only. Labels for this request.
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
      
        # Optional. Endpoints that can be used for identity verification.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo>]
        attr_accessor :endpoints
      
        # Optional. Language code preference for the verification message, set as a IETF
        # BCP 47 language code.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Result of the latest account verification challenge.
        # Corresponds to the JSON property `latestVerificationResult`
        # @return [String]
        attr_accessor :latest_verification_result
      
        # Username of the account that is being verified. Deprecated. Customers should
        # now provide the `account_id` field in `event.user_info`.
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
      
      # The AddIpOverride request message.
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
        include Google::Apis::Core::Hashable
      
        # Information about the IP or IP range override.
        # Corresponds to the JSON property `ipOverrideData`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData]
        attr_accessor :ip_override_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_override_data = args[:ip_override_data] if args.key?(:ip_override_data)
        end
      end
      
      # Response for AddIpOverride.
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Settings specific to keys that can be used by Android apps.
      class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, allowed_package_names are not enforced.
        # Corresponds to the JSON property `allowAllPackageNames`
        # @return [Boolean]
        attr_accessor :allow_all_package_names
        alias_method :allow_all_package_names?, :allow_all_package_names
      
        # Optional. Android package names of apps allowed to use the key. Example: 'com.
        # companyname.appname'
        # Corresponds to the JSON property `allowedPackageNames`
        # @return [Array<String>]
        attr_accessor :allowed_package_names
      
        # Optional. Set to true for keys that are used in an Android application that is
        # available for download in app stores in addition to the Google Play Store.
        # Corresponds to the JSON property `supportNonGoogleAppStoreDistribution`
        # @return [Boolean]
        attr_accessor :support_non_google_app_store_distribution
        alias_method :support_non_google_app_store_distribution?, :support_non_google_app_store_distribution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_package_names = args[:allow_all_package_names] if args.key?(:allow_all_package_names)
          @allowed_package_names = args[:allowed_package_names] if args.key?(:allowed_package_names)
          @support_non_google_app_store_distribution = args[:support_non_google_app_store_distribution] if args.key?(:support_non_google_app_store_distribution)
        end
      end
      
      # The request message to annotate an Assessment.
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A stable account identifier to apply to the assessment. This is an
        # alternative to setting `account_id` in `CreateAssessment`, for example when a
        # stable account identifier is not yet known in the initial request.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional. The annotation that is assigned to the Event. This field can be left
        # empty to provide reasons that apply to an event without concluding whether the
        # event is legitimate or fraudulent.
        # Corresponds to the JSON property `annotation`
        # @return [String]
        attr_accessor :annotation
      
        # Optional. A stable hashed account identifier to apply to the assessment. This
        # is an alternative to setting `hashed_account_id` in `CreateAssessment`, for
        # example when a stable account identifier is not yet known in the initial
        # request.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Optional. Reasons for the annotation that are assigned to the event.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        # Describes an event in the lifecycle of a payment transaction.
        # Corresponds to the JSON property `transactionEvent`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionEvent]
        attr_accessor :transaction_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @annotation = args[:annotation] if args.key?(:annotation)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @reasons = args[:reasons] if args.key?(:reasons)
          @transaction_event = args[:transaction_event] if args.key?(:transaction_event)
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
      
      # Contains fields that are required to perform Apple-specific integrity checks.
      class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
        include Google::Apis::Core::Hashable
      
        # Required. The Apple developer key ID (10-character string).
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Required. Input only. A private key (downloaded as a text file with a .p8 file
        # extension) generated for your Apple Developer account. Ensure that Apple
        # DeviceCheck is enabled for the private key.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Required. The Apple team ID (10-character string) owning the provisioning
        # profile used to build your application.
        # Corresponds to the JSON property `teamId`
        # @return [String]
        attr_accessor :team_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @private_key = args[:private_key] if args.key?(:private_key)
          @team_id = args[:team_id] if args.key?(:team_id)
        end
      end
      
      # A reCAPTCHA Enterprise assessment resource.
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
      
        # The environment creating the assessment. This describes your environment (the
        # system invoking CreateAssessment), NOT the environment of your user.
        # Corresponds to the JSON property `assessmentEnvironment`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment]
        attr_accessor :assessment_environment
      
        # The event being assessed.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Event]
        attr_accessor :event
      
        # Policy config assessment.
        # Corresponds to the JSON property `firewallPolicyAssessment`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment]
        attr_accessor :firewall_policy_assessment
      
        # Assessment for Fraud Prevention.
        # Corresponds to the JSON property `fraudPreventionAssessment`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment]
        attr_accessor :fraud_prevention_assessment
      
        # Fraud signals describing users and cards involved in the transaction.
        # Corresponds to the JSON property `fraudSignals`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignals]
        attr_accessor :fraud_signals
      
        # Output only. Identifier. The resource name for the Assessment in the format `
        # projects/`project`/assessments/`assessment``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Assessment for Phone Fraud
        # Corresponds to the JSON property `phoneFraudAssessment`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment]
        attr_accessor :phone_fraud_assessment
      
        # Private password leak verification info.
        # Corresponds to the JSON property `privatePasswordLeakVerification`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification]
        attr_accessor :private_password_leak_verification
      
        # Risk analysis result for an event.
        # Corresponds to the JSON property `riskAnalysis`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RiskAnalysis]
        attr_accessor :risk_analysis
      
        # Properties of the provided event token.
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
          @assessment_environment = args[:assessment_environment] if args.key?(:assessment_environment)
          @event = args[:event] if args.key?(:event)
          @firewall_policy_assessment = args[:firewall_policy_assessment] if args.key?(:firewall_policy_assessment)
          @fraud_prevention_assessment = args[:fraud_prevention_assessment] if args.key?(:fraud_prevention_assessment)
          @fraud_signals = args[:fraud_signals] if args.key?(:fraud_signals)
          @name = args[:name] if args.key?(:name)
          @phone_fraud_assessment = args[:phone_fraud_assessment] if args.key?(:phone_fraud_assessment)
          @private_password_leak_verification = args[:private_password_leak_verification] if args.key?(:private_password_leak_verification)
          @risk_analysis = args[:risk_analysis] if args.key?(:risk_analysis)
          @token_properties = args[:token_properties] if args.key?(:token_properties)
        end
      end
      
      # The environment creating the assessment. This describes your environment (the
      # system invoking CreateAssessment), NOT the environment of your user.
      class GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
        include Google::Apis::Core::Hashable
      
        # Optional. Identifies the client module initiating the CreateAssessment request.
        # This can be the link to the client module's project. Examples include: - "
        # github.com/GoogleCloudPlatform/recaptcha-enterprise-google-tag-manager" - "
        # cloud.google.com/recaptcha/docs/implement-waf-akamai" - "cloud.google.com/
        # recaptcha/docs/implement-waf-cloudflare" - "wordpress.org/plugins/recaptcha-
        # something"
        # Corresponds to the JSON property `client`
        # @return [String]
        attr_accessor :client
      
        # Optional. The version of the client module. For example, "1.0.0".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client = args[:client] if args.key?(:client)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Bot information and metadata.
      class GoogleCloudRecaptchaenterpriseV1Bot
        include Google::Apis::Core::Hashable
      
        # Optional. Enumerated field representing the type of bot.
        # Corresponds to the JSON property `botType`
        # @return [String]
        attr_accessor :bot_type
      
        # Optional. Enumerated string value that indicates the identity of the bot,
        # formatted in kebab-case.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bot_type = args[:bot_type] if args.key?(:bot_type)
          @name = args[:name] if args.key?(:name)
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
      
      # The event being assessed.
      class GoogleCloudRecaptchaenterpriseV1Event
        include Google::Apis::Core::Hashable
      
        # Optional. The expected action for this type of event. This should be the same
        # action provided at token generation time on client-side platforms already
        # integrated with recaptcha enterprise.
        # Corresponds to the JSON property `expectedAction`
        # @return [String]
        attr_accessor :expected_action
      
        # Optional. Flag for a reCAPTCHA express request for an assessment without a
        # token. If enabled, `site_key` must reference an Express site key.
        # Corresponds to the JSON property `express`
        # @return [Boolean]
        attr_accessor :express
        alias_method :express?, :express
      
        # Optional. Flag for enabling firewall policy config assessment. If this flag is
        # enabled, the firewall policy is evaluated and a suggested firewall action is
        # returned in the response.
        # Corresponds to the JSON property `firewallPolicyEvaluation`
        # @return [Boolean]
        attr_accessor :firewall_policy_evaluation
        alias_method :firewall_policy_evaluation?, :firewall_policy_evaluation
      
        # Optional. The Fraud Prevention setting for this assessment.
        # Corresponds to the JSON property `fraudPrevention`
        # @return [String]
        attr_accessor :fraud_prevention
      
        # Optional. Deprecated: use `user_info.account_id` instead. Unique stable hashed
        # user identifier for the request. The identifier must be hashed using hmac-
        # sha256 with stable secret.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Optional. HTTP header information about the request.
        # Corresponds to the JSON property `headers`
        # @return [Array<String>]
        attr_accessor :headers
      
        # Optional. JA3 fingerprint for SSL clients. To learn how to compute this
        # fingerprint, please refer to https://github.com/salesforce/ja3.
        # Corresponds to the JSON property `ja3`
        # @return [String]
        attr_accessor :ja3
      
        # Optional. JA4 fingerprint for SSL clients. To learn how to compute this
        # fingerprint, please refer to https://github.com/FoxIO-LLC/ja4.
        # Corresponds to the JSON property `ja4`
        # @return [String]
        attr_accessor :ja4
      
        # Optional. The URI resource the user requested that triggered an assessment.
        # Corresponds to the JSON property `requestedUri`
        # @return [String]
        attr_accessor :requested_uri
      
        # Optional. The site key that was used to invoke reCAPTCHA Enterprise on your
        # site and generate the token.
        # Corresponds to the JSON property `siteKey`
        # @return [String]
        attr_accessor :site_key
      
        # Optional. The user response token provided by the reCAPTCHA Enterprise client-
        # side integration on your site.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Transaction data associated with a payment protected by reCAPTCHA Enterprise.
        # Corresponds to the JSON property `transactionData`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionData]
        attr_accessor :transaction_data
      
        # Optional. The user agent present in the request from the user's device related
        # to this event.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # User information associated with a request protected by reCAPTCHA Enterprise.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserInfo]
        attr_accessor :user_info
      
        # Optional. The IP address in the request from the user's device related to this
        # event.
        # Corresponds to the JSON property `userIpAddress`
        # @return [String]
        attr_accessor :user_ip_address
      
        # Optional. Flag for running WAF token assessment. If enabled, the token must be
        # specified, and have been created by a WAF-enabled key.
        # Corresponds to the JSON property `wafTokenAssessment`
        # @return [Boolean]
        attr_accessor :waf_token_assessment
        alias_method :waf_token_assessment?, :waf_token_assessment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_action = args[:expected_action] if args.key?(:expected_action)
          @express = args[:express] if args.key?(:express)
          @firewall_policy_evaluation = args[:firewall_policy_evaluation] if args.key?(:firewall_policy_evaluation)
          @fraud_prevention = args[:fraud_prevention] if args.key?(:fraud_prevention)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @headers = args[:headers] if args.key?(:headers)
          @ja3 = args[:ja3] if args.key?(:ja3)
          @ja4 = args[:ja4] if args.key?(:ja4)
          @requested_uri = args[:requested_uri] if args.key?(:requested_uri)
          @site_key = args[:site_key] if args.key?(:site_key)
          @token = args[:token] if args.key?(:token)
          @transaction_data = args[:transaction_data] if args.key?(:transaction_data)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_info = args[:user_info] if args.key?(:user_info)
          @user_ip_address = args[:user_ip_address] if args.key?(:user_ip_address)
          @waf_token_assessment = args[:waf_token_assessment] if args.key?(:waf_token_assessment)
        end
      end
      
      # Settings specific to keys that can be used for reCAPTCHA Express.
      class GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An individual action. Each action represents what to do if a policy matches.
      class GoogleCloudRecaptchaenterpriseV1FirewallAction
        include Google::Apis::Core::Hashable
      
        # An allow action continues processing a request unimpeded.
        # Corresponds to the JSON property `allow`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction]
        attr_accessor :allow
      
        # A block action serves an HTTP error code a prevents the request from hitting
        # the backend.
        # Corresponds to the JSON property `block`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction]
        attr_accessor :block
      
        # An include reCAPTCHA script action involves injecting reCAPTCHA JavaScript
        # code into the HTML returned by the site backend. This reCAPTCHA script is
        # tasked with collecting user signals on the requested web page, issuing tokens
        # as a cookie within the site domain, and enabling their utilization in
        # subsequent page requests.
        # Corresponds to the JSON property `includeRecaptchaScript`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction]
        attr_accessor :include_recaptcha_script
      
        # A redirect action returns a 307 (temporary redirect) response, pointing the
        # user to a reCAPTCHA interstitial page to attach a token.
        # Corresponds to the JSON property `redirect`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction]
        attr_accessor :redirect
      
        # A set header action sets a header and forwards the request to the backend.
        # This can be used to trigger custom protection implemented on the backend.
        # Corresponds to the JSON property `setHeader`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction]
        attr_accessor :set_header
      
        # A substitute action transparently serves a different page than the one
        # requested.
        # Corresponds to the JSON property `substitute`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction]
        attr_accessor :substitute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow = args[:allow] if args.key?(:allow)
          @block = args[:block] if args.key?(:block)
          @include_recaptcha_script = args[:include_recaptcha_script] if args.key?(:include_recaptcha_script)
          @redirect = args[:redirect] if args.key?(:redirect)
          @set_header = args[:set_header] if args.key?(:set_header)
          @substitute = args[:substitute] if args.key?(:substitute)
        end
      end
      
      # An allow action continues processing a request unimpeded.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A block action serves an HTTP error code a prevents the request from hitting
      # the backend.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An include reCAPTCHA script action involves injecting reCAPTCHA JavaScript
      # code into the HTML returned by the site backend. This reCAPTCHA script is
      # tasked with collecting user signals on the requested web page, issuing tokens
      # as a cookie within the site domain, and enabling their utilization in
      # subsequent page requests.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A redirect action returns a 307 (temporary redirect) response, pointing the
      # user to a reCAPTCHA interstitial page to attach a token.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A set header action sets a header and forwards the request to the backend.
      # This can be used to trigger custom protection implemented on the backend.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
        include Google::Apis::Core::Hashable
      
        # Optional. The header key to set in the request to the backend server.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. The header value to set in the request to the backend server.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A substitute action transparently serves a different page than the one
      # requested.
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
        include Google::Apis::Core::Hashable
      
        # Optional. The address to redirect to. The target is a relative path in the
        # current host. Example: "/blog/404.html".
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A FirewallPolicy represents a single matching pattern and resulting actions to
      # take.
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The actions that the caller should take regarding user access. There
        # should be at most one terminal action. A terminal action is any action that
        # forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`.
        # Zero or more non-terminal actions such as `SetHeader` might be specified. A
        # single policy can contain up to 16 actions.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallAction>]
        attr_accessor :actions
      
        # Optional. A CEL (Common Expression Language) conditional expression that
        # specifies if this policy applies to an incoming user request. If this
        # condition evaluates to true and the requested path matched the path pattern,
        # the associated actions should be executed by the caller. The condition string
        # is checked for CEL syntax correctness on creation. For more information, see
        # the [CEL spec](https://github.com/google/cel-spec) and its [language
        # definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A
        # condition has a max length of 500 characters.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Optional. A description of what this policy aims to achieve, for convenience
        # purposes. The description can at most include 256 UTF-8 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. The resource name for the FirewallPolicy in the format `projects/`
        # project`/firewallpolicies/`firewallpolicy``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The path for which this policy applies, specified as a glob pattern.
        # For more information on glob, see the [manual page](https://man7.org/linux/man-
        # pages/man7/glob.7.html). A path has a max length of 200 characters.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Policy config assessment.
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleRpcStatus]
        attr_accessor :error
      
        # A FirewallPolicy represents a single matching pattern and resulting actions to
        # take.
        # Corresponds to the JSON property `firewallPolicy`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy]
        attr_accessor :firewall_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @firewall_policy = args[:firewall_policy] if args.key?(:firewall_policy)
        end
      end
      
      # Assessment for Fraud Prevention.
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
        include Google::Apis::Core::Hashable
      
        # Information about behavioral trust of the transaction.
        # Corresponds to the JSON property `behavioralTrustVerdict`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict]
        attr_accessor :behavioral_trust_verdict
      
        # Information about card testing fraud, where an adversary is testing
        # fraudulently obtained cards or brute forcing their details.
        # Corresponds to the JSON property `cardTestingVerdict`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict]
        attr_accessor :card_testing_verdict
      
        # Output only. Reasons why the transaction is probably fraudulent and received a
        # high transaction risk score.
        # Corresponds to the JSON property `riskReasons`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason>]
        attr_accessor :risk_reasons
      
        # Information about stolen instrument fraud, where the user is not the
        # legitimate owner of the instrument being used for the purchase.
        # Corresponds to the JSON property `stolenInstrumentVerdict`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict]
        attr_accessor :stolen_instrument_verdict
      
        # Output only. Probability of this transaction being fraudulent. Summarizes the
        # combined risk of attack vectors below. Values are from 0.0 (lowest) to 1.0 (
        # highest).
        # Corresponds to the JSON property `transactionRisk`
        # @return [Float]
        attr_accessor :transaction_risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @behavioral_trust_verdict = args[:behavioral_trust_verdict] if args.key?(:behavioral_trust_verdict)
          @card_testing_verdict = args[:card_testing_verdict] if args.key?(:card_testing_verdict)
          @risk_reasons = args[:risk_reasons] if args.key?(:risk_reasons)
          @stolen_instrument_verdict = args[:stolen_instrument_verdict] if args.key?(:stolen_instrument_verdict)
          @transaction_risk = args[:transaction_risk] if args.key?(:transaction_risk)
        end
      end
      
      # Information about behavioral trust of the transaction.
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
        include Google::Apis::Core::Hashable
      
        # Output only. Probability of this transaction attempt being executed in a
        # behaviorally trustworthy way. Values are from 0.0 (lowest) to 1.0 (highest).
        # Corresponds to the JSON property `trust`
        # @return [Float]
        attr_accessor :trust_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trust_prop = args[:trust_prop] if args.key?(:trust_prop)
        end
      end
      
      # Information about card testing fraud, where an adversary is testing
      # fraudulently obtained cards or brute forcing their details.
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
        include Google::Apis::Core::Hashable
      
        # Output only. Probability of this transaction attempt being part of a card
        # testing attack. Values are from 0.0 (lowest) to 1.0 (highest).
        # Corresponds to the JSON property `risk`
        # @return [Float]
        attr_accessor :risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @risk = args[:risk] if args.key?(:risk)
        end
      end
      
      # Risk reasons applicable to the Fraud Prevention assessment.
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason
        include Google::Apis::Core::Hashable
      
        # Output only. Risk reasons applicable to the Fraud Prevention assessment.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Information about stolen instrument fraud, where the user is not the
      # legitimate owner of the instrument being used for the purchase.
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
        include Google::Apis::Core::Hashable
      
        # Output only. Probability of this transaction being executed with a stolen
        # instrument. Values are from 0.0 (lowest) to 1.0 (highest).
        # Corresponds to the JSON property `risk`
        # @return [Float]
        attr_accessor :risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @risk = args[:risk] if args.key?(:risk)
        end
      end
      
      # Fraud signals describing users and cards involved in the transaction.
      class GoogleCloudRecaptchaenterpriseV1FraudSignals
        include Google::Apis::Core::Hashable
      
        # Signals describing the payment card used in this transaction.
        # Corresponds to the JSON property `cardSignals`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals]
        attr_accessor :card_signals
      
        # Signals describing the user involved in this transaction.
        # Corresponds to the JSON property `userSignals`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals]
        attr_accessor :user_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_signals = args[:card_signals] if args.key?(:card_signals)
          @user_signals = args[:user_signals] if args.key?(:user_signals)
        end
      end
      
      # Signals describing the payment card used in this transaction.
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
        include Google::Apis::Core::Hashable
      
        # Output only. The labels for the payment card in this transaction.
        # Corresponds to the JSON property `cardLabels`
        # @return [Array<String>]
        attr_accessor :card_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_labels = args[:card_labels] if args.key?(:card_labels)
        end
      end
      
      # Signals describing the user involved in this transaction.
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
        include Google::Apis::Core::Hashable
      
        # Output only. This user (based on email, phone, and other identifiers) has been
        # seen on the internet for at least this number of days.
        # Corresponds to the JSON property `activeDaysLowerBound`
        # @return [Fixnum]
        attr_accessor :active_days_lower_bound
      
        # Output only. Likelihood (from 0.0 to 1.0) this user includes synthetic
        # components in their identity, such as a randomly generated email address,
        # temporary phone number, or fake shipping address.
        # Corresponds to the JSON property `syntheticRisk`
        # @return [Float]
        attr_accessor :synthetic_risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_days_lower_bound = args[:active_days_lower_bound] if args.key?(:active_days_lower_bound)
          @synthetic_risk = args[:synthetic_risk] if args.key?(:synthetic_risk)
        end
      end
      
      # Settings specific to keys that can be used by iOS apps.
      class GoogleCloudRecaptchaenterpriseV1IosKeySettings
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, allowed_bundle_ids are not enforced.
        # Corresponds to the JSON property `allowAllBundleIds`
        # @return [Boolean]
        attr_accessor :allow_all_bundle_ids
        alias_method :allow_all_bundle_ids?, :allow_all_bundle_ids
      
        # Optional. iOS bundle ids of apps allowed to use the key. Example: 'com.
        # companyname.productname.appname'
        # Corresponds to the JSON property `allowedBundleIds`
        # @return [Array<String>]
        attr_accessor :allowed_bundle_ids
      
        # Contains fields that are required to perform Apple-specific integrity checks.
        # Corresponds to the JSON property `appleDeveloperId`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AppleDeveloperId]
        attr_accessor :apple_developer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all_bundle_ids = args[:allow_all_bundle_ids] if args.key?(:allow_all_bundle_ids)
          @allowed_bundle_ids = args[:allowed_bundle_ids] if args.key?(:allowed_bundle_ids)
          @apple_developer_id = args[:apple_developer_id] if args.key?(:apple_developer_id)
        end
      end
      
      # Information about the IP or IP range override.
      class GoogleCloudRecaptchaenterpriseV1IpOverrideData
        include Google::Apis::Core::Hashable
      
        # Required. The IP address to override (can be IPv4, IPv6 or CIDR). The IP
        # override must be a valid IPv4 or IPv6 address, or a CIDR range. The IP
        # override must be a public IP address. Example of IPv4: 168.192.5.6 Example of
        # IPv6: 2001:0000:130F:0000:0000:09C0:876A:130B Example of IPv4 with CIDR: 168.
        # 192.5.0/24 Example of IPv6 with CIDR: 2001:0DB8:1234::/48
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Required. Describes the type of IP override.
        # Corresponds to the JSON property `overrideType`
        # @return [String]
        attr_accessor :override_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip = args[:ip] if args.key?(:ip)
          @override_type = args[:override_type] if args.key?(:override_type)
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
      
        # Output only. The timestamp corresponding to the creation of this key.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Human-readable display name of this key. Modifiable by user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Settings specific to keys that can be used for reCAPTCHA Express.
        # Corresponds to the JSON property `expressSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ExpressKeySettings]
        attr_accessor :express_settings
      
        # Settings specific to keys that can be used by iOS apps.
        # Corresponds to the JSON property `iosSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IosKeySettings]
        attr_accessor :ios_settings
      
        # Optional. See [Creating and managing labels] (https://cloud.google.com/
        # recaptcha/docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name for the Key in the format `projects/`project`/
        # keys/`key``.
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
          @express_settings = args[:express_settings] if args.key?(:express_settings)
          @ios_settings = args[:ios_settings] if args.key?(:ios_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @testing_options = args[:testing_options] if args.key?(:testing_options)
          @waf_settings = args[:waf_settings] if args.key?(:waf_settings)
          @web_settings = args[:web_settings] if args.key?(:web_settings)
        end
      end
      
      # Response to request to list firewall policies belonging to a project.
      class GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Policy details.
        # Corresponds to the JSON property `firewallPolicies`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy>]
        attr_accessor :firewall_policies
      
        # Token to retrieve the next page of results. It is set to empty if no policies
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firewall_policies = args[:firewall_policies] if args.key?(:firewall_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListIpOverrides.
      class GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
        include Google::Apis::Core::Hashable
      
        # IP Overrides details.
        # Corresponds to the JSON property `ipOverrides`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData>]
        attr_accessor :ip_overrides
      
        # Token to retrieve the next page of results. If this field is empty, no keys
        # remain in the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_overrides = args[:ip_overrides] if args.key?(:ip_overrides)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
        # Metrics are continuous and in order by dates, and in the granularity of day.
        # Only challenge-based keys (CHECKBOX, INVISIBLE) have challenge-based data.
        # Corresponds to the JSON property `challengeMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ChallengeMetrics>]
        attr_accessor :challenge_metrics
      
        # Output only. Identifier. The name of the metrics, in the format `projects/`
        # project`/keys/`key`/metrics`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metrics are continuous and in order by dates, and in the granularity of day.
        # All Key types should have score-based data.
        # Corresponds to the JSON property `scoreMetrics`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreMetrics>]
        attr_accessor :score_metrics
      
        # Inclusive start time aligned to a day in the America/Los_Angeles (Pacific)
        # timezone.
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
        # when you reach a quota limit (see https://cloud.google.com/recaptcha/quotas#
        # quota_limit). To avoid any disruption of your usage, we check that a billing
        # account is present. If your usage of reCAPTCHA is under the free quota, you
        # can safely skip the billing check and proceed with the migration. See https://
        # cloud.google.com/recaptcha/docs/billing-information.
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
      
      # Assessment for Phone Fraud
      class GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
        include Google::Apis::Core::Hashable
      
        # Information about SMS toll fraud.
        # Corresponds to the JSON property `smsTollFraudVerdict`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict]
        attr_accessor :sms_toll_fraud_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sms_toll_fraud_verdict = args[:sms_toll_fraud_verdict] if args.key?(:sms_toll_fraud_verdict)
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
      
        # Required. Exactly 26-bit prefix of the SHA-256 hash of the canonicalized
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
      
        # Required. Identifier. The resource name for the related account group in the
        # format `projects/`project`/relatedaccountgroups/`related_account_group``.
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
      
        # The unique stable account identifier of the member. The identifier corresponds
        # to an `account_id` provided in a previous `CreateAssessment` or `
        # AnnotateAssessment` call.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Deprecated: use `account_id` instead. The unique stable hashed account
        # identifier of the member. The identifier corresponds to a `hashed_account_id`
        # provided in a previous `CreateAssessment` or `AnnotateAssessment` call.
        # Corresponds to the JSON property `hashedAccountId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hashed_account_id
      
        # Required. Identifier. The resource name for this membership in the format `
        # projects/`project`/relatedaccountgroups/`relatedaccountgroup`/memberships/`
        # membership``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @hashed_account_id = args[:hashed_account_id] if args.key?(:hashed_account_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The RemoveIpOverride request message.
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
        include Google::Apis::Core::Hashable
      
        # Information about the IP or IP range override.
        # Corresponds to the JSON property `ipOverrideData`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData]
        attr_accessor :ip_override_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_override_data = args[:ip_override_data] if args.key?(:ip_override_data)
        end
      end
      
      # Response for RemoveIpOverride.
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The reorder firewall policies request message.
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
        include Google::Apis::Core::Hashable
      
        # Required. A list containing all policy names, in the new order. Each name is
        # in the format `projects/`project`/firewallpolicies/`firewallpolicy``.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # The reorder firewall policies response message.
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # Output only. Challenge information for POLICY_BASED_CHALLENGE and INVISIBLE
        # keys
        # Corresponds to the JSON property `challenge`
        # @return [String]
        attr_accessor :challenge
      
        # Output only. Extended verdict reasons to be used for experimentation only. The
        # set of possible reasons is subject to change.
        # Corresponds to the JSON property `extendedVerdictReasons`
        # @return [Array<String>]
        attr_accessor :extended_verdict_reasons
      
        # Output only. Reasons contributing to the risk analysis verdict.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        # Output only. Legitimate event score from 0.0 to 1.0. (1.0 means very likely
        # legitimate traffic while 0.0 means very likely non-legitimate traffic).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Output only. Bots with identities that have been verified by reCAPTCHA and
        # detected in the event.
        # Corresponds to the JSON property `verifiedBots`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Bot>]
        attr_accessor :verified_bots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge = args[:challenge] if args.key?(:challenge)
          @extended_verdict_reasons = args[:extended_verdict_reasons] if args.key?(:extended_verdict_reasons)
          @reasons = args[:reasons] if args.key?(:reasons)
          @score = args[:score] if args.key?(:score)
          @verified_bots = args[:verified_bots] if args.key?(:verified_bots)
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
      
        # Optional. The unique stable account identifier used to search connections. The
        # identifier should correspond to an `account_id` provided in a previous `
        # CreateAssessment` or `AnnotateAssessment` call. Either hashed_account_id or
        # account_id must be set, but not both.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional. Deprecated: use `account_id` instead. The unique stable hashed
        # account identifier used to search connections. The identifier should
        # correspond to a `hashed_account_id` provided in a previous `CreateAssessment`
        # or `AnnotateAssessment` call. Either hashed_account_id or account_id must be
        # set, but not both.
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
          @account_id = args[:account_id] if args.key?(:account_id)
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
      
      # Information about SMS toll fraud.
      class GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
        include Google::Apis::Core::Hashable
      
        # Output only. Reasons contributing to the SMS toll fraud verdict.
        # Corresponds to the JSON property `reasons`
        # @return [Array<String>]
        attr_accessor :reasons
      
        # Output only. Probability of an SMS event being fraudulent. Values are from 0.0
        # (lowest) to 1.0 (highest).
        # Corresponds to the JSON property `risk`
        # @return [Float]
        attr_accessor :risk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reasons = args[:reasons] if args.key?(:reasons)
          @risk = args[:risk] if args.key?(:risk)
        end
      end
      
      # Options for user acceptance testing.
      class GoogleCloudRecaptchaenterpriseV1TestingOptions
        include Google::Apis::Core::Hashable
      
        # Optional. For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge
        # requests for this site return nocaptcha if NOCAPTCHA, or an unsolvable
        # challenge if CHALLENGE.
        # Corresponds to the JSON property `testingChallenge`
        # @return [String]
        attr_accessor :testing_challenge
      
        # Optional. All assessments for this Key return this score. Must be between 0 (
        # likely not legitimate) and 1 (likely legitimate) inclusive.
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
      
      # Properties of the provided event token.
      class GoogleCloudRecaptchaenterpriseV1TokenProperties
        include Google::Apis::Core::Hashable
      
        # Output only. Action name provided at token generation.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. The name of the Android package with which the token was
        # generated (Android keys only).
        # Corresponds to the JSON property `androidPackageName`
        # @return [String]
        attr_accessor :android_package_name
      
        # Output only. The timestamp corresponding to the generation of the token.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The hostname of the page on which the token was generated (Web
        # keys only).
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Output only. Reason associated with the response when valid = false.
        # Corresponds to the JSON property `invalidReason`
        # @return [String]
        attr_accessor :invalid_reason
      
        # Output only. The ID of the iOS bundle with which the token was generated (iOS
        # keys only).
        # Corresponds to the JSON property `iosBundleId`
        # @return [String]
        attr_accessor :ios_bundle_id
      
        # Output only. Whether the provided user response token is valid. When valid =
        # false, the reason could be specified in invalid_reason or it could also be due
        # to a user failing to solve a challenge or a sitekey mismatch (i.e the sitekey
        # used to generate the token was different than the one specified in the
        # assessment).
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
      
      # Transaction data associated with a payment protected by reCAPTCHA Enterprise.
      class GoogleCloudRecaptchaenterpriseV1TransactionData
        include Google::Apis::Core::Hashable
      
        # Structured address format for billing and shipping addresses.
        # Corresponds to the JSON property `billingAddress`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress]
        attr_accessor :billing_address
      
        # Optional. The Bank Identification Number - generally the first 6 or 8 digits
        # of the card.
        # Corresponds to the JSON property `cardBin`
        # @return [String]
        attr_accessor :card_bin
      
        # Optional. The last four digits of the card.
        # Corresponds to the JSON property `cardLastFour`
        # @return [String]
        attr_accessor :card_last_four
      
        # Optional. The currency code in ISO-4217 format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Details about the transaction from the gateway.
        # Corresponds to the JSON property `gatewayInfo`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo]
        attr_accessor :gateway_info
      
        # Optional. Items purchased in this transaction.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataItem>]
        attr_accessor :items
      
        # Optional. Information about the user or users fulfilling the transaction.
        # Corresponds to the JSON property `merchants`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser>]
        attr_accessor :merchants
      
        # Optional. The payment method for the transaction. The allowed values are: *
        # credit-card * debit-card * gift-card * processor-`name` (If a third-party is
        # used, for example, processor-paypal) * custom-`name` (If an alternative method
        # is used, for example, custom-crypto)
        # Corresponds to the JSON property `paymentMethod`
        # @return [String]
        attr_accessor :payment_method
      
        # Structured address format for billing and shipping addresses.
        # Corresponds to the JSON property `shippingAddress`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress]
        attr_accessor :shipping_address
      
        # Optional. The value of shipping in the specified currency. 0 for free or no
        # shipping.
        # Corresponds to the JSON property `shippingValue`
        # @return [Float]
        attr_accessor :shipping_value
      
        # Unique identifier for the transaction. This custom identifier can be used to
        # reference this transaction in the future, for example, labeling a refund or
        # chargeback event. Two attempts at the same transaction should use the same
        # transaction id.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        # Details about a user's account involved in the transaction.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser]
        attr_accessor :user
      
        # Optional. The decimal value of the transaction in the specified currency.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_address = args[:billing_address] if args.key?(:billing_address)
          @card_bin = args[:card_bin] if args.key?(:card_bin)
          @card_last_four = args[:card_last_four] if args.key?(:card_last_four)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @gateway_info = args[:gateway_info] if args.key?(:gateway_info)
          @items = args[:items] if args.key?(:items)
          @merchants = args[:merchants] if args.key?(:merchants)
          @payment_method = args[:payment_method] if args.key?(:payment_method)
          @shipping_address = args[:shipping_address] if args.key?(:shipping_address)
          @shipping_value = args[:shipping_value] if args.key?(:shipping_value)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
          @user = args[:user] if args.key?(:user)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Structured address format for billing and shipping addresses.
      class GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
        include Google::Apis::Core::Hashable
      
        # Optional. The first lines of the address. The first line generally contains
        # the street name and number, and further lines may include information such as
        # an apartment number.
        # Corresponds to the JSON property `address`
        # @return [Array<String>]
        attr_accessor :address
      
        # Optional. The state, province, or otherwise administrative area of the address.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. The town/city of the address.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The postal or ZIP code of the address.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient name, potentially including information such as "care
        # of".
        # Corresponds to the JSON property `recipient`
        # @return [String]
        attr_accessor :recipient
      
        # Optional. The CLDR country/region of the address.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipient = args[:recipient] if args.key?(:recipient)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Details about the transaction from the gateway.
      class GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
        include Google::Apis::Core::Hashable
      
        # Optional. AVS response code from the gateway (available only when reCAPTCHA
        # Enterprise is called after authorization).
        # Corresponds to the JSON property `avsResponseCode`
        # @return [String]
        attr_accessor :avs_response_code
      
        # Optional. CVV response code from the gateway (available only when reCAPTCHA
        # Enterprise is called after authorization).
        # Corresponds to the JSON property `cvvResponseCode`
        # @return [String]
        attr_accessor :cvv_response_code
      
        # Optional. Gateway response code describing the state of the transaction.
        # Corresponds to the JSON property `gatewayResponseCode`
        # @return [String]
        attr_accessor :gateway_response_code
      
        # Optional. Name of the gateway service (for example, stripe, square, paypal).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avs_response_code = args[:avs_response_code] if args.key?(:avs_response_code)
          @cvv_response_code = args[:cvv_response_code] if args.key?(:cvv_response_code)
          @gateway_response_code = args[:gateway_response_code] if args.key?(:gateway_response_code)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Line items being purchased in this transaction.
      class GoogleCloudRecaptchaenterpriseV1TransactionDataItem
        include Google::Apis::Core::Hashable
      
        # Optional. When a merchant is specified, its corresponding account_id.
        # Necessary to populate marketplace-style transactions.
        # Corresponds to the JSON property `merchantAccountId`
        # @return [String]
        attr_accessor :merchant_account_id
      
        # Optional. The full name of the item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The quantity of this item that is being purchased.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Optional. The value per item that the user is paying, in the transaction
        # currency, after discounts.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merchant_account_id = args[:merchant_account_id] if args.key?(:merchant_account_id)
          @name = args[:name] if args.key?(:name)
          @quantity = args[:quantity] if args.key?(:quantity)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Details about a user's account involved in the transaction.
      class GoogleCloudRecaptchaenterpriseV1TransactionDataUser
        include Google::Apis::Core::Hashable
      
        # Optional. Unique account identifier for this user. If using account defender,
        # this should match the hashed_account_id field. Otherwise, a unique and
        # persistent identifier for this account.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional. The epoch milliseconds of the user's account creation.
        # Corresponds to the JSON property `creationMs`
        # @return [Fixnum]
        attr_accessor :creation_ms
      
        # Optional. The email address of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. Whether the email has been verified to be accessible by the user (
        # OTP or similar).
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # Optional. The phone number of the user, with country code.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Optional. Whether the phone number has been verified to be accessible by the
        # user (OTP or similar).
        # Corresponds to the JSON property `phoneVerified`
        # @return [Boolean]
        attr_accessor :phone_verified
        alias_method :phone_verified?, :phone_verified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @creation_ms = args[:creation_ms] if args.key?(:creation_ms)
          @email = args[:email] if args.key?(:email)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @phone_verified = args[:phone_verified] if args.key?(:phone_verified)
        end
      end
      
      # Describes an event in the lifecycle of a payment transaction.
      class GoogleCloudRecaptchaenterpriseV1TransactionEvent
        include Google::Apis::Core::Hashable
      
        # Optional. Timestamp when this transaction event occurred; otherwise assumed to
        # be the time of the API call.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Optional. The type of this transaction event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Optional. The reason or standardized code that corresponds with this
        # transaction event, if one exists. For example, a CHARGEBACK event with code
        # 6005.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Optional. The value that corresponds with this transaction event, if one
        # exists. For example, a refund event where $5.00 was refunded. Currency is
        # obtained from the original transaction data.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @reason = args[:reason] if args.key?(:reason)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An identifier associated with a user.
      class GoogleCloudRecaptchaenterpriseV1UserId
        include Google::Apis::Core::Hashable
      
        # Optional. An email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. A phone number. Should use the E.164 format.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Optional. A unique username, if different from all the other identifiers and `
        # account_id` that are provided. Can be a unique login handle or display name
        # for a user.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # User information associated with a request protected by reCAPTCHA Enterprise.
      class GoogleCloudRecaptchaenterpriseV1UserInfo
        include Google::Apis::Core::Hashable
      
        # Optional. For logged-in requests or login/registration requests, the unique
        # account identifier associated with this user. You can use the username if it
        # is stable (meaning it is the same for every request associated with the same
        # user), or any stable user ID of your choice. Leave blank for non logged-in
        # actions or guest checkout.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional. Creation time for this account associated with this user. Leave
        # blank for non logged-in actions, guest checkout, or when there is no account
        # associated with the current user.
        # Corresponds to the JSON property `createAccountTime`
        # @return [String]
        attr_accessor :create_account_time
      
        # Optional. Identifiers associated with this user or request.
        # Corresponds to the JSON property `userIds`
        # @return [Array<Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserId>]
        attr_accessor :user_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @create_account_time = args[:create_account_time] if args.key?(:create_account_time)
          @user_ids = args[:user_ids] if args.key?(:user_ids)
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
      
        # Optional. If set to true, it means allowed_domains are not enforced.
        # Corresponds to the JSON property `allowAllDomains`
        # @return [Boolean]
        attr_accessor :allow_all_domains
        alias_method :allow_all_domains?, :allow_all_domains
      
        # Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages)
        # websites. This is supported only for the SCORE integration type.
        # Corresponds to the JSON property `allowAmpTraffic`
        # @return [Boolean]
        attr_accessor :allow_amp_traffic
        alias_method :allow_amp_traffic?, :allow_amp_traffic
      
        # Optional. Domains or subdomains of websites allowed to use the key. All
        # subdomains of an allowed domain are automatically allowed. A valid domain
        # requires a host and must not include any path, port, query or fragment.
        # Examples: 'example.com' or 'subdomain.example.com'
        # Corresponds to the JSON property `allowedDomains`
        # @return [Array<String>]
        attr_accessor :allowed_domains
      
        # Optional. Settings for the frequency and difficulty at which this key triggers
        # captcha challenges. This should only be specified for `IntegrationType`
        # CHECKBOX, INVISIBLE or POLICY_BASED_CHALLENGE.
        # Corresponds to the JSON property `challengeSecurityPreference`
        # @return [String]
        attr_accessor :challenge_security_preference
      
        # Settings for POLICY_BASED_CHALLENGE keys to control when a challenge is
        # triggered.
        # Corresponds to the JSON property `challengeSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings]
        attr_accessor :challenge_settings
      
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
          @challenge_settings = args[:challenge_settings] if args.key?(:challenge_settings)
          @integration_type = args[:integration_type] if args.key?(:integration_type)
        end
      end
      
      # Per-action challenge settings.
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings
        include Google::Apis::Core::Hashable
      
        # Required. A challenge is triggered if the end-user score is below that
        # threshold. Value must be between 0 and 1 (inclusive).
        # Corresponds to the JSON property `scoreThreshold`
        # @return [Float]
        attr_accessor :score_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score_threshold = args[:score_threshold] if args.key?(:score_threshold)
        end
      end
      
      # Settings for POLICY_BASED_CHALLENGE keys to control when a challenge is
      # triggered.
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The action to score threshold map. The action name should be the
        # same as the action name passed in the `data-action` attribute (see https://
        # cloud.google.com/recaptcha/docs/actions-website). Action names are case-
        # insensitive. There is a maximum of 100 action settings. An action name has a
        # maximum length of 100.
        # Corresponds to the JSON property `actionSettings`
        # @return [Hash<String,Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings>]
        attr_accessor :action_settings
      
        # Per-action challenge settings.
        # Corresponds to the JSON property `defaultSettings`
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings]
        attr_accessor :default_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_settings = args[:action_settings] if args.key?(:action_settings)
          @default_settings = args[:default_settings] if args.key?(:default_settings)
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
    end
  end
end
