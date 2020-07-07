# Copyright 2015 Google Inc.
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
    module YoutubePartnerV1
      
      class AdBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetLabelListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetMatchPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetRelationship
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetRelationshipListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetShare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetShareListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blobstore2Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Campaign
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CampaignTargetLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Claim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClaimSnippet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Conditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConflictingOwnership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentOwner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentOwnerListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CountriesRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CuepointSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffChecksumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffDownloadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExcludedInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntervalCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiveCuepoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LongestMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataHistoryListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectIdProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Origin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Origination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OwnershipConflicts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OwnershipHistoryListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromotedContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceConflict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceConflictListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceConflictMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReferenceListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RightsOwnership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RightsOwnershipHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpreadsheetTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpreadsheetTemplateListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerritoryCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerritoryConflicts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerritoryOwners
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TotalMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Uploader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploaderListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateAsyncRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateAsyncResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoAdvertisingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoAdvertisingOptionGetEnabledAdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Whitelist
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WhitelistListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YoutubePartnerApiProtoFrontendV1Origin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :midroll_seconds, as: 'midrollSeconds'
          property :position, as: 'position'
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alias_id, as: 'aliasId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :label, as: 'label'
          property :match_policy, as: 'matchPolicy', class: Google::Apis::YoutubePartnerV1::AssetMatchPolicy, decorator: Google::Apis::YoutubePartnerV1::AssetMatchPolicy::Representation
      
          property :match_policy_effective, as: 'matchPolicyEffective', class: Google::Apis::YoutubePartnerV1::AssetMatchPolicy, decorator: Google::Apis::YoutubePartnerV1::AssetMatchPolicy::Representation
      
          property :match_policy_mine, as: 'matchPolicyMine', class: Google::Apis::YoutubePartnerV1::AssetMatchPolicy, decorator: Google::Apis::YoutubePartnerV1::AssetMatchPolicy::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::YoutubePartnerV1::Metadata, decorator: Google::Apis::YoutubePartnerV1::Metadata::Representation
      
          property :metadata_effective, as: 'metadataEffective', class: Google::Apis::YoutubePartnerV1::Metadata, decorator: Google::Apis::YoutubePartnerV1::Metadata::Representation
      
          property :metadata_mine, as: 'metadataMine', class: Google::Apis::YoutubePartnerV1::Metadata, decorator: Google::Apis::YoutubePartnerV1::Metadata::Representation
      
          property :ownership, as: 'ownership', class: Google::Apis::YoutubePartnerV1::RightsOwnership, decorator: Google::Apis::YoutubePartnerV1::RightsOwnership::Representation
      
          property :ownership_conflicts, as: 'ownershipConflicts', class: Google::Apis::YoutubePartnerV1::OwnershipConflicts, decorator: Google::Apis::YoutubePartnerV1::OwnershipConflicts::Representation
      
          property :ownership_effective, as: 'ownershipEffective', class: Google::Apis::YoutubePartnerV1::RightsOwnership, decorator: Google::Apis::YoutubePartnerV1::RightsOwnership::Representation
      
          property :ownership_mine, as: 'ownershipMine', class: Google::Apis::YoutubePartnerV1::RightsOwnership, decorator: Google::Apis::YoutubePartnerV1::RightsOwnership::Representation
      
          property :status, as: 'status'
          property :time_created, as: 'timeCreated'
          property :type, as: 'type'
        end
      end
      
      class AssetLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :label_name, as: 'labelName'
        end
      end
      
      class AssetLabelListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::AssetLabel, decorator: Google::Apis::YoutubePartnerV1::AssetLabel::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AssetListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Asset, decorator: Google::Apis::YoutubePartnerV1::Asset::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class AssetMatchPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :policy_id, as: 'policyId'
          collection :rules, as: 'rules', class: Google::Apis::YoutubePartnerV1::PolicyRule, decorator: Google::Apis::YoutubePartnerV1::PolicyRule::Representation
      
        end
      end
      
      class AssetRelationship
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :child_asset_id, as: 'childAssetId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :parent_asset_id, as: 'parentAssetId'
        end
      end
      
      class AssetRelationshipListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::AssetRelationship, decorator: Google::Apis::YoutubePartnerV1::AssetRelationship::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class AssetSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::AssetSnippet, decorator: Google::Apis::YoutubePartnerV1::AssetSnippet::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class AssetShare
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :share_id, as: 'shareId'
          property :view_id, as: 'viewId'
        end
      end
      
      class AssetShareListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::AssetShare, decorator: Google::Apis::YoutubePartnerV1::AssetShare::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class AssetSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_id, as: 'customId'
          property :id, as: 'id'
          property :isrc, as: 'isrc'
          property :iswc, as: 'iswc'
          property :kind, as: 'kind'
          property :time_created, as: 'timeCreated'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class Blobstore2Info
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_generation, :numeric_string => true, as: 'blobGeneration'
          property :blob_id, as: 'blobId'
          property :download_read_handle, :base64 => true, as: 'downloadReadHandle'
          property :read_token, as: 'readToken'
          property :upload_metadata_container, :base64 => true, as: 'uploadMetadataContainer'
        end
      end
      
      class Campaign
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign_data, as: 'campaignData', class: Google::Apis::YoutubePartnerV1::CampaignData, decorator: Google::Apis::YoutubePartnerV1::CampaignData::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :status, as: 'status'
          property :time_created, as: 'timeCreated'
          property :time_last_modified, as: 'timeLastModified'
        end
      end
      
      class CampaignData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :campaign_source, as: 'campaignSource', class: Google::Apis::YoutubePartnerV1::CampaignSource, decorator: Google::Apis::YoutubePartnerV1::CampaignSource::Representation
      
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          collection :promoted_content, as: 'promotedContent', class: Google::Apis::YoutubePartnerV1::PromotedContent, decorator: Google::Apis::YoutubePartnerV1::PromotedContent::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CampaignList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Campaign, decorator: Google::Apis::YoutubePartnerV1::Campaign::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class CampaignSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_type, as: 'sourceType'
          collection :source_value, as: 'sourceValue'
        end
      end
      
      class CampaignTargetLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_id, as: 'targetId'
          property :target_type, as: 'targetType'
        end
      end
      
      class Claim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_policy, as: 'appliedPolicy', class: Google::Apis::YoutubePartnerV1::Policy, decorator: Google::Apis::YoutubePartnerV1::Policy::Representation
      
          property :asset_id, as: 'assetId'
          property :block_outside_ownership, as: 'blockOutsideOwnership'
          property :content_type, as: 'contentType'
          property :id, as: 'id'
          property :is_partner_uploaded, as: 'isPartnerUploaded'
          property :kind, as: 'kind'
          property :match_info, as: 'matchInfo', class: Google::Apis::YoutubePartnerV1::MatchInfo, decorator: Google::Apis::YoutubePartnerV1::MatchInfo::Representation
      
          property :origin, as: 'origin', class: Google::Apis::YoutubePartnerV1::Origin, decorator: Google::Apis::YoutubePartnerV1::Origin::Representation
      
          property :policy, as: 'policy', class: Google::Apis::YoutubePartnerV1::Policy, decorator: Google::Apis::YoutubePartnerV1::Policy::Representation
      
          property :status, as: 'status'
          property :time_created, as: 'timeCreated'
          property :video_id, as: 'videoId'
        end
      end
      
      class ClaimEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :reason, as: 'reason'
          property :source, as: 'source', class: Google::Apis::YoutubePartnerV1::Source, decorator: Google::Apis::YoutubePartnerV1::Source::Representation
      
          property :time, as: 'time'
          property :type, as: 'type'
          property :type_details, as: 'typeDetails', class: Google::Apis::YoutubePartnerV1::TypeDetails, decorator: Google::Apis::YoutubePartnerV1::TypeDetails::Representation
      
        end
      end
      
      class ClaimHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event, as: 'event', class: Google::Apis::YoutubePartnerV1::ClaimEvent, decorator: Google::Apis::YoutubePartnerV1::ClaimEvent::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :uploader_channel_id, as: 'uploaderChannelId'
        end
      end
      
      class ClaimListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Claim, decorator: Google::Apis::YoutubePartnerV1::Claim::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
          property :previous_page_token, as: 'previousPageToken'
        end
      end
      
      class ClaimSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::ClaimSnippet, decorator: Google::Apis::YoutubePartnerV1::ClaimSnippet::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
          property :previous_page_token, as: 'previousPageToken'
        end
      end
      
      class ClaimSnippet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_id, as: 'assetId'
          property :content_type, as: 'contentType'
          property :id, as: 'id'
          property :is_partner_uploaded, as: 'isPartnerUploaded'
          property :kind, as: 'kind'
          property :origin, as: 'origin', class: Google::Apis::YoutubePartnerV1::YoutubePartnerApiProtoFrontendV1Origin, decorator: Google::Apis::YoutubePartnerV1::YoutubePartnerApiProtoFrontendV1Origin::Representation
      
          property :status, as: 'status'
          property :third_party_claim, as: 'thirdPartyClaim'
          property :time_created, as: 'timeCreated'
          property :time_status_last_modified, as: 'timeStatusLastModified'
          property :video_id, as: 'videoId'
          property :video_title, as: 'videoTitle'
          property :video_views, :numeric_string => true, as: 'videoViews'
        end
      end
      
      class CompositeMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::YoutubePartnerV1::Blobstore2Info, decorator: Google::Apis::YoutubePartnerV1::Blobstore2Info::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :inline, :base64 => true, as: 'inline'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :object_id_prop, as: 'objectId', class: Google::Apis::YoutubePartnerV1::ObjectIdProp, decorator: Google::Apis::YoutubePartnerV1::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
        end
      end
      
      class Conditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_match_type, as: 'contentMatchType'
          collection :match_duration, as: 'matchDuration', class: Google::Apis::YoutubePartnerV1::IntervalCondition, decorator: Google::Apis::YoutubePartnerV1::IntervalCondition::Representation
      
          collection :match_percent, as: 'matchPercent', class: Google::Apis::YoutubePartnerV1::IntervalCondition, decorator: Google::Apis::YoutubePartnerV1::IntervalCondition::Representation
      
          collection :reference_duration, as: 'referenceDuration', class: Google::Apis::YoutubePartnerV1::IntervalCondition, decorator: Google::Apis::YoutubePartnerV1::IntervalCondition::Representation
      
          collection :reference_percent, as: 'referencePercent', class: Google::Apis::YoutubePartnerV1::IntervalCondition, decorator: Google::Apis::YoutubePartnerV1::IntervalCondition::Representation
      
          property :required_territories, as: 'requiredTerritories', class: Google::Apis::YoutubePartnerV1::TerritoryCondition, decorator: Google::Apis::YoutubePartnerV1::TerritoryCondition::Representation
      
        end
      end
      
      class ConflictingOwnership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :owner, as: 'owner'
          property :ratio, as: 'ratio'
        end
      end
      
      class ContentOwner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflict_notification_email, as: 'conflictNotificationEmail'
          property :display_name, as: 'displayName'
          collection :dispute_notification_emails, as: 'disputeNotificationEmails'
          collection :fingerprint_report_notification_emails, as: 'fingerprintReportNotificationEmails'
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :primary_notification_emails, as: 'primaryNotificationEmails'
        end
      end
      
      class ContentOwnerListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::ContentOwner, decorator: Google::Apis::YoutubePartnerV1::ContentOwner::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ContentTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_guess, as: 'bestGuess'
          property :from_bytes, as: 'fromBytes'
          property :from_file_name, as: 'fromFileName'
          property :from_header, as: 'fromHeader'
          property :from_url_path, as: 'fromUrlPath'
        end
      end
      
      class CountriesRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_formats, as: 'adFormats'
          collection :territories, as: 'territories'
        end
      end
      
      class CuepointSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cue_type, as: 'cueType'
          property :duration_secs, as: 'durationSecs'
          property :offset_time_ms, :numeric_string => true, as: 'offsetTimeMs'
          property :walltime, as: 'walltime'
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
      
      class DiffChecksumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_location, as: 'checksumsLocation', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
          property :chunk_size_bytes, :numeric_string => true, as: 'chunkSizeBytes'
          property :object_location, as: 'objectLocation', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffDownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_location, as: 'objectLocation', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
        end
      end
      
      class DiffUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_info, as: 'checksumsInfo', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
          property :object_info, as: 'objectInfo', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffUploadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_version, as: 'objectVersion'
          property :original_object, as: 'originalObject', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
        end
      end
      
      class DiffVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DownloadParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_gzip_compression, as: 'allowGzipCompression'
          property :ignore_range, as: 'ignoreRange'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExcludedInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :low, as: 'low'
          property :origin, as: 'origin'
          property :time_created, as: 'timeCreated'
        end
      end
      
      class IntervalCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :low, as: 'low'
        end
      end
      
      class LiveCuepoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadcast_id, as: 'broadcastId'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :settings, as: 'settings', class: Google::Apis::YoutubePartnerV1::CuepointSettings, decorator: Google::Apis::YoutubePartnerV1::CuepointSettings::Representation
      
        end
      end
      
      class LongestMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_secs, :numeric_string => true, as: 'durationSecs'
          property :reference_offset, :numeric_string => true, as: 'referenceOffset'
          property :user_video_offset, :numeric_string => true, as: 'userVideoOffset'
        end
      end
      
      class MatchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :longest_match, as: 'longestMatch', class: Google::Apis::YoutubePartnerV1::LongestMatch, decorator: Google::Apis::YoutubePartnerV1::LongestMatch::Representation
      
          collection :match_segments, as: 'matchSegments', class: Google::Apis::YoutubePartnerV1::MatchSegment, decorator: Google::Apis::YoutubePartnerV1::MatchSegment::Representation
      
          property :reference_id, as: 'referenceId'
          property :total_match, as: 'totalMatch', class: Google::Apis::YoutubePartnerV1::TotalMatch, decorator: Google::Apis::YoutubePartnerV1::TotalMatch::Representation
      
        end
      end
      
      class MatchSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :manual_segment, as: 'manual_segment', class: Google::Apis::YoutubePartnerV1::Segment2, decorator: Google::Apis::YoutubePartnerV1::Segment2::Representation
      
          property :reference_segment, as: 'reference_segment', class: Google::Apis::YoutubePartnerV1::Segment, decorator: Google::Apis::YoutubePartnerV1::Segment::Representation
      
          property :video_segment, as: 'video_segment', class: Google::Apis::YoutubePartnerV1::Segment, decorator: Google::Apis::YoutubePartnerV1::Segment::Representation
      
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :bigstore_object_ref, :base64 => true, as: 'bigstoreObjectRef'
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::YoutubePartnerV1::Blobstore2Info, decorator: Google::Apis::YoutubePartnerV1::Blobstore2Info::Representation
      
          collection :composite_media, as: 'compositeMedia', class: Google::Apis::YoutubePartnerV1::CompositeMedia, decorator: Google::Apis::YoutubePartnerV1::CompositeMedia::Representation
      
          property :content_type, as: 'contentType'
          property :content_type_info, as: 'contentTypeInfo', class: Google::Apis::YoutubePartnerV1::ContentTypeInfo, decorator: Google::Apis::YoutubePartnerV1::ContentTypeInfo::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :diff_checksums_response, as: 'diffChecksumsResponse', class: Google::Apis::YoutubePartnerV1::DiffChecksumsResponse, decorator: Google::Apis::YoutubePartnerV1::DiffChecksumsResponse::Representation
      
          property :diff_download_response, as: 'diffDownloadResponse', class: Google::Apis::YoutubePartnerV1::DiffDownloadResponse, decorator: Google::Apis::YoutubePartnerV1::DiffDownloadResponse::Representation
      
          property :diff_upload_request, as: 'diffUploadRequest', class: Google::Apis::YoutubePartnerV1::DiffUploadRequest, decorator: Google::Apis::YoutubePartnerV1::DiffUploadRequest::Representation
      
          property :diff_upload_response, as: 'diffUploadResponse', class: Google::Apis::YoutubePartnerV1::DiffUploadResponse, decorator: Google::Apis::YoutubePartnerV1::DiffUploadResponse::Representation
      
          property :diff_version_response, as: 'diffVersionResponse', class: Google::Apis::YoutubePartnerV1::DiffVersionResponse, decorator: Google::Apis::YoutubePartnerV1::DiffVersionResponse::Representation
      
          property :download_parameters, as: 'downloadParameters', class: Google::Apis::YoutubePartnerV1::DownloadParameters, decorator: Google::Apis::YoutubePartnerV1::DownloadParameters::Representation
      
          property :filename, as: 'filename'
          property :hash_prop, as: 'hash'
          property :hash_verified, as: 'hashVerified'
          property :inline, :base64 => true, as: 'inline'
          property :is_potential_retry, as: 'isPotentialRetry'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :media_id, :base64 => true, as: 'mediaId'
          property :object_id_prop, as: 'objectId', class: Google::Apis::YoutubePartnerV1::ObjectIdProp, decorator: Google::Apis::YoutubePartnerV1::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
          property :sha256_hash, :base64 => true, as: 'sha256Hash'
          property :timestamp, :numeric_string => true, as: 'timestamp'
          property :token, as: 'token'
        end
      end
      
      class MediaRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_bytes, :numeric_string => true, as: 'currentBytes'
          property :custom_data, as: 'customData'
          property :diff_object_version, as: 'diffObjectVersion'
          property :notification_type, as: 'notificationType'
          property :request_id, as: 'requestId'
          property :total_bytes, :numeric_string => true, as: 'totalBytes'
          property :total_bytes_is_estimated, as: 'totalBytesIsEstimated'
        end
      end
      
      class MediaResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_data, as: 'customData'
          property :data_storage_transform, :base64 => true, as: 'dataStorageTransform'
          property :dynamic_drop_target, :base64 => true, as: 'dynamicDropTarget'
          property :dynamic_dropzone, as: 'dynamicDropzone'
          property :media_for_diff, as: 'mediaForDiff', class: Google::Apis::YoutubePartnerV1::Media, decorator: Google::Apis::YoutubePartnerV1::Media::Representation
      
          property :request_class, as: 'requestClass'
          property :traffic_class_field, as: 'trafficClassField'
          property :verify_hash_from_header, as: 'verifyHashFromHeader'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actor, as: 'actor'
          property :album, as: 'album'
          collection :artist, as: 'artist'
          collection :broadcaster, as: 'broadcaster'
          property :category, as: 'category'
          property :content_type, as: 'contentType'
          property :copyright_date, as: 'copyrightDate', class: Google::Apis::YoutubePartnerV1::Date, decorator: Google::Apis::YoutubePartnerV1::Date::Representation
      
          property :custom_id, as: 'customId'
          property :description, as: 'description'
          collection :director, as: 'director'
          property :eidr, as: 'eidr'
          property :end_year, as: 'endYear'
          property :episode_number, as: 'episodeNumber'
          property :episodes_are_untitled, as: 'episodesAreUntitled'
          collection :genre, as: 'genre'
          property :grid, as: 'grid'
          property :hfa, as: 'hfa'
          property :info_url, as: 'infoUrl'
          property :isan, as: 'isan'
          property :isrc, as: 'isrc'
          property :iswc, as: 'iswc'
          collection :keyword, as: 'keyword'
          property :label, as: 'label'
          property :notes, as: 'notes'
          property :original_release_medium, as: 'originalReleaseMedium'
          collection :producer, as: 'producer'
          collection :ratings, as: 'ratings', class: Google::Apis::YoutubePartnerV1::Rating, decorator: Google::Apis::YoutubePartnerV1::Rating::Representation
      
          property :release_date, as: 'releaseDate', class: Google::Apis::YoutubePartnerV1::Date, decorator: Google::Apis::YoutubePartnerV1::Date::Representation
      
          property :season_number, as: 'seasonNumber'
          property :show_custom_id, as: 'showCustomId'
          property :show_title, as: 'showTitle'
          property :spoken_language, as: 'spokenLanguage'
          property :start_year, as: 'startYear'
          collection :subtitled_language, as: 'subtitledLanguage'
          property :title, as: 'title'
          property :tms_id, as: 'tmsId'
          property :total_episodes_expected, as: 'totalEpisodesExpected'
          property :upc, as: 'upc'
          collection :writer, as: 'writer'
        end
      end
      
      class MetadataHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::YoutubePartnerV1::Metadata, decorator: Google::Apis::YoutubePartnerV1::Metadata::Representation
      
          property :origination, as: 'origination', class: Google::Apis::YoutubePartnerV1::Origination, decorator: Google::Apis::YoutubePartnerV1::Origination::Representation
      
          property :time_provided, as: 'timeProvided'
        end
      end
      
      class MetadataHistoryListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::MetadataHistory, decorator: Google::Apis::YoutubePartnerV1::MetadataHistory::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ObjectIdProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :generation, :numeric_string => true, as: 'generation'
          property :object_name, as: 'objectName'
        end
      end
      
      class Origin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
        end
      end
      
      class Origination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :owner, as: 'owner'
          property :source, as: 'source'
        end
      end
      
      class OwnershipConflicts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :general, as: 'general', class: Google::Apis::YoutubePartnerV1::TerritoryConflicts, decorator: Google::Apis::YoutubePartnerV1::TerritoryConflicts::Representation
      
          property :kind, as: 'kind'
          collection :mechanical, as: 'mechanical', class: Google::Apis::YoutubePartnerV1::TerritoryConflicts, decorator: Google::Apis::YoutubePartnerV1::TerritoryConflicts::Representation
      
          collection :performance, as: 'performance', class: Google::Apis::YoutubePartnerV1::TerritoryConflicts, decorator: Google::Apis::YoutubePartnerV1::TerritoryConflicts::Representation
      
          collection :synchronization, as: 'synchronization', class: Google::Apis::YoutubePartnerV1::TerritoryConflicts, decorator: Google::Apis::YoutubePartnerV1::TerritoryConflicts::Representation
      
        end
      end
      
      class OwnershipHistoryListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::RightsOwnershipHistory, decorator: Google::Apis::YoutubePartnerV1::RightsOwnershipHistory::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          collection :custom_ids, as: 'customIds'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :locale, as: 'locale'
          property :name, as: 'name'
          property :status, as: 'status'
          collection :status_reports, as: 'statusReports', class: Google::Apis::YoutubePartnerV1::StatusReport, decorator: Google::Apis::YoutubePartnerV1::StatusReport::Representation
      
          property :time_created, as: 'timeCreated'
          property :type, as: 'type'
          property :uploader_name, as: 'uploaderName'
        end
      end
      
      class PackageInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::YoutubePartnerV1::ValidateError, decorator: Google::Apis::YoutubePartnerV1::ValidateError::Representation
      
          property :kind, as: 'kind'
          property :resource, as: 'resource', class: Google::Apis::YoutubePartnerV1::Package, decorator: Google::Apis::YoutubePartnerV1::Package::Representation
      
          property :status, as: 'status'
        end
      end
      
      class PageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :results_per_page, as: 'resultsPerPage'
          property :start_index, as: 'startIndex'
          property :total_results, as: 'totalResults'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::YoutubePartnerV1::PolicyRule, decorator: Google::Apis::YoutubePartnerV1::PolicyRule::Representation
      
          property :time_updated, as: 'timeUpdated'
        end
      end
      
      class PolicyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Policy, decorator: Google::Apis::YoutubePartnerV1::Policy::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class PolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :conditions, as: 'conditions', class: Google::Apis::YoutubePartnerV1::Conditions, decorator: Google::Apis::YoutubePartnerV1::Conditions::Representation
      
          collection :subaction, as: 'subaction'
        end
      end
      
      class PromotedContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :link, as: 'link', class: Google::Apis::YoutubePartnerV1::CampaignTargetLink, decorator: Google::Apis::YoutubePartnerV1::CampaignTargetLink::Representation
      
        end
      end
      
      class Rating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rating, as: 'rating'
          property :rating_system, as: 'ratingSystem'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_id, as: 'assetId'
          property :audioswap_enabled, as: 'audioswapEnabled'
          property :claim_id, as: 'claimId'
          property :content_type, as: 'contentType'
          property :duplicate_leader, as: 'duplicateLeader'
          collection :excluded_intervals, as: 'excludedIntervals', class: Google::Apis::YoutubePartnerV1::ExcludedInterval, decorator: Google::Apis::YoutubePartnerV1::ExcludedInterval::Representation
      
          property :fp_direct, as: 'fpDirect'
          property :gdata_media, as: 'gdataMedia', class: Google::Apis::YoutubePartnerV1::Media, decorator: Google::Apis::YoutubePartnerV1::Media::Representation
      
          property :hash_code, as: 'hashCode'
          property :id, as: 'id'
          property :ignore_fp_match, as: 'ignoreFpMatch'
          property :kind, as: 'kind'
          property :length, as: 'length'
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::YoutubePartnerV1::MediaRequestInfo, decorator: Google::Apis::YoutubePartnerV1::MediaRequestInfo::Representation
      
          property :media_response_info, as: 'mediaResponseInfo', class: Google::Apis::YoutubePartnerV1::MediaResponseInfo, decorator: Google::Apis::YoutubePartnerV1::MediaResponseInfo::Representation
      
          property :origination, as: 'origination', class: Google::Apis::YoutubePartnerV1::Origination, decorator: Google::Apis::YoutubePartnerV1::Origination::Representation
      
          property :status, as: 'status'
          property :status_reason, as: 'statusReason'
          property :urgent, as: 'urgent'
          property :video_id, as: 'videoId'
        end
      end
      
      class ReferenceConflict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_reference_id, as: 'conflictingReferenceId'
          property :expiry_time, as: 'expiryTime'
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :matches, as: 'matches', class: Google::Apis::YoutubePartnerV1::ReferenceConflictMatch, decorator: Google::Apis::YoutubePartnerV1::ReferenceConflictMatch::Representation
      
          property :original_reference_id, as: 'originalReferenceId'
          property :status, as: 'status'
        end
      end
      
      class ReferenceConflictListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::ReferenceConflict, decorator: Google::Apis::YoutubePartnerV1::ReferenceConflict::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class ReferenceConflictMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_reference_offset_ms, :numeric_string => true, as: 'conflicting_reference_offset_ms'
          property :length_ms, :numeric_string => true, as: 'length_ms'
          property :original_reference_offset_ms, :numeric_string => true, as: 'original_reference_offset_ms'
          property :type, as: 'type'
        end
      end
      
      class ReferenceListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Reference, decorator: Google::Apis::YoutubePartnerV1::Reference::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class RightsOwnership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :general, as: 'general', class: Google::Apis::YoutubePartnerV1::TerritoryOwners, decorator: Google::Apis::YoutubePartnerV1::TerritoryOwners::Representation
      
          property :kind, as: 'kind'
          collection :mechanical, as: 'mechanical', class: Google::Apis::YoutubePartnerV1::TerritoryOwners, decorator: Google::Apis::YoutubePartnerV1::TerritoryOwners::Representation
      
          collection :performance, as: 'performance', class: Google::Apis::YoutubePartnerV1::TerritoryOwners, decorator: Google::Apis::YoutubePartnerV1::TerritoryOwners::Representation
      
          collection :synchronization, as: 'synchronization', class: Google::Apis::YoutubePartnerV1::TerritoryOwners, decorator: Google::Apis::YoutubePartnerV1::TerritoryOwners::Representation
      
        end
      end
      
      class RightsOwnershipHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :origination, as: 'origination', class: Google::Apis::YoutubePartnerV1::Origination, decorator: Google::Apis::YoutubePartnerV1::Origination::Representation
      
          property :ownership, as: 'ownership', class: Google::Apis::YoutubePartnerV1::RightsOwnership, decorator: Google::Apis::YoutubePartnerV1::RightsOwnership::Representation
      
          property :time_provided, as: 'timeProvided'
        end
      end
      
      class Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, :numeric_string => true, as: 'duration'
          property :kind, as: 'kind'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class Segment2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish, as: 'finish'
          property :kind, as: 'kind'
          property :start, as: 'start'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_owner_id, as: 'contentOwnerId'
          property :type, as: 'type'
          property :user_email, as: 'userEmail'
        end
      end
      
      class SpreadsheetTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :status, as: 'status'
          property :template_content, as: 'templateContent'
          property :template_name, as: 'templateName'
          property :template_type, as: 'templateType'
        end
      end
      
      class SpreadsheetTemplateListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::SpreadsheetTemplate, decorator: Google::Apis::YoutubePartnerV1::SpreadsheetTemplate::Representation
      
          property :kind, as: 'kind'
          property :status, as: 'status'
        end
      end
      
      class StatusReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status_content, as: 'statusContent'
          property :status_file_name, as: 'statusFileName'
        end
      end
      
      class TerritoryCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :territories, as: 'territories'
          property :type, as: 'type'
        end
      end
      
      class TerritoryConflicts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conflicting_ownership, as: 'conflictingOwnership', class: Google::Apis::YoutubePartnerV1::ConflictingOwnership, decorator: Google::Apis::YoutubePartnerV1::ConflictingOwnership::Representation
      
          property :territory, as: 'territory'
        end
      end
      
      class TerritoryOwners
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :owner, as: 'owner'
          property :publisher, as: 'publisher'
          property :ratio, as: 'ratio'
          collection :territories, as: 'territories'
          property :type, as: 'type'
        end
      end
      
      class TotalMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_duration_secs, :numeric_string => true, as: 'referenceDurationSecs'
          property :user_video_duration_secs, :numeric_string => true, as: 'userVideoDurationSecs'
        end
      end
      
      class TypeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appeal_explanation, as: 'appealExplanation'
          property :dispute_notes, as: 'disputeNotes'
          property :dispute_reason, as: 'disputeReason'
          property :update_status, as: 'updateStatus'
        end
      end
      
      class Uploader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :uploader_name, as: 'uploaderName'
        end
      end
      
      class UploaderListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Uploader, decorator: Google::Apis::YoutubePartnerV1::Uploader::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class ValidateAsyncRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :kind, as: 'kind'
          property :uploader_name, as: 'uploaderName'
        end
      end
      
      class ValidateAsyncResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :status, as: 'status'
          property :validation_id, as: 'validationId'
        end
      end
      
      class ValidateError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :column_number, as: 'columnNumber'
          property :line_number, as: 'lineNumber'
          property :message, as: 'message'
          property :message_code, as: 'messageCode'
          property :severity, as: 'severity'
        end
      end
      
      class ValidateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :kind, as: 'kind'
          property :locale, as: 'locale'
          property :uploader_name, as: 'uploaderName'
        end
      end
      
      class ValidateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::YoutubePartnerV1::ValidateError, decorator: Google::Apis::YoutubePartnerV1::ValidateError::Representation
      
          property :kind, as: 'kind'
          property :status, as: 'status'
        end
      end
      
      class ValidateStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :locale, as: 'locale'
          property :validation_id, as: 'validationId'
        end
      end
      
      class ValidateStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::YoutubePartnerV1::ValidateError, decorator: Google::Apis::YoutubePartnerV1::ValidateError::Representation
      
          property :is_metadata_only, as: 'isMetadataOnly'
          property :kind, as: 'kind'
          property :status, as: 'status'
        end
      end
      
      class VideoAdvertisingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_breaks, as: 'adBreaks', class: Google::Apis::YoutubePartnerV1::AdBreak, decorator: Google::Apis::YoutubePartnerV1::AdBreak::Representation
      
          collection :ad_formats, as: 'adFormats'
          property :auto_generated_breaks, as: 'autoGeneratedBreaks'
          collection :break_position, as: 'breakPosition'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :tp_ad_server_video_id, as: 'tpAdServerVideoId'
          property :tp_targeting_url, as: 'tpTargetingUrl'
          property :tp_url_parameters, as: 'tpUrlParameters'
        end
      end
      
      class VideoAdvertisingOptionGetEnabledAdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_breaks, as: 'adBreaks', class: Google::Apis::YoutubePartnerV1::AdBreak, decorator: Google::Apis::YoutubePartnerV1::AdBreak::Representation
      
          property :ads_on_embeds, as: 'adsOnEmbeds'
          collection :countries_restriction, as: 'countriesRestriction', class: Google::Apis::YoutubePartnerV1::CountriesRestriction, decorator: Google::Apis::YoutubePartnerV1::CountriesRestriction::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
        end
      end
      
      class Whitelist
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :title, as: 'title'
        end
      end
      
      class WhitelistListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::YoutubePartnerV1::Whitelist, decorator: Google::Apis::YoutubePartnerV1::Whitelist::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :page_info, as: 'pageInfo', class: Google::Apis::YoutubePartnerV1::PageInfo, decorator: Google::Apis::YoutubePartnerV1::PageInfo::Representation
      
        end
      end
      
      class YoutubePartnerApiProtoFrontendV1Origin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source, as: 'source'
        end
      end
    end
  end
end
