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
    module CloudchannelV1
      
      class GoogleCloudChannelV1ActivateEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1AdminUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1AssociationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CancelEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ChangeOfferRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ChangeParametersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ChangeRenewalSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ChannelPartnerLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ChannelPartnerRepricingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CloudIdentityCustomerAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CloudIdentityInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Column
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CommitmentSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ConditionalOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Constraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CreateEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Customer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CustomerConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CustomerEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1CustomerRepricingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1EduData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1EntitlementChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1EntitlementEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1FetchReportResultsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1FetchReportResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ImportCustomerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListChannelPartnerLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListCustomerRepricingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListCustomersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListEntitlementChangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListOffersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListPurchasableOffersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListPurchasableSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListSubscribersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListTransferableOffersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListTransferableOffersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListTransferableSkusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ListTransferableSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1MarketingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Offer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Parameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ParameterDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PercentageAdjustment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Period
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Plan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PriceByResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PricePhase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PriceTier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ProvisionCloudIdentityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ProvisionedService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PurchasableOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1PurchasableSku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RegisterSubscriberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RegisterSubscriberResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RenewalSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ReportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ReportResultsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ReportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ReportValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RepricingAdjustment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RepricingCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RepricingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RepricingConfigEntitlementGranularity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RunReportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1RunReportJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Sku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1SkuGroupCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1StartPaidServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1SubscriberEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1SuspendEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferEntitlementsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferableOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TransferableSku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1TrialSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1UnregisterSubscriberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1UnregisterSubscriberResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1UpdateChannelPartnerLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1AssociationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1ChannelPartnerEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Column
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1CommitmentSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1CustomerEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1EntitlementEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Parameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Period
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1ProvisionedService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1RenewalSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1ReportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1ReportResultsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1ReportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1RunReportJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1SubscriberEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1TransferEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1TrialSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1alpha1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDecimal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypePostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudChannelV1ActivateEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1AdminUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
        end
      end
      
      class GoogleCloudChannelV1AssociationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_entitlement, as: 'baseEntitlement'
        end
      end
      
      class GoogleCloudChannelV1CancelEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1ChangeOfferRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer, as: 'offer'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter::Representation
      
          property :purchase_order_id, as: 'purchaseOrderId'
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1ChangeParametersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter::Representation
      
          property :purchase_order_id, as: 'purchaseOrderId'
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1ChangeRenewalSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :renewal_settings, as: 'renewalSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1ChannelPartnerLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_partner_cloud_identity_info, as: 'channelPartnerCloudIdentityInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo::Representation
      
          property :create_time, as: 'createTime'
          property :invite_link_uri, as: 'inviteLinkUri'
          property :link_state, as: 'linkState'
          property :name, as: 'name'
          property :public_id, as: 'publicId'
          property :reseller_cloud_identity_id, as: 'resellerCloudIdentityId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1ChannelPartnerRepricingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :repricing_config, as: 'repricingConfig', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
        end
      end
      
      class GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_identity_accounts, as: 'cloudIdentityAccounts', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityCustomerAccount, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityCustomerAccount::Representation
      
        end
      end
      
      class GoogleCloudChannelV1CloudIdentityCustomerAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_cloud_identity_id, as: 'customerCloudIdentityId'
          property :customer_name, as: 'customerName'
          property :existing, as: 'existing'
          property :owned, as: 'owned'
        end
      end
      
      class GoogleCloudChannelV1CloudIdentityInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_console_uri, as: 'adminConsoleUri'
          property :alternate_email, as: 'alternateEmail'
          property :customer_type, as: 'customerType'
          property :edu_data, as: 'eduData', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EduData, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EduData::Representation
      
          property :is_domain_verified, as: 'isDomainVerified'
          property :language_code, as: 'languageCode'
          property :phone_number, as: 'phoneNumber'
          property :primary_domain, as: 'primaryDomain'
        end
      end
      
      class GoogleCloudChannelV1Column
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_id, as: 'columnId'
          property :data_type, as: 'dataType'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudChannelV1CommitmentSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :renewal_settings, as: 'renewalSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RenewalSettings::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudChannelV1ConditionalOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adjustment, as: 'adjustment', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment::Representation
      
          property :rebilling_basis, as: 'rebillingBasis'
          property :repricing_condition, as: 'repricingCondition', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingCondition, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingCondition::Representation
      
        end
      end
      
      class GoogleCloudChannelV1Constraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_constraints, as: 'customerConstraints', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerConstraints, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerConstraints::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :last_name, as: 'lastName'
          property :phone, as: 'phone'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudChannelV1CreateEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement, as: 'entitlement', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1Customer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_email, as: 'alternateEmail'
          property :channel_partner_id, as: 'channelPartnerId'
          property :cloud_identity_id, as: 'cloudIdentityId'
          property :cloud_identity_info, as: 'cloudIdentityInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo::Representation
      
          property :correlation_id, as: 'correlationId'
          property :create_time, as: 'createTime'
          property :domain, as: 'domain'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :org_display_name, as: 'orgDisplayName'
          property :org_postal_address, as: 'orgPostalAddress', class: Google::Apis::CloudchannelV1::GoogleTypePostalAddress, decorator: Google::Apis::CloudchannelV1::GoogleTypePostalAddress::Representation
      
          property :primary_contact_info, as: 'primaryContactInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ContactInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ContactInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1CustomerConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_customer_types, as: 'allowedCustomerTypes'
          collection :allowed_regions, as: 'allowedRegions'
          collection :promotional_order_types, as: 'promotionalOrderTypes'
        end
      end
      
      class GoogleCloudChannelV1CustomerEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :event_type, as: 'eventType'
        end
      end
      
      class GoogleCloudChannelV1CustomerRepricingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :repricing_config, as: 'repricingConfig', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :invoice_end_date, as: 'invoiceEndDate', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :invoice_start_date, as: 'invoiceStartDate', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :usage_end_date_time, as: 'usageEndDateTime', class: Google::Apis::CloudchannelV1::GoogleTypeDateTime, decorator: Google::Apis::CloudchannelV1::GoogleTypeDateTime::Representation
      
          property :usage_start_date_time, as: 'usageStartDateTime', class: Google::Apis::CloudchannelV1::GoogleTypeDateTime, decorator: Google::Apis::CloudchannelV1::GoogleTypeDateTime::Representation
      
        end
      end
      
      class GoogleCloudChannelV1EduData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :institute_size, as: 'instituteSize'
          property :institute_type, as: 'instituteType'
          property :website, as: 'website'
        end
      end
      
      class GoogleCloudChannelV1Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :association_info, as: 'associationInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1AssociationInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1AssociationInfo::Representation
      
          property :billing_account, as: 'billingAccount'
          property :commitment_settings, as: 'commitmentSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CommitmentSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CommitmentSettings::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :offer, as: 'offer'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter::Representation
      
          property :provisioned_service, as: 'provisionedService', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService::Representation
      
          property :provisioning_state, as: 'provisioningState'
          property :purchase_order_id, as: 'purchaseOrderId'
          collection :suspension_reasons, as: 'suspensionReasons'
          property :trial_settings, as: 'trialSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TrialSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TrialSettings::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1EntitlementChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_reason, as: 'activationReason'
          property :cancellation_reason, as: 'cancellationReason'
          property :change_type, as: 'changeType'
          property :create_time, as: 'createTime'
          property :entitlement, as: 'entitlement'
          property :offer, as: 'offer'
          property :operator, as: 'operator'
          property :operator_type, as: 'operatorType'
          property :other_change_reason, as: 'otherChangeReason'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Parameter::Representation
      
          property :provisioned_service, as: 'provisionedService', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionedService::Representation
      
          property :suspension_reason, as: 'suspensionReason'
        end
      end
      
      class GoogleCloudChannelV1EntitlementEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement, as: 'entitlement'
          property :event_type, as: 'eventType'
        end
      end
      
      class GoogleCloudChannelV1FetchReportResultsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudChannelV1FetchReportResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :report_metadata, as: 'reportMetadata', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Row, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Row::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ImportCustomerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_token, as: 'authToken'
          property :channel_partner_id, as: 'channelPartnerId'
          property :cloud_identity_id, as: 'cloudIdentityId'
          property :customer, as: 'customer'
          property :domain, as: 'domain'
          property :overwrite_if_exists, as: 'overwriteIfExists'
        end
      end
      
      class GoogleCloudChannelV1ListChannelPartnerLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channel_partner_links, as: 'channelPartnerLinks', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channel_partner_repricing_configs, as: 'channelPartnerRepricingConfigs', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListCustomerRepricingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :customer_repricing_configs, as: 'customerRepricingConfigs', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListCustomersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :customers, as: 'customers', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListEntitlementChangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlement_changes, as: 'entitlementChanges', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementChange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementChange::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudChannelV1ListOffersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :offers, as: 'offers', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListPurchasableOffersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :purchasable_offers, as: 'purchasableOffers', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableOffer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableOffer::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListPurchasableSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :purchasable_skus, as: 'purchasableSkus', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableSku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PurchasableSku::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :skus, as: 'skus', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListSubscribersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_accounts, as: 'serviceAccounts'
          property :topic, as: 'topic'
        end
      end
      
      class GoogleCloudChannelV1ListTransferableOffersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_identity_id, as: 'cloudIdentityId'
          property :customer_name, as: 'customerName'
          property :language_code, as: 'languageCode'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :sku, as: 'sku'
        end
      end
      
      class GoogleCloudChannelV1ListTransferableOffersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transferable_offers, as: 'transferableOffers', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableOffer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableOffer::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ListTransferableSkusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_token, as: 'authToken'
          property :cloud_identity_id, as: 'cloudIdentityId'
          property :customer_name, as: 'customerName'
          property :language_code, as: 'languageCode'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudChannelV1ListTransferableSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :transferable_skus, as: 'transferableSkus', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableSku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferableSku::Representation
      
        end
      end
      
      class GoogleCloudChannelV1MarketingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_logo, as: 'defaultLogo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Media, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Media::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudChannelV1Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudChannelV1Offer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraints, as: 'constraints', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Constraints, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Constraints::Representation
      
          property :deal_code, as: 'dealCode'
          property :end_time, as: 'endTime'
          property :marketing_info, as: 'marketingInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo::Representation
      
          property :name, as: 'name'
          collection :parameter_definitions, as: 'parameterDefinitions', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ParameterDefinition, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ParameterDefinition::Representation
      
          property :plan, as: 'plan', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Plan, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Plan::Representation
      
          collection :price_by_resources, as: 'priceByResources', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceByResource, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceByResource::Representation
      
          property :sku, as: 'sku', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudChannelV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_type, as: 'operationType'
        end
      end
      
      class GoogleCloudChannelV1Parameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :editable, as: 'editable'
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ParameterDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value::Representation
      
          property :max_value, as: 'maxValue', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Value::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
          property :parameter_type, as: 'parameterType'
        end
      end
      
      class GoogleCloudChannelV1PercentageAdjustment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, as: 'percentage', class: Google::Apis::CloudchannelV1::GoogleTypeDecimal, decorator: Google::Apis::CloudchannelV1::GoogleTypeDecimal::Representation
      
        end
      end
      
      class GoogleCloudChannelV1Period
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :period_type, as: 'periodType'
        end
      end
      
      class GoogleCloudChannelV1Plan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account, as: 'billingAccount'
          property :payment_cycle, as: 'paymentCycle', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period::Representation
      
          property :payment_plan, as: 'paymentPlan'
          property :payment_type, as: 'paymentType'
          property :trial_period, as: 'trialPeriod', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period::Representation
      
        end
      end
      
      class GoogleCloudChannelV1Price
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_price, as: 'basePrice', class: Google::Apis::CloudchannelV1::GoogleTypeMoney, decorator: Google::Apis::CloudchannelV1::GoogleTypeMoney::Representation
      
          property :discount, as: 'discount'
          property :effective_price, as: 'effectivePrice', class: Google::Apis::CloudchannelV1::GoogleTypeMoney, decorator: Google::Apis::CloudchannelV1::GoogleTypeMoney::Representation
      
          property :external_price_uri, as: 'externalPriceUri'
        end
      end
      
      class GoogleCloudChannelV1PriceByResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :price, as: 'price', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price::Representation
      
          collection :price_phases, as: 'pricePhases', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PricePhase, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PricePhase::Representation
      
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudChannelV1PricePhase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_period, as: 'firstPeriod'
          property :last_period, as: 'lastPeriod'
          property :period_type, as: 'periodType'
          property :price, as: 'price', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price::Representation
      
          collection :price_tiers, as: 'priceTiers', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceTier, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PriceTier::Representation
      
        end
      end
      
      class GoogleCloudChannelV1PriceTier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_resource, as: 'firstResource'
          property :last_resource, as: 'lastResource'
          property :price, as: 'price', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Price::Representation
      
        end
      end
      
      class GoogleCloudChannelV1Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :marketing_info, as: 'marketingInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudChannelV1ProvisionCloudIdentityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_identity_info, as: 'cloudIdentityInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CloudIdentityInfo::Representation
      
          property :user, as: 'user', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1AdminUser, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1AdminUser::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudChannelV1ProvisionedService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_id, as: 'productId'
          property :provisioning_id, as: 'provisioningId'
          property :sku_id, as: 'skuId'
        end
      end
      
      class GoogleCloudChannelV1PurchasableOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer, as: 'offer', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer::Representation
      
        end
      end
      
      class GoogleCloudChannelV1PurchasableSku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sku, as: 'sku', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku::Representation
      
        end
      end
      
      class GoogleCloudChannelV1RegisterSubscriberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudChannelV1RegisterSubscriberResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class GoogleCloudChannelV1RenewalSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_renewal, as: 'enableRenewal'
          property :payment_cycle, as: 'paymentCycle', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Period::Representation
      
          property :payment_plan, as: 'paymentPlan'
          property :resize_unit_count, as: 'resizeUnitCount'
        end
      end
      
      class GoogleCloudChannelV1Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Column, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Column::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudChannelV1ReportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :report_status, as: 'reportStatus', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportStatus, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportStatus::Representation
      
        end
      end
      
      class GoogleCloudChannelV1ReportResultsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange::Representation
      
          property :preceding_date_range, as: 'precedingDateRange', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange::Representation
      
          property :report, as: 'report', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Report::Representation
      
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class GoogleCloudChannelV1ReportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudChannelV1ReportValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_time_value, as: 'dateTimeValue', class: Google::Apis::CloudchannelV1::GoogleTypeDateTime, decorator: Google::Apis::CloudchannelV1::GoogleTypeDateTime::Representation
      
          property :date_value, as: 'dateValue', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :decimal_value, as: 'decimalValue', class: Google::Apis::CloudchannelV1::GoogleTypeDecimal, decorator: Google::Apis::CloudchannelV1::GoogleTypeDecimal::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :money_value, as: 'moneyValue', class: Google::Apis::CloudchannelV1::GoogleTypeMoney, decorator: Google::Apis::CloudchannelV1::GoogleTypeMoney::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudChannelV1RepricingAdjustment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage_adjustment, as: 'percentageAdjustment', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PercentageAdjustment, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1PercentageAdjustment::Representation
      
        end
      end
      
      class GoogleCloudChannelV1RepricingCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sku_group_condition, as: 'skuGroupCondition', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1SkuGroupCondition, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1SkuGroupCondition::Representation
      
        end
      end
      
      class GoogleCloudChannelV1RepricingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adjustment, as: 'adjustment', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingAdjustment::Representation
      
          property :channel_partner_granularity, as: 'channelPartnerGranularity', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity::Representation
      
          collection :conditional_overrides, as: 'conditionalOverrides', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ConditionalOverride, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ConditionalOverride::Representation
      
          property :effective_invoice_month, as: 'effectiveInvoiceMonth', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :entitlement_granularity, as: 'entitlementGranularity', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigEntitlementGranularity, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1RepricingConfigEntitlementGranularity::Representation
      
          property :rebilling_basis, as: 'rebillingBasis'
        end
      end
      
      class GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudChannelV1RepricingConfigEntitlementGranularity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement, as: 'entitlement'
        end
      end
      
      class GoogleCloudChannelV1Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportValue, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportValue::Representation
      
        end
      end
      
      class GoogleCloudChannelV1RunReportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1DateRange::Representation
      
          property :filter, as: 'filter'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudChannelV1RunReportJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_job, as: 'reportJob', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportJob, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportJob::Representation
      
          property :report_metadata, as: 'reportMetadata', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ReportResultsMetadata::Representation
      
        end
      end
      
      class GoogleCloudChannelV1Sku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :marketing_info, as: 'marketingInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1MarketingInfo::Representation
      
          property :name, as: 'name'
          property :product, as: 'product', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Product::Representation
      
        end
      end
      
      class GoogleCloudChannelV1SkuGroupCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sku_group, as: 'skuGroup'
        end
      end
      
      class GoogleCloudChannelV1StartPaidServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1SubscriberEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_event, as: 'customerEvent', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerEvent, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerEvent::Representation
      
          property :entitlement_event, as: 'entitlementEvent', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementEvent, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1EntitlementEvent::Representation
      
        end
      end
      
      class GoogleCloudChannelV1SuspendEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1TransferEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :ineligibility_reason, as: 'ineligibilityReason'
          property :is_eligible, as: 'isEligible'
        end
      end
      
      class GoogleCloudChannelV1TransferEntitlementsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_token, as: 'authToken'
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1TransferEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
      
        end
      end
      
      class GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudChannelV1TransferableOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offer, as: 'offer', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer::Representation
      
        end
      end
      
      class GoogleCloudChannelV1TransferableSku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_sku, as: 'legacySku', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku::Representation
      
          property :sku, as: 'sku', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1Sku::Representation
      
          property :transfer_eligibility, as: 'transferEligibility', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEligibility, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEligibility::Representation
      
        end
      end
      
      class GoogleCloudChannelV1TrialSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :trial, as: 'trial'
        end
      end
      
      class GoogleCloudChannelV1UnregisterSubscriberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudChannelV1UnregisterSubscriberResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class GoogleCloudChannelV1UpdateChannelPartnerLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_partner_link, as: 'channelPartnerLink', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudChannelV1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          hash :proto_value, as: 'protoValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudChannelV1alpha1AssociationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_entitlement, as: 'baseEntitlement'
        end
      end
      
      class GoogleCloudChannelV1alpha1ChannelPartnerEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_partner, as: 'channelPartner'
          property :event_type, as: 'eventType'
        end
      end
      
      class GoogleCloudChannelV1alpha1Column
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_id, as: 'columnId'
          property :data_type, as: 'dataType'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudChannelV1alpha1CommitmentSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :renewal_settings, as: 'renewalSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1RenewalSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1RenewalSettings::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudChannelV1alpha1CustomerEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :event_type, as: 'eventType'
        end
      end
      
      class GoogleCloudChannelV1alpha1DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :invoice_end_date, as: 'invoiceEndDate', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :invoice_start_date, as: 'invoiceStartDate', class: Google::Apis::CloudchannelV1::GoogleTypeDate, decorator: Google::Apis::CloudchannelV1::GoogleTypeDate::Representation
      
          property :usage_end_date_time, as: 'usageEndDateTime', class: Google::Apis::CloudchannelV1::GoogleTypeDateTime, decorator: Google::Apis::CloudchannelV1::GoogleTypeDateTime::Representation
      
          property :usage_start_date_time, as: 'usageStartDateTime', class: Google::Apis::CloudchannelV1::GoogleTypeDateTime, decorator: Google::Apis::CloudchannelV1::GoogleTypeDateTime::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_units, as: 'assignedUnits'
          property :association_info, as: 'associationInfo', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1AssociationInfo, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1AssociationInfo::Representation
      
          property :billing_account, as: 'billingAccount'
          property :channel_partner_id, as: 'channelPartnerId'
          property :commitment_settings, as: 'commitmentSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CommitmentSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CommitmentSettings::Representation
      
          property :create_time, as: 'createTime'
          property :max_units, as: 'maxUnits'
          property :name, as: 'name'
          property :num_units, as: 'numUnits'
          property :offer, as: 'offer'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Parameter, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Parameter::Representation
      
          property :provisioned_service, as: 'provisionedService', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ProvisionedService, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ProvisionedService::Representation
      
          property :provisioning_state, as: 'provisioningState'
          property :purchase_order_id, as: 'purchaseOrderId'
          collection :suspension_reasons, as: 'suspensionReasons'
          property :trial_settings, as: 'trialSettings', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1TrialSettings, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1TrialSettings::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudChannelV1alpha1EntitlementEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entitlement, as: 'entitlement'
          property :event_type, as: 'eventType'
        end
      end
      
      class GoogleCloudChannelV1alpha1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_type, as: 'operationType'
        end
      end
      
      class GoogleCloudChannelV1alpha1Parameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :editable, as: 'editable'
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Value, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Value::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1Period
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :period_type, as: 'periodType'
        end
      end
      
      class GoogleCloudChannelV1alpha1ProvisionedService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :product_id, as: 'productId'
          property :provisioning_id, as: 'provisioningId'
          property :sku_id, as: 'skuId'
        end
      end
      
      class GoogleCloudChannelV1alpha1RenewalSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_commitment, as: 'disableCommitment'
          property :enable_renewal, as: 'enableRenewal'
          property :payment_cycle, as: 'paymentCycle', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Period, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Period::Representation
      
          property :payment_option, as: 'paymentOption'
          property :payment_plan, as: 'paymentPlan'
          property :resize_unit_count, as: 'resizeUnitCount'
          property :scheduled_renewal_offer, as: 'scheduledRenewalOffer'
        end
      end
      
      class GoogleCloudChannelV1alpha1Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Column, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Column::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudChannelV1alpha1ReportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :report_status, as: 'reportStatus', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportStatus, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportStatus::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1ReportResultsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_range, as: 'dateRange', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange::Representation
      
          property :preceding_date_range, as: 'precedingDateRange', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1DateRange::Representation
      
          property :report, as: 'report', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Report, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Report::Representation
      
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class GoogleCloudChannelV1alpha1ReportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudChannelV1alpha1RunReportJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_job, as: 'reportJob', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportJob, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportJob::Representation
      
          property :report_metadata, as: 'reportMetadata', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportResultsMetadata, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ReportResultsMetadata::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1SubscriberEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_partner_event, as: 'channelPartnerEvent', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ChannelPartnerEvent, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1ChannelPartnerEvent::Representation
      
          property :customer_event, as: 'customerEvent', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CustomerEvent, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1CustomerEvent::Representation
      
          property :entitlement_event, as: 'entitlementEvent', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1EntitlementEvent, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1EntitlementEvent::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1TransferEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Entitlement, decorator: Google::Apis::CloudchannelV1::GoogleCloudChannelV1alpha1Entitlement::Representation
      
        end
      end
      
      class GoogleCloudChannelV1alpha1TrialSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :trial, as: 'trial'
        end
      end
      
      class GoogleCloudChannelV1alpha1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          hash :proto_value, as: 'protoValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudchannelV1::GoogleLongrunningOperation, decorator: Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudchannelV1::GoogleRpcStatus, decorator: Google::Apis::CloudchannelV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::CloudchannelV1::GoogleTypeTimeZone, decorator: Google::Apis::CloudchannelV1::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeDecimal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
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
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
