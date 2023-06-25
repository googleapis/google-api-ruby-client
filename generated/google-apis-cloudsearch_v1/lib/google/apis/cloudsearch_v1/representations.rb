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
      
      class AclInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLoggingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackgroundColoredText
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
      
      class CheckAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextAttribute
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
      
      class DateValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteQueueItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayedProperty
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
      
      class DriveFollowUpRestrict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveLocationRestrict
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
      
      class EmailAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazFrontendTeamsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazFrontendTeamsPersonCorePhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAgendaEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAgendaGroupCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAgendaGroupCardProtoContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAgendaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAnswerAnswerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAnswerSuggestedQueryCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickAssistCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCardMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonDocumentJustification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonPerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickCommonPersonBirthday
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickConflictingEventsCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickDocumentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickDocumentPerCategoryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickFindMeetingTimeCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickGap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickGenericAnswerCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickGetAndKeepAheadCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickNlpMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPeopleDisambiguationCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPersonProfileCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPersonProfileCardRelatedPeople
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickPersonalizedDocsCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickRankingParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickRecentDocumentsCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickScheduledMeeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickShareMeetingDocsCardProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseTopazSidekickTimeSlot
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
      
      class FilterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreshnessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GSuitePrincipal
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
      
      class GoogleDocsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDocsResultInfo
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
      
      class Id
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
      
      class Interaction
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
      
      class ItemStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemStructuredData
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
      
      class MapInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MapTile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
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
      
      class Name
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamedProperty
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PeoplePromotionCard
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
      
      class PersonCore
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
      
      class PollItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Principal
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
      
      class PushItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryActivity
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
      
      class RemoveActivityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveActivityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepositoryError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetSearchApplicationRequest
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
      
      class SafeHtmlProto
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
      
      class ShareScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snippet
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
      
      class SpellResult
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
      
      class TextOperatorOptions
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
      
      class ThirdPartyGenericCard
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
      
      class TypeInfo
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
      
      class UpdateDataSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserActivity
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
      
      class VideoInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :groups_count, as: 'groupsCount'
          property :scope, as: 'scope'
          property :users_count, as: 'usersCount'
        end
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :url, as: 'url'
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
      
      class BackgroundColoredText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor'
          property :text, as: 'text'
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
      
      class CheckAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_access, as: 'hasAccess'
        end
      end
      
      class CompositeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logic_operator, as: 'logicOperator'
          collection :sub_filters, as: 'subFilters', class: Google::Apis::CloudsearchV1::Filter, decorator: Google::Apis::CloudsearchV1::Filter::Representation
      
        end
      end
      
      class Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::CloudsearchV1::Action, decorator: Google::Apis::CloudsearchV1::Action::Representation
      
          property :description, as: 'description', class: Google::Apis::CloudsearchV1::SafeHtmlProto, decorator: Google::Apis::CloudsearchV1::SafeHtmlProto::Representation
      
          property :subtitle, as: 'subtitle', class: Google::Apis::CloudsearchV1::BackgroundColoredText, decorator: Google::Apis::CloudsearchV1::BackgroundColoredText::Representation
      
          property :title, as: 'title', class: Google::Apis::CloudsearchV1::BackgroundColoredText, decorator: Google::Apis::CloudsearchV1::BackgroundColoredText::Representation
      
        end
      end
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app, as: 'app'
          collection :day_of_week, as: 'dayOfWeek'
          property :end_date_sec, :numeric_string => true, as: 'endDateSec'
          property :end_day_offset_sec, :numeric_string => true, as: 'endDayOffsetSec'
          collection :locale, as: 'locale'
          collection :location, as: 'location'
          collection :query, as: 'query'
          property :start_date_sec, :numeric_string => true, as: 'startDateSec'
          property :start_day_offset_sec, :numeric_string => true, as: 'startDayOffsetSec'
          collection :surface, as: 'surface'
          collection :type, as: 'type'
        end
      end
      
      class ContextAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :values, as: 'values'
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
      
      class DeleteQueueItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_name, as: 'connectorName'
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :queue, as: 'queue'
        end
      end
      
      class DisplayedProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property_name, as: 'propertyName'
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
      
      class EnterpriseTopazFrontendTeamsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :url, as: 'url', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
        end
      end
      
      class EnterpriseTopazFrontendTeamsPersonCorePhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
          property :phone_url, as: 'phoneUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :type, as: 'type'
        end
      end
      
      class EnterpriseTopazSidekickAgendaEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agenda_item_url, as: 'agendaItemUrl'
          property :chronology, as: 'chronology'
          property :creator, as: 'creator', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson::Representation
      
          property :current_user_attending_status, as: 'currentUserAttendingStatus'
          property :description, as: 'description'
          collection :document, as: 'document', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument::Representation
      
          property :end_date, as: 'endDate'
          property :end_time, as: 'endTime'
          property :end_time_ms, :numeric_string => true, as: 'endTimeMs'
          property :event_id, as: 'eventId'
          property :guests_can_invite_others, as: 'guestsCanInviteOthers'
          property :guests_can_modify, as: 'guestsCanModify'
          property :guests_can_see_guests, as: 'guestsCanSeeGuests'
          property :hangout_id, as: 'hangoutId'
          property :hangout_url, as: 'hangoutUrl'
          collection :invitee, as: 'invitee', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson::Representation
      
          property :is_all_day, as: 'isAllDay'
          property :last_modification_time_ms, :numeric_string => true, as: 'lastModificationTimeMs'
          property :location, as: 'location'
          property :notify_to_user, as: 'notifyToUser'
          property :other_attendees_excluded, as: 'otherAttendeesExcluded'
          property :requester_is_owner, as: 'requesterIsOwner'
          property :show_full_event_details_to_use, as: 'showFullEventDetailsToUse'
          property :start_date, as: 'startDate'
          property :start_time, as: 'startTime'
          property :start_time_ms, :numeric_string => true, as: 'startTimeMs'
          property :time_zone, as: 'timeZone'
          property :title, as: 'title'
        end
      end
      
      class EnterpriseTopazSidekickAgendaGroupCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agenda_item, as: 'agendaItem', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem::Representation
      
          property :context, as: 'context', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProtoContext, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProtoContext::Representation
      
          property :current_agenda_item, as: 'currentAgendaItem', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickAgendaGroupCardProtoContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :date, as: 'date'
          property :events_restrict, as: 'eventsRestrict'
        end
      end
      
      class EnterpriseTopazSidekickAgendaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicted_group, as: 'conflictedGroup', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto::Representation
      
          property :gap_before, as: 'gapBefore', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGap, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGap::Representation
      
          property :meeting, as: 'meeting', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickAnswerAnswerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labeled_answer, as: 'labeledAnswer', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer::Representation
      
          property :type, as: 'type'
        end
      end
      
      class EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :label, as: 'label'
        end
      end
      
      class EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggested_query_category, as: 'suggestedQueryCategory', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryCategory, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryCategory::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickAnswerSuggestedQueryCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :is_enabled, as: 'isEnabled'
          collection :query, as: 'query'
        end
      end
      
      class EnterpriseTopazSidekickAssistCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agenda_group_card_proto, as: 'agendaGroupCardProto', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProto::Representation
      
          property :card_metadata, as: 'cardMetadata', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCardMetadata, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCardMetadata::Representation
      
          property :card_type, as: 'cardType'
          property :conflicting_meetings_card, as: 'conflictingMeetingsCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto::Representation
      
          property :document_list_card, as: 'documentListCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList::Representation
      
          property :documents_with_mentions, as: 'documentsWithMentions', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList::Representation
      
          property :find_meeting_time_card, as: 'findMeetingTimeCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickFindMeetingTimeCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickFindMeetingTimeCardProto::Representation
      
          property :generic_answer_card, as: 'genericAnswerCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGenericAnswerCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGenericAnswerCard::Representation
      
          property :get_and_keep_ahead_card, as: 'getAndKeepAheadCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProto::Representation
      
          property :meeting, as: 'meeting', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
          property :meeting_notes_card, as: 'meetingNotesCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardProto::Representation
      
          property :meeting_notes_card_request, as: 'meetingNotesCardRequest', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardRequest, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardRequest::Representation
      
          property :people_disambiguation_card, as: 'peopleDisambiguationCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleDisambiguationCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleDisambiguationCard::Representation
      
          property :people_promotion_card, as: 'peoplePromotionCard', class: Google::Apis::CloudsearchV1::PeoplePromotionCard, decorator: Google::Apis::CloudsearchV1::PeoplePromotionCard::Representation
      
          property :person_answer_card, as: 'personAnswerCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard::Representation
      
          property :person_profile_card, as: 'personProfileCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCard::Representation
      
          property :personalized_docs_card, as: 'personalizedDocsCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonalizedDocsCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonalizedDocsCardProto::Representation
      
          property :related_people_answer_card, as: 'relatedPeopleAnswerCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard::Representation
      
          property :share_meeting_docs_card, as: 'shareMeetingDocsCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickShareMeetingDocsCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickShareMeetingDocsCardProto::Representation
      
          property :shared_documents, as: 'sharedDocuments', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList::Representation
      
          property :suggested_query_answer_card, as: 'suggestedQueryAnswerCard', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard::Representation
      
          property :third_party_answer_card, as: 'thirdPartyAnswerCard', class: Google::Apis::CloudsearchV1::ThirdPartyGenericCard, decorator: Google::Apis::CloudsearchV1::ThirdPartyGenericCard::Representation
      
          property :work_in_progress_card_proto, as: 'workInProgressCardProto', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRecentDocumentsCardProto, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRecentDocumentsCardProto::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickCardMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_category, as: 'cardCategory'
          property :card_id, as: 'cardId'
          property :chronology, as: 'chronology'
          property :debug_info, as: 'debugInfo'
          property :nlp_metadata, as: 'nlpMetadata', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickNlpMetadata, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickNlpMetadata::Representation
      
          property :ranking_params, as: 'rankingParams', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRankingParams, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRankingParams::Representation
      
          property :render_mode, as: 'renderMode'
        end
      end
      
      class EnterpriseTopazSidekickCommonDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class EnterpriseTopazSidekickCommonDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :debug_info, as: 'debugInfo', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDebugInfo, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDebugInfo::Representation
      
          property :document_id, as: 'documentId'
          property :drive_document_metadata, as: 'driveDocumentMetadata', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata::Representation
      
          property :generic_url, as: 'genericUrl'
          property :justification, as: 'justification', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentJustification, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentJustification::Representation
      
          property :mime_type, as: 'mimeType'
          property :provenance, as: 'provenance'
          property :reason, as: 'reason'
          property :snippet, as: 'snippet'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :title, as: 'title'
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :is_private, as: 'isPrivate'
          property :last_comment_time_ms, :numeric_string => true, as: 'lastCommentTimeMs'
          property :last_edit_time_ms, :numeric_string => true, as: 'lastEditTimeMs'
          property :last_modification_time_millis, :numeric_string => true, as: 'lastModificationTimeMillis'
          property :last_updated_time_ms, :numeric_string => true, as: 'lastUpdatedTimeMs'
          property :last_view_time_ms, :numeric_string => true, as: 'lastViewTimeMs'
          property :owner, as: 'owner', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
          property :scope, as: 'scope'
        end
      end
      
      class EnterpriseTopazSidekickCommonDocumentJustification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :justification, as: 'justification'
          property :reason, as: 'reason'
        end
      end
      
      class EnterpriseTopazSidekickCommonPerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :birthday, as: 'birthday', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPersonBirthday, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPersonBirthday::Representation
      
          property :cell_phone, as: 'cellPhone'
          property :department, as: 'department'
          property :desk_location, as: 'deskLocation'
          property :desk_phone, as: 'deskPhone'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :family_name, as: 'familyName'
          property :full_address, as: 'fullAddress'
          property :gaia_id, :numeric_string => true, as: 'gaiaId'
          property :given_name, as: 'givenName'
          property :job_title, as: 'jobTitle'
          property :manager, as: 'manager', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
          property :obfuscated_id, as: 'obfuscatedId'
          property :photo_url, as: 'photoUrl'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class EnterpriseTopazSidekickCommonPersonBirthday
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class EnterpriseTopazSidekickConflictingEventsCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conflicting_event, as: 'conflictingEvent', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
          property :main_event, as: 'mainEvent', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickDocumentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_type, as: 'groupType'
          collection :personalized_document, as: 'personalizedDocument', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickDocumentPerCategoryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry::Representation
      
          property :help_message, as: 'helpMessage'
          property :list_type, as: 'listType'
          property :list_type_description, as: 'listTypeDescription'
          property :response_message, as: 'responseMessage'
        end
      end
      
      class EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :document, as: 'document', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument::Representation
      
          property :rationale, as: 'rationale'
        end
      end
      
      class EnterpriseTopazSidekickFindMeetingTimeCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :common_available_time_slots, as: 'commonAvailableTimeSlots', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot::Representation
      
          collection :invitees, as: 'invitees', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson::Representation
      
          property :requester, as: 'requester', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson::Representation
      
          property :scheduled_meeting, as: 'scheduledMeeting', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickScheduledMeeting, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickScheduledMeeting::Representation
      
          collection :skipped_invitees, as: 'skippedInvitees', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson::Representation
      
          property :time_boundaries, as: 'timeBoundaries', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot::Representation
      
          property :timezone_id, as: 'timezoneId'
        end
      end
      
      class EnterpriseTopazSidekickGap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_remaining_time, as: 'displayRemainingTime'
          property :end_time, as: 'endTime'
          property :end_time_ms, :numeric_string => true, as: 'endTimeMs'
          property :remaining_time, as: 'remainingTime'
          property :start_time, as: 'startTime'
          property :start_time_ms, :numeric_string => true, as: 'startTimeMs'
        end
      end
      
      class EnterpriseTopazSidekickGenericAnswerCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :title, as: 'title'
        end
      end
      
      class EnterpriseTopazSidekickGetAndKeepAheadCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :declined_events, as: 'declinedEvents', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents::Representation
      
          property :mentioned_documents, as: 'mentionedDocuments', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList::Representation
      
          property :shared_documents, as: 'sharedDocuments', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :events, as: 'events', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :event, as: 'event', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
          property :reason, as: 'reason'
        end
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event, as: 'event', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
          property :file_id, as: 'fileId'
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class EnterpriseTopazSidekickMeetingNotesCardRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :can_create_for, as: 'canCreateFor'
          property :error, as: 'error', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardError, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardError::Representation
      
          property :event, as: 'event', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickNlpMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
        end
      end
      
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disambiguation, as: 'disambiguation', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson::Representation
      
          property :name, as: 'name'
        end
      end
      
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
          property :query, as: 'query'
        end
      end
      
      class EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer, as: 'answer', class: Google::Apis::CloudsearchV1::SafeHtmlProto, decorator: Google::Apis::CloudsearchV1::SafeHtmlProto::Representation
      
          property :answer_text, as: 'answerText', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerList, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerList::Representation
      
          property :disambiguation_info, as: 'disambiguationInfo', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo::Representation
      
          property :header, as: 'header', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader::Representation
      
          property :response_status, as: 'responseStatus'
          property :status_message, as: 'statusMessage'
          property :subject, as: 'subject', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disambiguation_info, as: 'disambiguationInfo', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo::Representation
      
          property :header, as: 'header', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader::Representation
      
          collection :related_people, as: 'relatedPeople', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
          property :relation_type, as: 'relationType'
          property :response_status, as: 'responseStatus'
          property :status_message, as: 'statusMessage'
          property :subject, as: 'subject', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickPeopleDisambiguationCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :person, as: 'person', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickPerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affinity_level, as: 'affinityLevel'
          property :attending_status, as: 'attendingStatus'
          property :email, as: 'email'
          property :gaia_id, :numeric_string => true, as: 'gaiaId'
          property :is_group, as: 'isGroup'
          property :name, as: 'name'
          property :obfuscated_gaia_id, as: 'obfuscatedGaiaId'
          property :photo_url, as: 'photoUrl'
        end
      end
      
      class EnterpriseTopazSidekickPersonProfileCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :related_people, as: 'relatedPeople', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCardRelatedPeople, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCardRelatedPeople::Representation
      
          property :subject, as: 'subject', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickPersonProfileCardRelatedPeople
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :related_person, as: 'relatedPerson', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson::Representation
      
          property :relation, as: 'relation'
        end
      end
      
      class EnterpriseTopazSidekickPersonalizedDocsCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document_group, as: 'documentGroup', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentGroup, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentGroup::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickRankingParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_ms, :numeric_string => true, as: 'endTimeMs'
          property :priority, as: 'priority'
          property :score, as: 'score'
          property :span_ms, :numeric_string => true, as: 'spanMs'
          property :start_time_ms, :numeric_string => true, as: 'startTimeMs'
          property :type, as: 'type'
        end
      end
      
      class EnterpriseTopazSidekickRecentDocumentsCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document, as: 'document', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickScheduledMeeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :meeting_location, as: 'meetingLocation'
          property :meeting_time, as: 'meetingTime', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot::Representation
      
          property :meeting_title, as: 'meetingTitle'
        end
      end
      
      class EnterpriseTopazSidekickShareMeetingDocsCardProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document, as: 'document', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument::Representation
      
          property :event, as: 'event', class: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry::Representation
      
        end
      end
      
      class EnterpriseTopazSidekickTimeSlot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_day, as: 'endTimeDay'
          property :end_time_hour_and_minute, as: 'endTimeHourAndMinute'
          property :end_time_in_millis, :numeric_string => true, as: 'endTimeInMillis'
          property :start_time_day, as: 'startTimeDay'
          property :start_time_hour_and_minute, as: 'startTimeHourAndMinute'
          property :start_time_in_millis, :numeric_string => true, as: 'startTimeInMillis'
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
      
      class FilterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::CloudsearchV1::Filter, decorator: Google::Apis::CloudsearchV1::Filter::Representation
      
          property :object_type, as: 'objectType'
        end
      end
      
      class FreshnessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_duration, as: 'freshnessDuration'
          property :freshness_property, as: 'freshnessProperty'
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
      
      class Id
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creator_user_id, :numeric_string => true, as: 'creatorUserId'
          property :local_id, as: 'localId'
          property :name_space, as: 'nameSpace'
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
      
      class Interaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interaction_time, as: 'interactionTime'
          property :principal, as: 'principal', class: Google::Apis::CloudsearchV1::Principal, decorator: Google::Apis::CloudsearchV1::Principal::Representation
      
          property :type, as: 'type'
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
      
      class MapInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat, as: 'lat'
          property :location_url, as: 'locationUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :long, as: 'long'
          collection :map_tile, as: 'mapTile', class: Google::Apis::CloudsearchV1::MapTile, decorator: Google::Apis::CloudsearchV1::MapTile::Representation
      
          property :zoom, as: 'zoom'
        end
      end
      
      class MapTile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_url, as: 'imageUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :tile_x, as: 'tileX'
          property :tile_y, as: 'tileY'
        end
      end
      
      class MatchRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
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
      
      class PeoplePromotionCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :people, as: 'people', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
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
      
      class PersonCore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_me_as, as: 'addressMeAs'
          collection :admin_to, as: 'adminTo', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          collection :admins, as: 'admins', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          property :availability_status, as: 'availabilityStatus'
          property :birthday, as: 'birthday', class: Google::Apis::CloudsearchV1::Date, decorator: Google::Apis::CloudsearchV1::Date::Representation
      
          property :calendar_url, as: 'calendarUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :chat_url, as: 'chatUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :cost_center, as: 'costCenter'
          property :department, as: 'department'
          collection :direct_reports, as: 'directReports', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          collection :dotted_line_managers, as: 'dottedLineManagers', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          collection :dotted_line_reports, as: 'dottedLineReports', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          collection :emails, as: 'emails'
          property :employee_id, as: 'employeeId'
          property :fingerprint, as: 'fingerprint'
          property :fte_permille, :numeric_string => true, as: 'ftePermille'
          property :geo_location, as: 'geoLocation', class: Google::Apis::CloudsearchV1::MapInfo, decorator: Google::Apis::CloudsearchV1::MapInfo::Representation
      
          property :gmail_url, as: 'gmailUrl'
          property :job_title, as: 'jobTitle'
          collection :keyword_types, as: 'keywordTypes'
          hash :keywords, as: 'keywords'
          collection :links, as: 'links', class: Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsLink, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsLink::Representation
      
          property :location, as: 'location'
          collection :managers, as: 'managers', class: Google::Apis::CloudsearchV1::PersonCore, decorator: Google::Apis::CloudsearchV1::PersonCore::Representation
      
          property :mission, as: 'mission'
          property :name, as: 'name'
          property :office_location, as: 'officeLocation'
          property :person_id, as: 'personId'
          collection :phone_numbers, as: 'phoneNumbers', class: Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsPersonCorePhoneNumber, decorator: Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsPersonCorePhoneNumber::Representation
      
          property :photo_url, as: 'photoUrl', class: Google::Apis::CloudsearchV1::SafeUrlProto, decorator: Google::Apis::CloudsearchV1::SafeUrlProto::Representation
      
          property :postal_address, as: 'postalAddress'
          property :total_direct_reports_count, as: 'totalDirectReportsCount'
          property :total_dlr_count, as: 'totalDlrCount'
          property :total_fte_count, :numeric_string => true, as: 'totalFteCount'
          property :username, as: 'username'
          property :waldo_come_back_time, as: 'waldoComeBackTime'
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
      
      class Principal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_resource_name, as: 'groupResourceName'
          property :gsuite_principal, as: 'gsuitePrincipal', class: Google::Apis::CloudsearchV1::GSuitePrincipal, decorator: Google::Apis::CloudsearchV1::GSuitePrincipal::Representation
      
          property :user_resource_name, as: 'userResourceName'
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
      
      class QueryActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
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
      
      class RemoveActivityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_options, as: 'requestOptions', class: Google::Apis::CloudsearchV1::RequestOptions, decorator: Google::Apis::CloudsearchV1::RequestOptions::Representation
      
          property :user_activity, as: 'userActivity', class: Google::Apis::CloudsearchV1::UserActivity, decorator: Google::Apis::CloudsearchV1::UserActivity::Representation
      
        end
      end
      
      class RemoveActivityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class RequestOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :language_code, as: 'languageCode'
          property :search_application_id, as: 'searchApplicationId'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class ResetSearchApplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
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
      
      class SafeHtmlProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_do_not_access_or_else_safe_html_wrapped_value, as: 'privateDoNotAccessOrElseSafeHtmlWrappedValue'
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
      
      class ShareScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :scope, as: 'scope'
        end
      end
      
      class Snippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :match_ranges, as: 'matchRanges', class: Google::Apis::CloudsearchV1::MatchRange, decorator: Google::Apis::CloudsearchV1::MatchRange::Representation
      
          property :snippet, as: 'snippet'
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
      
      class SpellResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :suggested_query, as: 'suggestedQuery'
          property :suggested_query_html, as: 'suggestedQueryHtml', class: Google::Apis::CloudsearchV1::SafeHtmlProto, decorator: Google::Apis::CloudsearchV1::SafeHtmlProto::Representation
      
          property :suggestion_type, as: 'suggestionType'
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
      
      class TextOperatorOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match_with_operator, as: 'exactMatchWithOperator'
          property :operator_name, as: 'operatorName'
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
      
      class ThirdPartyGenericCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_id, as: 'cardId'
          property :category, as: 'category'
          property :content, as: 'content', class: Google::Apis::CloudsearchV1::Content, decorator: Google::Apis::CloudsearchV1::Content::Representation
      
          property :context, as: 'context', class: Google::Apis::CloudsearchV1::Context, decorator: Google::Apis::CloudsearchV1::Context::Representation
      
          property :is_dismissible, as: 'isDismissible'
          property :priority, as: 'priority'
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
      
      class TypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_info, as: 'videoInfo', class: Google::Apis::CloudsearchV1::VideoInfo, decorator: Google::Apis::CloudsearchV1::VideoInfo::Representation
      
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
      
      class UpdateDataSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_options, as: 'debugOptions', class: Google::Apis::CloudsearchV1::DebugOptions, decorator: Google::Apis::CloudsearchV1::DebugOptions::Representation
      
          property :source, as: 'source', class: Google::Apis::CloudsearchV1::DataSource, decorator: Google::Apis::CloudsearchV1::DataSource::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class UploadItemRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class UserActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_activity, as: 'queryActivity', class: Google::Apis::CloudsearchV1::QueryActivity, decorator: Google::Apis::CloudsearchV1::QueryActivity::Representation
      
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
      
      class VideoInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
        end
      end
    end
  end
end
