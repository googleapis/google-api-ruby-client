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
    module CloudsearchV1
      
      class AbuseReportingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AckInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclFixRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclFixStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonComposeUiActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AffectedMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllAuthenticatedUsersProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedActivityFeedAnnotationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedActivityFeedAnnotationDataUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAppProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantAnnotationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantDebugContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantFeedbackContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantFeedbackContextFeedbackChip
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantSessionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAssistantUnfulfillableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedAvatarInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedBackendUploadMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataEventCreation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCallAnnotationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCallMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCardClickSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemActivityInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemNudge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemReactions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedChatItemGroupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedContentReportType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedCustomEmoji
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedDlpMetricsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedEmoji
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedFindDocumentSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedGroupDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedGroupVisibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedJustificationPerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedMeetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedMessageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedMessageIntegrationPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedOrganizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedOrganizationInfoConsumerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedOrganizationInfoCustomerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedOriginAppSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedPhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedReaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedSegmentedMembershipCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedSegmentedMembershipCounts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedSpaceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataAssigneeChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataCompletionChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataCreation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataDeletionChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataTaskProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedTasksMessageIntegrationPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedUserBlockRelationship
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteSharedVideoReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageActionActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageBorderStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageButtonList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageCardCardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageCardCardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageCardSection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageColumns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageColumnsColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageColumnsColumnWidgets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageDateTimePicker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageDecoratedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageDecoratedTextSwitchControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageDivider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageGrid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageGridGridItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageIcon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageImageComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageImageCropStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageOnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageOpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageOpenLinkAppUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageOpenLinkAppUriIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageOpenLinkAppUriIntentExtraData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageSelectionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageSelectionInputSelectionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageSuggestionsSuggestionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageTextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteStorageWidget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteV1ApiCompatV1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteV1ApiCompatV1ActionConfirm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteV1ApiCompatV1Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsDynamiteV1ApiCompatV1Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeRemoved
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedItemId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoComplete
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoCompleteItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BabelMessageProps
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BabelPlaceholderMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BorderStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BotInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BotResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BroadcastAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BroadcastSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BroadcastStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Button
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalendarClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CapTokenHolderProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardCapabilityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaribouAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataAttachmentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataBotMessageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataDeleteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataEditMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataTasksMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverDynamitePlaceholderMetadataVideoCallMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatConserverMessageContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatContentExtension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CircleProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudPrincipalProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CoActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Collaboration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommunalLabelTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentedAppUnfurlMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactGroupProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentReportJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentReportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextualAddOnMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomEmojiMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomFunctionReturnValueMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerIndexStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerQueryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerSearchApplicationStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerSessionStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerUserStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataLossPreventionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceIndexStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatePropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTimePicker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeepLinkData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteQueueItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryMedium
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayedProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Divider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DlpScanSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DmId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoublePropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveFollowUpRestrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveLocationRestrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveMimeTypeRestrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveTimeSpanRestrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamiteMessagesScoringInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamiteSpacesScoringInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditorClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailOwnerProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmbedClientItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumValuePair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FacetBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FacetOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FacetResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterCreated
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedFooter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Folder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FolderAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormatMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Formatting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreshnessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FuseboxItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FuseboxItemThreadMatchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FuseboxPrefUpdatePreState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GSuitePrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GaiaGroupProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GaiaUserProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewayAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewaySipAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCustomerIndexStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCustomerQueryStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCustomerSearchApplicationStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCustomerSessionStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetCustomerUserStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDataSourceIndexStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetSearchApplicationQueryStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetSearchApplicationSessionStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetSearchApplicationUserStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GmailClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1ContextualAddOnMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1ContextualAddOnMarkupCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardCardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardCardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardSection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupFormAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupFormActionActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupImageButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupKeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupOnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupOpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupTextButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChatV1WidgetMarkupTextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDocsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDocsResultInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Grid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupDetailsUpdatedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupLinkSharingModificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupRetentionSettingsUpdatedMetaData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GsuiteIntegrationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HangoutEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HangoutVideoEventMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashtagData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class History
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistoryRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostAppActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HtmlValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IconImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Id
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageCropStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageKeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapSessionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapSyncDelete
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapUidsReassign
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapsyncFolderAttributeFolderMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImapsyncFolderAttributeFolderMessageFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncomingWebhookChangedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexItemOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializeCustomerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerFacetingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegerValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegrationConfigMutation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntegrationConfigUpdatedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InteractionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InviteAcceptedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InviteeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemAcl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemCountByStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemParts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemStructuredData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemThread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobsettedServerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelAdded
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelCreated
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelRemoved
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelRenamed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelUpdated
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Labels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LdapGroupProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LdapUserProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LegacyUploadMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSourceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListItemNamesForUnmappedIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQuerySourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSearchApplicationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUnmappedIdentitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MdbGroupProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MdbUserProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeetingSpace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Member
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemberId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipChangeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipChangedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Menu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MenuItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageAdded
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageParentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageProps
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metaline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Name
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamedProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthConsumerProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectDisplayOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenCreatedDraftActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OtrChatMessageEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OtrModificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackagingServiceClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaygateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PeopleSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Person
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonalLabelTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PinnedItemId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PossiblyTrimmedModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostiniUserProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrefDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrefUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrefWritten
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Presenter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Principal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrincipalProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateMessageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessingError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyDisplayOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryCountByStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInterpretation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInterpretationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInterpretationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryOperator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotedMessageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rank
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacRoleProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacSubjectProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadReceiptsSettingsUpdatedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recipient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecordingEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecordingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecordingSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class References
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenameEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepositoryError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestFileScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestFileScopeForActiveDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequiredMessageFeaturesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetSearchApplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRoleProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultCounts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultDisplayField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultDisplayLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultDisplayMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrievalImportance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoomRenameMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoomUpdatedMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Roster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RosterId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RpcOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SafeUrlProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchApplicationQueryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchApplicationSessionStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchApplicationUserStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchItemsByViewUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchItemsByViewUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchQualityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectionControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionStateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SheetsClientActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SigningKeyPossessorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleSecretHolderProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleSecretLabelProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlashCommandMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SocialCommonAttachmentAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SocialGraphNodeProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SortOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceCrowdingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceResultCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceScoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpellResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SquareProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartUploadItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoredParticipantId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamViewerStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamingSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredDataObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuggestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuggestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuggestResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportUrls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwitchWidget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextKeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThreadKeySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThreadUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimestampOperatorOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimestampPropertyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimestampValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TombstoneMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Toolbar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopicId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopicState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopicStateUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranscriptionSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransientData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Triggers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrustedResourceUrlProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UniversalPhoneAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnmappedIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnreserveItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBccRecipients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateCcRecipients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDataSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDraftActionMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSubject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateToRecipients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserDisplayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserMentionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserMentionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoCallMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoicePhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoicePhoneNumberI18nData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WhiteboardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WidgetMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WonderCardDelete
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WonderMessageMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WrappedResourceKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YouTubeBroadcastSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YouTubeBroadcastStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YouTubeLiveBroadcastEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubeUserProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZwiebackSessionProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbuseReportingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recording_allowed, as: 'recordingAllowed'
          property :written_ugc_allowed, as: 'writtenUgcAllowed'
        end
      end
      
      class AckInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :unacked_device_count, as: 'unackedDeviceCount'
          collection :unacked_device_ids, as: 'unackedDeviceIds'
        end
      end
      
      class AclFixRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :recipient_emails, as: 'recipientEmails'
          property :role, as: 'role'
          property :should_fix, as: 'shouldFix'
        end
      end
      
      class AclFixStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixability, as: 'fixability'
          collection :fixable_email_address, as: 'fixableEmailAddress'
          collection :out_of_domain_warning_email_address, as: 'outOfDomainWarningEmailAddress'
        end
      end
      
      class AclInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :groups_count, as: 'groupsCount'
          property :scope, as: 'scope'
          property :users_count, as: 'usersCount'
        end
      end
      
      class ActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class AddonComposeUiActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class AffectedMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_member, as: 'affectedMember', class: Google::Apis::CloudsearchV1::MemberId, decorator: Google::Apis::CloudsearchV1::MemberId::Representation
      
          property :prior_membership_role, as: 'priorMembershipRole'
          property :prior_membership_state, as: 'priorMembershipState'
          property :target_membership_role, as: 'targetMembershipRole'
        end
      end
      
      class AllAuthenticatedUsersProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :babel_placeholder_metadata, as: 'babelPlaceholderMetadata', class: Google::Apis::CloudsearchV1::BabelPlaceholderMetadata, decorator: Google::Apis::CloudsearchV1::BabelPlaceholderMetadata::Representation
      
          property :card_capability_metadata, as: 'cardCapabilityMetadata', class: Google::Apis::CloudsearchV1::CardCapabilityMetadata, decorator: Google::Apis::CloudsearchV1::CardCapabilityMetadata::Representation
      
          property :chip_render_type, as: 'chipRenderType'
          property :consented_app_unfurl_metadata, as: 'consentedAppUnfurlMetadata', class: Google::Apis::CloudsearchV1::ConsentedAppUnfurlMetadata, decorator: Google::Apis::CloudsearchV1::ConsentedAppUnfurlMetadata::Representation
      
          property :custom_emoji_metadata, as: 'customEmojiMetadata', class: Google::Apis::CloudsearchV1::CustomEmojiMetadata, decorator: Google::Apis::CloudsearchV1::CustomEmojiMetadata::Representation
      
          property :data_loss_prevention_metadata, as: 'dataLossPreventionMetadata', class: Google::Apis::CloudsearchV1::DataLossPreventionMetadata, decorator: Google::Apis::CloudsearchV1::DataLossPreventionMetadata::Representation
      
          property :drive_metadata, as: 'driveMetadata', class: Google::Apis::CloudsearchV1::DriveMetadata, decorator: Google::Apis::CloudsearchV1::DriveMetadata::Representation
      
          property :format_metadata, as: 'formatMetadata', class: Google::Apis::CloudsearchV1::FormatMetadata, decorator: Google::Apis::CloudsearchV1::FormatMetadata::Representation
      
          property :group_retention_settings_updated, as: 'groupRetentionSettingsUpdated', class: Google::Apis::CloudsearchV1::GroupRetentionSettingsUpdatedMetaData, decorator: Google::Apis::CloudsearchV1::GroupRetentionSettingsUpdatedMetaData::Representation
      
          property :gsuite_integration_metadata, as: 'gsuiteIntegrationMetadata', class: Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata, decorator: Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata::Representation
      
          property :incoming_webhook_changed_metadata, as: 'incomingWebhookChangedMetadata', class: Google::Apis::CloudsearchV1::IncomingWebhookChangedMetadata, decorator: Google::Apis::CloudsearchV1::IncomingWebhookChangedMetadata::Representation
      
          property :inline_render_format, as: 'inlineRenderFormat'
          property :integration_config_updated, as: 'integrationConfigUpdated', class: Google::Apis::CloudsearchV1::IntegrationConfigUpdatedMetadata, decorator: Google::Apis::CloudsearchV1::IntegrationConfigUpdatedMetadata::Representation
      
          property :interaction_data, as: 'interactionData', class: Google::Apis::CloudsearchV1::InteractionData, decorator: Google::Apis::CloudsearchV1::InteractionData::Representation
      
          property :length, as: 'length'
          property :local_id, as: 'localId'
          property :membership_changed, as: 'membershipChanged', class: Google::Apis::CloudsearchV1::MembershipChangedMetadata, decorator: Google::Apis::CloudsearchV1::MembershipChangedMetadata::Representation
      
          property :read_receipts_settings_metadata, as: 'readReceiptsSettingsMetadata', class: Google::Apis::CloudsearchV1::ReadReceiptsSettingsUpdatedMetadata, decorator: Google::Apis::CloudsearchV1::ReadReceiptsSettingsUpdatedMetadata::Representation
      
          property :required_message_features_metadata, as: 'requiredMessageFeaturesMetadata', class: Google::Apis::CloudsearchV1::RequiredMessageFeaturesMetadata, decorator: Google::Apis::CloudsearchV1::RequiredMessageFeaturesMetadata::Representation
      
          property :room_updated, as: 'roomUpdated', class: Google::Apis::CloudsearchV1::RoomUpdatedMetadata, decorator: Google::Apis::CloudsearchV1::RoomUpdatedMetadata::Representation
      
          property :server_invalidated, as: 'serverInvalidated'
          property :slash_command_metadata, as: 'slashCommandMetadata', class: Google::Apis::CloudsearchV1::SlashCommandMetadata, decorator: Google::Apis::CloudsearchV1::SlashCommandMetadata::Representation
      
          property :start_index, as: 'startIndex'
          property :type, as: 'type'
          property :unique_id, as: 'uniqueId'
          property :upload_metadata, as: 'uploadMetadata', class: Google::Apis::CloudsearchV1::UploadMetadata, decorator: Google::Apis::CloudsearchV1::UploadMetadata::Representation
      
          property :url_metadata, as: 'urlMetadata', class: Google::Apis::CloudsearchV1::UrlMetadata, decorator: Google::Apis::CloudsearchV1::UrlMetadata::Representation
      
          property :user_mention_metadata, as: 'userMentionMetadata', class: Google::Apis::CloudsearchV1::UserMentionMetadata, decorator: Google::Apis::CloudsearchV1::UserMentionMetadata::Representation
      
          property :video_call_metadata, as: 'videoCallMetadata', class: Google::Apis::CloudsearchV1::VideoCallMetadata, decorator: Google::Apis::CloudsearchV1::VideoCallMetadata::Representation
      
          property :youtube_metadata, as: 'youtubeMetadata', class: Google::Apis::CloudsearchV1::YoutubeMetadata, decorator: Google::Apis::CloudsearchV1::YoutubeMetadata::Representation
      
        end
      end
      
      class AppId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_type, as: 'appType'
          property :gsuite_app_type, as: 'gsuiteAppType'
          property :id, :numeric_string => true, as: 'id'
        end
      end
      
      class AppsDynamiteSharedActivityFeedAnnotationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_feed_message_create_time, as: 'activityFeedMessageCreateTime'
          property :activity_feed_message_id, as: 'activityFeedMessageId', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
          property :chat_item, as: 'chatItem', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItem, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItem::Representation
      
          property :shared_user_info, as: 'sharedUserInfo', class: Google::Apis::CloudsearchV1::UserInfo, decorator: Google::Apis::CloudsearchV1::UserInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationDataUserInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationDataUserInfo::Representation
      
        end
      end
      
      class AppsDynamiteSharedActivityFeedAnnotationDataUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :updater_count_display_type, as: 'updaterCountDisplayType'
          property :updater_count_to_show, as: 'updaterCountToShow'
          property :updater_to_show, as: 'updaterToShow', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class AppsDynamiteSharedAppProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_emoji, as: 'avatarEmoji'
          property :avatar_url, as: 'avatarUrl'
          property :name, as: 'name'
        end
      end
      
      class AppsDynamiteSharedAssistantAnnotationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggestion, as: 'suggestion', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSuggestion, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSuggestion::Representation
      
          property :unfulfillable, as: 'unfulfillable', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantUnfulfillableRequest, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantUnfulfillableRequest::Representation
      
        end
      end
      
      class AppsDynamiteSharedAssistantDebugContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class AppsDynamiteSharedAssistantFeedbackContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_chips, as: 'feedbackChips', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContextFeedbackChip, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContextFeedbackChip::Representation
      
          property :thumbs_feedback, as: 'thumbsFeedback'
        end
      end
      
      class AppsDynamiteSharedAssistantFeedbackContextFeedbackChip
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feedback_chip_type, as: 'feedbackChipType'
          property :state, as: 'state'
        end
      end
      
      class AppsDynamiteSharedAssistantSessionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contextual_session_id, as: 'contextualSessionId'
        end
      end
      
      class AppsDynamiteSharedAssistantSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_context, as: 'debugContext', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantDebugContext, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantDebugContext::Representation
      
          property :feedback_context, as: 'feedbackContext', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContext, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContext::Representation
      
          property :find_document_suggestion, as: 'findDocumentSuggestion', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedFindDocumentSuggestion, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedFindDocumentSuggestion::Representation
      
          property :serialized_suggestions, as: 'serializedSuggestions'
          property :session_context, as: 'sessionContext', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSessionContext, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSessionContext::Representation
      
        end
      end
      
      class AppsDynamiteSharedAssistantUnfulfillableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedAvatarInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emoji, as: 'emoji', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji::Representation
      
        end
      end
      
      class AppsDynamiteSharedBackendUploadMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_path, as: 'blobPath'
          property :content_name, as: 'contentName'
          property :content_size, :numeric_string => true, as: 'contentSize'
          property :content_type, as: 'contentType'
          property :dlp_scan_outcome, as: 'dlpScanOutcome'
          property :dlp_scan_summary, as: 'dlpScanSummary', class: Google::Apis::CloudsearchV1::DlpScanSummary, decorator: Google::Apis::CloudsearchV1::DlpScanSummary::Representation
      
          property :group_id, as: 'groupId', class: Google::Apis::CloudsearchV1::GroupId, decorator: Google::Apis::CloudsearchV1::GroupId::Representation
      
          property :is_client_side_transcoded_video, as: 'isClientSideTranscodedVideo'
          property :original_dimension, as: 'originalDimension', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension::Representation
      
          property :quote_reply_message_id, as: 'quoteReplyMessageId', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
          property :sha256, :base64 => true, as: 'sha256'
          property :upload_ip, as: 'uploadIp'
          property :upload_timestamp_usec, :numeric_string => true, as: 'uploadTimestampUsec'
          property :video_id, as: 'videoId'
          property :video_thumbnail_blob_id, as: 'videoThumbnailBlobId'
          property :virus_scan_result, as: 'virusScanResult'
        end
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calendar_event, as: 'calendarEvent', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent::Representation
      
          property :event_creation, as: 'eventCreation', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataEventCreation, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataEventCreation::Representation
      
        end
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime::Representation
      
          property :event_id, as: 'eventId'
          property :start_time, as: 'startTime', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime::Representation
      
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_day, as: 'allDay', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :timed, as: 'timed'
        end
      end
      
      class AppsDynamiteSharedCalendarEventAnnotationDataEventCreation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedCallAnnotationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_ended_timestamp, as: 'callEndedTimestamp'
          property :call_metadata, as: 'callMetadata', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCallMetadata, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCallMetadata::Representation
      
          property :call_status, as: 'callStatus'
        end
      end
      
      class AppsDynamiteSharedCallMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meet_metadata, as: 'meetMetadata', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedMeetMetadata, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedMeetMetadata::Representation
      
        end
      end
      
      class AppsDynamiteSharedCardClickSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_id, as: 'actionId'
          property :suggestion_message_id, as: 'suggestionMessageId', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
        end
      end
      
      class AppsDynamiteSharedChatItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activity_info, as: 'activityInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfo::Representation
      
          property :group_info, as: 'groupInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemGroupInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemGroupInfo::Representation
      
          property :message_info, as: 'messageInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageInfo::Representation
      
        end
      end
      
      class AppsDynamiteSharedChatItemActivityInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feed_item_nudge, as: 'feedItemNudge', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemNudge, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemNudge::Representation
      
          property :feed_item_reactions, as: 'feedItemReactions', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemReactions, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemReactions::Representation
      
          property :feed_item_thread_reply, as: 'feedItemThreadReply', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply::Representation
      
          property :feed_item_user_mention, as: 'feedItemUserMention', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention::Representation
      
        end
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemNudge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nudge_type, as: 'nudgeType'
        end
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemReactions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reply_type, as: 'replyType'
        end
      end
      
      class AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class AppsDynamiteSharedChatItemGroupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_checker_group_type, as: 'attributeCheckerGroupType'
          property :group_name, as: 'groupName'
          property :group_read_time_usec, :numeric_string => true, as: 'groupReadTimeUsec'
          property :inline_threading_enabled, as: 'inlineThreadingEnabled'
        end
      end
      
      class AppsDynamiteSharedContentReportType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :system_violation, as: 'systemViolation'
        end
      end
      
      class AppsDynamiteSharedCustomEmoji
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_id, as: 'blobId'
          property :content_type, as: 'contentType'
          property :create_time_micros, :numeric_string => true, as: 'createTimeMicros'
          property :creator_user_id, as: 'creatorUserId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :delete_time_micros, :numeric_string => true, as: 'deleteTimeMicros'
          property :ephemeral_url, as: 'ephemeralUrl'
          property :owner_customer_id, as: 'ownerCustomerId', class: Google::Apis::CloudsearchV1::CustomerId, decorator: Google::Apis::CloudsearchV1::CustomerId::Representation
      
          property :read_token, as: 'readToken'
          property :shortcode, as: 'shortcode'
          property :state, as: 'state'
          property :update_time_micros, :numeric_string => true, as: 'updateTimeMicros'
          property :uuid, as: 'uuid'
        end
      end
      
      class AppsDynamiteSharedDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end
      
      class AppsDynamiteSharedDlpMetricsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dlp_status, as: 'dlpStatus'
        end
      end
      
      class AppsDynamiteSharedDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :justification, as: 'justification', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedJustification, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedJustification::Representation
      
          property :last_modified_time, as: 'lastModifiedTime'
          property :mime_type, as: 'mimeType'
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class AppsDynamiteSharedEmoji
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_emoji, as: 'customEmoji', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji::Representation
      
          property :unicode, as: 'unicode'
        end
      end
      
      class AppsDynamiteSharedFindDocumentSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document_suggestions, as: 'documentSuggestions', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedDocument, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedDocument::Representation
      
          property :show_action_buttons, as: 'showActionButtons'
        end
      end
      
      class AppsDynamiteSharedGroupDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :guidelines, as: 'guidelines'
        end
      end
      
      class AppsDynamiteSharedGroupVisibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class AppsDynamiteSharedJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_time, as: 'actionTime'
          property :action_type, as: 'actionType'
          property :document_owner, as: 'documentOwner', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedJustificationPerson, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedJustificationPerson::Representation
      
          collection :topics, as: 'topics'
        end
      end
      
      class AppsDynamiteSharedJustificationPerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_recipient, as: 'isRecipient'
          property :user, as: 'user', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class AppsDynamiteSharedMeetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meeting_code, as: 'meetingCode'
          property :meeting_url, as: 'meetingUrl'
        end
      end
      
      class AppsDynamiteSharedMessageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_id, as: 'messageId', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
          property :message_type, as: 'messageType'
          property :topic_read_time_usec, :numeric_string => true, as: 'topicReadTimeUsec'
        end
      end
      
      class AppsDynamiteSharedMessageIntegrationPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_number, :numeric_string => true, as: 'projectNumber'
          property :tasks_message_integration_payload, as: 'tasksMessageIntegrationPayload', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksMessageIntegrationPayload, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksMessageIntegrationPayload::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AppsDynamiteSharedOrganizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_info, as: 'consumerInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoConsumerInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoConsumerInfo::Representation
      
          property :customer_info, as: 'customerInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoCustomerInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoCustomerInfo::Representation
      
        end
      end
      
      class AppsDynamiteSharedOrganizationInfoConsumerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedOrganizationInfoCustomerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId', class: Google::Apis::CloudsearchV1::CustomerId, decorator: Google::Apis::CloudsearchV1::CustomerId::Representation
      
        end
      end
      
      class AppsDynamiteSharedOriginAppSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId', class: Google::Apis::CloudsearchV1::AppId, decorator: Google::Apis::CloudsearchV1::AppId::Representation
      
          property :card_click_suggestion, as: 'cardClickSuggestion', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCardClickSuggestion, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCardClickSuggestion::Representation
      
        end
      end
      
      class AppsDynamiteSharedPhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteSharedReaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :create_timestamp, :numeric_string => true, as: 'createTimestamp'
          property :current_user_participated, as: 'currentUserParticipated'
          property :emoji, as: 'emoji', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji::Representation
      
        end
      end
      
      class AppsDynamiteSharedRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiry_timestamp, :numeric_string => true, as: 'expiryTimestamp'
          property :state, as: 'state'
        end
      end
      
      class AppsDynamiteSharedSegmentedMembershipCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :member_type, as: 'memberType'
          property :membership_count, as: 'membershipCount'
          property :membership_state, as: 'membershipState'
        end
      end
      
      class AppsDynamiteSharedSegmentedMembershipCounts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCount, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCount::Representation
      
        end
      end
      
      class AppsDynamiteSharedSpaceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_info, as: 'avatarInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAvatarInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAvatarInfo::Representation
      
          property :avatar_url, as: 'avatarUrl'
          property :description, as: 'description'
          property :group_id, as: 'groupId', class: Google::Apis::CloudsearchV1::GroupId, decorator: Google::Apis::CloudsearchV1::GroupId::Representation
      
          property :inviter_email, as: 'inviterEmail'
          property :is_external, as: 'isExternal'
          property :name, as: 'name'
          property :num_members, as: 'numMembers'
          property :segmented_membership_counts, as: 'segmentedMembershipCounts', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts::Representation
      
          property :user_membership_state, as: 'userMembershipState'
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee_change, as: 'assigneeChange', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataAssigneeChange, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataAssigneeChange::Representation
      
          property :completion_change, as: 'completionChange', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCompletionChange, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCompletionChange::Representation
      
          property :creation, as: 'creation', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCreation, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCreation::Representation
      
          property :deletion_change, as: 'deletionChange', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataDeletionChange, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataDeletionChange::Representation
      
          property :task_id, as: 'taskId'
          property :task_properties, as: 'taskProperties', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataTaskProperties, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataTaskProperties::Representation
      
          property :user_defined_message, as: 'userDefinedMessage', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage::Representation
      
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataAssigneeChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :old_assignee, as: 'oldAssignee', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataCompletionChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataCreation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataDeletionChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataTaskProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee, as: 'assignee', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :completed, as: 'completed'
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :start_date, as: 'startDate', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :start_time, as: 'startTime'
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedTasksMessageIntegrationPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteSharedUserBlockRelationship
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_blocked_requester, as: 'hasBlockedRequester'
          property :is_blocked_by_requester, as: 'isBlockedByRequester'
        end
      end
      
      class AppsDynamiteSharedVideoReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :format, as: 'format'
          property :status, as: 'status'
        end
      end
      
      class AppsDynamiteStorageAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :interaction, as: 'interaction'
          property :load_indicator, as: 'loadIndicator'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageActionActionParameter, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageActionActionParameter::Representation
      
          property :persist_values, as: 'persistValues'
        end
      end
      
      class AppsDynamiteStorageActionActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteStorageBorderStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corner_radius, as: 'cornerRadius'
          property :stroke_color, as: 'strokeColor', class: Google::Apis::CloudsearchV1::Color, decorator: Google::Apis::CloudsearchV1::Color::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AppsDynamiteStorageButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :color, as: 'color', class: Google::Apis::CloudsearchV1::Color, decorator: Google::Apis::CloudsearchV1::Color::Representation
      
          property :disabled, as: 'disabled'
          property :icon, as: 'icon', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class AppsDynamiteStorageButtonList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageButton, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageButton::Representation
      
        end
      end
      
      class AppsDynamiteStorageCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardAction::Representation
      
          property :header, as: 'header', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardHeader, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardHeader::Representation
      
          property :name, as: 'name'
          collection :sections, as: 'sections', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardSection, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageCardSection::Representation
      
        end
      end
      
      class AppsDynamiteStorageCardCardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick::Representation
      
        end
      end
      
      class AppsDynamiteStorageCardCardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_alt_text, as: 'imageAltText'
          property :image_type, as: 'imageType'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteStorageCardSection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collapsible, as: 'collapsible'
          property :header, as: 'header'
          property :uncollapsible_widgets_count, as: 'uncollapsibleWidgetsCount'
          collection :widgets, as: 'widgets', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageWidget, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageWidget::Representation
      
        end
      end
      
      class AppsDynamiteStorageColumns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_items, as: 'columnItems', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumn, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumn::Representation
      
          property :wrap_style, as: 'wrapStyle'
        end
      end
      
      class AppsDynamiteStorageColumnsColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :horizontal_size_style, as: 'horizontalSizeStyle'
          property :vertical_alignment, as: 'verticalAlignment'
          collection :widgets, as: 'widgets', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumnWidgets, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumnWidgets::Representation
      
        end
      end
      
      class AppsDynamiteStorageColumnsColumnWidgets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker::Representation
      
          property :decorated_text, as: 'decoratedText', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText::Representation
      
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageImage, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageImage::Representation
      
          property :selection_input, as: 'selectionInput', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput::Representation
      
          property :text_input, as: 'textInput', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph::Representation
      
        end
      end
      
      class AppsDynamiteStorageDateTimePicker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :timezone_offset_date, as: 'timezoneOffsetDate'
          property :type, as: 'type'
          property :value_ms_epoch, :numeric_string => true, as: 'valueMsEpoch'
        end
      end
      
      class AppsDynamiteStorageDecoratedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageButton, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageButton::Representation
      
          property :end_icon, as: 'endIcon', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon::Representation
      
          property :icon, as: 'icon', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick::Representation
      
          property :start_icon, as: 'startIcon', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon::Representation
      
          property :switch_control, as: 'switchControl', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedTextSwitchControl, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedTextSwitchControl::Representation
      
          property :text, as: 'text'
          property :top_label, as: 'topLabel'
          property :wrap_text, as: 'wrapText'
        end
      end
      
      class AppsDynamiteStorageDecoratedTextSwitchControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_type, as: 'controlType'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :selected, as: 'selected'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteStorageDivider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AppsDynamiteStorageGrid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border_style, as: 'borderStyle', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle::Representation
      
          property :column_count, as: 'columnCount'
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageGridGridItem, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageGridGridItem::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick::Representation
      
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteStorageGridGridItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageImageComponent, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageImageComponent::Representation
      
          property :layout, as: 'layout'
          property :subtitle, as: 'subtitle'
          property :text_alignment, as: 'textAlignment'
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteStorageIcon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :icon_url, as: 'iconUrl'
          property :image_type, as: 'imageType'
          property :known_icon, as: 'knownIcon'
        end
      end
      
      class AppsDynamiteStorageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick::Representation
      
        end
      end
      
      class AppsDynamiteStorageImageComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :border_style, as: 'borderStyle', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle::Representation
      
          property :crop_style, as: 'cropStyle', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageImageCropStyle, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageImageCropStyle::Representation
      
          property :image_uri, as: 'imageUri'
        end
      end
      
      class AppsDynamiteStorageImageCropStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :type, as: 'type'
        end
      end
      
      class AppsDynamiteStorageOnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :host_app_action, as: 'hostAppAction', class: Google::Apis::CloudsearchV1::HostAppActionMarkup, decorator: Google::Apis::CloudsearchV1::HostAppActionMarkup::Representation
      
          property :open_dynamic_link_action, as: 'openDynamicLinkAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLink, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLink::Representation
      
        end
      end
      
      class AppsDynamiteStorageOpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_uri, as: 'appUri', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUri, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUri::Representation
      
          property :on_close, as: 'onClose'
          property :open_as, as: 'openAs'
          property :url, as: 'url'
        end
      end
      
      class AppsDynamiteStorageOpenLinkAppUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_intent, as: 'androidIntent', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntent, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntent::Representation
      
          property :companion_uri, as: 'companionUri'
          property :ios_uri, as: 'iosUri'
        end
      end
      
      class AppsDynamiteStorageOpenLinkAppUriIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extra_data, as: 'extraData', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntentExtraData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntentExtraData::Representation
      
          property :intent_action, as: 'intentAction'
        end
      end
      
      class AppsDynamiteStorageOpenLinkAppUriIntentExtraData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteStorageSelectionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInputSelectionItem, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInputSelectionItem::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AppsDynamiteStorageSelectionInputSelectionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected, as: 'selected'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteStorageSuggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestionsSuggestionItem, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestionsSuggestionItem::Representation
      
        end
      end
      
      class AppsDynamiteStorageSuggestionsSuggestionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class AppsDynamiteStorageTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_complete_action, as: 'autoCompleteAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :hint_text, as: 'hintText'
          property :initial_suggestions, as: 'initialSuggestions', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestions, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestions::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageAction::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteStorageTextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class AppsDynamiteStorageWidget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList::Representation
      
          property :columns, as: 'columns', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumns, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageColumns::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker::Representation
      
          property :decorated_text, as: 'decoratedText', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText::Representation
      
          property :divider, as: 'divider', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageDivider, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageDivider::Representation
      
          property :grid, as: 'grid', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageGrid, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageGrid::Representation
      
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageImage, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageImage::Representation
      
          property :selection_input, as: 'selectionInput', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput::Representation
      
          property :text_input, as: 'textInput', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph::Representation
      
        end
      end
      
      class AppsDynamiteV1ApiCompatV1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confirm, as: 'confirm', class: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1ActionConfirm, decorator: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1ActionConfirm::Representation
      
          property :name, as: 'name'
          property :style, as: 'style'
          property :text, as: 'text'
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class AppsDynamiteV1ApiCompatV1ActionConfirm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dismiss_text, as: 'dismiss_text'
          property :ok_text, as: 'ok_text'
          property :text, as: 'text'
          property :title, as: 'title'
        end
      end
      
      class AppsDynamiteV1ApiCompatV1Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Action, decorator: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Action::Representation
      
          property :attachment_type, as: 'attachment_type'
          property :author_icon, as: 'author_icon'
          property :author_link, as: 'author_link'
          property :author_name, as: 'author_name'
          property :callback_id, as: 'callback_id'
          property :color, as: 'color'
          property :fallback, as: 'fallback'
          collection :fields, as: 'fields', class: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Field, decorator: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Field::Representation
      
          property :footer, as: 'footer'
          property :footer_icon, as: 'footer_icon'
          property :image_url, as: 'image_url'
          collection :mrkdwn_in, as: 'mrkdwn_in'
          property :pretext, as: 'pretext'
          property :text, as: 'text'
          property :thumb_url, as: 'thumb_url'
          property :title, as: 'title'
          property :title_link, as: 'title_link'
          property :ts, as: 'ts'
        end
      end
      
      class AppsDynamiteV1ApiCompatV1Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :short, as: 'short'
          property :title, as: 'title'
          property :value, as: 'value'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addon_attachments, as: 'addonAttachments', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment::Representation
      
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon_url, as: 'iconUrl'
          property :mime_type, as: 'mimeType'
          property :resource_url, as: 'resourceUrl'
          property :title, as: 'title'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conference_id, as: 'conferenceId'
          property :conference_solution_id, as: 'conferenceSolutionId'
          collection :entry_points, as: 'entryPoints', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup::Representation
      
          property :error, as: 'error', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError::Representation
      
          property :note, as: 'note'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter::Representation
      
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_code, as: 'accessCode'
          collection :features, as: 'features'
          property :label, as: 'label'
          property :meeting_code, as: 'meetingCode'
          property :passcode, as: 'passcode'
          property :password, as: 'password'
          property :pin, as: 'pin'
          property :region_code, as: 'regionCode'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_url, as: 'authenticationUrl'
          property :type, as: 'type'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_attendee_emails, as: 'addAttendeeEmails'
        end
      end
      
      class AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conference_data, as: 'conferenceData', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup::Representation
      
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_on_data, as: 'addOnData', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup::Representation
      
          property :app_id, as: 'appId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :attachment_id, as: 'attachmentId'
          property :card_add_on_data, as: 'cardAddOnData', class: Google::Apis::CloudsearchV1::AppsDynamiteStorageCard, decorator: Google::Apis::CloudsearchV1::AppsDynamiteStorageCard::Representation
      
          property :deprecated_add_on_data, as: 'deprecatedAddOnData', class: Google::Apis::CloudsearchV1::ContextualAddOnMarkup, decorator: Google::Apis::CloudsearchV1::ContextualAddOnMarkup::Representation
      
          property :slack_data, as: 'slackData', class: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Attachment, decorator: Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Attachment::Representation
      
          property :slack_data_image_url_height, as: 'slackDataImageUrlHeight'
        end
      end
      
      class Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::CloudsearchV1::CaribouAttributeValue, decorator: Google::Apis::CloudsearchV1::CaribouAttributeValue::Representation
      
        end
      end
      
      class AttributeRemoved
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
        end
      end
      
      class AttributeSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :attribute_value, :base64 => true, as: 'attributeValue'
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute, as: 'attribute', class: Google::Apis::CloudsearchV1::Attribute, decorator: Google::Apis::CloudsearchV1::Attribute::Representation
      
        end
      end
      
      class AuditLoggingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_admin_read_actions, as: 'logAdminReadActions'
          property :log_data_read_actions, as: 'logDataReadActions'
          property :log_data_write_actions, as: 'logDataWriteActions'
          property :project, as: 'project'
        end
      end
      
      class AuthorizedItemId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :resource_key, as: 'resourceKey'
        end
      end
      
      class AutoComplete
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::AutoCompleteItem, decorator: Google::Apis::CloudsearchV1::AutoCompleteItem::Representation
      
        end
      end
      
      class AutoCompleteItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class BabelMessageProps
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_generated_id, :numeric_string => true, as: 'clientGeneratedId'
          property :content_extension, as: 'contentExtension', class: Google::Apis::CloudsearchV1::ChatContentExtension, decorator: Google::Apis::CloudsearchV1::ChatContentExtension::Representation
      
          property :delivery_medium, as: 'deliveryMedium', class: Google::Apis::CloudsearchV1::DeliveryMedium, decorator: Google::Apis::CloudsearchV1::DeliveryMedium::Representation
      
          property :event_id, as: 'eventId'
          property :message_content, as: 'messageContent', class: Google::Apis::CloudsearchV1::ChatConserverMessageContent, decorator: Google::Apis::CloudsearchV1::ChatConserverMessageContent::Representation
      
          property :was_updated_by_backfill, as: 'wasUpdatedByBackfill'
        end
      end
      
      class BabelPlaceholderMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_metadata, as: 'deleteMetadata', class: Google::Apis::CloudsearchV1::DeleteMetadata, decorator: Google::Apis::CloudsearchV1::DeleteMetadata::Representation
      
          property :edit_metadata, as: 'editMetadata', class: Google::Apis::CloudsearchV1::EditMetadata, decorator: Google::Apis::CloudsearchV1::EditMetadata::Representation
      
          property :hangout_video_metadata, as: 'hangoutVideoMetadata', class: Google::Apis::CloudsearchV1::HangoutVideoEventMetadata, decorator: Google::Apis::CloudsearchV1::HangoutVideoEventMetadata::Representation
      
        end
      end
      
      class BooleanOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
        end
      end
      
      class BooleanPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::BooleanOperatorOptions, decorator: Google::Apis::CloudsearchV1::BooleanOperatorOptions::Representation
      
        end
      end
      
      class BorderStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corner_radius, as: 'cornerRadius'
          property :stroke_color, as: 'strokeColor'
          property :type, as: 'type'
        end
      end
      
      class BotInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_allowlist_status, as: 'appAllowlistStatus'
          property :app_id, as: 'appId', class: Google::Apis::CloudsearchV1::AppId, decorator: Google::Apis::CloudsearchV1::AppId::Representation
      
          property :bot_avatar_url, as: 'botAvatarUrl'
          property :bot_name, as: 'botName'
          property :description, as: 'description'
          property :developer_name, as: 'developerName'
          property :market_place_banner_url, as: 'marketPlaceBannerUrl'
          property :status, as: 'status'
          property :support_home_screen, as: 'supportHomeScreen'
          property :support_urls, as: 'supportUrls', class: Google::Apis::CloudsearchV1::SupportUrls, decorator: Google::Apis::CloudsearchV1::SupportUrls::Representation
      
          collection :supported_uses, as: 'supportedUses'
        end
      end
      
      class BotResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bot_id, as: 'botId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :required_action, as: 'requiredAction'
          property :response_type, as: 'responseType'
          property :setup_url, as: 'setupUrl'
        end
      end
      
      class BroadcastAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_policy, as: 'accessPolicy'
          property :view_url, as: 'viewUrl'
        end
      end
      
      class BroadcastSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadcast_session_id, as: 'broadcastSessionId'
          property :broadcast_stats, as: 'broadcastStats', class: Google::Apis::CloudsearchV1::BroadcastStats, decorator: Google::Apis::CloudsearchV1::BroadcastStats::Representation
      
          property :ingestion_id, as: 'ingestionId'
          property :session_state_info, as: 'sessionStateInfo', class: Google::Apis::CloudsearchV1::SessionStateInfo, decorator: Google::Apis::CloudsearchV1::SessionStateInfo::Representation
      
        end
      end
      
      class BroadcastStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_viewer_count, :numeric_string => true, as: 'estimatedViewerCount'
        end
      end
      
      class Button
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_button, as: 'imageButton', class: Google::Apis::CloudsearchV1::ImageButton, decorator: Google::Apis::CloudsearchV1::ImageButton::Representation
      
          property :text_button, as: 'textButton', class: Google::Apis::CloudsearchV1::TextButton, decorator: Google::Apis::CloudsearchV1::TextButton::Representation
      
        end
      end
      
      class CalendarClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_attachments_action_markup, as: 'addAttachmentsActionMarkup', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup::Representation
      
          property :edit_attendees_action_markup, as: 'editAttendeesActionMarkup', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup::Representation
      
          property :edit_conference_data_action_markup, as: 'editConferenceDataActionMarkup', class: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup, decorator: Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup::Representation
      
        end
      end
      
      class CallInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abuse_reporting_config, as: 'abuseReportingConfig', class: Google::Apis::CloudsearchV1::AbuseReportingConfig, decorator: Google::Apis::CloudsearchV1::AbuseReportingConfig::Representation
      
          property :artifact_owner, as: 'artifactOwner', class: Google::Apis::CloudsearchV1::UserDisplayInfo, decorator: Google::Apis::CloudsearchV1::UserDisplayInfo::Representation
      
          collection :attached_documents, as: 'attachedDocuments', class: Google::Apis::CloudsearchV1::DocumentInfo, decorator: Google::Apis::CloudsearchV1::DocumentInfo::Representation
      
          collection :available_access_types, as: 'availableAccessTypes'
          collection :available_reactions, as: 'availableReactions', class: Google::Apis::CloudsearchV1::ReactionInfo, decorator: Google::Apis::CloudsearchV1::ReactionInfo::Representation
      
          property :broadcast_session_info, as: 'broadcastSessionInfo', class: Google::Apis::CloudsearchV1::BroadcastSessionInfo, decorator: Google::Apis::CloudsearchV1::BroadcastSessionInfo::Representation
      
          property :calendar_event_id, as: 'calendarEventId'
          property :co_activity, as: 'coActivity', class: Google::Apis::CloudsearchV1::CoActivity, decorator: Google::Apis::CloudsearchV1::CoActivity::Representation
      
          property :collaboration, as: 'collaboration', class: Google::Apis::CloudsearchV1::Collaboration, decorator: Google::Apis::CloudsearchV1::Collaboration::Representation
      
          property :cse_info, as: 'cseInfo', class: Google::Apis::CloudsearchV1::CseInfo, decorator: Google::Apis::CloudsearchV1::CseInfo::Representation
      
          property :max_joined_devices, as: 'maxJoinedDevices'
          property :organization_name, as: 'organizationName'
          property :paygate_info, as: 'paygateInfo', class: Google::Apis::CloudsearchV1::PaygateInfo, decorator: Google::Apis::CloudsearchV1::PaygateInfo::Representation
      
          property :presenter, as: 'presenter', class: Google::Apis::CloudsearchV1::Presenter, decorator: Google::Apis::CloudsearchV1::Presenter::Representation
      
          property :recording_info, as: 'recordingInfo', class: Google::Apis::CloudsearchV1::RecordingInfo, decorator: Google::Apis::CloudsearchV1::RecordingInfo::Representation
      
          property :recording_session_info, as: 'recordingSessionInfo', class: Google::Apis::CloudsearchV1::RecordingSessionInfo, decorator: Google::Apis::CloudsearchV1::RecordingSessionInfo::Representation
      
          property :settings, as: 'settings', class: Google::Apis::CloudsearchV1::CallSettings, decorator: Google::Apis::CloudsearchV1::CallSettings::Representation
      
          collection :streaming_sessions, as: 'streamingSessions', class: Google::Apis::CloudsearchV1::StreamingSessionInfo, decorator: Google::Apis::CloudsearchV1::StreamingSessionInfo::Representation
      
          property :transcription_session_info, as: 'transcriptionSessionInfo', class: Google::Apis::CloudsearchV1::TranscriptionSessionInfo, decorator: Google::Apis::CloudsearchV1::TranscriptionSessionInfo::Representation
      
          property :viewer_count, as: 'viewerCount'
          collection :you_tube_broadcast_session_infos, as: 'youTubeBroadcastSessionInfos', class: Google::Apis::CloudsearchV1::YouTubeBroadcastSessionInfo, decorator: Google::Apis::CloudsearchV1::YouTubeBroadcastSessionInfo::Representation
      
        end
      end
      
      class CallSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_lock, as: 'accessLock'
          property :access_type, as: 'accessType'
          property :allow_joining_before_host, as: 'allowJoiningBeforeHost'
          property :attendance_report_enabled, as: 'attendanceReportEnabled'
          property :audio_lock, as: 'audioLock'
          property :chat_lock, as: 'chatLock'
          property :cse_enabled, as: 'cseEnabled'
          property :moderation_enabled, as: 'moderationEnabled'
          property :present_lock, as: 'presentLock'
          property :reactions_lock, as: 'reactionsLock'
          property :video_lock, as: 'videoLock'
        end
      end
      
      class CapTokenHolderProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_hmac_sha1_prefix, :base64 => true, as: 'tokenHmacSha1Prefix'
        end
      end
      
      class Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::CloudsearchV1::CardAction, decorator: Google::Apis::CloudsearchV1::CardAction::Representation
      
          property :display_style, as: 'displayStyle'
          property :fixed_footer, as: 'fixedFooter', class: Google::Apis::CloudsearchV1::FixedFooter, decorator: Google::Apis::CloudsearchV1::FixedFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::CloudsearchV1::CardHeader, decorator: Google::Apis::CloudsearchV1::CardHeader::Representation
      
          property :name, as: 'name'
          property :peek_card_header, as: 'peekCardHeader', class: Google::Apis::CloudsearchV1::CardHeader, decorator: Google::Apis::CloudsearchV1::CardHeader::Representation
      
          collection :sections, as: 'sections', class: Google::Apis::CloudsearchV1::Section, decorator: Google::Apis::CloudsearchV1::Section::Representation
      
        end
      end
      
      class CardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
        end
      end
      
      class CardCapabilityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :required_capabilities, as: 'requiredCapabilities'
        end
      end
      
      class CardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_alt_text, as: 'imageAltText'
          property :image_style, as: 'imageStyle'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class CaribouAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :int_value, as: 'intValue'
          property :long_value, :numeric_string => true, as: 'longValue'
          property :raw_byte_value, :base64 => true, as: 'rawByteValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class ChatClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_metadata, as: 'attachmentMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataAttachmentMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataAttachmentMetadata::Representation
      
          property :bot_message_metadata, as: 'botMessageMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataBotMessageMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataBotMessageMetadata::Representation
      
          property :calendar_event_metadata, as: 'calendarEventMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata::Representation
      
          property :delete_metadata, as: 'deleteMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataDeleteMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataDeleteMetadata::Representation
      
          property :edit_metadata, as: 'editMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataEditMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataEditMetadata::Representation
      
          property :space_url, as: 'spaceUrl'
          property :tasks_metadata, as: 'tasksMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataTasksMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataTasksMetadata::Representation
      
          property :video_call_metadata, as: 'videoCallMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataVideoCallMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataVideoCallMetadata::Representation
      
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataAttachmentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filename, as: 'filename'
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataBotMessageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataDeleteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataEditMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataTasksMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ChatConserverDynamitePlaceholderMetadataVideoCallMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meeting_url, as: 'meetingUrl'
        end
      end
      
      class ChatConserverMessageContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachment, as: 'attachment', class: Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment, decorator: Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment::Representation
      
          collection :segment, as: 'segment', class: Google::Apis::CloudsearchV1::Segment, decorator: Google::Apis::CloudsearchV1::Segment::Representation
      
        end
      end
      
      class ChatContentExtension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation, as: 'annotation', class: Google::Apis::CloudsearchV1::EventAnnotation, decorator: Google::Apis::CloudsearchV1::EventAnnotation::Representation
      
          property :dynamite_placeholder_metadata, as: 'dynamitePlaceholderMetadata', class: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadata, decorator: Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadata::Representation
      
          property :event_otr_status, as: 'eventOtrStatus'
          property :group_link_sharing_modification_event, as: 'groupLinkSharingModificationEvent', class: Google::Apis::CloudsearchV1::GroupLinkSharingModificationEvent, decorator: Google::Apis::CloudsearchV1::GroupLinkSharingModificationEvent::Representation
      
          property :hangout_event, as: 'hangoutEvent', class: Google::Apis::CloudsearchV1::HangoutEvent, decorator: Google::Apis::CloudsearchV1::HangoutEvent::Representation
      
          property :invite_accepted_event, as: 'inviteAcceptedEvent', class: Google::Apis::CloudsearchV1::InviteAcceptedEvent, decorator: Google::Apis::CloudsearchV1::InviteAcceptedEvent::Representation
      
          property :membership_change_event, as: 'membershipChangeEvent', class: Google::Apis::CloudsearchV1::MembershipChangeEvent, decorator: Google::Apis::CloudsearchV1::MembershipChangeEvent::Representation
      
          property :otr_chat_message_event, as: 'otrChatMessageEvent', class: Google::Apis::CloudsearchV1::OtrChatMessageEvent, decorator: Google::Apis::CloudsearchV1::OtrChatMessageEvent::Representation
      
          property :otr_modification_event, as: 'otrModificationEvent', class: Google::Apis::CloudsearchV1::OtrModificationEvent, decorator: Google::Apis::CloudsearchV1::OtrModificationEvent::Representation
      
          property :rename_event, as: 'renameEvent', class: Google::Apis::CloudsearchV1::RenameEvent, decorator: Google::Apis::CloudsearchV1::RenameEvent::Representation
      
        end
      end
      
      class ChatProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_id, as: 'chatId'
          property :member_type, as: 'memberType'
        end
      end
      
      class CheckAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_access, as: 'hasAccess'
        end
      end
      
      class CircleProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle_id, :numeric_string => true, as: 'circleId'
          property :owner_gaia_id, :numeric_string => true, as: 'ownerGaiaId'
          property :required_consistency_timestamp_usec, :numeric_string => true, as: 'requiredConsistencyTimestampUsec'
        end
      end
      
      class ClientContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :client_type, as: 'clientType'
          property :session_context, as: 'sessionContext', class: Google::Apis::CloudsearchV1::SessionContext, decorator: Google::Apis::CloudsearchV1::SessionContext::Representation
      
          property :user_ip, as: 'userIp'
        end
      end
      
      class CloudPrincipalProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class ClusterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_id, as: 'clusterId'
          property :throttled, as: 'throttled'
        end
      end
      
      class CoActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_title, as: 'activityTitle'
          property :co_activity_app, as: 'coActivityApp'
        end
      end
      
      class Collaboration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_id, as: 'attachmentId'
          property :initiator, as: 'initiator', class: Google::Apis::CloudsearchV1::UserDisplayInfo, decorator: Google::Apis::CloudsearchV1::UserDisplayInfo::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class CommunalLabelTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creator_user_id, :numeric_string => true, as: 'creatorUserId'
          property :label_id, as: 'labelId'
        end
      end
      
      class CompositeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logic_operator, as: 'logicOperator'
          collection :sub_filters, as: 'subFilters', class: Google::Apis::CloudsearchV1::Filter, decorator: Google::Apis::CloudsearchV1::Filter::Representation
      
        end
      end
      
      class ConsentedAppUnfurlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_specified_app_id, as: 'clientSpecifiedAppId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class ContactGroupProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, :numeric_string => true, as: 'groupId'
          property :owner_gaia_id, :numeric_string => true, as: 'ownerGaiaId'
          property :required_consistency_timestamp_usec, :numeric_string => true, as: 'requiredConsistencyTimestampUsec'
        end
      end
      
      class ContentReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_create_timestamp, as: 'reportCreateTimestamp'
          property :report_justification, as: 'reportJustification', class: Google::Apis::CloudsearchV1::ContentReportJustification, decorator: Google::Apis::CloudsearchV1::ContentReportJustification::Representation
      
          property :report_type, as: 'reportType', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedContentReportType, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedContentReportType::Representation
      
          property :reporter_user_id, as: 'reporterUserId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :revision_create_timestamp, as: 'revisionCreateTimestamp'
        end
      end
      
      class ContentReportJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_justification, as: 'userJustification'
        end
      end
      
      class ContentReportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number_reports, as: 'numberReports'
          property :number_reports_all_revisions, as: 'numberReportsAllRevisions'
        end
      end
      
      class ContextAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class ContextualAddOnMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cards, as: 'cards', class: Google::Apis::CloudsearchV1::Card, decorator: Google::Apis::CloudsearchV1::Card::Representation
      
          property :toolbar, as: 'toolbar', class: Google::Apis::CloudsearchV1::Toolbar, decorator: Google::Apis::CloudsearchV1::Toolbar::Representation
      
        end
      end
      
      class CseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cse_domain, as: 'cseDomain'
          property :wrapped_key, :base64 => true, as: 'wrappedKey'
        end
      end
      
      class CustomEmojiMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_emoji, as: 'customEmoji', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji::Representation
      
        end
      end
      
      class CustomFunctionReturnValueMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :value, as: 'value'
        end
      end
      
      class CustomerId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId'
        end
      end
      
      class CustomerIndexStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          collection :item_count_by_status, as: 'itemCountByStatus', class: Google::Apis::CloudsearchV1::ItemCountByStatus, decorator: Google::Apis::CloudsearchV1::ItemCountByStatus::Representation
      
        end
      end
      
      class CustomerQueryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          collection :query_count_by_status, as: 'queryCountByStatus', class: Google::Apis::CloudsearchV1::QueryCountByStatus, decorator: Google::Apis::CloudsearchV1::QueryCountByStatus::Representation
      
        end
      end
      
      class CustomerSearchApplicationStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
        end
      end
      
      class CustomerSessionStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :search_sessions_count, :numeric_string => true, as: 'searchSessionsCount'
        end
      end
      
      class CustomerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_logging_settings, as: 'auditLoggingSettings', class: Google::Apis::CloudsearchV1::AuditLoggingSettings, decorator: Google::Apis::CloudsearchV1::AuditLoggingSettings::Representation
      
          property :vpc_settings, as: 'vpcSettings', class: Google::Apis::CloudsearchV1::VpcSettings, decorator: Google::Apis::CloudsearchV1::VpcSettings::Representation
      
        end
      end
      
      class CustomerUserStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :one_day_active_users_count, :numeric_string => true, as: 'oneDayActiveUsersCount'
          property :seven_days_active_users_count, :numeric_string => true, as: 'sevenDaysActiveUsersCount'
          property :thirty_days_active_users_count, :numeric_string => true, as: 'thirtyDaysActiveUsersCount'
        end
      end
      
      class DataLossPreventionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dlp_scan_summary, as: 'dlpScanSummary', class: Google::Apis::CloudsearchV1::DlpScanSummary, decorator: Google::Apis::CloudsearchV1::DlpScanSummary::Representation
      
          property :warn_acknowledged, as: 'warnAcknowledged'
        end
      end
      
      class DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_modifications, as: 'disableModifications'
          property :disable_serving, as: 'disableServing'
          property :display_name, as: 'displayName'
          collection :indexing_service_accounts, as: 'indexingServiceAccounts'
          collection :items_visibility, as: 'itemsVisibility', class: Google::Apis::CloudsearchV1::GSuitePrincipal, decorator: Google::Apis::CloudsearchV1::GSuitePrincipal::Representation
      
          property :name, as: 'name'
          collection :operation_ids, as: 'operationIds'
          property :return_thumbnail_urls, as: 'returnThumbnailUrls'
          property :short_name, as: 'shortName'
        end
      end
      
      class DataSourceIndexStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          collection :item_count_by_status, as: 'itemCountByStatus', class: Google::Apis::CloudsearchV1::ItemCountByStatus, decorator: Google::Apis::CloudsearchV1::ItemCountByStatus::Representation
      
        end
      end
      
      class DataSourceRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_options, as: 'filterOptions', class: Google::Apis::CloudsearchV1::FilterOptions, decorator: Google::Apis::CloudsearchV1::FilterOptions::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :greater_than_operator_name, as: 'greaterThanOperatorName'
          property :less_than_operator_name, as: 'lessThanOperatorName'
          property :operator_name, as: 'operatorName'
        end
      end
      
      class DatePropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::DateOperatorOptions, decorator: Google::Apis::CloudsearchV1::DateOperatorOptions::Representation
      
        end
      end
      
      class DateTimePicker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change, as: 'onChange', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :timezone_offset_date, as: 'timezoneOffsetDate'
          property :type, as: 'type'
          property :value_ms_epoch, :numeric_string => true, as: 'valueMsEpoch'
        end
      end
      
      class DateValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
        end
      end
      
      class DebugOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_debugging, as: 'enableDebugging'
        end
      end
      
      class DeepLinkData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, :numeric_string => true, as: 'appId'
          collection :client, as: 'client', class: Google::Apis::CloudsearchV1::PackagingServiceClient, decorator: Google::Apis::CloudsearchV1::PackagingServiceClient::Representation
      
          property :deep_link_id, as: 'deepLinkId'
          property :url, as: 'url'
        end
      end
      
      class DeleteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteQueueItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :queue, as: 'queue'
        end
      end
      
      class DeliveryMedium
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium_type, as: 'mediumType'
          property :self_phone, as: 'selfPhone', class: Google::Apis::CloudsearchV1::VoicePhoneNumber, decorator: Google::Apis::CloudsearchV1::VoicePhoneNumber::Representation
      
        end
      end
      
      class DisplayedProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property_name, as: 'propertyName'
        end
      end
      
      class Divider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DlpScanSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scan_id, as: 'scanId'
          property :scan_not_applicable_for_context, as: 'scanNotApplicableForContext'
          property :scan_outcome, as: 'scanOutcome'
        end
      end
      
      class DmId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dm_id, as: 'dmId'
        end
      end
      
      class DocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :whiteboard_info, as: 'whiteboardInfo', class: Google::Apis::CloudsearchV1::WhiteboardInfo, decorator: Google::Apis::CloudsearchV1::WhiteboardInfo::Representation
      
        end
      end
      
      class DoubleOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
        end
      end
      
      class DoublePropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::DoubleOperatorOptions, decorator: Google::Apis::CloudsearchV1::DoubleOperatorOptions::Representation
      
        end
      end
      
      class DoubleValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class DriveClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_file_scope, as: 'requestFileScope', class: Google::Apis::CloudsearchV1::RequestFileScope, decorator: Google::Apis::CloudsearchV1::RequestFileScope::Representation
      
        end
      end
      
      class DriveFollowUpRestrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class DriveLocationRestrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class DriveMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_fix_request, as: 'aclFixRequest', class: Google::Apis::CloudsearchV1::AclFixRequest, decorator: Google::Apis::CloudsearchV1::AclFixRequest::Representation
      
          property :acl_fix_status, as: 'aclFixStatus', class: Google::Apis::CloudsearchV1::AclFixStatus, decorator: Google::Apis::CloudsearchV1::AclFixStatus::Representation
      
          property :can_edit, as: 'canEdit'
          property :can_share, as: 'canShare'
          property :can_view, as: 'canView'
          property :drive_action, as: 'driveAction'
          property :drive_state, as: 'driveState'
          property :embed_url, as: 'embedUrl', class: Google::Apis::CloudsearchV1::TrustedResourceUrlProto, decorator: Google::Apis::CloudsearchV1::TrustedResourceUrlProto::Representation
      
          property :encrypted_doc_id, as: 'encryptedDocId'
          property :encrypted_resource_key, as: 'encryptedResourceKey'
          property :external_mimetype, as: 'externalMimetype'
          property :id, as: 'id'
          property :is_download_restricted, as: 'isDownloadRestricted'
          property :is_owner, as: 'isOwner'
          property :legacy_upload_metadata, as: 'legacyUploadMetadata', class: Google::Apis::CloudsearchV1::LegacyUploadMetadata, decorator: Google::Apis::CloudsearchV1::LegacyUploadMetadata::Representation
      
          property :mimetype, as: 'mimetype'
          property :organization_display_name, as: 'organizationDisplayName'
          property :shortcut_authorized_item_id, as: 'shortcutAuthorizedItemId', class: Google::Apis::CloudsearchV1::AuthorizedItemId, decorator: Google::Apis::CloudsearchV1::AuthorizedItemId::Representation
      
          property :should_not_render, as: 'shouldNotRender'
          property :thumbnail_height, as: 'thumbnailHeight'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :thumbnail_width, as: 'thumbnailWidth'
          property :title, as: 'title'
          property :url_fragment, as: 'urlFragment'
          property :wrapped_resource_key, as: 'wrappedResourceKey', class: Google::Apis::CloudsearchV1::WrappedResourceKey, decorator: Google::Apis::CloudsearchV1::WrappedResourceKey::Representation
      
        end
      end
      
      class DriveMimeTypeRestrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class DriveTimeSpanRestrict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class DynamiteMessagesScoringInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_contact_count, :numeric_string => true, as: 'commonContactCount'
          property :common_count_to_contact_list_count_ratio, as: 'commonCountToContactListCountRatio'
          property :common_count_to_membership_count_ratio, as: 'commonCountToMembershipCountRatio'
          property :creator_gaia_id, :numeric_string => true, as: 'creatorGaiaId'
          property :creator_in_searcher_contact_list, as: 'creatorInSearcherContactList'
          property :das_contact_count, :numeric_string => true, as: 'dasContactCount'
          property :final_score, as: 'finalScore'
          property :freshness_score, as: 'freshnessScore'
          property :joined_space_affinity_score, as: 'joinedSpaceAffinityScore'
          property :last_read_timestamp_age_in_days, as: 'lastReadTimestampAgeInDays'
          property :message_age_in_days, as: 'messageAgeInDays'
          property :message_sender_affinity_score, as: 'messageSenderAffinityScore'
          property :space_id, :numeric_string => true, as: 'spaceId'
          property :space_membership_count, :numeric_string => true, as: 'spaceMembershipCount'
          property :topicality_score, as: 'topicalityScore'
          property :unjoined_space_affinity_score, as: 'unjoinedSpaceAffinityScore'
        end
      end
      
      class DynamiteSpacesScoringInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affinity_score, as: 'affinityScore'
          property :common_contact_count_affinity_score, as: 'commonContactCountAffinityScore'
          property :contacts_intersection_count, as: 'contactsIntersectionCount'
          property :final_score, as: 'finalScore'
          property :freshness_score, as: 'freshnessScore'
          property :joined_spaces_affinity_score, as: 'joinedSpacesAffinityScore'
          property :last_message_posted_timestamp_secs, :numeric_string => true, as: 'lastMessagePostedTimestampSecs'
          property :last_read_timestamp_secs, :numeric_string => true, as: 'lastReadTimestampSecs'
          property :member_metadata_count, as: 'memberMetadataCount'
          property :message_score, as: 'messageScore'
          property :num_auc_contacts, :numeric_string => true, as: 'numAucContacts'
          property :small_contact_list_affinity_score, as: 'smallContactListAffinityScore'
          property :small_unjoined_spaces_affinity_score, as: 'smallUnjoinedSpacesAffinityScore'
          property :space_age_in_days, as: 'spaceAgeInDays'
          property :space_creation_timestamp_secs, :numeric_string => true, as: 'spaceCreationTimestampSecs'
          property :topicality_score, as: 'topicalityScore'
        end
      end
      
      class EditMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EditorClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_file_scope_for_active_document, as: 'requestFileScopeForActiveDocument', class: Google::Apis::CloudsearchV1::RequestFileScopeForActiveDocument, decorator: Google::Apis::CloudsearchV1::RequestFileScopeForActiveDocument::Representation
      
        end
      end
      
      class EmailAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_type, as: 'customType'
          property :email_address, as: 'emailAddress'
          property :email_url, as: 'emailUrl'
          property :primary, as: 'primary'
          property :type, as: 'type'
        end
      end
      
      class EmailOwnerProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class EmbedClientItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_id, as: 'canonicalId'
          property :deep_link_data, as: 'deepLinkData', class: Google::Apis::CloudsearchV1::DeepLinkData, decorator: Google::Apis::CloudsearchV1::DeepLinkData::Representation
      
          property :id, as: 'id'
          property :provenance, as: 'provenance', class: Google::Apis::CloudsearchV1::Provenance, decorator: Google::Apis::CloudsearchV1::Provenance::Representation
      
          property :render_id, as: 'renderId'
          property :signature, as: 'signature'
          property :transient_data, as: 'transientData', class: Google::Apis::CloudsearchV1::TransientData, decorator: Google::Apis::CloudsearchV1::TransientData::Representation
      
          collection :type, as: 'type'
        end
      end
      
      class EnumOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
        end
      end
      
      class EnumPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::EnumOperatorOptions, decorator: Google::Apis::CloudsearchV1::EnumOperatorOptions::Representation
      
          property :ordered_ranking, as: 'orderedRanking'
          collection :possible_values, as: 'possibleValues', class: Google::Apis::CloudsearchV1::EnumValuePair, decorator: Google::Apis::CloudsearchV1::EnumValuePair::Representation
      
        end
      end
      
      class EnumValuePair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integer_value, as: 'integerValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class EnumValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class ErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_messages, as: 'errorMessages', class: Google::Apis::CloudsearchV1::ErrorMessage, decorator: Google::Apis::CloudsearchV1::ErrorMessage::Representation
      
        end
      end
      
      class ErrorMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
        end
      end
      
      class EventAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class EventProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_id, as: 'eventId'
          property :member_type, as: 'memberType'
        end
      end
      
      class FacetBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :filter, as: 'filter', class: Google::Apis::CloudsearchV1::Filter, decorator: Google::Apis::CloudsearchV1::Filter::Representation
      
          property :percentage, as: 'percentage'
          property :value, as: 'value', class: Google::Apis::CloudsearchV1::Value, decorator: Google::Apis::CloudsearchV1::Value::Representation
      
        end
      end
      
      class FacetOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integer_faceting_options, as: 'integerFacetingOptions', class: Google::Apis::CloudsearchV1::IntegerFacetingOptions, decorator: Google::Apis::CloudsearchV1::IntegerFacetingOptions::Representation
      
          property :num_facet_buckets, as: 'numFacetBuckets'
          property :object_type, as: 'objectType'
          property :operator_name, as: 'operatorName'
          property :source_name, as: 'sourceName'
        end
      end
      
      class FacetResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::CloudsearchV1::FacetBucket, decorator: Google::Apis::CloudsearchV1::FacetBucket::Representation
      
          property :object_type, as: 'objectType'
          property :operator_name, as: 'operatorName'
          property :source_name, as: 'sourceName'
        end
      end
      
      class FieldViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :field, as: 'field'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composite_filter, as: 'compositeFilter', class: Google::Apis::CloudsearchV1::CompositeFilter, decorator: Google::Apis::CloudsearchV1::CompositeFilter::Representation
      
          property :value_filter, as: 'valueFilter', class: Google::Apis::CloudsearchV1::ValueFilter, decorator: Google::Apis::CloudsearchV1::ValueFilter::Representation
      
        end
      end
      
      class FilterCreated
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FilterDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FilterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::CloudsearchV1::Filter, decorator: Google::Apis::CloudsearchV1::Filter::Representation
      
          property :object_type, as: 'objectType'
        end
      end
      
      class FilterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_created, as: 'filterCreated', class: Google::Apis::CloudsearchV1::FilterCreated, decorator: Google::Apis::CloudsearchV1::FilterCreated::Representation
      
          property :filter_deleted, as: 'filterDeleted', class: Google::Apis::CloudsearchV1::FilterDeleted, decorator: Google::Apis::CloudsearchV1::FilterDeleted::Representation
      
          property :filter_id, as: 'filterId'
        end
      end
      
      class FixedFooter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::CloudsearchV1::Button, decorator: Google::Apis::CloudsearchV1::Button::Representation
      
          property :primary_button, as: 'primaryButton', class: Google::Apis::CloudsearchV1::TextButton, decorator: Google::Apis::CloudsearchV1::TextButton::Representation
      
          property :secondary_button, as: 'secondaryButton', class: Google::Apis::CloudsearchV1::TextButton, decorator: Google::Apis::CloudsearchV1::TextButton::Representation
      
        end
      end
      
      class Folder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          collection :message, as: 'message', class: Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessage, decorator: Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessage::Representation
      
        end
      end
      
      class FolderAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :folder, as: 'folder', class: Google::Apis::CloudsearchV1::Folder, decorator: Google::Apis::CloudsearchV1::Folder::Representation
      
        end
      end
      
      class FormAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_method_name, as: 'actionMethodName'
          property :load_indicator, as: 'loadIndicator'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudsearchV1::ActionParameter, decorator: Google::Apis::CloudsearchV1::ActionParameter::Representation
      
          property :persist_values, as: 'persistValues'
        end
      end
      
      class FormatMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :font_color, as: 'fontColor'
          property :format_type, as: 'formatType'
        end
      end
      
      class Formatting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bold, as: 'bold'
          property :highlight, as: 'highlight'
          property :italics, as: 'italics'
          property :strikethrough, as: 'strikethrough'
          property :style, as: 'style'
          property :underline, as: 'underline'
        end
      end
      
      class FreshnessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_duration, as: 'freshnessDuration'
          property :freshness_property, as: 'freshnessProperty'
        end
      end
      
      class FuseboxItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::CloudsearchV1::Attributes, decorator: Google::Apis::CloudsearchV1::Attributes::Representation
      
          property :creation_time_microseconds, :numeric_string => true, as: 'creationTimeMicroseconds'
          property :history, as: 'history', class: Google::Apis::CloudsearchV1::History, decorator: Google::Apis::CloudsearchV1::History::Representation
      
          property :item_key, as: 'itemKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :labels, as: 'labels', class: Google::Apis::CloudsearchV1::Labels, decorator: Google::Apis::CloudsearchV1::Labels::Representation
      
          property :last_modification_time_us, :numeric_string => true, as: 'lastModificationTimeUs'
          property :locker_references, as: 'lockerReferences', class: Google::Apis::CloudsearchV1::References, decorator: Google::Apis::CloudsearchV1::References::Representation
      
          property :match_info, as: 'matchInfo', class: Google::Apis::CloudsearchV1::MatchInfo, decorator: Google::Apis::CloudsearchV1::MatchInfo::Representation
      
          property :parts, as: 'parts', class: Google::Apis::CloudsearchV1::ItemParts, decorator: Google::Apis::CloudsearchV1::ItemParts::Representation
      
          property :read_ts, :numeric_string => true, as: 'readTs'
          property :references, as: 'references', class: Google::Apis::CloudsearchV1::References, decorator: Google::Apis::CloudsearchV1::References::Representation
      
          property :snippet, as: 'snippet'
          property :thread_key, as: 'threadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :thread_locator, as: 'threadLocator'
          property :triggers, as: 'triggers', class: Google::Apis::CloudsearchV1::Triggers, decorator: Google::Apis::CloudsearchV1::Triggers::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class FuseboxItemThreadMatchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :last_matching_item_id, :numeric_string => true, as: 'lastMatchingItemId'
          property :last_matching_item_key, as: 'lastMatchingItemKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          collection :matching_item_key, as: 'matchingItemKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :rank, as: 'rank', class: Google::Apis::CloudsearchV1::Rank, decorator: Google::Apis::CloudsearchV1::Rank::Representation
      
        end
      end
      
      class FuseboxPrefUpdatePreState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class GSuitePrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gsuite_domain, as: 'gsuiteDomain'
          property :gsuite_group_email, as: 'gsuiteGroupEmail'
          property :gsuite_user_email, as: 'gsuiteUserEmail'
        end
      end
      
      class GaiaGroupProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, :numeric_string => true, as: 'groupId'
        end
      end
      
      class GaiaUserProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_id, :numeric_string => true, as: 'userId'
        end
      end
      
      class GatewayAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GatewaySipAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sip_access_code, as: 'sipAccessCode'
          property :uri, as: 'uri'
        end
      end
      
      class GetCustomerIndexStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_indexed_item_count, :numeric_string => true, as: 'averageIndexedItemCount'
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::CustomerIndexStats, decorator: Google::Apis::CloudsearchV1::CustomerIndexStats::Representation
      
        end
      end
      
      class GetCustomerQueryStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::CustomerQueryStats, decorator: Google::Apis::CloudsearchV1::CustomerQueryStats::Representation
      
          property :total_query_count, :numeric_string => true, as: 'totalQueryCount'
        end
      end
      
      class GetCustomerSearchApplicationStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_search_application_count, :numeric_string => true, as: 'averageSearchApplicationCount'
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::CustomerSearchApplicationStats, decorator: Google::Apis::CloudsearchV1::CustomerSearchApplicationStats::Representation
      
        end
      end
      
      class GetCustomerSessionStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::CustomerSessionStats, decorator: Google::Apis::CloudsearchV1::CustomerSessionStats::Representation
      
        end
      end
      
      class GetCustomerUserStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::CustomerUserStats, decorator: Google::Apis::CloudsearchV1::CustomerUserStats::Representation
      
        end
      end
      
      class GetDataSourceIndexStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_indexed_item_count, :numeric_string => true, as: 'averageIndexedItemCount'
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::DataSourceIndexStats, decorator: Google::Apis::CloudsearchV1::DataSourceIndexStats::Representation
      
        end
      end
      
      class GetSearchApplicationQueryStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::SearchApplicationQueryStats, decorator: Google::Apis::CloudsearchV1::SearchApplicationQueryStats::Representation
      
          property :total_query_count, :numeric_string => true, as: 'totalQueryCount'
        end
      end
      
      class GetSearchApplicationSessionStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::SearchApplicationSessionStats, decorator: Google::Apis::CloudsearchV1::SearchApplicationSessionStats::Representation
      
        end
      end
      
      class GetSearchApplicationUserStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stats, as: 'stats', class: Google::Apis::CloudsearchV1::SearchApplicationUserStats, decorator: Google::Apis::CloudsearchV1::SearchApplicationUserStats::Representation
      
        end
      end
      
      class GmailClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addon_compose_ui_action_markup, as: 'addonComposeUiActionMarkup', class: Google::Apis::CloudsearchV1::AddonComposeUiActionMarkup, decorator: Google::Apis::CloudsearchV1::AddonComposeUiActionMarkup::Representation
      
          property :open_created_draft_action_markup, as: 'openCreatedDraftActionMarkup', class: Google::Apis::CloudsearchV1::OpenCreatedDraftActionMarkup, decorator: Google::Apis::CloudsearchV1::OpenCreatedDraftActionMarkup::Representation
      
          property :task_action, as: 'taskAction', class: Google::Apis::CloudsearchV1::TaskActionMarkup, decorator: Google::Apis::CloudsearchV1::TaskActionMarkup::Representation
      
          property :update_draft_action_markup, as: 'updateDraftActionMarkup', class: Google::Apis::CloudsearchV1::UpdateDraftActionMarkup, decorator: Google::Apis::CloudsearchV1::UpdateDraftActionMarkup::Representation
      
        end
      end
      
      class GoogleChatV1ContextualAddOnMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cards, as: 'cards', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCard, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCard::Representation
      
        end
      end
      
      class GoogleChatV1ContextualAddOnMarkupCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardAction, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardAction::Representation
      
          property :header, as: 'header', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardHeader, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardHeader::Representation
      
          property :name, as: 'name'
          collection :sections, as: 'sections', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardSection, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardSection::Representation
      
        end
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardCardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick::Representation
      
        end
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardCardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_style, as: 'imageStyle'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleChatV1ContextualAddOnMarkupCardSection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          collection :widgets, as: 'widgets', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkup, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkup::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton::Representation
      
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImage, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImage::Representation
      
          property :key_value, as: 'keyValue', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupKeyValue, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupKeyValue::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextParagraph, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextParagraph::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_button, as: 'imageButton', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImageButton, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImageButton::Representation
      
          property :text_button, as: 'textButton', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextButton, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextButton::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupFormAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_method_name, as: 'actionMethodName'
          collection :parameters, as: 'parameters', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormActionActionParameter, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormActionActionParameter::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupFormActionActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleChatV1WidgetMarkupImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupImageButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupKeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton::Representation
      
          property :content, as: 'content'
          property :content_multiline, as: 'contentMultiline'
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick::Representation
      
          property :top_label, as: 'topLabel'
        end
      end
      
      class GoogleChatV1WidgetMarkupOnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormAction, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormAction::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOpenLink, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOpenLink::Representation
      
        end
      end
      
      class GoogleChatV1WidgetMarkupOpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GoogleChatV1WidgetMarkupTextButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick, decorator: Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleChatV1WidgetMarkupTextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleDocsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_info, as: 'aclInfo', class: Google::Apis::CloudsearchV1::AclInfo, decorator: Google::Apis::CloudsearchV1::AclInfo::Representation
      
          property :document_type, as: 'documentType'
          property :file_extension, as: 'fileExtension'
          property :last_content_modified_timestamp, :numeric_string => true, as: 'lastContentModifiedTimestamp'
          property :num_subscribers, as: 'numSubscribers'
          property :num_viewers, as: 'numViewers'
          property :result_info, as: 'resultInfo', class: Google::Apis::CloudsearchV1::GoogleDocsResultInfo, decorator: Google::Apis::CloudsearchV1::GoogleDocsResultInfo::Representation
      
          property :type_info, as: 'typeInfo', class: Google::Apis::CloudsearchV1::TypeInfo, decorator: Google::Apis::CloudsearchV1::TypeInfo::Representation
      
        end
      end
      
      class GoogleDocsResultInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_sha1, as: 'attachmentSha1'
          property :cosmo_id, as: 'cosmoId', class: Google::Apis::CloudsearchV1::Id, decorator: Google::Apis::CloudsearchV1::Id::Representation
      
          property :cosmo_name_space, as: 'cosmoNameSpace'
          property :encrypted_id, as: 'encryptedId'
          property :mime_type, as: 'mimeType'
          property :share_scope, as: 'shareScope', class: Google::Apis::CloudsearchV1::ShareScope, decorator: Google::Apis::CloudsearchV1::ShareScope::Representation
      
        end
      end
      
      class Grid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border_style, as: 'borderStyle', class: Google::Apis::CloudsearchV1::BorderStyle, decorator: Google::Apis::CloudsearchV1::BorderStyle::Representation
      
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::GridItem, decorator: Google::Apis::CloudsearchV1::GridItem::Representation
      
          property :num_columns, as: 'numColumns'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GridItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identifier, as: 'identifier'
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::ImageComponent, decorator: Google::Apis::CloudsearchV1::ImageComponent::Representation
      
          property :layout, as: 'layout'
          property :subtitle, as: 'subtitle'
          property :text_alignment, as: 'textAlignment'
          property :title, as: 'title'
        end
      end
      
      class GroupDetailsUpdatedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_group_details, as: 'newGroupDetails', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails::Representation
      
          property :prev_group_details, as: 'prevGroupDetails', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails::Representation
      
        end
      end
      
      class GroupId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dm_id, as: 'dmId', class: Google::Apis::CloudsearchV1::DmId, decorator: Google::Apis::CloudsearchV1::DmId::Representation
      
          property :space_id, as: 'spaceId', class: Google::Apis::CloudsearchV1::SpaceId, decorator: Google::Apis::CloudsearchV1::SpaceId::Representation
      
        end
      end
      
      class GroupLinkSharingModificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_status, as: 'newStatus'
        end
      end
      
      class GroupRetentionSettingsUpdatedMetaData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initiator, as: 'initiator', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :retention_settings, as: 'retentionSettings', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings::Representation
      
        end
      end
      
      class GsuiteIntegrationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_feed_data, as: 'activityFeedData', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationData::Representation
      
          property :assistant_data, as: 'assistantData', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantAnnotationData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantAnnotationData::Representation
      
          property :calendar_event_data, as: 'calendarEventData', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationData::Representation
      
          property :call_data, as: 'callData', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedCallAnnotationData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedCallAnnotationData::Representation
      
          property :client_type, as: 'clientType'
          collection :indexable_texts, as: 'indexableTexts'
          property :tasks_data, as: 'tasksData', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationData, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationData::Representation
      
        end
      end
      
      class HangoutEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hangout_duration_secs, :numeric_string => true, as: 'hangoutDurationSecs'
          property :media_type, as: 'mediaType'
          collection :participant_id, as: 'participantId', class: Google::Apis::CloudsearchV1::StoredParticipantId, decorator: Google::Apis::CloudsearchV1::StoredParticipantId::Representation
      
          property :type, as: 'type'
        end
      end
      
      class HangoutVideoEventMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hangout_video_type, as: 'hangoutVideoType'
        end
      end
      
      class HashtagData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_text, as: 'searchText'
        end
      end
      
      class History
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :record, as: 'record', class: Google::Apis::CloudsearchV1::HistoryRecord, decorator: Google::Apis::CloudsearchV1::HistoryRecord::Representation
      
        end
      end
      
      class HistoryRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_context, as: 'clientContext', class: Google::Apis::CloudsearchV1::ClientContext, decorator: Google::Apis::CloudsearchV1::ClientContext::Representation
      
          property :filter_update, as: 'filterUpdate', class: Google::Apis::CloudsearchV1::FilterUpdate, decorator: Google::Apis::CloudsearchV1::FilterUpdate::Representation
      
          property :imap_update, as: 'imapUpdate', class: Google::Apis::CloudsearchV1::ImapUpdate, decorator: Google::Apis::CloudsearchV1::ImapUpdate::Representation
      
          property :label_update, as: 'labelUpdate', class: Google::Apis::CloudsearchV1::LabelUpdate, decorator: Google::Apis::CloudsearchV1::LabelUpdate::Representation
      
          property :pref_update, as: 'prefUpdate', class: Google::Apis::CloudsearchV1::PrefUpdate, decorator: Google::Apis::CloudsearchV1::PrefUpdate::Representation
      
          property :record_id, :numeric_string => true, as: 'recordId'
          property :thread_update, as: 'threadUpdate', class: Google::Apis::CloudsearchV1::ThreadUpdate, decorator: Google::Apis::CloudsearchV1::ThreadUpdate::Representation
      
          property :transaction_context, as: 'transactionContext', class: Google::Apis::CloudsearchV1::TransactionContext, decorator: Google::Apis::CloudsearchV1::TransactionContext::Representation
      
          property :txn_debug_info, as: 'txnDebugInfo', class: Google::Apis::CloudsearchV1::TransactionDebugInfo, decorator: Google::Apis::CloudsearchV1::TransactionDebugInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      class HostAppActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calendar_action, as: 'calendarAction', class: Google::Apis::CloudsearchV1::CalendarClientActionMarkup, decorator: Google::Apis::CloudsearchV1::CalendarClientActionMarkup::Representation
      
          property :chat_action, as: 'chatAction', class: Google::Apis::CloudsearchV1::ChatClientActionMarkup, decorator: Google::Apis::CloudsearchV1::ChatClientActionMarkup::Representation
      
          property :drive_action, as: 'driveAction', class: Google::Apis::CloudsearchV1::DriveClientActionMarkup, decorator: Google::Apis::CloudsearchV1::DriveClientActionMarkup::Representation
      
          property :editor_action, as: 'editorAction', class: Google::Apis::CloudsearchV1::EditorClientActionMarkup, decorator: Google::Apis::CloudsearchV1::EditorClientActionMarkup::Representation
      
          property :gmail_action, as: 'gmailAction', class: Google::Apis::CloudsearchV1::GmailClientActionMarkup, decorator: Google::Apis::CloudsearchV1::GmailClientActionMarkup::Representation
      
          property :sheets_action, as: 'sheetsAction', class: Google::Apis::CloudsearchV1::SheetsClientActionMarkup, decorator: Google::Apis::CloudsearchV1::SheetsClientActionMarkup::Representation
      
        end
      end
      
      class HostProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_name, as: 'hostName'
          property :host_owner, as: 'hostOwner'
        end
      end
      
      class HtmlOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
        end
      end
      
      class HtmlPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::HtmlOperatorOptions, decorator: Google::Apis::CloudsearchV1::HtmlOperatorOptions::Representation
      
          property :retrieval_importance, as: 'retrievalImportance', class: Google::Apis::CloudsearchV1::RetrievalImportance, decorator: Google::Apis::CloudsearchV1::RetrievalImportance::Representation
      
        end
      end
      
      class HtmlValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class IconImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :image_style, as: 'imageStyle'
        end
      end
      
      class Id
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creator_user_id, :numeric_string => true, as: 'creatorUserId'
          property :local_id, as: 'localId'
          property :name_space, as: 'nameSpace'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :aspect_ratio, as: 'aspectRatio'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
        end
      end
      
      class ImageButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
        end
      end
      
      class ImageComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :border_style, as: 'borderStyle', class: Google::Apis::CloudsearchV1::BorderStyle, decorator: Google::Apis::CloudsearchV1::BorderStyle::Representation
      
          property :crop_style, as: 'cropStyle', class: Google::Apis::CloudsearchV1::ImageCropStyle, decorator: Google::Apis::CloudsearchV1::ImageCropStyle::Representation
      
          property :image_url, as: 'imageUrl'
        end
      end
      
      class ImageCropStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :type, as: 'type'
        end
      end
      
      class ImageKeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class ImapSessionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app, as: 'app'
          property :device_type, as: 'deviceType'
          property :guid_fingerprint, :numeric_string => true, as: 'guidFingerprint'
          property :os, as: 'os'
          property :os_version, as: 'osVersion', class: Google::Apis::CloudsearchV1::OsVersion, decorator: Google::Apis::CloudsearchV1::OsVersion::Representation
      
          property :possibly_trimmed_model, as: 'possiblyTrimmedModel', class: Google::Apis::CloudsearchV1::PossiblyTrimmedModel, decorator: Google::Apis::CloudsearchV1::PossiblyTrimmedModel::Representation
      
        end
      end
      
      class ImapSyncDelete
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mappings, as: 'mappings', class: Google::Apis::CloudsearchV1::FolderAttribute, decorator: Google::Apis::CloudsearchV1::FolderAttribute::Representation
      
          property :msg_id, :numeric_string => true, as: 'msgId'
        end
      end
      
      class ImapUidsReassign
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_id, as: 'labelId'
          collection :message_id, as: 'messageId'
        end
      end
      
      class ImapUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imap_uids_reassign, as: 'imapUidsReassign', class: Google::Apis::CloudsearchV1::ImapUidsReassign, decorator: Google::Apis::CloudsearchV1::ImapUidsReassign::Representation
      
        end
      end
      
      class ImapsyncFolderAttributeFolderMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flags, as: 'flags', class: Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessageFlags, decorator: Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessageFlags::Representation
      
          property :uid, :numeric_string => true, as: 'uid'
        end
      end
      
      class ImapsyncFolderAttributeFolderMessageFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flagged, as: 'flagged'
          property :seen, as: 'seen'
        end
      end
      
      class IncomingWebhookChangedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :incoming_webhook_name, as: 'incomingWebhookName'
          property :initiator_id, as: 'initiatorId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :initiator_profile, as: 'initiatorProfile', class: Google::Apis::CloudsearchV1::User, decorator: Google::Apis::CloudsearchV1::User::Representation
      
          property :obfuscated_incoming_webhook_id, as: 'obfuscatedIncomingWebhookId'
          property :old_incoming_webhook_name, as: 'oldIncomingWebhookName'
          property :type, as: 'type'
        end
      end
      
      class IndexItemOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_unknown_gsuite_principals, as: 'allowUnknownGsuitePrincipals'
        end
      end
      
      class IndexItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :index_item_options, as: 'indexItemOptions', class: Google::Apis::CloudsearchV1::IndexItemOptions, decorator: Google::Apis::CloudsearchV1::IndexItemOptions::Representation
      
          property :item, as: 'item', class: Google::Apis::CloudsearchV1::Item, decorator: Google::Apis::CloudsearchV1::Item::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class InitializeCustomerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InsertContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :content_type, as: 'contentType'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class IntegerFacetingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :integer_buckets, as: 'integerBuckets'
        end
      end
      
      class IntegerOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :greater_than_operator_name, as: 'greaterThanOperatorName'
          property :less_than_operator_name, as: 'lessThanOperatorName'
          property :operator_name, as: 'operatorName'
        end
      end
      
      class IntegerPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integer_faceting_options, as: 'integerFacetingOptions', class: Google::Apis::CloudsearchV1::IntegerFacetingOptions, decorator: Google::Apis::CloudsearchV1::IntegerFacetingOptions::Representation
      
          property :maximum_value, :numeric_string => true, as: 'maximumValue'
          property :minimum_value, :numeric_string => true, as: 'minimumValue'
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::IntegerOperatorOptions, decorator: Google::Apis::CloudsearchV1::IntegerOperatorOptions::Representation
      
          property :ordered_ranking, as: 'orderedRanking'
        end
      end
      
      class IntegerValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class IntegrationConfigMutation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_app, as: 'addApp', class: Google::Apis::CloudsearchV1::AppId, decorator: Google::Apis::CloudsearchV1::AppId::Representation
      
          property :add_pinned_item, as: 'addPinnedItem', class: Google::Apis::CloudsearchV1::PinnedItemId, decorator: Google::Apis::CloudsearchV1::PinnedItemId::Representation
      
          property :remove_app, as: 'removeApp', class: Google::Apis::CloudsearchV1::AppId, decorator: Google::Apis::CloudsearchV1::AppId::Representation
      
          property :remove_pinned_item, as: 'removePinnedItem', class: Google::Apis::CloudsearchV1::PinnedItemId, decorator: Google::Apis::CloudsearchV1::PinnedItemId::Representation
      
        end
      end
      
      class IntegrationConfigUpdatedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initiator_id, as: 'initiatorId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          collection :mutations, as: 'mutations', class: Google::Apis::CloudsearchV1::IntegrationConfigMutation, decorator: Google::Apis::CloudsearchV1::IntegrationConfigMutation::Representation
      
        end
      end
      
      class Interaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interaction_time, as: 'interactionTime'
          property :principal, as: 'principal', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
          property :type, as: 'type'
        end
      end
      
      class InteractionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
        end
      end
      
      class InviteAcceptedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :participant_id, as: 'participantId', class: Google::Apis::CloudsearchV1::StoredParticipantId, decorator: Google::Apis::CloudsearchV1::StoredParticipantId::Representation
      
        end
      end
      
      class InviteeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :user_id, as: 'userId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl, as: 'acl', class: Google::Apis::CloudsearchV1::ItemAcl, decorator: Google::Apis::CloudsearchV1::ItemAcl::Representation
      
          property :content, as: 'content', class: Google::Apis::CloudsearchV1::ItemContent, decorator: Google::Apis::CloudsearchV1::ItemContent::Representation
      
          property :item_type, as: 'itemType'
          property :metadata, as: 'metadata', class: Google::Apis::CloudsearchV1::ItemMetadata, decorator: Google::Apis::CloudsearchV1::ItemMetadata::Representation
      
          property :name, as: 'name'
          property :payload, :base64 => true, as: 'payload'
          property :queue, as: 'queue'
          property :status, as: 'status', class: Google::Apis::CloudsearchV1::ItemStatus, decorator: Google::Apis::CloudsearchV1::ItemStatus::Representation
      
          property :structured_data, as: 'structuredData', class: Google::Apis::CloudsearchV1::ItemStructuredData, decorator: Google::Apis::CloudsearchV1::ItemStructuredData::Representation
      
          property :version, :base64 => true, as: 'version'
        end
      end
      
      class ItemAcl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_inheritance_type, as: 'aclInheritanceType'
          collection :denied_readers, as: 'deniedReaders', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
          property :inherit_acl_from, as: 'inheritAclFrom'
          collection :owners, as: 'owners', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
          collection :readers, as: 'readers', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
        end
      end
      
      class ItemContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_data_ref, as: 'contentDataRef', class: Google::Apis::CloudsearchV1::UploadItemRef, decorator: Google::Apis::CloudsearchV1::UploadItemRef::Representation
      
          property :content_format, as: 'contentFormat'
          property :hash_prop, as: 'hash'
          property :inline_content, :base64 => true, as: 'inlineContent'
        end
      end
      
      class ItemCountByStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :indexed_items_count, :numeric_string => true, as: 'indexedItemsCount'
          property :status_code, as: 'statusCode'
        end
      end
      
      class ItemMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_name, as: 'containerName'
          property :content_language, as: 'contentLanguage'
          collection :context_attributes, as: 'contextAttributes', class: Google::Apis::CloudsearchV1::ContextAttribute, decorator: Google::Apis::CloudsearchV1::ContextAttribute::Representation
      
          property :create_time, as: 'createTime'
          property :hash_prop, as: 'hash'
          collection :interactions, as: 'interactions', class: Google::Apis::CloudsearchV1::Interaction, decorator: Google::Apis::CloudsearchV1::Interaction::Representation
      
          collection :keywords, as: 'keywords'
          property :mime_type, as: 'mimeType'
          property :object_type, as: 'objectType'
          property :search_quality_metadata, as: 'searchQualityMetadata', class: Google::Apis::CloudsearchV1::SearchQualityMetadata, decorator: Google::Apis::CloudsearchV1::SearchQualityMetadata::Representation
      
          property :source_repository_url, as: 'sourceRepositoryUrl'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ItemParts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ItemStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :processing_errors, as: 'processingErrors', class: Google::Apis::CloudsearchV1::ProcessingError, decorator: Google::Apis::CloudsearchV1::ProcessingError::Representation
      
          collection :repository_errors, as: 'repositoryErrors', class: Google::Apis::CloudsearchV1::RepositoryError, decorator: Google::Apis::CloudsearchV1::RepositoryError::Representation
      
        end
      end
      
      class ItemStructuredData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hash_prop, as: 'hash'
          property :object, as: 'object', class: Google::Apis::CloudsearchV1::StructuredDataObject, decorator: Google::Apis::CloudsearchV1::StructuredDataObject::Representation
      
        end
      end
      
      class ItemThread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_info, as: 'clusterInfo', class: Google::Apis::CloudsearchV1::ClusterInfo, decorator: Google::Apis::CloudsearchV1::ClusterInfo::Representation
      
          collection :item, as: 'item', class: Google::Apis::CloudsearchV1::FuseboxItem, decorator: Google::Apis::CloudsearchV1::FuseboxItem::Representation
      
          property :last_item_id, :numeric_string => true, as: 'lastItemId'
          property :match_info, as: 'matchInfo', class: Google::Apis::CloudsearchV1::FuseboxItemThreadMatchInfo, decorator: Google::Apis::CloudsearchV1::FuseboxItemThreadMatchInfo::Representation
      
          property :snippet, as: 'snippet'
          property :thread_key, as: 'threadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :thread_locator, as: 'threadLocator'
          property :topic_state, as: 'topicState', class: Google::Apis::CloudsearchV1::TopicState, decorator: Google::Apis::CloudsearchV1::TopicState::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class JobsettedServerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port_name, as: 'portName'
          property :server_name, as: 'serverName'
        end
      end
      
      class KeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::CloudsearchV1::Button, decorator: Google::Apis::CloudsearchV1::Button::Representation
      
          property :content, as: 'content'
          property :content_multiline, as: 'contentMultiline'
          property :end_icon, as: 'endIcon', class: Google::Apis::CloudsearchV1::IconImage, decorator: Google::Apis::CloudsearchV1::IconImage::Representation
      
          property :icon, as: 'icon'
          property :icon_alt_text, as: 'iconAltText'
          property :icon_url, as: 'iconUrl'
          property :image_style, as: 'imageStyle'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
          property :start_icon, as: 'startIcon', class: Google::Apis::CloudsearchV1::IconImage, decorator: Google::Apis::CloudsearchV1::IconImage::Representation
      
          property :switch_widget, as: 'switchWidget', class: Google::Apis::CloudsearchV1::SwitchWidget, decorator: Google::Apis::CloudsearchV1::SwitchWidget::Representation
      
          property :top_label, as: 'topLabel'
        end
      end
      
      class LabelAdded
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_id, as: 'labelId'
          property :label_name, as: 'labelName'
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :sync_id, as: 'syncId'
        end
      end
      
      class LabelCreated
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LabelDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LabelRemoved
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_id, as: 'labelId'
          property :label_name, as: 'labelName'
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :sync_id, as: 'syncId'
        end
      end
      
      class LabelRenamed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :old_canonical_name, as: 'oldCanonicalName'
        end
      end
      
      class LabelUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_name, as: 'canonicalName'
          property :label_created, as: 'labelCreated', class: Google::Apis::CloudsearchV1::LabelCreated, decorator: Google::Apis::CloudsearchV1::LabelCreated::Representation
      
          property :label_deleted, as: 'labelDeleted', class: Google::Apis::CloudsearchV1::LabelDeleted, decorator: Google::Apis::CloudsearchV1::LabelDeleted::Representation
      
          property :label_id, as: 'labelId'
          property :label_renamed, as: 'labelRenamed', class: Google::Apis::CloudsearchV1::LabelRenamed, decorator: Google::Apis::CloudsearchV1::LabelRenamed::Representation
      
          property :label_updated, as: 'labelUpdated', class: Google::Apis::CloudsearchV1::LabelUpdated, decorator: Google::Apis::CloudsearchV1::LabelUpdated::Representation
      
          property :sync_id, as: 'syncId'
        end
      end
      
      class LabelUpdated
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Labels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_name, as: 'displayName'
          collection :id, as: 'id'
        end
      end
      
      class LanguageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :spoken_languages, as: 'spokenLanguages'
        end
      end
      
      class LdapGroupProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_name, as: 'groupName'
        end
      end
      
      class LdapUserProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_name, as: 'userName'
        end
      end
      
      class LegacyUploadMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_unique_id, as: 'legacyUniqueId'
          property :upload_metadata, as: 'uploadMetadata', class: Google::Apis::CloudsearchV1::UploadMetadata, decorator: Google::Apis::CloudsearchV1::UploadMetadata::Representation
      
        end
      end
      
      class LinkData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment, as: 'attachment', class: Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment, decorator: Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment::Representation
      
          property :attachment_render_hint, as: 'attachmentRenderHint'
          property :display_url, as: 'displayUrl'
          property :link_target, as: 'linkTarget'
          property :link_type, as: 'linkType'
          property :title, as: 'title'
        end
      end
      
      class ListDataSourceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::CloudsearchV1::DataSource, decorator: Google::Apis::CloudsearchV1::DataSource::Representation
      
        end
      end
      
      class ListItemNamesForUnmappedIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :item_names, as: 'itemNames'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::Item, decorator: Google::Apis::CloudsearchV1::Item::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudsearchV1::Operation, decorator: Google::Apis::CloudsearchV1::Operation::Representation
      
        end
      end
      
      class ListQuerySourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::CloudsearchV1::QuerySource, decorator: Google::Apis::CloudsearchV1::QuerySource::Representation
      
        end
      end
      
      class ListSearchApplicationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :search_applications, as: 'searchApplications', class: Google::Apis::CloudsearchV1::SearchApplication, decorator: Google::Apis::CloudsearchV1::SearchApplication::Representation
      
        end
      end
      
      class ListUnmappedIdentitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unmapped_identities, as: 'unmappedIdentities', class: Google::Apis::CloudsearchV1::UnmappedIdentity, decorator: Google::Apis::CloudsearchV1::UnmappedIdentity::Representation
      
        end
      end
      
      class MatchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matching_image_reference_key, as: 'matchingImageReferenceKey'
        end
      end
      
      class MatchRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class MdbGroupProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_name, as: 'groupName'
        end
      end
      
      class MdbUserProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gaia_id, :numeric_string => true, as: 'gaiaId'
          property :user_name, as: 'userName'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class MeetingSpace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accepted_number_class, as: 'acceptedNumberClass'
          property :broadcast_access, as: 'broadcastAccess', class: Google::Apis::CloudsearchV1::BroadcastAccess, decorator: Google::Apis::CloudsearchV1::BroadcastAccess::Representation
      
          property :call_info, as: 'callInfo', class: Google::Apis::CloudsearchV1::CallInfo, decorator: Google::Apis::CloudsearchV1::CallInfo::Representation
      
          property :gateway_access, as: 'gatewayAccess', class: Google::Apis::CloudsearchV1::GatewayAccess, decorator: Google::Apis::CloudsearchV1::GatewayAccess::Representation
      
          collection :gateway_sip_access, as: 'gatewaySipAccess', class: Google::Apis::CloudsearchV1::GatewaySipAccess, decorator: Google::Apis::CloudsearchV1::GatewaySipAccess::Representation
      
          property :meeting_alias, as: 'meetingAlias'
          property :meeting_code, as: 'meetingCode'
          property :meeting_space_id, as: 'meetingSpaceId'
          property :meeting_url, as: 'meetingUrl'
          property :more_join_url, as: 'moreJoinUrl'
          collection :phone_access, as: 'phoneAccess', class: Google::Apis::CloudsearchV1::PhoneAccess, decorator: Google::Apis::CloudsearchV1::PhoneAccess::Representation
      
          property :settings, as: 'settings', class: Google::Apis::CloudsearchV1::Settings, decorator: Google::Apis::CloudsearchV1::Settings::Representation
      
          property :universal_phone_access, as: 'universalPhoneAccess', class: Google::Apis::CloudsearchV1::UniversalPhoneAccess, decorator: Google::Apis::CloudsearchV1::UniversalPhoneAccess::Representation
      
        end
      end
      
      class Member
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :roster, as: 'roster', class: Google::Apis::CloudsearchV1::Roster, decorator: Google::Apis::CloudsearchV1::Roster::Representation
      
          property :user, as: 'user', class: Google::Apis::CloudsearchV1::User, decorator: Google::Apis::CloudsearchV1::User::Representation
      
        end
      end
      
      class MemberId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :roster_id, as: 'rosterId', class: Google::Apis::CloudsearchV1::RosterId, decorator: Google::Apis::CloudsearchV1::RosterId::Representation
      
          property :user_id, as: 'userId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class MembershipChangeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :leave_reason, as: 'leaveReason'
          collection :participant_id, as: 'participantId', class: Google::Apis::CloudsearchV1::StoredParticipantId, decorator: Google::Apis::CloudsearchV1::StoredParticipantId::Representation
      
          property :type, as: 'type'
        end
      end
      
      class MembershipChangedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_member_profiles, as: 'affectedMemberProfiles', class: Google::Apis::CloudsearchV1::Member, decorator: Google::Apis::CloudsearchV1::Member::Representation
      
          collection :affected_members, as: 'affectedMembers', class: Google::Apis::CloudsearchV1::MemberId, decorator: Google::Apis::CloudsearchV1::MemberId::Representation
      
          collection :affected_memberships, as: 'affectedMemberships', class: Google::Apis::CloudsearchV1::AffectedMembership, decorator: Google::Apis::CloudsearchV1::AffectedMembership::Representation
      
          property :initiator, as: 'initiator', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :initiator_profile, as: 'initiatorProfile', class: Google::Apis::CloudsearchV1::User, decorator: Google::Apis::CloudsearchV1::User::Representation
      
          property :initiator_type, as: 'initiatorType'
          property :type, as: 'type'
        end
      end
      
      class Menu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::MenuItem, decorator: Google::Apis::CloudsearchV1::MenuItem::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change, as: 'onChange', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
        end
      end
      
      class MenuItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected, as: 'selected'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::CloudsearchV1::Annotation, decorator: Google::Apis::CloudsearchV1::Annotation::Representation
      
          property :app_profile, as: 'appProfile', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile::Representation
      
          collection :attachments, as: 'attachments', class: Google::Apis::CloudsearchV1::Attachment, decorator: Google::Apis::CloudsearchV1::Attachment::Representation
      
          property :attributes, as: 'attributes', class: Google::Apis::CloudsearchV1::MessageAttributes, decorator: Google::Apis::CloudsearchV1::MessageAttributes::Representation
      
          collection :bot_responses, as: 'botResponses', class: Google::Apis::CloudsearchV1::BotResponse, decorator: Google::Apis::CloudsearchV1::BotResponse::Representation
      
          collection :communal_labels, as: 'communalLabels', class: Google::Apis::CloudsearchV1::CommunalLabelTag, decorator: Google::Apis::CloudsearchV1::CommunalLabelTag::Representation
      
          property :content_report_summary, as: 'contentReportSummary', class: Google::Apis::CloudsearchV1::ContentReportSummary, decorator: Google::Apis::CloudsearchV1::ContentReportSummary::Representation
      
          property :create_time, :numeric_string => true, as: 'createTime'
          property :creator_id, as: 'creatorId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :deletable_by, as: 'deletableBy'
          property :delete_time, :numeric_string => true, as: 'deleteTime'
          property :delete_time_for_requester, :numeric_string => true, as: 'deleteTimeForRequester'
          property :deleted_by_vault, as: 'deletedByVault'
          property :dlp_scan_outcome, as: 'dlpScanOutcome'
          property :dlp_scan_summary, as: 'dlpScanSummary', class: Google::Apis::CloudsearchV1::DlpScanSummary, decorator: Google::Apis::CloudsearchV1::DlpScanSummary::Representation
      
          property :editable_by, as: 'editableBy'
          property :fallback_text, as: 'fallbackText'
          property :id, as: 'id', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
          property :is_content_purged, as: 'isContentPurged'
          property :is_inline_reply, as: 'isInlineReply'
          property :last_edit_time, :numeric_string => true, as: 'lastEditTime'
          property :last_update_time, :numeric_string => true, as: 'lastUpdateTime'
          property :local_id, as: 'localId'
          property :message_integration_payload, as: 'messageIntegrationPayload', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageIntegrationPayload, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageIntegrationPayload::Representation
      
          property :message_origin, as: 'messageOrigin'
          property :message_state, as: 'messageState'
          collection :origin_app_suggestions, as: 'originAppSuggestions', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedOriginAppSuggestion, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedOriginAppSuggestion::Representation
      
          collection :personal_labels, as: 'personalLabels', class: Google::Apis::CloudsearchV1::PersonalLabelTag, decorator: Google::Apis::CloudsearchV1::PersonalLabelTag::Representation
      
          collection :private_message_infos, as: 'privateMessageInfos', class: Google::Apis::CloudsearchV1::PrivateMessageInfo, decorator: Google::Apis::CloudsearchV1::PrivateMessageInfo::Representation
      
          property :private_message_viewer, as: 'privateMessageViewer', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :props, as: 'props', class: Google::Apis::CloudsearchV1::MessageProps, decorator: Google::Apis::CloudsearchV1::MessageProps::Representation
      
          property :quoted_by_state, as: 'quotedByState'
          property :quoted_message_metadata, as: 'quotedMessageMetadata', class: Google::Apis::CloudsearchV1::QuotedMessageMetadata, decorator: Google::Apis::CloudsearchV1::QuotedMessageMetadata::Representation
      
          collection :reactions, as: 'reactions', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedReaction, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedReaction::Representation
      
          collection :reports, as: 'reports', class: Google::Apis::CloudsearchV1::ContentReport, decorator: Google::Apis::CloudsearchV1::ContentReport::Representation
      
          property :retention_settings, as: 'retentionSettings', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings::Representation
      
          property :rich_text_formatting_type, as: 'richTextFormattingType'
          property :secondary_message_key, as: 'secondaryMessageKey'
          property :text_body, as: 'textBody'
          property :tombstone_metadata, as: 'tombstoneMetadata', class: Google::Apis::CloudsearchV1::TombstoneMetadata, decorator: Google::Apis::CloudsearchV1::TombstoneMetadata::Representation
      
          property :updater_id, as: 'updaterId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          collection :upload_metadata, as: 'uploadMetadata', class: Google::Apis::CloudsearchV1::UploadMetadata, decorator: Google::Apis::CloudsearchV1::UploadMetadata::Representation
      
        end
      end
      
      class MessageAdded
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_ids, as: 'attributeIds'
          collection :label_ids, as: 'labelIds'
          property :message_key, as: 'messageKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          collection :sync_ids, as: 'syncIds'
        end
      end
      
      class MessageAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_tombstone, as: 'isTombstone'
        end
      end
      
      class MessageDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :imap_sync_mappings, as: 'imapSyncMappings', class: Google::Apis::CloudsearchV1::ImapSyncDelete, decorator: Google::Apis::CloudsearchV1::ImapSyncDelete::Representation
      
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          collection :wonder_card_mappings, as: 'wonderCardMappings', class: Google::Apis::CloudsearchV1::WonderCardDelete, decorator: Google::Apis::CloudsearchV1::WonderCardDelete::Representation
      
        end
      end
      
      class MessageId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_id, as: 'messageId'
          property :parent_id, as: 'parentId', class: Google::Apis::CloudsearchV1::MessageParentId, decorator: Google::Apis::CloudsearchV1::MessageParentId::Representation
      
        end
      end
      
      class MessageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author_user_type, as: 'authorUserType'
          property :message, as: 'message', class: Google::Apis::CloudsearchV1::Message, decorator: Google::Apis::CloudsearchV1::Message::Representation
      
          property :searcher_membership_state, as: 'searcherMembershipState'
        end
      end
      
      class MessageParentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic_id, as: 'topicId', class: Google::Apis::CloudsearchV1::TopicId, decorator: Google::Apis::CloudsearchV1::TopicId::Representation
      
        end
      end
      
      class MessageProps
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :babel_props, as: 'babelProps', class: Google::Apis::CloudsearchV1::BabelMessageProps, decorator: Google::Apis::CloudsearchV1::BabelMessageProps::Representation
      
        end
      end
      
      class MessageSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_options, as: 'displayOptions', class: Google::Apis::CloudsearchV1::ResultDisplayMetadata, decorator: Google::Apis::CloudsearchV1::ResultDisplayMetadata::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::CloudsearchV1::NamedProperty, decorator: Google::Apis::CloudsearchV1::NamedProperty::Representation
      
          property :mime_type, as: 'mimeType'
          property :object_type, as: 'objectType'
          property :owner, as: 'owner', class: Google::Apis::CloudsearchV1::Person, decorator: Google::Apis::CloudsearchV1::Person::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
          property :thumbnail_url, as: 'thumbnailUrl'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Metaline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties', class: Google::Apis::CloudsearchV1::DisplayedProperty, decorator: Google::Apis::CloudsearchV1::DisplayedProperty::Representation
      
        end
      end
      
      class MultiKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_assigned_perm_id, as: 'clientAssignedPermId'
          property :server_id, :numeric_string => true, as: 'serverId'
        end
      end
      
      class Name
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class NamedProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_values, as: 'dateValues', class: Google::Apis::CloudsearchV1::DateValues, decorator: Google::Apis::CloudsearchV1::DateValues::Representation
      
          property :double_values, as: 'doubleValues', class: Google::Apis::CloudsearchV1::DoubleValues, decorator: Google::Apis::CloudsearchV1::DoubleValues::Representation
      
          property :enum_values, as: 'enumValues', class: Google::Apis::CloudsearchV1::EnumValues, decorator: Google::Apis::CloudsearchV1::EnumValues::Representation
      
          property :html_values, as: 'htmlValues', class: Google::Apis::CloudsearchV1::HtmlValues, decorator: Google::Apis::CloudsearchV1::HtmlValues::Representation
      
          property :integer_values, as: 'integerValues', class: Google::Apis::CloudsearchV1::IntegerValues, decorator: Google::Apis::CloudsearchV1::IntegerValues::Representation
      
          property :name, as: 'name'
          property :object_values, as: 'objectValues', class: Google::Apis::CloudsearchV1::ObjectValues, decorator: Google::Apis::CloudsearchV1::ObjectValues::Representation
      
          property :text_values, as: 'textValues', class: Google::Apis::CloudsearchV1::TextValues, decorator: Google::Apis::CloudsearchV1::TextValues::Representation
      
          property :timestamp_values, as: 'timestampValues', class: Google::Apis::CloudsearchV1::TimestampValues, decorator: Google::Apis::CloudsearchV1::TimestampValues::Representation
      
        end
      end
      
      class OAuthConsumerProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
        end
      end
      
      class ObjectDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::CloudsearchV1::ObjectOptions, decorator: Google::Apis::CloudsearchV1::ObjectOptions::Representation
      
          collection :property_definitions, as: 'propertyDefinitions', class: Google::Apis::CloudsearchV1::PropertyDefinition, decorator: Google::Apis::CloudsearchV1::PropertyDefinition::Representation
      
        end
      end
      
      class ObjectDisplayOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metalines, as: 'metalines', class: Google::Apis::CloudsearchV1::Metaline, decorator: Google::Apis::CloudsearchV1::Metaline::Representation
      
          property :object_display_label, as: 'objectDisplayLabel'
        end
      end
      
      class ObjectOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_options, as: 'displayOptions', class: Google::Apis::CloudsearchV1::ObjectDisplayOptions, decorator: Google::Apis::CloudsearchV1::ObjectDisplayOptions::Representation
      
          property :freshness_options, as: 'freshnessOptions', class: Google::Apis::CloudsearchV1::FreshnessOptions, decorator: Google::Apis::CloudsearchV1::FreshnessOptions::Representation
      
          collection :suggestion_filtering_operators, as: 'suggestionFilteringOperators'
        end
      end
      
      class ObjectPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :subobject_properties, as: 'subobjectProperties', class: Google::Apis::CloudsearchV1::PropertyDefinition, decorator: Google::Apis::CloudsearchV1::PropertyDefinition::Representation
      
        end
      end
      
      class ObjectValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::CloudsearchV1::StructuredDataObject, decorator: Google::Apis::CloudsearchV1::StructuredDataObject::Representation
      
        end
      end
      
      class OnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :link, as: 'link'
          property :open_link, as: 'openLink', class: Google::Apis::CloudsearchV1::OpenLink, decorator: Google::Apis::CloudsearchV1::OpenLink::Representation
      
          property :open_link_action, as: 'openLinkAction', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
        end
      end
      
      class OpenCreatedDraftActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draft_id, as: 'draftId'
          property :draft_storage_id, as: 'draftStorageId'
          property :draft_thread_id, as: 'draftThreadId'
          property :draft_thread_server_perm_id, as: 'draftThreadServerPermId'
        end
      end
      
      class OpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :load_indicator, as: 'loadIndicator'
          property :on_close, as: 'onClose'
          property :open_as, as: 'openAs'
          property :url, as: 'url'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudsearchV1::Status, decorator: Google::Apis::CloudsearchV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OsVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :major_version, as: 'majorVersion'
          property :minor_version, as: 'minorVersion'
          property :tertiary_version, as: 'tertiaryVersion'
        end
      end
      
      class OtrChatMessageEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_timestamp_usec, :numeric_string => true, as: 'expirationTimestampUsec'
          property :kansas_row_id, as: 'kansasRowId'
          property :kansas_version_info, as: 'kansasVersionInfo'
          property :message_otr_status, as: 'messageOtrStatus'
        end
      end
      
      class OtrModificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_otr_status, as: 'newOtrStatus'
          property :new_otr_toggle, as: 'newOtrToggle'
          property :old_otr_status, as: 'oldOtrStatus'
          property :old_otr_toggle, as: 'oldOtrToggle'
        end
      end
      
      class PackagingServiceClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_package_name, as: 'androidPackageName'
          property :ios_app_store_id, as: 'iosAppStoreId'
          property :ios_bundle_id, as: 'iosBundleId'
          property :type, as: 'type'
        end
      end
      
      class PaygateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_ending_soon_warning_time, as: 'callEndingSoonWarningTime'
          property :call_ending_time, as: 'callEndingTime'
          property :show_upgrade_promos, as: 'showUpgradePromos'
        end
      end
      
      class PeopleSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person', class: Google::Apis::CloudsearchV1::Person, decorator: Google::Apis::CloudsearchV1::Person::Representation
      
        end
      end
      
      class Person
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :email_addresses, as: 'emailAddresses', class: Google::Apis::CloudsearchV1::EmailAddress, decorator: Google::Apis::CloudsearchV1::EmailAddress::Representation
      
          property :name, as: 'name'
          property :obfuscated_id, as: 'obfuscatedId'
          collection :person_names, as: 'personNames', class: Google::Apis::CloudsearchV1::Name, decorator: Google::Apis::CloudsearchV1::Name::Representation
      
          collection :phone_numbers, as: 'phoneNumbers', class: Google::Apis::CloudsearchV1::PhoneNumber, decorator: Google::Apis::CloudsearchV1::PhoneNumber::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::CloudsearchV1::Photo, decorator: Google::Apis::CloudsearchV1::Photo::Representation
      
        end
      end
      
      class PersonalLabelTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_id, as: 'labelId'
        end
      end
      
      class PhoneAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_phone_number, as: 'formattedPhoneNumber'
          property :language_code, as: 'languageCode'
          property :phone_number, as: 'phoneNumber'
          property :pin, as: 'pin'
          property :region_code, as: 'regionCode'
        end
      end
      
      class PhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
          property :type, as: 'type'
        end
      end
      
      class Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class PinnedItemId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_id, as: 'driveId'
        end
      end
      
      class PollItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :limit, as: 'limit'
          property :queue, as: 'queue'
          collection :status_codes, as: 'statusCodes'
        end
      end
      
      class PollItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::Item, decorator: Google::Apis::CloudsearchV1::Item::Representation
      
        end
      end
      
      class PossiblyTrimmedModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_trimmed, as: 'isTrimmed'
          property :model, as: 'model'
        end
      end
      
      class PostiniUserProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postini_user_id, :numeric_string => true, as: 'postiniUserId'
        end
      end
      
      class PreState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
          property :message_key, as: 'messageKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          collection :sync_ids, as: 'syncIds'
          property :thread_key, as: 'threadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
        end
      end
      
      class PrefDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PrefUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :pre_state, as: 'preState', class: Google::Apis::CloudsearchV1::FuseboxPrefUpdatePreState, decorator: Google::Apis::CloudsearchV1::FuseboxPrefUpdatePreState::Representation
      
          property :pref_deleted, as: 'prefDeleted', class: Google::Apis::CloudsearchV1::PrefDeleted, decorator: Google::Apis::CloudsearchV1::PrefDeleted::Representation
      
          property :pref_written, as: 'prefWritten', class: Google::Apis::CloudsearchV1::PrefWritten, decorator: Google::Apis::CloudsearchV1::PrefWritten::Representation
      
        end
      end
      
      class PrefWritten
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class Presenter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :by_device_id, as: 'byDeviceId'
          collection :copresenter_device_ids, as: 'copresenterDeviceIds'
          property :presenter_device_id, as: 'presenterDeviceId'
        end
      end
      
      class Principal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_resource_name, as: 'groupResourceName'
          property :gsuite_principal, as: 'gsuitePrincipal', class: Google::Apis::CloudsearchV1::GSuitePrincipal, decorator: Google::Apis::CloudsearchV1::GSuitePrincipal::Representation
      
          property :user_resource_name, as: 'userResourceName'
        end
      end
      
      class PrincipalProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_authenticated_users, as: 'allAuthenticatedUsers', class: Google::Apis::CloudsearchV1::AllAuthenticatedUsersProto, decorator: Google::Apis::CloudsearchV1::AllAuthenticatedUsersProto::Representation
      
          property :cap_token_holder, as: 'capTokenHolder', class: Google::Apis::CloudsearchV1::CapTokenHolderProto, decorator: Google::Apis::CloudsearchV1::CapTokenHolderProto::Representation
      
          property :chat, as: 'chat', class: Google::Apis::CloudsearchV1::ChatProto, decorator: Google::Apis::CloudsearchV1::ChatProto::Representation
      
          property :circle, as: 'circle', class: Google::Apis::CloudsearchV1::CircleProto, decorator: Google::Apis::CloudsearchV1::CircleProto::Representation
      
          property :cloud_principal, as: 'cloudPrincipal', class: Google::Apis::CloudsearchV1::CloudPrincipalProto, decorator: Google::Apis::CloudsearchV1::CloudPrincipalProto::Representation
      
          property :contact_group, as: 'contactGroup', class: Google::Apis::CloudsearchV1::ContactGroupProto, decorator: Google::Apis::CloudsearchV1::ContactGroupProto::Representation
      
          property :email_owner, as: 'emailOwner', class: Google::Apis::CloudsearchV1::EmailOwnerProto, decorator: Google::Apis::CloudsearchV1::EmailOwnerProto::Representation
      
          property :event, as: 'event', class: Google::Apis::CloudsearchV1::EventProto, decorator: Google::Apis::CloudsearchV1::EventProto::Representation
      
          property :gaia_group, as: 'gaiaGroup', class: Google::Apis::CloudsearchV1::GaiaGroupProto, decorator: Google::Apis::CloudsearchV1::GaiaGroupProto::Representation
      
          property :gaia_user, as: 'gaiaUser', class: Google::Apis::CloudsearchV1::GaiaUserProto, decorator: Google::Apis::CloudsearchV1::GaiaUserProto::Representation
      
          property :host, as: 'host', class: Google::Apis::CloudsearchV1::HostProto, decorator: Google::Apis::CloudsearchV1::HostProto::Representation
      
          property :ldap_group, as: 'ldapGroup', class: Google::Apis::CloudsearchV1::LdapGroupProto, decorator: Google::Apis::CloudsearchV1::LdapGroupProto::Representation
      
          property :ldap_user, as: 'ldapUser', class: Google::Apis::CloudsearchV1::LdapUserProto, decorator: Google::Apis::CloudsearchV1::LdapUserProto::Representation
      
          property :mdb_group, as: 'mdbGroup', class: Google::Apis::CloudsearchV1::MdbGroupProto, decorator: Google::Apis::CloudsearchV1::MdbGroupProto::Representation
      
          property :mdb_user, as: 'mdbUser', class: Google::Apis::CloudsearchV1::MdbUserProto, decorator: Google::Apis::CloudsearchV1::MdbUserProto::Representation
      
          property :oauth_consumer, as: 'oauthConsumer', class: Google::Apis::CloudsearchV1::OAuthConsumerProto, decorator: Google::Apis::CloudsearchV1::OAuthConsumerProto::Representation
      
          property :postini_user, as: 'postiniUser', class: Google::Apis::CloudsearchV1::PostiniUserProto, decorator: Google::Apis::CloudsearchV1::PostiniUserProto::Representation
      
          property :rbac_role, as: 'rbacRole', class: Google::Apis::CloudsearchV1::RbacRoleProto, decorator: Google::Apis::CloudsearchV1::RbacRoleProto::Representation
      
          property :rbac_subject, as: 'rbacSubject', class: Google::Apis::CloudsearchV1::RbacSubjectProto, decorator: Google::Apis::CloudsearchV1::RbacSubjectProto::Representation
      
          property :resource_role, as: 'resourceRole', class: Google::Apis::CloudsearchV1::ResourceRoleProto, decorator: Google::Apis::CloudsearchV1::ResourceRoleProto::Representation
      
          property :scope, as: 'scope'
          property :signing_key_possessor, as: 'signingKeyPossessor', class: Google::Apis::CloudsearchV1::SigningKeyPossessorProto, decorator: Google::Apis::CloudsearchV1::SigningKeyPossessorProto::Representation
      
          property :simple_secret_holder, as: 'simpleSecretHolder', class: Google::Apis::CloudsearchV1::SimpleSecretHolderProto, decorator: Google::Apis::CloudsearchV1::SimpleSecretHolderProto::Representation
      
          property :social_graph_node, as: 'socialGraphNode', class: Google::Apis::CloudsearchV1::SocialGraphNodeProto, decorator: Google::Apis::CloudsearchV1::SocialGraphNodeProto::Representation
      
          property :square, as: 'square', class: Google::Apis::CloudsearchV1::SquareProto, decorator: Google::Apis::CloudsearchV1::SquareProto::Representation
      
          property :youtube_user, as: 'youtubeUser', class: Google::Apis::CloudsearchV1::YoutubeUserProto, decorator: Google::Apis::CloudsearchV1::YoutubeUserProto::Representation
      
          property :zwieback_session, as: 'zwiebackSession', class: Google::Apis::CloudsearchV1::ZwiebackSessionProto, decorator: Google::Apis::CloudsearchV1::ZwiebackSessionProto::Representation
      
        end
      end
      
      class PrivateMessageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::CloudsearchV1::Annotation, decorator: Google::Apis::CloudsearchV1::Annotation::Representation
      
          collection :attachments, as: 'attachments', class: Google::Apis::CloudsearchV1::Attachment, decorator: Google::Apis::CloudsearchV1::Attachment::Representation
      
          collection :contextual_add_on_markup, as: 'contextualAddOnMarkup', class: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup, decorator: Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup::Representation
      
          collection :gsuite_integration_metadata, as: 'gsuiteIntegrationMetadata', class: Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata, decorator: Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata::Representation
      
          property :text, as: 'text'
          property :user_id, as: 'userId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class ProcessingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error_message, as: 'errorMessage'
          collection :field_violations, as: 'fieldViolations', class: Google::Apis::CloudsearchV1::FieldViolation, decorator: Google::Apis::CloudsearchV1::FieldViolation::Representation
      
        end
      end
      
      class PropertyDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_property_options, as: 'booleanPropertyOptions', class: Google::Apis::CloudsearchV1::BooleanPropertyOptions, decorator: Google::Apis::CloudsearchV1::BooleanPropertyOptions::Representation
      
          property :date_property_options, as: 'datePropertyOptions', class: Google::Apis::CloudsearchV1::DatePropertyOptions, decorator: Google::Apis::CloudsearchV1::DatePropertyOptions::Representation
      
          property :display_options, as: 'displayOptions', class: Google::Apis::CloudsearchV1::PropertyDisplayOptions, decorator: Google::Apis::CloudsearchV1::PropertyDisplayOptions::Representation
      
          property :double_property_options, as: 'doublePropertyOptions', class: Google::Apis::CloudsearchV1::DoublePropertyOptions, decorator: Google::Apis::CloudsearchV1::DoublePropertyOptions::Representation
      
          property :enum_property_options, as: 'enumPropertyOptions', class: Google::Apis::CloudsearchV1::EnumPropertyOptions, decorator: Google::Apis::CloudsearchV1::EnumPropertyOptions::Representation
      
          property :html_property_options, as: 'htmlPropertyOptions', class: Google::Apis::CloudsearchV1::HtmlPropertyOptions, decorator: Google::Apis::CloudsearchV1::HtmlPropertyOptions::Representation
      
          property :integer_property_options, as: 'integerPropertyOptions', class: Google::Apis::CloudsearchV1::IntegerPropertyOptions, decorator: Google::Apis::CloudsearchV1::IntegerPropertyOptions::Representation
      
          property :is_facetable, as: 'isFacetable'
          property :is_repeatable, as: 'isRepeatable'
          property :is_returnable, as: 'isReturnable'
          property :is_sortable, as: 'isSortable'
          property :is_suggestable, as: 'isSuggestable'
          property :is_wildcard_searchable, as: 'isWildcardSearchable'
          property :name, as: 'name'
          property :object_property_options, as: 'objectPropertyOptions', class: Google::Apis::CloudsearchV1::ObjectPropertyOptions, decorator: Google::Apis::CloudsearchV1::ObjectPropertyOptions::Representation
      
          property :text_property_options, as: 'textPropertyOptions', class: Google::Apis::CloudsearchV1::TextPropertyOptions, decorator: Google::Apis::CloudsearchV1::TextPropertyOptions::Representation
      
          property :timestamp_property_options, as: 'timestampPropertyOptions', class: Google::Apis::CloudsearchV1::TimestampPropertyOptions, decorator: Google::Apis::CloudsearchV1::TimestampPropertyOptions::Representation
      
        end
      end
      
      class PropertyDisplayOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_label, as: 'displayLabel'
        end
      end
      
      class Provenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_blob, :base64 => true, as: 'annotationBlob'
          property :canonical_url, as: 'canonicalUrl'
          property :input_url, as: 'inputUrl'
          collection :itemtype, as: 'itemtype'
          property :retrieved_timestamp_msec, :numeric_string => true, as: 'retrievedTimestampMsec'
          property :retrieved_url, as: 'retrievedUrl'
        end
      end
      
      class PushItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_hash, as: 'contentHash'
          property :metadata_hash, as: 'metadataHash'
          property :payload, :base64 => true, as: 'payload'
          property :queue, as: 'queue'
          property :repository_error, as: 'repositoryError', class: Google::Apis::CloudsearchV1::RepositoryError, decorator: Google::Apis::CloudsearchV1::RepositoryError::Representation
      
          property :structured_data_hash, as: 'structuredDataHash'
          property :type, as: 'type'
        end
      end
      
      class PushItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :item, as: 'item', class: Google::Apis::CloudsearchV1::PushItem, decorator: Google::Apis::CloudsearchV1::PushItem::Representation
      
        end
      end
      
      class QueryCountByStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :status_code, as: 'statusCode'
        end
      end
      
      class QueryInterpretation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interpretation_type, as: 'interpretationType'
          property :interpreted_query, as: 'interpretedQuery'
          property :reason, as: 'reason'
        end
      end
      
      class QueryInterpretationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force_disable_supplemental_results, as: 'forceDisableSupplementalResults'
          property :force_verbatim_mode, as: 'forceVerbatimMode'
        end
      end
      
      class QueryInterpretationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_nl_interpretation, as: 'disableNlInterpretation'
          property :disable_supplemental_results, as: 'disableSupplementalResults'
          property :enable_verbatim_mode, as: 'enableVerbatimMode'
        end
      end
      
      class QueryItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_synthetic, as: 'isSynthetic'
        end
      end
      
      class QueryOperator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :enum_values, as: 'enumValues'
          property :greater_than_operator_name, as: 'greaterThanOperatorName'
          property :is_facetable, as: 'isFacetable'
          property :is_repeatable, as: 'isRepeatable'
          property :is_returnable, as: 'isReturnable'
          property :is_sortable, as: 'isSortable'
          property :is_suggestable, as: 'isSuggestable'
          property :less_than_operator_name, as: 'lessThanOperatorName'
          property :object_type, as: 'objectType'
          property :operator_name, as: 'operatorName'
          property :type, as: 'type'
        end
      end
      
      class QuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :operators, as: 'operators', class: Google::Apis::CloudsearchV1::QueryOperator, decorator: Google::Apis::CloudsearchV1::QueryOperator::Representation
      
          property :short_name, as: 'shortName'
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
        end
      end
      
      class QuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class QuotedMessageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::CloudsearchV1::Annotation, decorator: Google::Apis::CloudsearchV1::Annotation::Representation
      
          property :app_profile, as: 'appProfile', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile::Representation
      
          property :bot_attachment_state, as: 'botAttachmentState'
          property :create_time_micros, :numeric_string => true, as: 'createTimeMicros'
          property :creator_id, as: 'creatorId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :last_edit_time_micros, :numeric_string => true, as: 'lastEditTimeMicros'
          property :last_update_time_when_quoted_micros, :numeric_string => true, as: 'lastUpdateTimeWhenQuotedMicros'
          property :message_id, as: 'messageId', class: Google::Apis::CloudsearchV1::MessageId, decorator: Google::Apis::CloudsearchV1::MessageId::Representation
      
          property :message_state, as: 'messageState'
          property :retention_settings, as: 'retentionSettings', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings::Representation
      
          property :text_body, as: 'textBody'
          property :updater_id, as: 'updaterId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          collection :upload_metadata, as: 'uploadMetadata', class: Google::Apis::CloudsearchV1::UploadMetadata, decorator: Google::Apis::CloudsearchV1::UploadMetadata::Representation
      
        end
      end
      
      class Rank
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary, :numeric_string => true, as: 'primary'
          property :secondary, :numeric_string => true, as: 'secondary'
        end
      end
      
      class RbacRoleProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :object_id_prop, as: 'objectId'
          property :rbac_namespace, as: 'rbacNamespace'
          property :rbac_role_name, as: 'rbacRoleName'
        end
      end
      
      class RbacSubjectProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username, as: 'username'
        end
      end
      
      class ReactionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emoji, as: 'emoji'
        end
      end
      
      class ReadReceiptsSettingsUpdatedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_receipts_enabled, as: 'readReceiptsEnabled'
        end
      end
      
      class Recipient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class RecordingEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :type, as: 'type'
        end
      end
      
      class RecordingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_recording_event, as: 'latestRecordingEvent', class: Google::Apis::CloudsearchV1::RecordingEvent, decorator: Google::Apis::CloudsearchV1::RecordingEvent::Representation
      
          property :owner_display_name, as: 'ownerDisplayName'
          property :producer_device_id, as: 'producerDeviceId'
          property :recording_application_type, as: 'recordingApplicationType'
          property :recording_id, as: 'recordingId'
          property :recording_status, as: 'recordingStatus'
        end
      end
      
      class RecordingSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :owner_email, as: 'ownerEmail'
          property :recording_session_id, as: 'recordingSessionId'
          property :session_state_info, as: 'sessionStateInfo', class: Google::Apis::CloudsearchV1::SessionStateInfo, decorator: Google::Apis::CloudsearchV1::SessionStateInfo::Representation
      
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_id, as: 'blobId'
          property :content_type, as: 'contentType'
          property :hash_prop, as: 'hash'
          property :key, as: 'key'
          property :name, as: 'name'
          property :size, :numeric_string => true, as: 'size'
        end
      end
      
      class References
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::CloudsearchV1::Reference, decorator: Google::Apis::CloudsearchV1::Reference::Representation
      
        end
      end
      
      class RenameEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_name, as: 'newName'
          property :original_name, as: 'originalName'
        end
      end
      
      class RepositoryError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :http_status_code, as: 'httpStatusCode'
          property :type, as: 'type'
        end
      end
      
      class RequestFileScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
        end
      end
      
      class RequestFileScopeForActiveDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RequestOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :language_code, as: 'languageCode'
          property :search_application_id, as: 'searchApplicationId'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class RequiredMessageFeaturesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :required_features, as: 'requiredFeatures'
        end
      end
      
      class ResetSearchApplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
        end
      end
      
      class ResourceRoleProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :object_id_prop, as: 'objectId'
          property :object_part, as: 'objectPart'
          property :role_id, as: 'roleId'
        end
      end
      
      class ResponseDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_debug_info, as: 'formattedDebugInfo'
        end
      end
      
      class RestrictItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_follow_up_restrict, as: 'driveFollowUpRestrict', class: Google::Apis::CloudsearchV1::DriveFollowUpRestrict, decorator: Google::Apis::CloudsearchV1::DriveFollowUpRestrict::Representation
      
          property :drive_location_restrict, as: 'driveLocationRestrict', class: Google::Apis::CloudsearchV1::DriveLocationRestrict, decorator: Google::Apis::CloudsearchV1::DriveLocationRestrict::Representation
      
          property :drive_mime_type_restrict, as: 'driveMimeTypeRestrict', class: Google::Apis::CloudsearchV1::DriveMimeTypeRestrict, decorator: Google::Apis::CloudsearchV1::DriveMimeTypeRestrict::Representation
      
          property :drive_time_span_restrict, as: 'driveTimeSpanRestrict', class: Google::Apis::CloudsearchV1::DriveTimeSpanRestrict, decorator: Google::Apis::CloudsearchV1::DriveTimeSpanRestrict::Representation
      
          property :search_operator, as: 'searchOperator'
        end
      end
      
      class ResultCounts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_result_counts, as: 'sourceResultCounts', class: Google::Apis::CloudsearchV1::SourceResultCount, decorator: Google::Apis::CloudsearchV1::SourceResultCount::Representation
      
        end
      end
      
      class ResultDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_debug_info, as: 'formattedDebugInfo'
        end
      end
      
      class ResultDisplayField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :operator_name, as: 'operatorName'
          property :property, as: 'property', class: Google::Apis::CloudsearchV1::NamedProperty, decorator: Google::Apis::CloudsearchV1::NamedProperty::Representation
      
        end
      end
      
      class ResultDisplayLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::CloudsearchV1::ResultDisplayField, decorator: Google::Apis::CloudsearchV1::ResultDisplayField::Representation
      
        end
      end
      
      class ResultDisplayMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metalines, as: 'metalines', class: Google::Apis::CloudsearchV1::ResultDisplayLine, decorator: Google::Apis::CloudsearchV1::ResultDisplayLine::Representation
      
          property :object_type_label, as: 'objectTypeLabel'
        end
      end
      
      class RetrievalImportance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :importance, as: 'importance'
        end
      end
      
      class RoomRenameMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_name, as: 'newName'
          property :prev_name, as: 'prevName'
        end
      end
      
      class RoomUpdatedMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_details_metadata, as: 'groupDetailsMetadata', class: Google::Apis::CloudsearchV1::GroupDetailsUpdatedMetadata, decorator: Google::Apis::CloudsearchV1::GroupDetailsUpdatedMetadata::Representation
      
          property :group_link_sharing_enabled, as: 'groupLinkSharingEnabled'
          property :initiator, as: 'initiator', class: Google::Apis::CloudsearchV1::User, decorator: Google::Apis::CloudsearchV1::User::Representation
      
          property :initiator_type, as: 'initiatorType'
          property :name, as: 'name'
          property :rename_metadata, as: 'renameMetadata', class: Google::Apis::CloudsearchV1::RoomRenameMetadata, decorator: Google::Apis::CloudsearchV1::RoomRenameMetadata::Representation
      
          property :visibility, as: 'visibility', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupVisibility, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupVisibility::Representation
      
        end
      end
      
      class Roster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_url, as: 'avatarUrl'
          property :id, as: 'id', class: Google::Apis::CloudsearchV1::RosterId, decorator: Google::Apis::CloudsearchV1::RosterId::Representation
      
          property :is_membership_visible_to_caller, as: 'isMembershipVisibleToCaller'
          property :membership_count, as: 'membershipCount'
          property :name, as: 'name'
          property :roster_gaia_key, as: 'rosterGaiaKey'
          property :roster_state, as: 'rosterState'
          property :segmented_membership_counts, as: 'segmentedMembershipCounts', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts::Representation
      
        end
      end
      
      class RosterId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class RpcOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_extensions, as: 'requestExtensions', class: Google::Apis::CloudsearchV1::MessageSet, decorator: Google::Apis::CloudsearchV1::MessageSet::Representation
      
        end
      end
      
      class SafeUrlProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_do_not_access_or_else_safe_url_wrapped_value, as: 'privateDoNotAccessOrElseSafeUrlWrappedValue'
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :object_definitions, as: 'objectDefinitions', class: Google::Apis::CloudsearchV1::ObjectDefinition, decorator: Google::Apis::CloudsearchV1::ObjectDefinition::Representation
      
          collection :operation_ids, as: 'operationIds'
        end
      end
      
      class ScoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_freshness, as: 'disableFreshness'
          property :disable_personalization, as: 'disablePersonalization'
        end
      end
      
      class SearchApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_restrictions, as: 'dataSourceRestrictions', class: Google::Apis::CloudsearchV1::DataSourceRestriction, decorator: Google::Apis::CloudsearchV1::DataSourceRestriction::Representation
      
          collection :default_facet_options, as: 'defaultFacetOptions', class: Google::Apis::CloudsearchV1::FacetOptions, decorator: Google::Apis::CloudsearchV1::FacetOptions::Representation
      
          property :default_sort_options, as: 'defaultSortOptions', class: Google::Apis::CloudsearchV1::SortOptions, decorator: Google::Apis::CloudsearchV1::SortOptions::Representation
      
          property :display_name, as: 'displayName'
          property :enable_audit_log, as: 'enableAuditLog'
          property :name, as: 'name'
          collection :operation_ids, as: 'operationIds'
          property :query_interpretation_config, as: 'queryInterpretationConfig', class: Google::Apis::CloudsearchV1::QueryInterpretationConfig, decorator: Google::Apis::CloudsearchV1::QueryInterpretationConfig::Representation
      
          property :return_result_thumbnail_urls, as: 'returnResultThumbnailUrls'
          property :scoring_config, as: 'scoringConfig', class: Google::Apis::CloudsearchV1::ScoringConfig, decorator: Google::Apis::CloudsearchV1::ScoringConfig::Representation
      
          collection :source_config, as: 'sourceConfig', class: Google::Apis::CloudsearchV1::SourceConfig, decorator: Google::Apis::CloudsearchV1::SourceConfig::Representation
      
        end
      end
      
      class SearchApplicationQueryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          collection :query_count_by_status, as: 'queryCountByStatus', class: Google::Apis::CloudsearchV1::QueryCountByStatus, decorator: Google::Apis::CloudsearchV1::QueryCountByStatus::Representation
      
        end
      end
      
      class SearchApplicationSessionStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :search_sessions_count, :numeric_string => true, as: 'searchSessionsCount'
        end
      end
      
      class SearchApplicationUserStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :one_day_active_users_count, :numeric_string => true, as: 'oneDayActiveUsersCount'
          property :seven_days_active_users_count, :numeric_string => true, as: 'sevenDaysActiveUsersCount'
          property :thirty_days_active_users_count, :numeric_string => true, as: 'thirtyDaysActiveUsersCount'
        end
      end
      
      class SearchItemsByViewUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :page_token, as: 'pageToken'
          property :view_url, as: 'viewUrl'
        end
      end
      
      class SearchItemsByViewUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::Item, decorator: Google::Apis::CloudsearchV1::Item::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchQualityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quality, as: 'quality'
        end
      end
      
      class SearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :context_attributes, as: 'contextAttributes', class: Google::Apis::CloudsearchV1::ContextAttribute, decorator: Google::Apis::CloudsearchV1::ContextAttribute::Representation
      
          collection :data_source_restrictions, as: 'dataSourceRestrictions', class: Google::Apis::CloudsearchV1::DataSourceRestriction, decorator: Google::Apis::CloudsearchV1::DataSourceRestriction::Representation
      
          collection :facet_options, as: 'facetOptions', class: Google::Apis::CloudsearchV1::FacetOptions, decorator: Google::Apis::CloudsearchV1::FacetOptions::Representation
      
          property :page_size, as: 'pageSize'
          property :query, as: 'query'
          property :query_interpretation_options, as: 'queryInterpretationOptions', class: Google::Apis::CloudsearchV1::QueryInterpretationOptions, decorator: Google::Apis::CloudsearchV1::QueryInterpretationOptions::Representation
      
          property :request_options, as: 'requestOptions', class: Google::Apis::CloudsearchV1::RequestOptions, decorator: Google::Apis::CloudsearchV1::RequestOptions::Representation
      
          property :sort_options, as: 'sortOptions', class: Google::Apis::CloudsearchV1::SortOptions, decorator: Google::Apis::CloudsearchV1::SortOptions::Representation
      
          property :start, as: 'start'
        end
      end
      
      class SearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo', class: Google::Apis::CloudsearchV1::ResponseDebugInfo, decorator: Google::Apis::CloudsearchV1::ResponseDebugInfo::Representation
      
          property :error_info, as: 'errorInfo', class: Google::Apis::CloudsearchV1::ErrorInfo, decorator: Google::Apis::CloudsearchV1::ErrorInfo::Representation
      
          collection :facet_results, as: 'facetResults', class: Google::Apis::CloudsearchV1::FacetResult, decorator: Google::Apis::CloudsearchV1::FacetResult::Representation
      
          property :has_more_results, as: 'hasMoreResults'
          property :query_interpretation, as: 'queryInterpretation', class: Google::Apis::CloudsearchV1::QueryInterpretation, decorator: Google::Apis::CloudsearchV1::QueryInterpretation::Representation
      
          property :result_count_estimate, :numeric_string => true, as: 'resultCountEstimate'
          property :result_count_exact, :numeric_string => true, as: 'resultCountExact'
          property :result_counts, as: 'resultCounts', class: Google::Apis::CloudsearchV1::ResultCounts, decorator: Google::Apis::CloudsearchV1::ResultCounts::Representation
      
          collection :results, as: 'results', class: Google::Apis::CloudsearchV1::SearchResult, decorator: Google::Apis::CloudsearchV1::SearchResult::Representation
      
          collection :spell_results, as: 'spellResults', class: Google::Apis::CloudsearchV1::SpellResult, decorator: Google::Apis::CloudsearchV1::SpellResult::Representation
      
          collection :structured_results, as: 'structuredResults', class: Google::Apis::CloudsearchV1::StructuredResult, decorator: Google::Apis::CloudsearchV1::StructuredResult::Representation
      
        end
      end
      
      class SearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clustered_results, as: 'clusteredResults', class: Google::Apis::CloudsearchV1::SearchResult, decorator: Google::Apis::CloudsearchV1::SearchResult::Representation
      
          property :debug_info, as: 'debugInfo', class: Google::Apis::CloudsearchV1::ResultDebugInfo, decorator: Google::Apis::CloudsearchV1::ResultDebugInfo::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::CloudsearchV1::Metadata, decorator: Google::Apis::CloudsearchV1::Metadata::Representation
      
          property :snippet, as: 'snippet', class: Google::Apis::CloudsearchV1::Snippet, decorator: Google::Apis::CloudsearchV1::Snippet::Representation
      
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collapsable, as: 'collapsable'
          property :description, as: 'description'
          property :num_uncollapsable_widgets, as: 'numUncollapsableWidgets'
          collection :widgets, as: 'widgets', class: Google::Apis::CloudsearchV1::WidgetMarkup, decorator: Google::Apis::CloudsearchV1::WidgetMarkup::Representation
      
        end
      end
      
      class Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatting, as: 'formatting', class: Google::Apis::CloudsearchV1::Formatting, decorator: Google::Apis::CloudsearchV1::Formatting::Representation
      
          property :hashtag_data, as: 'hashtagData', class: Google::Apis::CloudsearchV1::HashtagData, decorator: Google::Apis::CloudsearchV1::HashtagData::Representation
      
          property :link_data, as: 'linkData', class: Google::Apis::CloudsearchV1::LinkData, decorator: Google::Apis::CloudsearchV1::LinkData::Representation
      
          property :text, as: 'text'
          property :type, as: 'type'
          property :user_mention_data, as: 'userMentionData', class: Google::Apis::CloudsearchV1::UserMentionData, decorator: Google::Apis::CloudsearchV1::UserMentionData::Representation
      
        end
      end
      
      class SelectionControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::CloudsearchV1::SelectionItem, decorator: Google::Apis::CloudsearchV1::SelectionItem::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change, as: 'onChange', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :type, as: 'type'
        end
      end
      
      class SelectionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected, as: 'selected'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class SessionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_time, :numeric_string => true, as: 'authTime'
          property :delegate_user_id, :numeric_string => true, as: 'delegateUserId'
          property :dusi, as: 'dusi'
          property :imap_session_context, as: 'imapSessionContext', class: Google::Apis::CloudsearchV1::ImapSessionContext, decorator: Google::Apis::CloudsearchV1::ImapSessionContext::Representation
      
          property :oauth_login_id, as: 'oauthLoginId'
          property :oauth_project_id, :numeric_string => true, as: 'oauthProjectId'
        end
      end
      
      class SessionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :type, as: 'type'
        end
      end
      
      class SessionStateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_info, as: 'ackInfo', class: Google::Apis::CloudsearchV1::AckInfo, decorator: Google::Apis::CloudsearchV1::AckInfo::Representation
      
          property :language_config, as: 'languageConfig', class: Google::Apis::CloudsearchV1::LanguageConfig, decorator: Google::Apis::CloudsearchV1::LanguageConfig::Representation
      
          property :last_actor_device_id, as: 'lastActorDeviceId'
          property :max_end_time, as: 'maxEndTime'
          property :session_state, as: 'sessionState'
          property :session_stop_reason, as: 'sessionStopReason'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_lock, as: 'accessLock'
          property :access_type, as: 'accessType'
          property :allow_joining_before_host, as: 'allowJoiningBeforeHost'
          property :attendance_report_enabled, as: 'attendanceReportEnabled'
          property :chat_lock, as: 'chatLock'
          property :cohost_artifact_sharing_enabled, as: 'cohostArtifactSharingEnabled'
          property :cse_enabled, as: 'cseEnabled'
          property :default_as_viewer, as: 'defaultAsViewer'
          property :moderation_enabled, as: 'moderationEnabled'
          property :present_lock, as: 'presentLock'
          property :reactions_lock, as: 'reactionsLock'
        end
      end
      
      class ShareScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :scope, as: 'scope'
        end
      end
      
      class SheetsClientActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_function_return_value_markup, as: 'customFunctionReturnValueMarkup', class: Google::Apis::CloudsearchV1::CustomFunctionReturnValueMarkup, decorator: Google::Apis::CloudsearchV1::CustomFunctionReturnValueMarkup::Representation
      
        end
      end
      
      class SigningKeyPossessorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keymaster_key_type, as: 'keymasterKeyType'
          property :serialized_verification_key, :base64 => true, as: 'serializedVerificationKey'
          property :serialized_verification_keyset, :base64 => true, as: 'serializedVerificationKeyset'
        end
      end
      
      class SimpleSecretHolderProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label', class: Google::Apis::CloudsearchV1::SimpleSecretLabelProto, decorator: Google::Apis::CloudsearchV1::SimpleSecretLabelProto::Representation
      
        end
      end
      
      class SimpleSecretLabelProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capability_id, as: 'capabilityId'
          property :generic_label, :base64 => true, as: 'genericLabel'
          property :invite_id, :numeric_string => true, as: 'inviteId'
          property :type, as: 'type'
        end
      end
      
      class SlashCommandMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments_hint, as: 'argumentsHint'
          property :command_id, :numeric_string => true, as: 'commandId'
          property :command_name, as: 'commandName'
          property :id, as: 'id', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :triggers_dialog, as: 'triggersDialog'
          property :type, as: 'type'
        end
      end
      
      class Snippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :match_ranges, as: 'matchRanges', class: Google::Apis::CloudsearchV1::MatchRange, decorator: Google::Apis::CloudsearchV1::MatchRange::Representation
      
          property :snippet, as: 'snippet'
        end
      end
      
      class SocialCommonAttachmentAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embed_item, as: 'embedItem', class: Google::Apis::CloudsearchV1::EmbedClientItem, decorator: Google::Apis::CloudsearchV1::EmbedClientItem::Representation
      
          property :id, as: 'id'
        end
      end
      
      class SocialGraphNodeProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sgn_domain, as: 'sgnDomain'
          property :sgn_pk, as: 'sgnPk'
        end
      end
      
      class SortOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
          property :sort_order, as: 'sortOrder'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :predefined_source, as: 'predefinedSource'
        end
      end
      
      class SourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crowding_config, as: 'crowdingConfig', class: Google::Apis::CloudsearchV1::SourceCrowdingConfig, decorator: Google::Apis::CloudsearchV1::SourceCrowdingConfig::Representation
      
          property :scoring_config, as: 'scoringConfig', class: Google::Apis::CloudsearchV1::SourceScoringConfig, decorator: Google::Apis::CloudsearchV1::SourceScoringConfig::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
        end
      end
      
      class SourceCrowdingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_results, as: 'numResults'
          property :num_suggestions, as: 'numSuggestions'
        end
      end
      
      class SourceResultCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_more_results, as: 'hasMoreResults'
          property :result_count_estimate, :numeric_string => true, as: 'resultCountEstimate'
          property :result_count_exact, :numeric_string => true, as: 'resultCountExact'
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
        end
      end
      
      class SourceScoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_importance, as: 'sourceImportance'
        end
      end
      
      class SpaceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space_id, as: 'spaceId'
        end
      end
      
      class SpellResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_query, as: 'suggestedQuery'
        end
      end
      
      class SquareProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :member_type, as: 'memberType'
          property :square_id, :numeric_string => true, as: 'squareId'
        end
      end
      
      class StartUploadItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StoredParticipantId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gaia_id, :numeric_string => true, as: 'gaiaId'
        end
      end
      
      class StreamViewerStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_viewer_count, :numeric_string => true, as: 'estimatedViewerCount'
        end
      end
      
      class StreamingSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_type, as: 'applicationType'
          property :latest_session_event, as: 'latestSessionEvent', class: Google::Apis::CloudsearchV1::SessionEvent, decorator: Google::Apis::CloudsearchV1::SessionEvent::Representation
      
          property :owner_display_name, as: 'ownerDisplayName'
          property :session_id, as: 'sessionId'
          property :status, as: 'status'
          property :training_enabled, as: 'trainingEnabled'
          property :viewer_access_policy, as: 'viewerAccessPolicy'
          property :viewer_stats, as: 'viewerStats', class: Google::Apis::CloudsearchV1::StreamViewerStats, decorator: Google::Apis::CloudsearchV1::StreamViewerStats::Representation
      
        end
      end
      
      class StructuredDataObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties', class: Google::Apis::CloudsearchV1::NamedProperty, decorator: Google::Apis::CloudsearchV1::NamedProperty::Representation
      
        end
      end
      
      class StructuredResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person', class: Google::Apis::CloudsearchV1::Person, decorator: Google::Apis::CloudsearchV1::Person::Representation
      
        end
      end
      
      class SuggestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_restrictions, as: 'dataSourceRestrictions', class: Google::Apis::CloudsearchV1::DataSourceRestriction, decorator: Google::Apis::CloudsearchV1::DataSourceRestriction::Representation
      
          property :query, as: 'query'
          property :request_options, as: 'requestOptions', class: Google::Apis::CloudsearchV1::RequestOptions, decorator: Google::Apis::CloudsearchV1::RequestOptions::Representation
      
        end
      end
      
      class SuggestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggest_results, as: 'suggestResults', class: Google::Apis::CloudsearchV1::SuggestResult, decorator: Google::Apis::CloudsearchV1::SuggestResult::Representation
      
        end
      end
      
      class SuggestResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :people_suggestion, as: 'peopleSuggestion', class: Google::Apis::CloudsearchV1::PeopleSuggestion, decorator: Google::Apis::CloudsearchV1::PeopleSuggestion::Representation
      
          property :query_suggestion, as: 'querySuggestion', class: Google::Apis::CloudsearchV1::QuerySuggestion, decorator: Google::Apis::CloudsearchV1::QuerySuggestion::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::Source, decorator: Google::Apis::CloudsearchV1::Source::Representation
      
          property :suggested_query, as: 'suggestedQuery'
        end
      end
      
      class SupportUrls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_config_url, as: 'adminConfigUrl'
          property :deletion_policy_url, as: 'deletionPolicyUrl'
          property :gwm_url, as: 'gwmUrl'
          property :privacy_policy_url, as: 'privacyPolicyUrl'
          property :setup_url, as: 'setupUrl'
          property :support_url, as: 'supportUrl'
          property :tos_url, as: 'tosUrl'
        end
      end
      
      class SwitchWidget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_type, as: 'controlType'
          property :name, as: 'name'
          property :on_change, as: 'onChange', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :selected, as: 'selected'
          property :value, as: 'value'
        end
      end
      
      class TaskActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reload_tasks, as: 'reloadTasks'
        end
      end
      
      class TextButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :background_color, as: 'backgroundColor'
          property :disabled, as: 'disabled'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
          property :style, as: 'style'
          property :text, as: 'text'
        end
      end
      
      class TextField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_complete, as: 'autoComplete', class: Google::Apis::CloudsearchV1::AutoComplete, decorator: Google::Apis::CloudsearchV1::AutoComplete::Representation
      
          property :auto_complete_callback, as: 'autoCompleteCallback', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :auto_complete_multiple_selections, as: 'autoCompleteMultipleSelections'
          property :hint_text, as: 'hintText'
          property :label, as: 'label'
          property :max_lines, as: 'maxLines'
          property :name, as: 'name'
          property :on_change, as: 'onChange', class: Google::Apis::CloudsearchV1::FormAction, decorator: Google::Apis::CloudsearchV1::FormAction::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class TextKeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :on_click, as: 'onClick', class: Google::Apis::CloudsearchV1::OnClick, decorator: Google::Apis::CloudsearchV1::OnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class TextOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match_with_operator, as: 'exactMatchWithOperator'
          property :operator_name, as: 'operatorName'
        end
      end
      
      class TextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class TextPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::TextOperatorOptions, decorator: Google::Apis::CloudsearchV1::TextOperatorOptions::Representation
      
          property :retrieval_importance, as: 'retrievalImportance', class: Google::Apis::CloudsearchV1::RetrievalImportance, decorator: Google::Apis::CloudsearchV1::RetrievalImportance::Representation
      
        end
      end
      
      class TextValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class ThreadKeySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :message_keys, as: 'messageKeys', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :new_thread_key, as: 'newThreadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
        end
      end
      
      class ThreadUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_removed, as: 'attributeRemoved', class: Google::Apis::CloudsearchV1::AttributeRemoved, decorator: Google::Apis::CloudsearchV1::AttributeRemoved::Representation
      
          property :attribute_set, as: 'attributeSet', class: Google::Apis::CloudsearchV1::AttributeSet, decorator: Google::Apis::CloudsearchV1::AttributeSet::Representation
      
          property :label_added, as: 'labelAdded', class: Google::Apis::CloudsearchV1::LabelAdded, decorator: Google::Apis::CloudsearchV1::LabelAdded::Representation
      
          property :label_removed, as: 'labelRemoved', class: Google::Apis::CloudsearchV1::LabelRemoved, decorator: Google::Apis::CloudsearchV1::LabelRemoved::Representation
      
          property :last_history_record_id, :numeric_string => true, as: 'lastHistoryRecordId'
          property :message_added, as: 'messageAdded', class: Google::Apis::CloudsearchV1::MessageAdded, decorator: Google::Apis::CloudsearchV1::MessageAdded::Representation
      
          property :message_deleted, as: 'messageDeleted', class: Google::Apis::CloudsearchV1::MessageDeleted, decorator: Google::Apis::CloudsearchV1::MessageDeleted::Representation
      
          property :original_thread_key, as: 'originalThreadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          collection :pre_state, as: 'preState', class: Google::Apis::CloudsearchV1::PreState, decorator: Google::Apis::CloudsearchV1::PreState::Representation
      
          property :thread_key, as: 'threadKey', class: Google::Apis::CloudsearchV1::MultiKey, decorator: Google::Apis::CloudsearchV1::MultiKey::Representation
      
          property :thread_key_set, as: 'threadKeySet', class: Google::Apis::CloudsearchV1::ThreadKeySet, decorator: Google::Apis::CloudsearchV1::ThreadKeySet::Representation
      
          property :thread_locator, as: 'threadLocator'
          property :topic_state_update, as: 'topicStateUpdate', class: Google::Apis::CloudsearchV1::TopicStateUpdate, decorator: Google::Apis::CloudsearchV1::TopicStateUpdate::Representation
      
        end
      end
      
      class TimestampOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :greater_than_operator_name, as: 'greaterThanOperatorName'
          property :less_than_operator_name, as: 'lessThanOperatorName'
          property :operator_name, as: 'operatorName'
        end
      end
      
      class TimestampPropertyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_options, as: 'operatorOptions', class: Google::Apis::CloudsearchV1::TimestampOperatorOptions, decorator: Google::Apis::CloudsearchV1::TimestampOperatorOptions::Representation
      
        end
      end
      
      class TimestampValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class TombstoneMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tombstone_type, as: 'tombstoneType'
        end
      end
      
      class Toolbar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
        end
      end
      
      class TopicId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, as: 'groupId', class: Google::Apis::CloudsearchV1::GroupId, decorator: Google::Apis::CloudsearchV1::GroupId::Representation
      
          property :topic_id, as: 'topicId'
        end
      end
      
      class TopicState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :label_id_message_count, as: 'labelIdMessageCount'
          property :num_constituents, as: 'numConstituents'
        end
      end
      
      class TopicStateUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic_state, as: 'topicState', class: Google::Apis::CloudsearchV1::TopicState, decorator: Google::Apis::CloudsearchV1::TopicState::Representation
      
        end
      end
      
      class TransactionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ending_record_id, :numeric_string => true, as: 'endingRecordId'
          property :starting_record_id, :numeric_string => true, as: 'startingRecordId'
          property :write_timestamp_us, :numeric_string => true, as: 'writeTimestampUs'
        end
      end
      
      class TransactionDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TranscriptionSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_state_info, as: 'sessionStateInfo', class: Google::Apis::CloudsearchV1::SessionStateInfo, decorator: Google::Apis::CloudsearchV1::SessionStateInfo::Representation
      
          property :transcription_session_id, as: 'transcriptionSessionId'
        end
      end
      
      class TransientData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :batch_time_us, :numeric_string => true, as: 'batchTimeUs'
          property :dispatch_id, as: 'dispatchId'
          property :dispatcher, as: 'dispatcher'
          property :fire_time_us, :numeric_string => true, as: 'fireTimeUs'
          property :jobsetted_server_spec, as: 'jobsettedServerSpec', class: Google::Apis::CloudsearchV1::JobsettedServerSpec, decorator: Google::Apis::CloudsearchV1::JobsettedServerSpec::Representation
      
          property :key, as: 'key'
          property :rpc_options, as: 'rpcOptions', class: Google::Apis::CloudsearchV1::RpcOptions, decorator: Google::Apis::CloudsearchV1::RpcOptions::Representation
      
          property :slice_fire_time_us, :numeric_string => true, as: 'sliceFireTimeUs'
          property :trigger_action, as: 'triggerAction', class: Google::Apis::CloudsearchV1::TriggerAction, decorator: Google::Apis::CloudsearchV1::TriggerAction::Representation
      
          property :trigger_key, as: 'triggerKey', class: Google::Apis::CloudsearchV1::TriggerKey, decorator: Google::Apis::CloudsearchV1::TriggerKey::Representation
      
        end
      end
      
      class TriggerAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :data, :base64 => true, as: 'data'
          property :data_int, :numeric_string => true, as: 'dataInt'
        end
      end
      
      class TriggerKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_id, as: 'instanceId'
          property :type, as: 'type'
        end
      end
      
      class Triggers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :triggers, as: 'triggers', class: Google::Apis::CloudsearchV1::Trigger, decorator: Google::Apis::CloudsearchV1::Trigger::Representation
      
        end
      end
      
      class TrustedResourceUrlProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_do_not_access_or_else_trusted_resource_url_wrapped_value, as: 'privateDoNotAccessOrElseTrustedResourceUrlWrappedValue'
        end
      end
      
      class TypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_info, as: 'videoInfo', class: Google::Apis::CloudsearchV1::VideoInfo, decorator: Google::Apis::CloudsearchV1::VideoInfo::Representation
      
        end
      end
      
      class UniversalPhoneAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pin, as: 'pin'
          property :pstn_info_url, as: 'pstnInfoUrl'
        end
      end
      
      class UnmappedIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_identity, as: 'externalIdentity', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
          property :resolution_status_code, as: 'resolutionStatusCode'
        end
      end
      
      class UnreserveItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :queue, as: 'queue'
        end
      end
      
      class UpdateBccRecipients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bcc_recipients, as: 'bccRecipients', class: Google::Apis::CloudsearchV1::Recipient, decorator: Google::Apis::CloudsearchV1::Recipient::Representation
      
        end
      end
      
      class UpdateBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insert_contents, as: 'insertContents', class: Google::Apis::CloudsearchV1::InsertContent, decorator: Google::Apis::CloudsearchV1::InsertContent::Representation
      
          property :type, as: 'type'
        end
      end
      
      class UpdateCcRecipients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cc_recipients, as: 'ccRecipients', class: Google::Apis::CloudsearchV1::Recipient, decorator: Google::Apis::CloudsearchV1::Recipient::Representation
      
        end
      end
      
      class UpdateDataSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::DataSource, decorator: Google::Apis::CloudsearchV1::DataSource::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateDraftActionMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_bcc_recipients, as: 'updateBccRecipients', class: Google::Apis::CloudsearchV1::UpdateBccRecipients, decorator: Google::Apis::CloudsearchV1::UpdateBccRecipients::Representation
      
          property :update_body, as: 'updateBody', class: Google::Apis::CloudsearchV1::UpdateBody, decorator: Google::Apis::CloudsearchV1::UpdateBody::Representation
      
          property :update_cc_recipients, as: 'updateCcRecipients', class: Google::Apis::CloudsearchV1::UpdateCcRecipients, decorator: Google::Apis::CloudsearchV1::UpdateCcRecipients::Representation
      
          property :update_subject, as: 'updateSubject', class: Google::Apis::CloudsearchV1::UpdateSubject, decorator: Google::Apis::CloudsearchV1::UpdateSubject::Representation
      
          property :update_to_recipients, as: 'updateToRecipients', class: Google::Apis::CloudsearchV1::UpdateToRecipients, decorator: Google::Apis::CloudsearchV1::UpdateToRecipients::Representation
      
        end
      end
      
      class UpdateSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :schema, as: 'schema', class: Google::Apis::CloudsearchV1::Schema, decorator: Google::Apis::CloudsearchV1::Schema::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class UpdateSubject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subject, as: 'subject'
        end
      end
      
      class UpdateToRecipients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :to_recipients, as: 'toRecipients', class: Google::Apis::CloudsearchV1::Recipient, decorator: Google::Apis::CloudsearchV1::Recipient::Representation
      
        end
      end
      
      class UploadItemRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class UploadMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_token, as: 'attachmentToken'
          property :backend_upload_metadata, as: 'backendUploadMetadata', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedBackendUploadMetadata, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedBackendUploadMetadata::Representation
      
          property :cloned_authorized_item_id, as: 'clonedAuthorizedItemId', class: Google::Apis::CloudsearchV1::AuthorizedItemId, decorator: Google::Apis::CloudsearchV1::AuthorizedItemId::Representation
      
          property :cloned_drive_action, as: 'clonedDriveAction'
          property :cloned_drive_id, as: 'clonedDriveId'
          property :content_name, as: 'contentName'
          property :content_type, as: 'contentType'
          property :dlp_metrics_metadata, as: 'dlpMetricsMetadata', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedDlpMetricsMetadata, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedDlpMetricsMetadata::Representation
      
          property :latest_virus_scan_timestamp, :numeric_string => true, as: 'latestVirusScanTimestamp'
          property :local_id, as: 'localId'
          property :original_dimension, as: 'originalDimension', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension::Representation
      
          property :video_reference, as: 'videoReference', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedVideoReference, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedVideoReference::Representation
      
          property :virus_scan_result, as: 'virusScanResult'
        end
      end
      
      class UrlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :gws_url, as: 'gwsUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :gws_url_expiration_timestamp, :numeric_string => true, as: 'gwsUrlExpirationTimestamp'
          property :image_height, as: 'imageHeight'
          property :image_url, as: 'imageUrl'
          property :image_width, as: 'imageWidth'
          property :int_image_height, as: 'intImageHeight'
          property :int_image_width, as: 'intImageWidth'
          property :mime_type, as: 'mimeType'
          property :redirect_url, as: 'redirectUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :should_not_render, as: 'shouldNotRender'
          property :snippet, as: 'snippet'
          property :title, as: 'title'
          property :url, as: 'url', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :url_source, as: 'urlSource'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_url, as: 'avatarUrl'
          property :block_relationship, as: 'blockRelationship', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedUserBlockRelationship, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedUserBlockRelationship::Representation
      
          property :bot_info, as: 'botInfo', class: Google::Apis::CloudsearchV1::BotInfo, decorator: Google::Apis::CloudsearchV1::BotInfo::Representation
      
          property :deleted, as: 'deleted'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :gender, as: 'gender'
          property :id, as: 'id', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :is_anonymous, as: 'isAnonymous'
          property :last_name, as: 'lastName'
          property :name, as: 'name'
          property :organization_info, as: 'organizationInfo', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfo, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfo::Representation
      
          collection :phone_number, as: 'phoneNumber', class: Google::Apis::CloudsearchV1::AppsDynamiteSharedPhoneNumber, decorator: Google::Apis::CloudsearchV1::AppsDynamiteSharedPhoneNumber::Representation
      
          property :user_account_state, as: 'userAccountState'
          property :user_profile_visibility, as: 'userProfileVisibility'
        end
      end
      
      class UserDisplayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_url, as: 'avatarUrl'
          property :display_name, as: 'displayName'
        end
      end
      
      class UserId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acting_user_id, as: 'actingUserId'
          property :id, as: 'id'
          property :origin_app_id, as: 'originAppId', class: Google::Apis::CloudsearchV1::AppId, decorator: Google::Apis::CloudsearchV1::AppId::Representation
      
          property :type, as: 'type'
        end
      end
      
      class UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_notification_avatar_url, as: 'driveNotificationAvatarUrl'
          property :updater_count_display_type, as: 'updaterCountDisplayType'
          property :updater_count_to_show, as: 'updaterCountToShow'
          property :updater_to_show_email, as: 'updaterToShowEmail'
          property :updater_to_show_gaia_id, :numeric_string => true, as: 'updaterToShowGaiaId'
          property :updater_to_show_name, as: 'updaterToShowName'
          property :updater_to_show_user_id, as: 'updaterToShowUserId', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
        end
      end
      
      class UserMentionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :user, as: 'user', class: Google::Apis::CloudsearchV1::PrincipalProto, decorator: Google::Apis::CloudsearchV1::PrincipalProto::Representation
      
          property :user_gaia_id, :numeric_string => true, as: 'userGaiaId'
          property :user_id, as: 'userId'
        end
      end
      
      class UserMentionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :gender, as: 'gender'
          property :id, as: 'id', class: Google::Apis::CloudsearchV1::UserId, decorator: Google::Apis::CloudsearchV1::UserId::Representation
      
          property :invitee_info, as: 'inviteeInfo', class: Google::Apis::CloudsearchV1::InviteeInfo, decorator: Google::Apis::CloudsearchV1::InviteeInfo::Representation
      
          property :type, as: 'type'
          property :user_mention_error, as: 'userMentionError'
        end
      end
      
      class VpcSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :double_value, as: 'doubleValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class ValueFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_name, as: 'operatorName'
          property :value, as: 'value', class: Google::Apis::CloudsearchV1::Value, decorator: Google::Apis::CloudsearchV1::Value::Representation
      
        end
      end
      
      class VideoCallMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meeting_space, as: 'meetingSpace', class: Google::Apis::CloudsearchV1::MeetingSpace, decorator: Google::Apis::CloudsearchV1::MeetingSpace::Representation
      
          property :should_not_render, as: 'shouldNotRender'
          property :was_created_in_current_group, as: 'wasCreatedInCurrentGroup'
        end
      end
      
      class VideoInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
        end
      end
      
      class VoicePhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :e164, as: 'e164'
          property :i18n_data, as: 'i18nData', class: Google::Apis::CloudsearchV1::VoicePhoneNumberI18nData, decorator: Google::Apis::CloudsearchV1::VoicePhoneNumberI18nData::Representation
      
        end
      end
      
      class VoicePhoneNumberI18nData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :international_number, as: 'internationalNumber'
          property :is_valid, as: 'isValid'
          property :national_number, as: 'nationalNumber'
          property :region_code, as: 'regionCode'
          property :validation_result, as: 'validationResult'
        end
      end
      
      class WhiteboardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class WidgetMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::CloudsearchV1::Button, decorator: Google::Apis::CloudsearchV1::Button::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::CloudsearchV1::DateTimePicker, decorator: Google::Apis::CloudsearchV1::DateTimePicker::Representation
      
          property :divider, as: 'divider', class: Google::Apis::CloudsearchV1::Divider, decorator: Google::Apis::CloudsearchV1::Divider::Representation
      
          property :grid, as: 'grid', class: Google::Apis::CloudsearchV1::Grid, decorator: Google::Apis::CloudsearchV1::Grid::Representation
      
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :image, as: 'image', class: Google::Apis::CloudsearchV1::Image, decorator: Google::Apis::CloudsearchV1::Image::Representation
      
          property :image_key_value, as: 'imageKeyValue', class: Google::Apis::CloudsearchV1::ImageKeyValue, decorator: Google::Apis::CloudsearchV1::ImageKeyValue::Representation
      
          property :key_value, as: 'keyValue', class: Google::Apis::CloudsearchV1::KeyValue, decorator: Google::Apis::CloudsearchV1::KeyValue::Representation
      
          property :menu, as: 'menu', class: Google::Apis::CloudsearchV1::Menu, decorator: Google::Apis::CloudsearchV1::Menu::Representation
      
          property :selection_control, as: 'selectionControl', class: Google::Apis::CloudsearchV1::SelectionControl, decorator: Google::Apis::CloudsearchV1::SelectionControl::Representation
      
          property :text_field, as: 'textField', class: Google::Apis::CloudsearchV1::TextField, decorator: Google::Apis::CloudsearchV1::TextField::Representation
      
          property :text_key_value, as: 'textKeyValue', class: Google::Apis::CloudsearchV1::TextKeyValue, decorator: Google::Apis::CloudsearchV1::TextKeyValue::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::CloudsearchV1::TextParagraph, decorator: Google::Apis::CloudsearchV1::TextParagraph::Representation
      
        end
      end
      
      class WonderCardDelete
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :message_mappings, as: 'messageMappings', class: Google::Apis::CloudsearchV1::WonderMessageMapping, decorator: Google::Apis::CloudsearchV1::WonderMessageMapping::Representation
      
          property :msg_id, :numeric_string => true, as: 'msgId'
        end
      end
      
      class WonderMessageMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :wonder_card_message_id, as: 'wonderCardMessageId'
        end
      end
      
      class WrappedResourceKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_key, as: 'resourceKey'
        end
      end
      
      class YouTubeBroadcastSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadcast_stats, as: 'broadcastStats', class: Google::Apis::CloudsearchV1::YouTubeBroadcastStats, decorator: Google::Apis::CloudsearchV1::YouTubeBroadcastStats::Representation
      
          property :session_state_info, as: 'sessionStateInfo', class: Google::Apis::CloudsearchV1::SessionStateInfo, decorator: Google::Apis::CloudsearchV1::SessionStateInfo::Representation
      
          property :you_tube_broadcast_session_id, as: 'youTubeBroadcastSessionId'
          property :you_tube_live_broadcast_event, as: 'youTubeLiveBroadcastEvent', class: Google::Apis::CloudsearchV1::YouTubeLiveBroadcastEvent, decorator: Google::Apis::CloudsearchV1::YouTubeLiveBroadcastEvent::Representation
      
        end
      end
      
      class YouTubeBroadcastStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_viewer_count, :numeric_string => true, as: 'estimatedViewerCount'
        end
      end
      
      class YouTubeLiveBroadcastEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brand_account_gaia_id, as: 'brandAccountGaiaId'
          property :broadcast_id, as: 'broadcastId'
          property :channel_id, as: 'channelId'
          property :view_url, as: 'viewUrl'
        end
      end
      
      class YoutubeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :should_not_render, as: 'shouldNotRender'
          property :start_time, as: 'startTime'
        end
      end
      
      class YoutubeUserProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :youtube_user_id, :numeric_string => true, as: 'youtubeUserId'
        end
      end
      
      class ZwiebackSessionProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zwieback_session_id, :numeric_string => true, as: 'zwiebackSessionId'
        end
      end
    end
  end
end
