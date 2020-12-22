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
      
      # 
      class AdBreak
        include Google::Apis::Core::Hashable
      
        # The time of the ad break specified as the number of seconds after the start of
        # the video when the break occurs.
        # Corresponds to the JSON property `midrollSeconds`
        # @return [Fixnum]
        attr_accessor :midroll_seconds
      
        # The point at which the break occurs during the video playback.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @midroll_seconds = args[:midroll_seconds] if args.key?(:midroll_seconds)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # 
      class Asset
        include Google::Apis::Core::Hashable
      
        # A list of asset IDs that can be used to refer to the asset. The list contains
        # values if the asset represents multiple constituent assets that have been
        # merged. In that case, any of the asset IDs originally assigned to the
        # constituent assets could be used to update the master, or synthesized, asset.
        # Corresponds to the JSON property `aliasId`
        # @return [Array<String>]
        attr_accessor :alias_id
      
        # An ID that YouTube assigns and uses to uniquely identify the asset.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For asset resources, the value is youtubePartner#
        # asset.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of asset labels on the asset.
        # Corresponds to the JSON property `label`
        # @return [Array<String>]
        attr_accessor :label
      
        # The matchPolicy object contains information about the asset's match policy,
        # which YouTube applies to user-uploaded videos that match the asset.
        # Corresponds to the JSON property `matchPolicy`
        # @return [Google::Apis::YoutubePartnerV1::AssetMatchPolicy]
        attr_accessor :match_policy
      
        # 
        # Corresponds to the JSON property `matchPolicyEffective`
        # @return [Google::Apis::YoutubePartnerV1::AssetMatchPolicy]
        attr_accessor :match_policy_effective
      
        # 
        # Corresponds to the JSON property `matchPolicyMine`
        # @return [Google::Apis::YoutubePartnerV1::AssetMatchPolicy]
        attr_accessor :match_policy_mine
      
        # The metadata object contains information that identifies and describes the
        # asset. This information could be used to search for the asset or to eliminate
        # duplication within YouTube's database.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::YoutubePartnerV1::Metadata]
        attr_accessor :metadata
      
        # 
        # Corresponds to the JSON property `metadataEffective`
        # @return [Google::Apis::YoutubePartnerV1::Metadata]
        attr_accessor :metadata_effective
      
        # 
        # Corresponds to the JSON property `metadataMine`
        # @return [Google::Apis::YoutubePartnerV1::Metadata]
        attr_accessor :metadata_mine
      
        # The ownership object identifies an asset's owners and provides additional
        # details about their ownership, such as the territories where they own the
        # asset.
        # Corresponds to the JSON property `ownership`
        # @return [Google::Apis::YoutubePartnerV1::RightsOwnership]
        attr_accessor :ownership
      
        # The ownershipConflicts object contains information about the asset's ownership
        # conflicts.
        # Corresponds to the JSON property `ownershipConflicts`
        # @return [Google::Apis::YoutubePartnerV1::OwnershipConflicts]
        attr_accessor :ownership_conflicts
      
        # 
        # Corresponds to the JSON property `ownershipEffective`
        # @return [Google::Apis::YoutubePartnerV1::RightsOwnership]
        attr_accessor :ownership_effective
      
        # 
        # Corresponds to the JSON property `ownershipMine`
        # @return [Google::Apis::YoutubePartnerV1::RightsOwnership]
        attr_accessor :ownership_mine
      
        # The asset's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The date and time the asset was created. The value is specified in RFC 3339 (
        # YYYY-MM-DDThh:mm:ss.000Z) format.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # The asset's type. This value determines the metadata fields that you can set
        # for the asset. In addition, certain API functions may only be supported for
        # specific types of assets. For example, composition assets may have more
        # complex ownership data than other types of assets.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_id = args[:alias_id] if args.key?(:alias_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @label = args[:label] if args.key?(:label)
          @match_policy = args[:match_policy] if args.key?(:match_policy)
          @match_policy_effective = args[:match_policy_effective] if args.key?(:match_policy_effective)
          @match_policy_mine = args[:match_policy_mine] if args.key?(:match_policy_mine)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metadata_effective = args[:metadata_effective] if args.key?(:metadata_effective)
          @metadata_mine = args[:metadata_mine] if args.key?(:metadata_mine)
          @ownership = args[:ownership] if args.key?(:ownership)
          @ownership_conflicts = args[:ownership_conflicts] if args.key?(:ownership_conflicts)
          @ownership_effective = args[:ownership_effective] if args.key?(:ownership_effective)
          @ownership_mine = args[:ownership_mine] if args.key?(:ownership_mine)
          @status = args[:status] if args.key?(:status)
          @time_created = args[:time_created] if args.key?(:time_created)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class AssetLabel
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For assetLabel resources, this value is
        # youtubePartner#assetLabel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the asset label.
        # Corresponds to the JSON property `labelName`
        # @return [String]
        attr_accessor :label_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @label_name = args[:label_name] if args.key?(:label_name)
        end
      end
      
      # 
      class AssetLabelListResponse
        include Google::Apis::Core::Hashable
      
        # A list of assetLabel resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::AssetLabel>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # assetLabelList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AssetListResponse
        include Google::Apis::Core::Hashable
      
        # A list of asset resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Asset>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # assetList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AssetMatchPolicy
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. Value: youtubePartner#assetMatchPolicy.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A value that uniquely identifies the Policy resource that YouTube applies to
        # user-uploaded videos that match the asset.
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        # A list of rules that collectively define the policy that the content owner
        # wants to apply to user-uploaded videos that match the asset. Each rule
        # specifies the action that YouTube should take and may optionally specify the
        # conditions under which that action is enforced.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::YoutubePartnerV1::PolicyRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # 
      class AssetRelationship
        include Google::Apis::Core::Hashable
      
        # The ID of the child (contained) asset.
        # Corresponds to the JSON property `childAssetId`
        # @return [String]
        attr_accessor :child_asset_id
      
        # A value that YouTube assigns and uses to uniquely identify the asset
        # relationship.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For this resource, the value is youtubePartner#
        # assetRelationship.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the parent (containing) asset.
        # Corresponds to the JSON property `parentAssetId`
        # @return [String]
        attr_accessor :parent_asset_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_asset_id = args[:child_asset_id] if args.key?(:child_asset_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @parent_asset_id = args[:parent_asset_id] if args.key?(:parent_asset_id)
        end
      end
      
      # 
      class AssetRelationshipListResponse
        include Google::Apis::Core::Hashable
      
        # A list of assetRelationship resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::AssetRelationship>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # assetRelationshipList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class AssetSearchResponse
        include Google::Apis::Core::Hashable
      
        # A list of asset resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::AssetSnippet>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # assetSnippetList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class AssetShare
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For this resource, the value is youtubePartner#
        # assetShare.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A value that YouTube assigns and uses to uniquely identify the asset share.
        # Corresponds to the JSON property `shareId`
        # @return [String]
        attr_accessor :share_id
      
        # A value that YouTube assigns and uses to uniquely identify the asset view.
        # Corresponds to the JSON property `viewId`
        # @return [String]
        attr_accessor :view_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @share_id = args[:share_id] if args.key?(:share_id)
          @view_id = args[:view_id] if args.key?(:view_id)
        end
      end
      
      # 
      class AssetShareListResponse
        include Google::Apis::Core::Hashable
      
        # An assetShare resource that matches the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::AssetShare>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # assetShareList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class AssetSnippet
        include Google::Apis::Core::Hashable
      
        # Custom ID assigned by the content owner to this asset.
        # Corresponds to the JSON property `customId`
        # @return [String]
        attr_accessor :custom_id
      
        # An ID that YouTube assigns and uses to uniquely identify the asset.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The ISRC (International Standard Recording Code) for this asset.
        # Corresponds to the JSON property `isrc`
        # @return [String]
        attr_accessor :isrc
      
        # The ISWC (International Standard Musical Work Code) for this asset.
        # Corresponds to the JSON property `iswc`
        # @return [String]
        attr_accessor :iswc
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # assetSnippet.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date and time the asset was created. The value is specified in RFC 3339 (
        # YYYY-MM-DDThh:mm:ss.000Z) format.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # Title of this asset.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The asset's type. This value determines which metadata fields might be
        # included in the metadata object.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_id = args[:custom_id] if args.key?(:custom_id)
          @id = args[:id] if args.key?(:id)
          @isrc = args[:isrc] if args.key?(:isrc)
          @iswc = args[:iswc] if args.key?(:iswc)
          @kind = args[:kind] if args.key?(:kind)
          @time_created = args[:time_created] if args.key?(:time_created)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information to read/write to blobstore2.
      class Blobstore2Info
        include Google::Apis::Core::Hashable
      
        # The blob generation id.
        # Corresponds to the JSON property `blobGeneration`
        # @return [Fixnum]
        attr_accessor :blob_generation
      
        # The blob id, e.g., /blobstore/prod/playground/scotty
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # Read handle passed from Bigstore -> Scotty for a GCS download. This is a
        # signed, serialized blobstore2.ReadHandle proto which must never be set outside
        # of Bigstore, and is not applicable to non-GCS media downloads.
        # Corresponds to the JSON property `downloadReadHandle`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :download_read_handle
      
        # The blob read token. Needed to read blobs that have not been replicated. Might
        # not be available until the final call.
        # Corresponds to the JSON property `readToken`
        # @return [String]
        attr_accessor :read_token
      
        # Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a
        # signed, serialized blobstore2.BlobMetadataContainer proto which must never be
        # consumed outside of Bigstore, and is not applicable to non-GCS media uploads.
        # Corresponds to the JSON property `uploadMetadataContainer`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :upload_metadata_container
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_generation = args[:blob_generation] if args.key?(:blob_generation)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @download_read_handle = args[:download_read_handle] if args.key?(:download_read_handle)
          @read_token = args[:read_token] if args.key?(:read_token)
          @upload_metadata_container = args[:upload_metadata_container] if args.key?(:upload_metadata_container)
        end
      end
      
      # 
      class Campaign
        include Google::Apis::Core::Hashable
      
        # The campaignData object contains details like the campaign's start and end
        # dates, target and source.
        # Corresponds to the JSON property `campaignData`
        # @return [Google::Apis::YoutubePartnerV1::CampaignData]
        attr_accessor :campaign_data
      
        # The unique ID that YouTube uses to identify the campaign.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For campaign resources, this value is
        # youtubePartner#campaign.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status of the campaign.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The time the campaign was created.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # The time the campaign was last modified.
        # Corresponds to the JSON property `timeLastModified`
        # @return [String]
        attr_accessor :time_last_modified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_data = args[:campaign_data] if args.key?(:campaign_data)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
          @time_created = args[:time_created] if args.key?(:time_created)
          @time_last_modified = args[:time_last_modified] if args.key?(:time_last_modified)
        end
      end
      
      # 
      class CampaignData
        include Google::Apis::Core::Hashable
      
        # The campaignSource object contains information about the assets for which the
        # campaign will generate links.
        # Corresponds to the JSON property `campaignSource`
        # @return [Google::Apis::YoutubePartnerV1::CampaignSource]
        attr_accessor :campaign_source
      
        # The time at which the campaign should expire. Do not specify a value if the
        # campaign has no expiration time.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The user-given name of the campaign.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of videos or channels that will be linked to from claimed videos that
        # are included in the campaign.
        # Corresponds to the JSON property `promotedContent`
        # @return [Array<Google::Apis::YoutubePartnerV1::PromotedContent>]
        attr_accessor :promoted_content
      
        # The time at which the campaign should start. Do not specify a value if the
        # campaign should start immediately.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @campaign_source = args[:campaign_source] if args.key?(:campaign_source)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @promoted_content = args[:promoted_content] if args.key?(:promoted_content)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # 
      class CampaignList
        include Google::Apis::Core::Hashable
      
        # A list of campaigns.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Campaign>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # campaignList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class CampaignSource
        include Google::Apis::Core::Hashable
      
        # The type of the campaign source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        # A list of values of the campaign source.
        # Corresponds to the JSON property `sourceValue`
        # @return [Array<String>]
        attr_accessor :source_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_type = args[:source_type] if args.key?(:source_type)
          @source_value = args[:source_value] if args.key?(:source_value)
        end
      end
      
      # 
      class CampaignTargetLink
        include Google::Apis::Core::Hashable
      
        # The channel ID or video ID of the link target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # Indicates whether the link target is a channel or video.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_type = args[:target_type] if args.key?(:target_type)
        end
      end
      
      # 
      class Claim
        include Google::Apis::Core::Hashable
      
        # The applied policy for the viewing owner on the claim. This might not be the
        # same as the final claim policy on the video as it does not consider other
        # partners' policy of the same claim.
        # Corresponds to the JSON property `appliedPolicy`
        # @return [Google::Apis::YoutubePartnerV1::Policy]
        attr_accessor :applied_policy
      
        # The unique YouTube asset ID that identifies the asset associated with the
        # claim.
        # Corresponds to the JSON property `assetId`
        # @return [String]
        attr_accessor :asset_id
      
        # Indicates whether or not the claimed video should be blocked anywhere it is
        # not explicitly owned.
        # Corresponds to the JSON property `blockOutsideOwnership`
        # @return [Boolean]
        attr_accessor :block_outside_ownership
        alias_method :block_outside_ownership?, :block_outside_ownership
      
        # This value indicates whether the claim covers the audio, video, or audiovisual
        # portion of the claimed content.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The ID that YouTube assigns and uses to uniquely identify the claim.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether or not the claim is a partner uploaded claim.
        # Corresponds to the JSON property `isPartnerUploaded`
        # @return [Boolean]
        attr_accessor :is_partner_uploaded
        alias_method :is_partner_uploaded?, :is_partner_uploaded
      
        # The type of the API resource. For claim resources, this value is
        # youtubePartner#claim.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If this claim was auto-generated based on a provided reference, this section
        # will provide details of the match that generated the claim.
        # Corresponds to the JSON property `matchInfo`
        # @return [Google::Apis::YoutubePartnerV1::MatchInfo]
        attr_accessor :match_info
      
        # 
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::YoutubePartnerV1::Origin]
        attr_accessor :origin
      
        # The policy provided by the viewing owner on the claim.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::YoutubePartnerV1::Policy]
        attr_accessor :policy
      
        # The claim's status. When updating a claim, you can update its status from
        # active to inactive to effectively release the claim, but the API does not
        # support other updates to a claim's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The time the claim was created.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # The unique YouTube video ID that identifies the video associated with the
        # claim.
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_policy = args[:applied_policy] if args.key?(:applied_policy)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @block_outside_ownership = args[:block_outside_ownership] if args.key?(:block_outside_ownership)
          @content_type = args[:content_type] if args.key?(:content_type)
          @id = args[:id] if args.key?(:id)
          @is_partner_uploaded = args[:is_partner_uploaded] if args.key?(:is_partner_uploaded)
          @kind = args[:kind] if args.key?(:kind)
          @match_info = args[:match_info] if args.key?(:match_info)
          @origin = args[:origin] if args.key?(:origin)
          @policy = args[:policy] if args.key?(:policy)
          @status = args[:status] if args.key?(:status)
          @time_created = args[:time_created] if args.key?(:time_created)
          @video_id = args[:video_id] if args.key?(:video_id)
        end
      end
      
      # 
      class ClaimEvent
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For claimEvent resources, this value is
        # youtubePartner#claimEvent.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Reason of the event.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Data related to source of the event.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::YoutubePartnerV1::Source]
        attr_accessor :source
      
        # The time when the event occurred.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # Type of the event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Details of event's type.
        # Corresponds to the JSON property `typeDetails`
        # @return [Google::Apis::YoutubePartnerV1::TypeDetails]
        attr_accessor :type_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @reason = args[:reason] if args.key?(:reason)
          @source = args[:source] if args.key?(:source)
          @time = args[:time] if args.key?(:time)
          @type = args[:type] if args.key?(:type)
          @type_details = args[:type_details] if args.key?(:type_details)
        end
      end
      
      # 
      class ClaimHistory
        include Google::Apis::Core::Hashable
      
        # A list of claim history events.
        # Corresponds to the JSON property `event`
        # @return [Array<Google::Apis::YoutubePartnerV1::ClaimEvent>]
        attr_accessor :event
      
        # The ID that YouTube assigns and uses to uniquely identify the claim.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For claimHistory resources, this value is
        # youtubePartner#claimHistory.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The external channel id of claimed video's uploader.
        # Corresponds to the JSON property `uploaderChannelId`
        # @return [String]
        attr_accessor :uploader_channel_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @uploader_channel_id = args[:uploader_channel_id] if args.key?(:uploader_channel_id)
        end
      end
      
      # 
      class ClaimListResponse
        include Google::Apis::Core::Hashable
      
        # A list of claims that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Claim>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # claimList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the previous page in the result set.
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
          @previous_page_token = args[:previous_page_token] if args.key?(:previous_page_token)
        end
      end
      
      # 
      class ClaimSearchResponse
        include Google::Apis::Core::Hashable
      
        # A list of claims that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::ClaimSnippet>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # claimSnippetList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the previous page in the result set.
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
          @previous_page_token = args[:previous_page_token] if args.key?(:previous_page_token)
        end
      end
      
      # 
      class ClaimSnippet
        include Google::Apis::Core::Hashable
      
        # The unique YouTube asset ID that identifies the asset associated with the
        # claim.
        # Corresponds to the JSON property `assetId`
        # @return [String]
        attr_accessor :asset_id
      
        # This value indicates whether the claim covers the audio, video, or audiovisual
        # portion of the claimed content.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The ID that YouTube assigns and uses to uniquely identify the claim.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether or not the claim is a partner uploaded claim.
        # Corresponds to the JSON property `isPartnerUploaded`
        # @return [Boolean]
        attr_accessor :is_partner_uploaded
        alias_method :is_partner_uploaded?, :is_partner_uploaded
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # claimSnippet.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::YoutubePartnerV1::YoutubePartnerApiProtoFrontendV1Origin]
        attr_accessor :origin
      
        # The claim's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Indicates that this is a third party claim.
        # Corresponds to the JSON property `thirdPartyClaim`
        # @return [Boolean]
        attr_accessor :third_party_claim
        alias_method :third_party_claim?, :third_party_claim
      
        # The time the claim was created.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # The time the claim status and/or status detail was last modified.
        # Corresponds to the JSON property `timeStatusLastModified`
        # @return [String]
        attr_accessor :time_status_last_modified
      
        # The unique YouTube video ID that identifies the video associated with the
        # claim.
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        # The title of the claimed video.
        # Corresponds to the JSON property `videoTitle`
        # @return [String]
        attr_accessor :video_title
      
        # Number of views for the claimed video.
        # Corresponds to the JSON property `videoViews`
        # @return [Fixnum]
        attr_accessor :video_views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @content_type = args[:content_type] if args.key?(:content_type)
          @id = args[:id] if args.key?(:id)
          @is_partner_uploaded = args[:is_partner_uploaded] if args.key?(:is_partner_uploaded)
          @kind = args[:kind] if args.key?(:kind)
          @origin = args[:origin] if args.key?(:origin)
          @status = args[:status] if args.key?(:status)
          @third_party_claim = args[:third_party_claim] if args.key?(:third_party_claim)
          @time_created = args[:time_created] if args.key?(:time_created)
          @time_status_last_modified = args[:time_status_last_modified] if args.key?(:time_status_last_modified)
          @video_id = args[:video_id] if args.key?(:video_id)
          @video_title = args[:video_title] if args.key?(:video_title)
          @video_views = args[:video_views] if args.key?(:video_views)
        end
      end
      
      # A sequence of media data references representing composite data. Introduced to
      # support Bigstore composite objects. For details, visit http://go/bigstore-
      # composites.
      class CompositeMedia
        include Google::Apis::Core::Hashable
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::YoutubePartnerV1::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # crc32.c hash for the payload.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # MD5 hash for the payload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::YoutubePartnerV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # SHA-1 hash for the payload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @inline = args[:inline] if args.key?(:inline)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
        end
      end
      
      # 
      class Conditions
        include Google::Apis::Core::Hashable
      
        # This match condition specifies whether the user- or partner-uploaded content
        # needs to match the audio, video or audiovisual content of a reference file for
        # the rule to apply.
        # Corresponds to the JSON property `contentMatchType`
        # @return [Array<String>]
        attr_accessor :content_match_type
      
        # This match condition specifies an amount of time that the user- or partner-
        # uploaded content needs to match a reference file for the rule to apply.
        # Corresponds to the JSON property `matchDuration`
        # @return [Array<Google::Apis::YoutubePartnerV1::IntervalCondition>]
        attr_accessor :match_duration
      
        # This match condition specifies a percentage of the user- or partner-uploaded
        # content that needs to match a reference file for the rule to apply.
        # Corresponds to the JSON property `matchPercent`
        # @return [Array<Google::Apis::YoutubePartnerV1::IntervalCondition>]
        attr_accessor :match_percent
      
        # This match condition indicates that the reference must be a certain duration
        # for the rule to apply.
        # Corresponds to the JSON property `referenceDuration`
        # @return [Array<Google::Apis::YoutubePartnerV1::IntervalCondition>]
        attr_accessor :reference_duration
      
        # This match condition indicates that the specified percentage of a reference
        # file must match the user- or partner-uploaded content for the rule to apply.
        # Corresponds to the JSON property `referencePercent`
        # @return [Array<Google::Apis::YoutubePartnerV1::IntervalCondition>]
        attr_accessor :reference_percent
      
        # This watch condition specifies where users are (or or not) allowed to watch (
        # or listen to) an asset. YouTube determines whether the condition is satisfied
        # based on the user's location.
        # Corresponds to the JSON property `requiredTerritories`
        # @return [Google::Apis::YoutubePartnerV1::TerritoryCondition]
        attr_accessor :required_territories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_match_type = args[:content_match_type] if args.key?(:content_match_type)
          @match_duration = args[:match_duration] if args.key?(:match_duration)
          @match_percent = args[:match_percent] if args.key?(:match_percent)
          @reference_duration = args[:reference_duration] if args.key?(:reference_duration)
          @reference_percent = args[:reference_percent] if args.key?(:reference_percent)
          @required_territories = args[:required_territories] if args.key?(:required_territories)
        end
      end
      
      # 
      class ConflictingOwnership
        include Google::Apis::Core::Hashable
      
        # The ID of the conflicting asset's owner.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The percentage of the asset that the owner controls or administers.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner = args[:owner] if args.key?(:owner)
          @ratio = args[:ratio] if args.key?(:ratio)
        end
      end
      
      # 
      class ContentOwner
        include Google::Apis::Core::Hashable
      
        # The email address visible to other partners for use in managing asset
        # ownership conflicts.
        # Corresponds to the JSON property `conflictNotificationEmail`
        # @return [String]
        attr_accessor :conflict_notification_email
      
        # The content owner's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address(es) to which YouTube sends claim dispute notifications and
        # possible claim notifications.
        # Corresponds to the JSON property `disputeNotificationEmails`
        # @return [Array<String>]
        attr_accessor :dispute_notification_emails
      
        # The email address(es) to which YouTube sends fingerprint reports.
        # Corresponds to the JSON property `fingerprintReportNotificationEmails`
        # @return [Array<String>]
        attr_accessor :fingerprint_report_notification_emails
      
        # A unique ID that YouTube uses to identify the content owner.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For content owner resources, the value is
        # youtubePartner#contentOwner.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The email address(es) to which YouTube sends CMS account details and report
        # notifications.
        # Corresponds to the JSON property `primaryNotificationEmails`
        # @return [Array<String>]
        attr_accessor :primary_notification_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflict_notification_email = args[:conflict_notification_email] if args.key?(:conflict_notification_email)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dispute_notification_emails = args[:dispute_notification_emails] if args.key?(:dispute_notification_emails)
          @fingerprint_report_notification_emails = args[:fingerprint_report_notification_emails] if args.key?(:fingerprint_report_notification_emails)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @primary_notification_emails = args[:primary_notification_emails] if args.key?(:primary_notification_emails)
        end
      end
      
      # 
      class ContentOwnerListResponse
        include Google::Apis::Core::Hashable
      
        # A list of content owners that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::ContentOwner>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # contentOwnerList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Detailed Content-Type information from Scotty. The Content-Type of the media
      # will typically be filled in by the header or Scotty's best_guess, but this
      # extended information provides the backend with more information so that it can
      # make a better decision if needed. This is only used on media upload requests
      # from Scotty.
      class ContentTypeInfo
        include Google::Apis::Core::Hashable
      
        # Scotty's best guess of what the content type of the file is.
        # Corresponds to the JSON property `bestGuess`
        # @return [String]
        attr_accessor :best_guess
      
        # The content type of the file derived by looking at specific bytes (i.e. "magic
        # bytes") of the actual file.
        # Corresponds to the JSON property `fromBytes`
        # @return [String]
        attr_accessor :from_bytes
      
        # The content type of the file derived from the file extension of the original
        # file name used by the client.
        # Corresponds to the JSON property `fromFileName`
        # @return [String]
        attr_accessor :from_file_name
      
        # The content type of the file as specified in the request headers, multipart
        # headers, or RUPIO start request.
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        # The content type of the file derived from the file extension of the URL path.
        # The URL path is assumed to represent a file name (which is typically only true
        # for agents that are providing a REST API).
        # Corresponds to the JSON property `fromUrlPath`
        # @return [String]
        attr_accessor :from_url_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_guess = args[:best_guess] if args.key?(:best_guess)
          @from_bytes = args[:from_bytes] if args.key?(:from_bytes)
          @from_file_name = args[:from_file_name] if args.key?(:from_file_name)
          @from_header = args[:from_header] if args.key?(:from_header)
          @from_url_path = args[:from_url_path] if args.key?(:from_url_path)
        end
      end
      
      # 
      class CountriesRestriction
        include Google::Apis::Core::Hashable
      
        # A list of ad formats that can be used in the specified countries.
        # Corresponds to the JSON property `adFormats`
        # @return [Array<String>]
        attr_accessor :ad_formats
      
        # A list of ISO 3166-1 alpha-2 country codes that identify the countries where
        # ads are enabled.
        # Corresponds to the JSON property `territories`
        # @return [Array<String>]
        attr_accessor :territories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_formats = args[:ad_formats] if args.key?(:ad_formats)
          @territories = args[:territories] if args.key?(:territories)
        end
      end
      
      # 
      class CuepointSettings
        include Google::Apis::Core::Hashable
      
        # The cuepoint's type. See the Getting started guide for an explanation of the
        # different types of cuepoints. Also see the Life of a broadcast document for
        # best practices about inserting cuepoints during your broadcast.
        # Corresponds to the JSON property `cueType`
        # @return [String]
        attr_accessor :cue_type
      
        # The cuepoint's duration, in seconds. This value must be specified if the
        # cueType is ad and is ignored otherwise.
        # Corresponds to the JSON property `durationSecs`
        # @return [Fixnum]
        attr_accessor :duration_secs
      
        # This value specifies a point in time in the video when viewers should see an
        # ad or in-stream slate. The property value identifies a time offset, in
        # milliseconds, from the beginning of the monitor stream. Though measured in
        # milliseconds, the value is actually an approximation, and YouTube will insert
        # the cuepoint as closely as possible to that time. You should not specify a
        # value for this parameter if your broadcast does not have a monitor stream.
        # This property's default value is 0, which indicates that the cuepoint should
        # be inserted as soon as possible. If your broadcast stream is not delayed, then
        # 0 is also the only valid value. However, if your broadcast stream is delayed,
        # then the property value can specify the time when the cuepoint should be
        # inserted. See the Getting started guide for more details. *Note:* If your
        # broadcast had a testing phase, the offset is measured from the time that the
        # testing phase began.
        # Corresponds to the JSON property `offsetTimeMs`
        # @return [Fixnum]
        attr_accessor :offset_time_ms
      
        # This value specifies the wall clock time at which the cuepoint should be
        # inserted. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
        # Corresponds to the JSON property `walltime`
        # @return [String]
        attr_accessor :walltime
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cue_type = args[:cue_type] if args.key?(:cue_type)
          @duration_secs = args[:duration_secs] if args.key?(:duration_secs)
          @offset_time_ms = args[:offset_time_ms] if args.key?(:offset_time_ms)
          @walltime = args[:walltime] if args.key?(:walltime)
        end
      end
      
      # 
      class Date
        include Google::Apis::Core::Hashable
      
        # The date's day. The value should be an integer between 1 and 31. Note that
        # some day-month combinations are not valid.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # The date's month. The value should be an integer between 1 and 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # The date's year in the Gregorian Calendar. Assumed to be A.D.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Backend response for a Diff get checksums response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffChecksumsResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsLocation`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :checksums_location
      
        # The chunk size of checksums. Must be a multiple of 256KB.
        # Corresponds to the JSON property `chunkSizeBytes`
        # @return [Fixnum]
        attr_accessor :chunk_size_bytes
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :object_location
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The object version of the object the checksums are being returned for.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_location = args[:checksums_location] if args.key?(:checksums_location)
          @chunk_size_bytes = args[:chunk_size_bytes] if args.key?(:chunk_size_bytes)
          @object_location = args[:object_location] if args.key?(:object_location)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff download response. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffDownloadResponse
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectLocation`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :object_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_location = args[:object_location] if args.key?(:object_location)
        end
      end
      
      # A Diff upload request. For details on the Scotty Diff protocol, visit http://
      # go/scotty-diff-protocol.
      class DiffUploadRequest
        include Google::Apis::Core::Hashable
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `checksumsInfo`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :checksums_info
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `objectInfo`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :object_info
      
        # The object version of the object that is the base version the incoming diff
        # script will be applied to. This field will always be filled in.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksums_info = args[:checksums_info] if args.key?(:checksums_info)
          @object_info = args[:object_info] if args.key?(:object_info)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Backend response for a Diff upload request. For details on the Scotty Diff
      # protocol, visit http://go/scotty-diff-protocol.
      class DiffUploadResponse
        include Google::Apis::Core::Hashable
      
        # The object version of the object at the server. Must be included in the end
        # notification response. The version in the end notification response must
        # correspond to the new version of the object that is now stored at the server,
        # after the upload.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        # A sequence of media data references representing composite data. Introduced to
        # support Bigstore composite objects. For details, visit http://go/bigstore-
        # composites.
        # Corresponds to the JSON property `originalObject`
        # @return [Google::Apis::YoutubePartnerV1::CompositeMedia]
        attr_accessor :original_object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_version = args[:object_version] if args.key?(:object_version)
          @original_object = args[:original_object] if args.key?(:original_object)
        end
      end
      
      # Backend response for a Diff get version response. For details on the Scotty
      # Diff protocol, visit http://go/scotty-diff-protocol.
      class DiffVersionResponse
        include Google::Apis::Core::Hashable
      
        # The total size of the server object.
        # Corresponds to the JSON property `objectSizeBytes`
        # @return [Fixnum]
        attr_accessor :object_size_bytes
      
        # The version of the object stored at the server.
        # Corresponds to the JSON property `objectVersion`
        # @return [String]
        attr_accessor :object_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_size_bytes = args[:object_size_bytes] if args.key?(:object_size_bytes)
          @object_version = args[:object_version] if args.key?(:object_version)
        end
      end
      
      # Parameters specific to media downloads.
      class DownloadParameters
        include Google::Apis::Core::Hashable
      
        # A boolean to be returned in the response to Scotty. Allows/disallows gzip
        # encoding of the payload content when the server thinks it's advantageous (
        # hence, does not guarantee compression) which allows Scotty to GZip the
        # response to the client.
        # Corresponds to the JSON property `allowGzipCompression`
        # @return [Boolean]
        attr_accessor :allow_gzip_compression
        alias_method :allow_gzip_compression?, :allow_gzip_compression
      
        # Determining whether or not Apiary should skip the inclusion of any Content-
        # Range header on its response to Scotty.
        # Corresponds to the JSON property `ignoreRange`
        # @return [Boolean]
        attr_accessor :ignore_range
        alias_method :ignore_range?, :ignore_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_gzip_compression = args[:allow_gzip_compression] if args.key?(:allow_gzip_compression)
          @ignore_range = args[:ignore_range] if args.key?(:ignore_range)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ExcludedInterval
        include Google::Apis::Core::Hashable
      
        # The end (inclusive) time in seconds of the time window. The value can be any
        # value greater than low. If high is greater than the length of the reference,
        # the interval between low and the end of the reference will be excluded. Every
        # interval must specify a value for this field.
        # Corresponds to the JSON property `high`
        # @return [Float]
        attr_accessor :high
      
        # The start (inclusive) time in seconds of the time window. The value can be any
        # value between 0 and high. Every interval must specify a value for this field.
        # Corresponds to the JSON property `low`
        # @return [Float]
        attr_accessor :low
      
        # The source of the request to exclude the interval from Content ID matching.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # The date and time that the exclusion was created. The value is specified in
        # RFC 3339 (YYYY-MM-DDThh:mm:ss.000Z) format.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
          @origin = args[:origin] if args.key?(:origin)
          @time_created = args[:time_created] if args.key?(:time_created)
        end
      end
      
      # 
      class IntervalCondition
        include Google::Apis::Core::Hashable
      
        # The maximum (inclusive) allowed value for the condition to be satisfied. The
        # default value is ∞.
        # Corresponds to the JSON property `high`
        # @return [Float]
        attr_accessor :high
      
        # The minimum (inclusive) allowed value for the condition to be satisfied. The
        # default value is -∞.
        # Corresponds to the JSON property `low`
        # @return [Float]
        attr_accessor :low
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
        end
      end
      
      # 
      class LiveCuepoint
        include Google::Apis::Core::Hashable
      
        # The ID that YouTube assigns to uniquely identify the broadcast into which the
        # cuepoint is being inserted.
        # Corresponds to the JSON property `broadcastId`
        # @return [String]
        attr_accessor :broadcast_id
      
        # A value that YouTube assigns to uniquely identify the cuepoint.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For liveCuepoint resources, the value is
        # youtubePartner#liveCuepoint.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The *settings* object defines the cuepoint's settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::YoutubePartnerV1::CuepointSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @broadcast_id = args[:broadcast_id] if args.key?(:broadcast_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # 
      class LongestMatch
        include Google::Apis::Core::Hashable
      
        # The duration of the longest match between the reference and the user video.
        # Corresponds to the JSON property `durationSecs`
        # @return [Fixnum]
        attr_accessor :duration_secs
      
        # The offset in seconds into the reference at which the longest match began.
        # Corresponds to the JSON property `referenceOffset`
        # @return [Fixnum]
        attr_accessor :reference_offset
      
        # The offset in seconds into the user video at which the longest match began.
        # Corresponds to the JSON property `userVideoOffset`
        # @return [Fixnum]
        attr_accessor :user_video_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_secs = args[:duration_secs] if args.key?(:duration_secs)
          @reference_offset = args[:reference_offset] if args.key?(:reference_offset)
          @user_video_offset = args[:user_video_offset] if args.key?(:user_video_offset)
        end
      end
      
      # 
      class MatchInfo
        include Google::Apis::Core::Hashable
      
        # Details of the longest match between the reference and the user video.
        # Corresponds to the JSON property `longestMatch`
        # @return [Google::Apis::YoutubePartnerV1::LongestMatch]
        attr_accessor :longest_match
      
        # Details about each match segment. Each item in the list contains information
        # about one match segment associated with the claim. It is possible to have
        # multiple match segments. For example, if the audio and video content of an
        # uploaded video match that of a reference video, there would be two match
        # segments. One segment would describe the audio match and the other would
        # describe the video match.
        # Corresponds to the JSON property `matchSegments`
        # @return [Array<Google::Apis::YoutubePartnerV1::MatchSegment>]
        attr_accessor :match_segments
      
        # The reference ID that generated this match.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # Details of the total amount of reference and user video content which matched
        # each other. Note these two values may differ if either the reference or the
        # user video contains a loop.
        # Corresponds to the JSON property `totalMatch`
        # @return [Google::Apis::YoutubePartnerV1::TotalMatch]
        attr_accessor :total_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @longest_match = args[:longest_match] if args.key?(:longest_match)
          @match_segments = args[:match_segments] if args.key?(:match_segments)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @total_match = args[:total_match] if args.key?(:total_match)
        end
      end
      
      # 
      class MatchSegment
        include Google::Apis::Core::Hashable
      
        # Identifies the manner in which the claimed video matches the reference video.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # On insert operation of manual claims, the manual_segment object contains
        # information about the specific portion of the video that is claimed to be
        # matching.
        # Corresponds to the JSON property `manual_segment`
        # @return [Google::Apis::YoutubePartnerV1::Segment2]
        attr_accessor :manual_segment
      
        # The reference_segment object contains information about the matched portion of
        # the reference content.
        # Corresponds to the JSON property `reference_segment`
        # @return [Google::Apis::YoutubePartnerV1::Segment]
        attr_accessor :reference_segment
      
        # The video_segment object contains information about the matched portion of the
        # claimed video.
        # Corresponds to the JSON property `video_segment`
        # @return [Google::Apis::YoutubePartnerV1::Segment]
        attr_accessor :video_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @manual_segment = args[:manual_segment] if args.key?(:manual_segment)
          @reference_segment = args[:reference_segment] if args.key?(:reference_segment)
          @video_segment = args[:video_segment] if args.key?(:video_segment)
        end
      end
      
      # A reference to data stored on the filesystem, on GFS or in blobstore.
      class Media
        include Google::Apis::Core::Hashable
      
        # Deprecated, use one of explicit hash type fields instead. Algorithm used for
        # calculating the hash. As of 2011/01/21, "MD5" is the only possible value for
        # this field. New values may be added at any time.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Use object_id instead.
        # Corresponds to the JSON property `bigstoreObjectRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bigstore_object_ref
      
        # Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be
        # the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating
        # v1, use blobstore2_info instead. For now, any v2 blob will also be represented
        # in this field as v1 BlobRef.
        # Corresponds to the JSON property `blobRef`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :blob_ref
      
        # Information to read/write to blobstore2.
        # Corresponds to the JSON property `blobstore2Info`
        # @return [Google::Apis::YoutubePartnerV1::Blobstore2Info]
        attr_accessor :blobstore2_info
      
        # A composite media composed of one or more media objects, set if reference_type
        # is COMPOSITE_MEDIA. The media length field must be set to the sum of the
        # lengths of all composite media objects. Note: All composite media must have
        # length specified.
        # Corresponds to the JSON property `compositeMedia`
        # @return [Array<Google::Apis::YoutubePartnerV1::CompositeMedia>]
        attr_accessor :composite_media
      
        # MIME type of the data
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Detailed Content-Type information from Scotty. The Content-Type of the media
        # will typically be filled in by the header or Scotty's best_guess, but this
        # extended information provides the backend with more information so that it can
        # make a better decision if needed. This is only used on media upload requests
        # from Scotty.
        # Corresponds to the JSON property `contentTypeInfo`
        # @return [Google::Apis::YoutubePartnerV1::ContentTypeInfo]
        attr_accessor :content_type_info
      
        # A binary data reference for a media download. Serves as a technology-agnostic
        # binary reference in some Google infrastructure. This value is a serialized
        # storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get
        # around the fact that the cosmo proto (as well as others it includes) doesn't
        # support JavaScript. This prevents us from including the actual type of this
        # field.
        # Corresponds to the JSON property `cosmoBinaryReference`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :cosmo_binary_reference
      
        # For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (
        # WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.) A Hash provided
        # by the agent to be used to verify the data being downloaded. Currently only
        # supported for inline payloads. Further, only crc32c_hash is currently
        # supported.
        # Corresponds to the JSON property `crc32cHash`
        # @return [Fixnum]
        attr_accessor :crc32c_hash
      
        # Backend response for a Diff get checksums response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffChecksumsResponse`
        # @return [Google::Apis::YoutubePartnerV1::DiffChecksumsResponse]
        attr_accessor :diff_checksums_response
      
        # Backend response for a Diff download response. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffDownloadResponse`
        # @return [Google::Apis::YoutubePartnerV1::DiffDownloadResponse]
        attr_accessor :diff_download_response
      
        # A Diff upload request. For details on the Scotty Diff protocol, visit http://
        # go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadRequest`
        # @return [Google::Apis::YoutubePartnerV1::DiffUploadRequest]
        attr_accessor :diff_upload_request
      
        # Backend response for a Diff upload request. For details on the Scotty Diff
        # protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffUploadResponse`
        # @return [Google::Apis::YoutubePartnerV1::DiffUploadResponse]
        attr_accessor :diff_upload_response
      
        # Backend response for a Diff get version response. For details on the Scotty
        # Diff protocol, visit http://go/scotty-diff-protocol.
        # Corresponds to the JSON property `diffVersionResponse`
        # @return [Google::Apis::YoutubePartnerV1::DiffVersionResponse]
        attr_accessor :diff_version_response
      
        # Parameters specific to media downloads.
        # Corresponds to the JSON property `downloadParameters`
        # @return [Google::Apis::YoutubePartnerV1::DownloadParameters]
        attr_accessor :download_parameters
      
        # Original file name
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Deprecated, use one of explicit hash type fields instead. These two hash
        # related fields will only be populated on Scotty based media uploads and will
        # contain the content of the hash group in the NotificationRequest: http://cs/#
        # google3/uploader/service/proto/upload_listener.proto&q=class:Hash Hex encoded
        # hash value of the uploaded media.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # For Scotty uploads only. If a user sends a hash code and the backend has
        # requested that Scotty verify the upload against the client hash, Scotty will
        # perform the check on behalf of the backend and will reject it if the hashes
        # don't match. This is set to true if Scotty performed this verification.
        # Corresponds to the JSON property `hashVerified`
        # @return [Boolean]
        attr_accessor :hash_verified
        alias_method :hash_verified?, :hash_verified
      
        # Media data, set if reference_type is INLINE
        # Corresponds to the JSON property `inline`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline
      
        # |is_potential_retry| is set false only when Scotty is certain that it has not
        # sent the request before. When a client resumes an upload, this field must be
        # set true in agent calls, because Scotty cannot be certain that it has never
        # sent the request before due to potential failure in the session state
        # persistence.
        # Corresponds to the JSON property `isPotentialRetry`
        # @return [Boolean]
        attr_accessor :is_potential_retry
        alias_method :is_potential_retry?, :is_potential_retry
      
        # Size of the data, in bytes
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Scotty-provided MD5 hash for an upload.
        # Corresponds to the JSON property `md5Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :md5_hash
      
        # Media id to forward to the operation GetMedia. Can be set if reference_type is
        # GET_MEDIA.
        # Corresponds to the JSON property `mediaId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :media_id
      
        # This is a copy of the tech.blob.ObjectId proto, which could not be used
        # directly here due to transitive closure issues with JavaScript support; see
        # http://b/8801763.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::YoutubePartnerV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Path to the data, set if reference_type is PATH
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Describes what the field reference contains.
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # Scotty-provided SHA1 hash for an upload.
        # Corresponds to the JSON property `sha1Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha1_hash
      
        # Scotty-provided SHA256 hash for an upload.
        # Corresponds to the JSON property `sha256Hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256_hash
      
        # Time at which the media data was last updated, in milliseconds since UNIX
        # epoch
        # Corresponds to the JSON property `timestamp`
        # @return [Fixnum]
        attr_accessor :timestamp
      
        # A unique fingerprint/version id for the media data
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @bigstore_object_ref = args[:bigstore_object_ref] if args.key?(:bigstore_object_ref)
          @blob_ref = args[:blob_ref] if args.key?(:blob_ref)
          @blobstore2_info = args[:blobstore2_info] if args.key?(:blobstore2_info)
          @composite_media = args[:composite_media] if args.key?(:composite_media)
          @content_type = args[:content_type] if args.key?(:content_type)
          @content_type_info = args[:content_type_info] if args.key?(:content_type_info)
          @cosmo_binary_reference = args[:cosmo_binary_reference] if args.key?(:cosmo_binary_reference)
          @crc32c_hash = args[:crc32c_hash] if args.key?(:crc32c_hash)
          @diff_checksums_response = args[:diff_checksums_response] if args.key?(:diff_checksums_response)
          @diff_download_response = args[:diff_download_response] if args.key?(:diff_download_response)
          @diff_upload_request = args[:diff_upload_request] if args.key?(:diff_upload_request)
          @diff_upload_response = args[:diff_upload_response] if args.key?(:diff_upload_response)
          @diff_version_response = args[:diff_version_response] if args.key?(:diff_version_response)
          @download_parameters = args[:download_parameters] if args.key?(:download_parameters)
          @filename = args[:filename] if args.key?(:filename)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @hash_verified = args[:hash_verified] if args.key?(:hash_verified)
          @inline = args[:inline] if args.key?(:inline)
          @is_potential_retry = args[:is_potential_retry] if args.key?(:is_potential_retry)
          @length = args[:length] if args.key?(:length)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @media_id = args[:media_id] if args.key?(:media_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @path = args[:path] if args.key?(:path)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @sha1_hash = args[:sha1_hash] if args.key?(:sha1_hash)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Extra information added to operations that support Scotty media requests.
      class MediaRequestInfo
        include Google::Apis::Core::Hashable
      
        # The number of current bytes uploaded or downloaded.
        # Corresponds to the JSON property `currentBytes`
        # @return [Fixnum]
        attr_accessor :current_bytes
      
        # Data to be copied to backend requests. Custom data is returned to Scotty in
        # the agent_state field, which Scotty will then provide in subsequent upload
        # notifications.
        # Corresponds to the JSON property `customData`
        # @return [String]
        attr_accessor :custom_data
      
        # Set if the http request info is diff encoded. The value of this field is the
        # version number of the base revision. This is corresponding to Apiary's
        # mediaDiffObjectVersion (//depot/google3/java/com/google/api/server/media/
        # variable/DiffObjectVersionVariable.java). See go/esf-scotty-diff-upload for
        # more information.
        # Corresponds to the JSON property `diffObjectVersion`
        # @return [String]
        attr_accessor :diff_object_version
      
        # The type of notification received from Scotty.
        # Corresponds to the JSON property `notificationType`
        # @return [String]
        attr_accessor :notification_type
      
        # The Scotty request ID.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The total size of the file.
        # Corresponds to the JSON property `totalBytes`
        # @return [Fixnum]
        attr_accessor :total_bytes
      
        # Whether the total bytes field contains an estimated data.
        # Corresponds to the JSON property `totalBytesIsEstimated`
        # @return [Boolean]
        attr_accessor :total_bytes_is_estimated
        alias_method :total_bytes_is_estimated?, :total_bytes_is_estimated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_bytes = args[:current_bytes] if args.key?(:current_bytes)
          @custom_data = args[:custom_data] if args.key?(:custom_data)
          @diff_object_version = args[:diff_object_version] if args.key?(:diff_object_version)
          @notification_type = args[:notification_type] if args.key?(:notification_type)
          @request_id = args[:request_id] if args.key?(:request_id)
          @total_bytes = args[:total_bytes] if args.key?(:total_bytes)
          @total_bytes_is_estimated = args[:total_bytes_is_estimated] if args.key?(:total_bytes_is_estimated)
        end
      end
      
      # This message is for backends to pass their scotty media specific fields to ESF.
      # Backend will include this in their response message to ESF. Example:
      # ExportFile is an rpc defined for upload using scotty from ESF. rpc ExportFile(
      # ExportFileRequest) returns (ExportFileResponse) Message ExportFileResponse
      # will include apiserving.MediaResponseInfo to tell ESF about data like
      # dynamic_dropzone it needs to pass to Scotty. message ExportFileResponse `
      # optional gdata.Media blob = 1; optional apiserving.MediaResponseInfo
      # media_response_info = 2 `
      class MediaResponseInfo
        include Google::Apis::Core::Hashable
      
        # Data to copy from backend response to the next backend requests. Custom data
        # is returned to Scotty in the agent_state field, which Scotty will then provide
        # in subsequent upload notifications.
        # Corresponds to the JSON property `customData`
        # @return [String]
        attr_accessor :custom_data
      
        # Specifies any transformation to be applied to data before persisting it or
        # retrieving from storage. E.g., encryption options for blobstore2. This should
        # be of the form uploader_service.DataStorageTransform.
        # Corresponds to the JSON property `dataStorageTransform`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data_storage_transform
      
        # Specifies the Scotty Drop Target to use for uploads. If present in a media
        # response, Scotty does not upload to a standard drop zone. Instead, Scotty
        # saves the upload directly to the location specified in this drop target.
        # Unlike drop zones, the drop target is the final storage location for an upload.
        # So, the agent does not need to clone the blob at the end of the upload. The
        # agent is responsible for garbage collecting any orphaned blobs that may occur
        # due to aborted uploads. For more information, see the drop target design doc
        # here: http://goto/ScottyDropTarget This field will be preferred to
        # dynamicDropzone. If provided, the identified field in the response must be of
        # the type uploader.agent.DropTarget.
        # Corresponds to the JSON property `dynamicDropTarget`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :dynamic_drop_target
      
        # Specifies the Scotty dropzone to use for uploads.
        # Corresponds to the JSON property `dynamicDropzone`
        # @return [String]
        attr_accessor :dynamic_dropzone
      
        # A reference to data stored on the filesystem, on GFS or in blobstore.
        # Corresponds to the JSON property `mediaForDiff`
        # @return [Google::Apis::YoutubePartnerV1::Media]
        attr_accessor :media_for_diff
      
        # Request class to use for all Blobstore operations for this request.
        # Corresponds to the JSON property `requestClass`
        # @return [String]
        attr_accessor :request_class
      
        # Specifies the TrafficClass that Scotty should use for any RPCs to fetch the
        # response bytes. Will override the traffic class GTOS of the incoming http
        # request. This is a temporary field to facilitate whitelisting and
        # experimentation by the bigstore agent only. For instance, this does not apply
        # to RTMP reads. WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.
        # Corresponds to the JSON property `trafficClassField`
        # @return [String]
        attr_accessor :traffic_class_field
      
        # Tells Scotty to verify hashes on the agent's behalf by parsing out the X-Goog-
        # Hash header.
        # Corresponds to the JSON property `verifyHashFromHeader`
        # @return [Boolean]
        attr_accessor :verify_hash_from_header
        alias_method :verify_hash_from_header?, :verify_hash_from_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_data = args[:custom_data] if args.key?(:custom_data)
          @data_storage_transform = args[:data_storage_transform] if args.key?(:data_storage_transform)
          @dynamic_drop_target = args[:dynamic_drop_target] if args.key?(:dynamic_drop_target)
          @dynamic_dropzone = args[:dynamic_dropzone] if args.key?(:dynamic_dropzone)
          @media_for_diff = args[:media_for_diff] if args.key?(:media_for_diff)
          @request_class = args[:request_class] if args.key?(:request_class)
          @traffic_class_field = args[:traffic_class_field] if args.key?(:traffic_class_field)
          @verify_hash_from_header = args[:verify_hash_from_header] if args.key?(:verify_hash_from_header)
        end
      end
      
      # 
      class Metadata
        include Google::Apis::Core::Hashable
      
        # A list that identifies actors associated with the asset. You can specify up to
        # 50 actors for an asset.
        # Corresponds to the JSON property `actor`
        # @return [Array<String>]
        attr_accessor :actor
      
        # The album on which a sound recording asset is included. This field is only
        # valid for sound recording assets and has a maximum length of 255 bytes.
        # Corresponds to the JSON property `album`
        # @return [String]
        attr_accessor :album
      
        # The artist associated with a music video or sound recording asset. This field
        # is only valid for music video and sound recording assets. It is required for
        # sound recordings included in the AudioSwap program.
        # Corresponds to the JSON property `artist`
        # @return [Array<String>]
        attr_accessor :artist
      
        # Identifies the network or channel that originally broadcast a show or a season
        # of a show. This field should only be included for an asset if the broadcaster
        # associated with the asset is different from the partner uploading the asset to
        # YouTube. Note that a show may have multiple broadcasters; for example, a show
        # may switch networks between seasons.
        # Corresponds to the JSON property `broadcaster`
        # @return [Array<String>]
        attr_accessor :broadcaster
      
        # Category of this asset.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The type of video content that the asset represents. This field is only valid
        # for movie and episode assets, and is required for the following types of those
        # assets: - Episode assets that are linked to a show - Movie assets that appear
        # in YouTube's Movies category
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The date copyright for this asset was established. *
        # Corresponds to the JSON property `copyrightDate`
        # @return [Google::Apis::YoutubePartnerV1::Date]
        attr_accessor :copyright_date
      
        # A unique value that you, the metadata provider, use to identify an asset. The
        # value could be a unique ID that you created for the asset or a standard
        # identifier, such as an ISRC. The value has a maximum length of 64 bytes and
        # may contain alphanumeric characters, hyphens (-), underscores (_), periods ( .)
        # , "at" symbols (@), or forward slashes (/).
        # Corresponds to the JSON property `customId`
        # @return [String]
        attr_accessor :custom_id
      
        # A description of the asset. The description may be displayed on YouTube or in
        # CMS. This field has a maximum length of 5,000 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A list that identifies directors associated with the asset. You can specify up
        # to 50 directors for an asset.
        # Corresponds to the JSON property `director`
        # @return [Array<String>]
        attr_accessor :director
      
        # The Entertainment Identifier Registry (EIDR) assigned to an asset. This value
        # is only used for episode and movie assets and is optional in both cases. The
        # value contains a standard prefix for EIDR registry, followed by a forward
        # slash, a 20-character hexadecimal string, and an alphanumeric (0-9A-Z) check
        # character.
        # Corresponds to the JSON property `eidr`
        # @return [String]
        attr_accessor :eidr
      
        # The last year that a television show aired. This value is only used for show
        # assets, for which it is optional. Do not specify a value if new show episodes
        # are still being created.
        # Corresponds to the JSON property `endYear`
        # @return [Fixnum]
        attr_accessor :end_year
      
        # The episode number associated with an episode asset. This field is required
        # for and only used for episode assets that are linked to show assets. It has a
        # maximum length of 5 bytes.
        # Corresponds to the JSON property `episodeNumber`
        # @return [String]
        attr_accessor :episode_number
      
        # This value indicates that the episodes associated with a particular show asset
        # or a particular season asset are untitled. An untitled show (or season) has
        # episodes which are identified by their episode number or date. If this field
        # is set to true, then YouTube will optimize the title displayed for associated
        # episodes.
        # Corresponds to the JSON property `episodesAreUntitled`
        # @return [Boolean]
        attr_accessor :episodes_are_untitled
        alias_method :episodes_are_untitled?, :episodes_are_untitled
      
        # This field specifies a genre that can be used to categorize an asset. Assets
        # may be categorized in more than one genre, and YouTube uses different sets of
        # genres to categorize different types of assets. For example, Soaps might be a
        # valid genre for a show but not for a movie or sound recording. - Show assets -
        # Movie assets that appear in YouTube's Movies category - Sound recordings
        # included in the AudioSwap program
        # Corresponds to the JSON property `genre`
        # @return [Array<String>]
        attr_accessor :genre
      
        # The GRID (Global Release Identifier) of a music video or sound recording. This
        # field's value must contain exactly 18 alphanumeric characters.
        # Corresponds to the JSON property `grid`
        # @return [String]
        attr_accessor :grid
      
        # The six-character Harry Fox Agency (HFA) song code issued to uniquely identify
        # a composition. This value is only valid for composition assets.
        # Corresponds to the JSON property `hfa`
        # @return [String]
        attr_accessor :hfa
      
        # An official URL associated with the asset. This field has a maximum length of
        # 1536 bytes. Please do not submit a 1537-byte URL. Your efforts would be futile.
        # Corresponds to the JSON property `infoUrl`
        # @return [String]
        attr_accessor :info_url
      
        # The ISAN (International Standard Audiovisual Number) for the asset. This value
        # is only used for episode and movie assets and is optional in both cases. The
        # value contains 26 characters, which includes the 24 hexadecimal characters of
        # the ISAN as well as two check characters, in the following format: - The first
        # 16 characters in the tag value contain hexadecimal characters specifying the '
        # root' and 'episode' components of the ISAN. - The seventeenth character is a
        # check character (a letter from A-Z). - Characters 18 to 25 are the remaining
        # eight characters of the ISAN, which specify the 'version' component of the
        # ISAN. - The twenty-sixth character is another check character (A-Z).
        # Corresponds to the JSON property `isan`
        # @return [String]
        attr_accessor :isan
      
        # The ISRC (International Standard Recording Code) of a music video or sound
        # recording asset. This field's value must contain exactly 12 alphanumeric
        # characters.
        # Corresponds to the JSON property `isrc`
        # @return [String]
        attr_accessor :isrc
      
        # The ISWC (International Standard Musical Work Code) for a composition asset.
        # The field's value must contain exactly 11 characters in the format of a letter
        # (T) followed by 10 digits.
        # Corresponds to the JSON property `iswc`
        # @return [String]
        attr_accessor :iswc
      
        # A list of up to 100 keywords associated with a show asset. This field is
        # required for and also only used for show assets.
        # Corresponds to the JSON property `keyword`
        # @return [Array<String>]
        attr_accessor :keyword
      
        # The record label that released a sound recording asset. This field is only
        # valid for sound recording assets and has a maximum length of 255 bytes.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Additional information that does not map directly to one of the other metadata
        # fields. This field has a maximum length of 255 bytes.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # The method by which people first had the opportunity to see a video asset.
        # This value is only used for episode and movie assets. It is required for the
        # assets listed below and otherwise optional: - Episode assets that are linked
        # to a show - Movie assets that appear in YouTube's Movies category
        # Corresponds to the JSON property `originalReleaseMedium`
        # @return [String]
        attr_accessor :original_release_medium
      
        # A list that identifies producers of the asset. You can specify up to 50
        # producers for an asset.
        # Corresponds to the JSON property `producer`
        # @return [Array<String>]
        attr_accessor :producer
      
        # A list of ratings that an asset received. The rating must be valid under the
        # specified rating system.
        # Corresponds to the JSON property `ratings`
        # @return [Array<Google::Apis::YoutubePartnerV1::Rating>]
        attr_accessor :ratings
      
        # The date that an asset was publicly released. For season assets, this value
        # specifies the first date that the season aired. Dates prior to the year 1902
        # are not supported. This value is valid for episode, season, movie, music video,
        # and sound recording assets. It is required for the assets listed below and
        # otherwise optional: - Episode assets that are linked to a show - Movie assets
        # that appear in YouTube's Movies category
        # Corresponds to the JSON property `releaseDate`
        # @return [Google::Apis::YoutubePartnerV1::Date]
        attr_accessor :release_date
      
        # The season number that identifies a season asset, or the season number that is
        # associated with an episode asset. This field has a maximum length of 5 bytes.
        # Corresponds to the JSON property `seasonNumber`
        # @return [String]
        attr_accessor :season_number
      
        # The customId of the show asset that a season or episode asset is associated
        # with. It is required for season and episode assets that appear in the Shows
        # category on YouTube, and it is not valid for other types of assets. This field
        # has a maximum length of 64 bytes and may contain alphanumeric characters,
        # hyphens (-), underscores (_), periods (.), "at" symbols (@), or forward
        # slashes (/).
        # Corresponds to the JSON property `showCustomId`
        # @return [String]
        attr_accessor :show_custom_id
      
        # The name of the show that an episode asset is associated with. *Note:* This
        # tag is only used for and valid for episodes that are not associated with show
        # assets and enables those assets to still display a show title in the asset
        # metadata section of CMS. This field has a maximum length of 120 bytes.
        # Corresponds to the JSON property `showTitle`
        # @return [String]
        attr_accessor :show_title
      
        # The video's primary spoken language. The value can be any ISO 639-1 two-letter
        # language code. This value is only used for episode and movie assets and is not
        # valid for other types of assets.
        # Corresponds to the JSON property `spokenLanguage`
        # @return [String]
        attr_accessor :spoken_language
      
        # The first year that a television show aired. This value is required for and
        # also only used for show assets.
        # Corresponds to the JSON property `startYear`
        # @return [Fixnum]
        attr_accessor :start_year
      
        # A list of languages for which the video has either a separate caption track or
        # burnt-in captions that are part of the video. Each value in the list should be
        # an ISO 639-1 two-letter language code. This value is only used for episode and
        # movie assets and is not valid for other types of assets.
        # Corresponds to the JSON property `subtitledLanguage`
        # @return [Array<String>]
        attr_accessor :subtitled_language
      
        # The asset's title or name. The value has a maximum length of 255 bytes. This
        # value is required for the assets listed below and optional for all other
        # assets: - Show assets - Episode assets that are linked to a show - Movie
        # assets that appear in YouTube's Movies category - Sound recordings included in
        # the AudioSwap program
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # TMS (Tribune Media Systems) ID for the asset.
        # Corresponds to the JSON property `tmsId`
        # @return [String]
        attr_accessor :tms_id
      
        # Specifies the total number of full-length episodes in the season. This value
        # is used only for season assets.
        # Corresponds to the JSON property `totalEpisodesExpected`
        # @return [Fixnum]
        attr_accessor :total_episodes_expected
      
        # The UPC (Universal Product Code) associated with the asset.
        # Corresponds to the JSON property `upc`
        # @return [String]
        attr_accessor :upc
      
        # A list that identifies writers associated with the asset. You can specify up
        # to 50 writers for an asset.
        # Corresponds to the JSON property `writer`
        # @return [Array<String>]
        attr_accessor :writer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @album = args[:album] if args.key?(:album)
          @artist = args[:artist] if args.key?(:artist)
          @broadcaster = args[:broadcaster] if args.key?(:broadcaster)
          @category = args[:category] if args.key?(:category)
          @content_type = args[:content_type] if args.key?(:content_type)
          @copyright_date = args[:copyright_date] if args.key?(:copyright_date)
          @custom_id = args[:custom_id] if args.key?(:custom_id)
          @description = args[:description] if args.key?(:description)
          @director = args[:director] if args.key?(:director)
          @eidr = args[:eidr] if args.key?(:eidr)
          @end_year = args[:end_year] if args.key?(:end_year)
          @episode_number = args[:episode_number] if args.key?(:episode_number)
          @episodes_are_untitled = args[:episodes_are_untitled] if args.key?(:episodes_are_untitled)
          @genre = args[:genre] if args.key?(:genre)
          @grid = args[:grid] if args.key?(:grid)
          @hfa = args[:hfa] if args.key?(:hfa)
          @info_url = args[:info_url] if args.key?(:info_url)
          @isan = args[:isan] if args.key?(:isan)
          @isrc = args[:isrc] if args.key?(:isrc)
          @iswc = args[:iswc] if args.key?(:iswc)
          @keyword = args[:keyword] if args.key?(:keyword)
          @label = args[:label] if args.key?(:label)
          @notes = args[:notes] if args.key?(:notes)
          @original_release_medium = args[:original_release_medium] if args.key?(:original_release_medium)
          @producer = args[:producer] if args.key?(:producer)
          @ratings = args[:ratings] if args.key?(:ratings)
          @release_date = args[:release_date] if args.key?(:release_date)
          @season_number = args[:season_number] if args.key?(:season_number)
          @show_custom_id = args[:show_custom_id] if args.key?(:show_custom_id)
          @show_title = args[:show_title] if args.key?(:show_title)
          @spoken_language = args[:spoken_language] if args.key?(:spoken_language)
          @start_year = args[:start_year] if args.key?(:start_year)
          @subtitled_language = args[:subtitled_language] if args.key?(:subtitled_language)
          @title = args[:title] if args.key?(:title)
          @tms_id = args[:tms_id] if args.key?(:tms_id)
          @total_episodes_expected = args[:total_episodes_expected] if args.key?(:total_episodes_expected)
          @upc = args[:upc] if args.key?(:upc)
          @writer = args[:writer] if args.key?(:writer)
        end
      end
      
      # 
      class MetadataHistory
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For metadata history resources, the value is
        # youtubePartner#metadataHistory.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The metadata object contains the metadata provided by the specified source (
        # origination) at the specified time (timeProvided).
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::YoutubePartnerV1::Metadata]
        attr_accessor :metadata
      
        # The origination object contains information that describes the metadata source.
        # Corresponds to the JSON property `origination`
        # @return [Google::Apis::YoutubePartnerV1::Origination]
        attr_accessor :origination
      
        # The time the metadata was provided.
        # Corresponds to the JSON property `timeProvided`
        # @return [String]
        attr_accessor :time_provided
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @metadata = args[:metadata] if args.key?(:metadata)
          @origination = args[:origination] if args.key?(:origination)
          @time_provided = args[:time_provided] if args.key?(:time_provided)
        end
      end
      
      # 
      class MetadataHistoryListResponse
        include Google::Apis::Core::Hashable
      
        # A list of metadata history (youtubePartner#metadataHistory) resources that
        # match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::MetadataHistory>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # metadataHistoryList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # This is a copy of the tech.blob.ObjectId proto, which could not be used
      # directly here due to transitive closure issues with JavaScript support; see
      # http://b/8801763.
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # The name of the bucket to which this object belongs.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Generation of the object. Generations are monotonically increasing across
        # writes, allowing them to be be compared to determine which generation is newer.
        # If this is omitted in a request, then you are requesting the live object. See
        # http://go/bigstore-versions
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # The name of the object.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @generation = args[:generation] if args.key?(:generation)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # 
      class Origin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class Origination
        include Google::Apis::Core::Hashable
      
        # The content owner who provided the metadata or ownership information.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The mechanism by which the piece of metadata, ownership or relationship
        # information was provided.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner = args[:owner] if args.key?(:owner)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class OwnershipConflicts
        include Google::Apis::Core::Hashable
      
        # A list that identifies ownership conflicts of an asset and the territories
        # where conflicting ownership is inserted.
        # Corresponds to the JSON property `general`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryConflicts>]
        attr_accessor :general
      
        # The type of the API resource. For ownershipConflicts resources, the value is
        # youtubePartner#ownershipConflicts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list that identifies ownership conflicts of the mechanical rights for a
        # composition asset and the territories where conflicting ownership is inserted.
        # Corresponds to the JSON property `mechanical`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryConflicts>]
        attr_accessor :mechanical
      
        # A list that identifies ownership conflicts of the performance rights for a
        # composition asset and the territories where conflicting ownership is inserted.
        # Corresponds to the JSON property `performance`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryConflicts>]
        attr_accessor :performance
      
        # A list that identifies ownership conflicts of the synchronization rights for a
        # composition asset and the territories where conflicting ownership is inserted.
        # Corresponds to the JSON property `synchronization`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryConflicts>]
        attr_accessor :synchronization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @general = args[:general] if args.key?(:general)
          @kind = args[:kind] if args.key?(:kind)
          @mechanical = args[:mechanical] if args.key?(:mechanical)
          @performance = args[:performance] if args.key?(:performance)
          @synchronization = args[:synchronization] if args.key?(:synchronization)
        end
      end
      
      # 
      class OwnershipHistoryListResponse
        include Google::Apis::Core::Hashable
      
        # A list of ownership history (youtubePartner#ownershipHistory) resources that
        # match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::RightsOwnershipHistory>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # ownershipHistoryList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Package
        include Google::Apis::Core::Hashable
      
        # The package's metadata file contents.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The list of customer IDs.
        # Corresponds to the JSON property `customIds`
        # @return [Array<String>]
        attr_accessor :custom_ids
      
        # An ID that YouTube assigns and uses to uniquely identify the package.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For package resources, this value is
        # youtubePartner#package.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The desired locale of the error messages as defined in BCP 47 (http: //tools.
        # ietf.org/html/bcp47). For example, "en-US" or "de". If not // specified we
        # will return the error messages in English ("en").
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The package name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The package status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The package status reports.
        # Corresponds to the JSON property `statusReports`
        # @return [Array<Google::Apis::YoutubePartnerV1::StatusReport>]
        attr_accessor :status_reports
      
        # The package creation time. The value is specified in RFC 3339 ( YYYY-MM-DDThh:
        # mm:ss.000Z) format.
        # Corresponds to the JSON property `timeCreated`
        # @return [String]
        attr_accessor :time_created
      
        # The package type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The uploader name.
        # Corresponds to the JSON property `uploaderName`
        # @return [String]
        attr_accessor :uploader_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @custom_ids = args[:custom_ids] if args.key?(:custom_ids)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @locale = args[:locale] if args.key?(:locale)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @status_reports = args[:status_reports] if args.key?(:status_reports)
          @time_created = args[:time_created] if args.key?(:time_created)
          @type = args[:type] if args.key?(:type)
          @uploader_name = args[:uploader_name] if args.key?(:uploader_name)
        end
      end
      
      # 
      class PackageInsertResponse
        include Google::Apis::Core::Hashable
      
        # The list of errors and/or warnings.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::YoutubePartnerV1::ValidateError>]
        attr_accessor :errors
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # packageInsert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The package resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::YoutubePartnerV1::Package]
        attr_accessor :resource
      
        # The package insert status. Indicates whether the insert operation completed
        # successfully or identifies the general cause of failure. For most cases where
        # the insert operation failed, the errors are described in the API response's
        # errors object. However, if the operation failed because the package contained
        # non-metadata files, the errors object is not included in the response.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @resource = args[:resource] if args.key?(:resource)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class PageInfo
        include Google::Apis::Core::Hashable
      
        # The number of results included in the API response.
        # Corresponds to the JSON property `resultsPerPage`
        # @return [Fixnum]
        attr_accessor :results_per_page
      
        # The index of the first item in the API response.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results in the result set.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results_per_page = args[:results_per_page] if args.key?(:results_per_page)
          @start_index = args[:start_index] if args.key?(:start_index)
          @total_results = args[:total_results] if args.key?(:total_results)
        end
      end
      
      # 
      class Policy
        include Google::Apis::Core::Hashable
      
        # The policy's description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A value that YouTube assigns and uses to uniquely identify the policy.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a policy. Value: "youtubePartner#policy"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The policy's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of rules that specify the action that YouTube should take and may
        # optionally specify the conditions under which that action is enforced.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::YoutubePartnerV1::PolicyRule>]
        attr_accessor :rules
      
        # The time the policy was updated.
        # Corresponds to the JSON property `timeUpdated`
        # @return [String]
        attr_accessor :time_updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @time_updated = args[:time_updated] if args.key?(:time_updated)
        end
      end
      
      # 
      class PolicyList
        include Google::Apis::Core::Hashable
      
        # A list of saved policies.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Policy>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # policyList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PolicyRule
        include Google::Apis::Core::Hashable
      
        # The policy that YouTube should enforce if the rule's conditions are all valid
        # for an asset or for an attempt to view that asset on YouTube.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # A set of conditions that must be met for the rule's action (and subactions) to
        # be enforced. For a rule to be valid, all of its conditions must be met.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::YoutubePartnerV1::Conditions]
        attr_accessor :conditions
      
        # A list of additional actions that YouTube should take if the conditions in the
        # rule are met.
        # Corresponds to the JSON property `subaction`
        # @return [Array<String>]
        attr_accessor :subaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @conditions = args[:conditions] if args.key?(:conditions)
          @subaction = args[:subaction] if args.key?(:subaction)
        end
      end
      
      # 
      class PromotedContent
        include Google::Apis::Core::Hashable
      
        # A list of link targets that will be used to generate the annotation link that
        # appears on videos included in the campaign. If more than one link is specified,
        # the link that is displayed to viewers will be randomly selected from the list.
        # Corresponds to the JSON property `link`
        # @return [Array<Google::Apis::YoutubePartnerV1::CampaignTargetLink>]
        attr_accessor :link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
        end
      end
      
      # 
      class Rating
        include Google::Apis::Core::Hashable
      
        # The rating that the asset received.
        # Corresponds to the JSON property `rating`
        # @return [String]
        attr_accessor :rating
      
        # The rating system associated with the rating.
        # Corresponds to the JSON property `ratingSystem`
        # @return [String]
        attr_accessor :rating_system
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rating = args[:rating] if args.key?(:rating)
          @rating_system = args[:rating_system] if args.key?(:rating_system)
        end
      end
      
      # 
      class Reference
        include Google::Apis::Core::Hashable
      
        # The ID that uniquely identifies the asset that the reference is associated
        # with.
        # Corresponds to the JSON property `assetId`
        # @return [String]
        attr_accessor :asset_id
      
        # Set this field's value to true to indicate that the reference content should
        # be included in YouTube's AudioSwap program.
        # Corresponds to the JSON property `audioswapEnabled`
        # @return [Boolean]
        attr_accessor :audioswap_enabled
        alias_method :audioswap_enabled?, :audioswap_enabled
      
        # This field is present if the reference was created by associating an asset
        # with an existing YouTube video that was uploaded to a YouTube channel linked
        # to your CMS account. In that case, this field contains the ID of the claim
        # representing the resulting association between the asset and the video.
        # Corresponds to the JSON property `claimId`
        # @return [String]
        attr_accessor :claim_id
      
        # The type of content that the reference represents.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The ID that uniquely identifies the reference that this reference duplicates.
        # This field is only present if the reference's status is inactive with reason
        # REASON_DUPLICATE_FOR_OWNERS.
        # Corresponds to the JSON property `duplicateLeader`
        # @return [String]
        attr_accessor :duplicate_leader
      
        # The list of time intervals from this reference that will be ignored during the
        # match process.
        # Corresponds to the JSON property `excludedIntervals`
        # @return [Array<Google::Apis::YoutubePartnerV1::ExcludedInterval>]
        attr_accessor :excluded_intervals
      
        # When uploading a reference, set this value to true to indicate that the
        # reference is a pre-generated fingerprint.
        # Corresponds to the JSON property `fpDirect`
        # @return [Boolean]
        attr_accessor :fp_direct
        alias_method :fp_direct?, :fp_direct
      
        # A reference to data stored on the filesystem, on GFS or in blobstore.
        # Corresponds to the JSON property `gdataMedia`
        # @return [Google::Apis::YoutubePartnerV1::Media]
        attr_accessor :gdata_media
      
        # The MD5 hashcode of the reference content. Deprecated! This is no longer
        # populated.
        # Corresponds to the JSON property `hashCode`
        # @return [String]
        attr_accessor :hash_code
      
        # A value that YouTube assigns and uses to uniquely identify a reference.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Set this value to true to indicate that the reference should not be used to
        # generate claims. This field is only used on AudioSwap references.
        # Corresponds to the JSON property `ignoreFpMatch`
        # @return [Boolean]
        attr_accessor :ignore_fp_match
        alias_method :ignore_fp_match?, :ignore_fp_match
      
        # The type of the API resource. For reference resources, the value is
        # youtubePartner#reference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The length of the reference in seconds.
        # Corresponds to the JSON property `length`
        # @return [Float]
        attr_accessor :length
      
        # Extra information added to operations that support Scotty media requests.
        # Corresponds to the JSON property `mediaRequestInfo`
        # @return [Google::Apis::YoutubePartnerV1::MediaRequestInfo]
        attr_accessor :media_request_info
      
        # This message is for backends to pass their scotty media specific fields to ESF.
        # Backend will include this in their response message to ESF. Example:
        # ExportFile is an rpc defined for upload using scotty from ESF. rpc ExportFile(
        # ExportFileRequest) returns (ExportFileResponse) Message ExportFileResponse
        # will include apiserving.MediaResponseInfo to tell ESF about data like
        # dynamic_dropzone it needs to pass to Scotty. message ExportFileResponse `
        # optional gdata.Media blob = 1; optional apiserving.MediaResponseInfo
        # media_response_info = 2 `
        # Corresponds to the JSON property `mediaResponseInfo`
        # @return [Google::Apis::YoutubePartnerV1::MediaResponseInfo]
        attr_accessor :media_response_info
      
        # The origination object contains information that describes the reference
        # source.
        # Corresponds to the JSON property `origination`
        # @return [Google::Apis::YoutubePartnerV1::Origination]
        attr_accessor :origination
      
        # The reference's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # An explanation of how a reference entered its current state. This value is
        # only present if the reference's status is either inactive or deleted.
        # Corresponds to the JSON property `statusReason`
        # @return [String]
        attr_accessor :status_reason
      
        # Set this value to true to indicate that YouTube should prioritize Content ID
        # processing for a video file. YouTube processes urgent video files before other
        # files that are not marked as urgent. This setting is primarily used for videos
        # of live events or other videos that require time-sensitive processing. The
        # sooner YouTube completes Content ID processing for a video, the sooner YouTube
        # can match user-uploaded videos to that video. Note that marking all of your
        # files as urgent could delay processing for those files.
        # Corresponds to the JSON property `urgent`
        # @return [Boolean]
        attr_accessor :urgent
        alias_method :urgent?, :urgent
      
        # This field is present if the reference was created by associating an asset
        # with an existing YouTube video that was uploaded to a YouTube channel linked
        # to your CMS account. In that case, this field contains the ID of the source
        # video.
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @audioswap_enabled = args[:audioswap_enabled] if args.key?(:audioswap_enabled)
          @claim_id = args[:claim_id] if args.key?(:claim_id)
          @content_type = args[:content_type] if args.key?(:content_type)
          @duplicate_leader = args[:duplicate_leader] if args.key?(:duplicate_leader)
          @excluded_intervals = args[:excluded_intervals] if args.key?(:excluded_intervals)
          @fp_direct = args[:fp_direct] if args.key?(:fp_direct)
          @gdata_media = args[:gdata_media] if args.key?(:gdata_media)
          @hash_code = args[:hash_code] if args.key?(:hash_code)
          @id = args[:id] if args.key?(:id)
          @ignore_fp_match = args[:ignore_fp_match] if args.key?(:ignore_fp_match)
          @kind = args[:kind] if args.key?(:kind)
          @length = args[:length] if args.key?(:length)
          @media_request_info = args[:media_request_info] if args.key?(:media_request_info)
          @media_response_info = args[:media_response_info] if args.key?(:media_response_info)
          @origination = args[:origination] if args.key?(:origination)
          @status = args[:status] if args.key?(:status)
          @status_reason = args[:status_reason] if args.key?(:status_reason)
          @urgent = args[:urgent] if args.key?(:urgent)
          @video_id = args[:video_id] if args.key?(:video_id)
        end
      end
      
      # 
      class ReferenceConflict
        include Google::Apis::Core::Hashable
      
        # An id of a conflicting reference.
        # Corresponds to the JSON property `conflictingReferenceId`
        # @return [String]
        attr_accessor :conflicting_reference_id
      
        # Conflict review expiry time.
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # A value that YouTube assigns and uses to uniquely identify a reference
        # conflict.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For referenceConflict resources, the value is
        # youtubePartner#referenceConflict.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of matches between conflicting and original references at the time of
        # conflict creation.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::YoutubePartnerV1::ReferenceConflictMatch>]
        attr_accessor :matches
      
        # An id of an original reference.
        # Corresponds to the JSON property `originalReferenceId`
        # @return [String]
        attr_accessor :original_reference_id
      
        # The referenceConflict's status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_reference_id = args[:conflicting_reference_id] if args.key?(:conflicting_reference_id)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @matches = args[:matches] if args.key?(:matches)
          @original_reference_id = args[:original_reference_id] if args.key?(:original_reference_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class ReferenceConflictListResponse
        include Google::Apis::Core::Hashable
      
        # A list of reference conflicts that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::ReferenceConflict>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # referenceConflictList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class ReferenceConflictMatch
        include Google::Apis::Core::Hashable
      
        # Conflicting reference offset in milliseconds.
        # Corresponds to the JSON property `conflicting_reference_offset_ms`
        # @return [Fixnum]
        attr_accessor :conflicting_reference_offset_ms
      
        # Match length in milliseconds.
        # Corresponds to the JSON property `length_ms`
        # @return [Fixnum]
        attr_accessor :length_ms
      
        # Original reference offset in milliseconds.
        # Corresponds to the JSON property `original_reference_offset_ms`
        # @return [Fixnum]
        attr_accessor :original_reference_offset_ms
      
        # The referenceConflictMatch's type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_reference_offset_ms = args[:conflicting_reference_offset_ms] if args.key?(:conflicting_reference_offset_ms)
          @length_ms = args[:length_ms] if args.key?(:length_ms)
          @original_reference_offset_ms = args[:original_reference_offset_ms] if args.key?(:original_reference_offset_ms)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ReferenceListResponse
        include Google::Apis::Core::Hashable
      
        # A list of references that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Reference>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # referenceList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page in the result set.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class RightsOwnership
        include Google::Apis::Core::Hashable
      
        # A list that identifies the owners of an asset and the territories where each
        # owner has ownership. General asset ownership is used for all types of assets
        # and is the only type of ownership data that can be provided for assets that
        # are not compositions. *Note:* You cannot specify general ownership rights and
        # also specify either mechanical, performance, or synchronization rights.
        # Corresponds to the JSON property `general`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryOwners>]
        attr_accessor :general
      
        # The type of the API resource. For rightsOwnership resources, the value is
        # youtubePartner#rightsOwnership.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list that identifies owners of the mechanical rights for a composition asset.
        # Corresponds to the JSON property `mechanical`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryOwners>]
        attr_accessor :mechanical
      
        # A list that identifies owners of the performance rights for a composition
        # asset.
        # Corresponds to the JSON property `performance`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryOwners>]
        attr_accessor :performance
      
        # A list that identifies owners of the synchronization rights for a composition
        # asset.
        # Corresponds to the JSON property `synchronization`
        # @return [Array<Google::Apis::YoutubePartnerV1::TerritoryOwners>]
        attr_accessor :synchronization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @general = args[:general] if args.key?(:general)
          @kind = args[:kind] if args.key?(:kind)
          @mechanical = args[:mechanical] if args.key?(:mechanical)
          @performance = args[:performance] if args.key?(:performance)
          @synchronization = args[:synchronization] if args.key?(:synchronization)
        end
      end
      
      # 
      class RightsOwnershipHistory
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For ownership history resources, the value is
        # youtubePartner#rightsOwnershipHistory.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The origination object contains information that describes the metadata source.
        # Corresponds to the JSON property `origination`
        # @return [Google::Apis::YoutubePartnerV1::Origination]
        attr_accessor :origination
      
        # The ownership object contains the ownership data provided by the specified
        # source (origination) at the specified time (timeProvided).
        # Corresponds to the JSON property `ownership`
        # @return [Google::Apis::YoutubePartnerV1::RightsOwnership]
        attr_accessor :ownership
      
        # The time that the ownership data was provided.
        # Corresponds to the JSON property `timeProvided`
        # @return [String]
        attr_accessor :time_provided
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @origination = args[:origination] if args.key?(:origination)
          @ownership = args[:ownership] if args.key?(:ownership)
          @time_provided = args[:time_provided] if args.key?(:time_provided)
        end
      end
      
      # 
      class Segment
        include Google::Apis::Core::Hashable
      
        # The duration of the segment in milliseconds.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # The type of the API resource. For segment resources, the value is
        # youtubePartner#segment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The start time of the segment, measured in milliseconds from the beginning.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @kind = args[:kind] if args.key?(:kind)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # 
      class Segment2
        include Google::Apis::Core::Hashable
      
        # The finish time of the segment, measured in milliseconds from the beginning.
        # Corresponds to the JSON property `finish`
        # @return [String]
        attr_accessor :finish
      
        # The type of the API resource. For segment resources, the value is
        # youtubePartner#segment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The start time of the segment, measured in milliseconds from the beginning.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish = args[:finish] if args.key?(:finish)
          @kind = args[:kind] if args.key?(:kind)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # 
      class Source
        include Google::Apis::Core::Hashable
      
        # Id of content owner that initiated the event.
        # Corresponds to the JSON property `contentOwnerId`
        # @return [String]
        attr_accessor :content_owner_id
      
        # Type of the event source.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Email of user who initiated the event.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_owner_id = args[:content_owner_id] if args.key?(:content_owner_id)
          @type = args[:type] if args.key?(:type)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # 
      class SpreadsheetTemplate
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For spreadsheet template resources, the value is
        # youtubePartner#spreadsheetTemplate.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The template status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The template content.
        # Corresponds to the JSON property `templateContent`
        # @return [String]
        attr_accessor :template_content
      
        # The template name.
        # Corresponds to the JSON property `templateName`
        # @return [String]
        attr_accessor :template_name
      
        # The template type.
        # Corresponds to the JSON property `templateType`
        # @return [String]
        attr_accessor :template_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
          @template_content = args[:template_content] if args.key?(:template_content)
          @template_name = args[:template_name] if args.key?(:template_name)
          @template_type = args[:template_type] if args.key?(:template_type)
        end
      end
      
      # 
      class SpreadsheetTemplateListResponse
        include Google::Apis::Core::Hashable
      
        # A list of spreadsheet templates (youtubePartner#spreadsheetTemplate) resources
        # that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::SpreadsheetTemplate>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # spreadsheetTemplateList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status of the API response.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class StatusReport
        include Google::Apis::Core::Hashable
      
        # The content of the report message. Used only in Hybrid.
        # Corresponds to the JSON property `statusContent`
        # @return [String]
        attr_accessor :status_content
      
        # Status file name. Used only in Hybrid.
        # Corresponds to the JSON property `statusFileName`
        # @return [String]
        attr_accessor :status_file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status_content = args[:status_content] if args.key?(:status_content)
          @status_file_name = args[:status_file_name] if args.key?(:status_file_name)
        end
      end
      
      # 
      class TerritoryCondition
        include Google::Apis::Core::Hashable
      
        # A list of territories. Each territory is an ISO 3166 two-letter country code..
        # Corresponds to the JSON property `territories`
        # @return [Array<String>]
        attr_accessor :territories
      
        # This field indicates whether the associated policy rule is or is not valid in
        # the specified territories.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @territories = args[:territories] if args.key?(:territories)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class TerritoryConflicts
        include Google::Apis::Core::Hashable
      
        # A list of conflicting ownerships.
        # Corresponds to the JSON property `conflictingOwnership`
        # @return [Array<Google::Apis::YoutubePartnerV1::ConflictingOwnership>]
        attr_accessor :conflicting_ownership
      
        # A territories where the ownership conflict is present. Territory is an ISO
        # 3166 two-letter country code..
        # Corresponds to the JSON property `territory`
        # @return [String]
        attr_accessor :territory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_ownership = args[:conflicting_ownership] if args.key?(:conflicting_ownership)
          @territory = args[:territory] if args.key?(:territory)
        end
      end
      
      # 
      class TerritoryOwners
        include Google::Apis::Core::Hashable
      
        # The name of the asset's owner or rights administrator.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The name of the asset's publisher. This field is only used for composition
        # assets, and it is used when the asset owner is not known to have a formal
        # relationship established with YouTube.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # The percentage of the asset that the owner controls or administers. For
        # composition assets, the value can be any value between 0 and 100 inclusive.
        # For all other assets, the only valid values are 100, which indicates that the
        # owner completely owns the asset in the specified territories, and 0, which
        # indicates that you are removing ownership of the asset in the specified
        # territories.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # A list of territories where the owner owns (or does not own) the asset. Each
        # territory is an ISO 3166 two-letter country code..
        # Corresponds to the JSON property `territories`
        # @return [Array<String>]
        attr_accessor :territories
      
        # This field indicates whether the ownership data applies or does not apply in
        # the specified territories.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner = args[:owner] if args.key?(:owner)
          @publisher = args[:publisher] if args.key?(:publisher)
          @ratio = args[:ratio] if args.key?(:ratio)
          @territories = args[:territories] if args.key?(:territories)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class TotalMatch
        include Google::Apis::Core::Hashable
      
        # The total amount of content in the reference which matched the user video in
        # seconds.
        # Corresponds to the JSON property `referenceDurationSecs`
        # @return [Fixnum]
        attr_accessor :reference_duration_secs
      
        # The total amount of content in the user video which matched the reference in
        # seconds.
        # Corresponds to the JSON property `userVideoDurationSecs`
        # @return [Fixnum]
        attr_accessor :user_video_duration_secs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_duration_secs = args[:reference_duration_secs] if args.key?(:reference_duration_secs)
          @user_video_duration_secs = args[:user_video_duration_secs] if args.key?(:user_video_duration_secs)
        end
      end
      
      # 
      class TypeDetails
        include Google::Apis::Core::Hashable
      
        # Appeal explanations for dispute_appeal event.
        # Corresponds to the JSON property `appealExplanation`
        # @return [String]
        attr_accessor :appeal_explanation
      
        # Dispute notes for dispute_create events.
        # Corresponds to the JSON property `disputeNotes`
        # @return [String]
        attr_accessor :dispute_notes
      
        # Dispute reason for dispute_create and dispute_appeal events.
        # Corresponds to the JSON property `disputeReason`
        # @return [String]
        attr_accessor :dispute_reason
      
        # Status that was a result of update for claim_update event.
        # Corresponds to the JSON property `updateStatus`
        # @return [String]
        attr_accessor :update_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appeal_explanation = args[:appeal_explanation] if args.key?(:appeal_explanation)
          @dispute_notes = args[:dispute_notes] if args.key?(:dispute_notes)
          @dispute_reason = args[:dispute_reason] if args.key?(:dispute_reason)
          @update_status = args[:update_status] if args.key?(:update_status)
        end
      end
      
      # 
      class Uploader
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For uploader resources, the value is
        # youtubePartner#uploader.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The uploader name.
        # Corresponds to the JSON property `uploaderName`
        # @return [String]
        attr_accessor :uploader_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @uploader_name = args[:uploader_name] if args.key?(:uploader_name)
        end
      end
      
      # 
      class UploaderListResponse
        include Google::Apis::Core::Hashable
      
        # A list of uploader (youtubePartner#uploader) resources that match the request
        # criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Uploader>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # uploaderList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ValidateAsyncRequest
        include Google::Apis::Core::Hashable
      
        # The metadata file contents.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateAsyncRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The uploader name.
        # Corresponds to the JSON property `uploaderName`
        # @return [String]
        attr_accessor :uploader_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @kind = args[:kind] if args.key?(:kind)
          @uploader_name = args[:uploader_name] if args.key?(:uploader_name)
        end
      end
      
      # 
      class ValidateAsyncResponse
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateAsyncResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The validation status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The validation ID.
        # Corresponds to the JSON property `validationId`
        # @return [String]
        attr_accessor :validation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
          @validation_id = args[:validation_id] if args.key?(:validation_id)
        end
      end
      
      # 
      class ValidateError
        include Google::Apis::Core::Hashable
      
        # The column name where the error occurred.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        # The column number where the error occurred (1-based).
        # Corresponds to the JSON property `columnNumber`
        # @return [Fixnum]
        attr_accessor :column_number
      
        # The line number where the error occurred (1-based).
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        # The error message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The code for the error message (if one exists).
        # Corresponds to the JSON property `messageCode`
        # @return [Fixnum]
        attr_accessor :message_code
      
        # The error severity.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_name = args[:column_name] if args.key?(:column_name)
          @column_number = args[:column_number] if args.key?(:column_number)
          @line_number = args[:line_number] if args.key?(:line_number)
          @message = args[:message] if args.key?(:message)
          @message_code = args[:message_code] if args.key?(:message_code)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class ValidateRequest
        include Google::Apis::Core::Hashable
      
        # The metadata file contents.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The desired locale of the error messages as defined in BCP 47 (http: //tools.
        # ietf.org/html/bcp47). For example, "en-US" or "de". If not // specified we
        # will return the error messages in English ("en").
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The uploader name.
        # Corresponds to the JSON property `uploaderName`
        # @return [String]
        attr_accessor :uploader_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @kind = args[:kind] if args.key?(:kind)
          @locale = args[:locale] if args.key?(:locale)
          @uploader_name = args[:uploader_name] if args.key?(:uploader_name)
        end
      end
      
      # 
      class ValidateResponse
        include Google::Apis::Core::Hashable
      
        # The list of errors and/or warnings.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::YoutubePartnerV1::ValidateError>]
        attr_accessor :errors
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The validation status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class ValidateStatusRequest
        include Google::Apis::Core::Hashable
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateStatusRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The desired locale of the error messages as defined in BCP 47 (http: //tools.
        # ietf.org/html/bcp47). For example, "en-US" or "de". If not // specified we
        # will return the error messages in English ("en").
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The validation ID.
        # Corresponds to the JSON property `validationId`
        # @return [String]
        attr_accessor :validation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @locale = args[:locale] if args.key?(:locale)
          @validation_id = args[:validation_id] if args.key?(:validation_id)
        end
      end
      
      # 
      class ValidateStatusResponse
        include Google::Apis::Core::Hashable
      
        # The list of errors and/or warnings.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::YoutubePartnerV1::ValidateError>]
        attr_accessor :errors
      
        # If this is a metadata-only package.
        # Corresponds to the JSON property `isMetadataOnly`
        # @return [Boolean]
        attr_accessor :is_metadata_only
        alias_method :is_metadata_only?, :is_metadata_only
      
        # The type of the API resource. For this operation, the value is youtubePartner#
        # validateStatusResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The validation status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @is_metadata_only = args[:is_metadata_only] if args.key?(:is_metadata_only)
          @kind = args[:kind] if args.key?(:kind)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class VideoAdvertisingOption
        include Google::Apis::Core::Hashable
      
        # A list of times when YouTube can show an in-stream advertisement during
        # playback of the video.
        # Corresponds to the JSON property `adBreaks`
        # @return [Array<Google::Apis::YoutubePartnerV1::AdBreak>]
        attr_accessor :ad_breaks
      
        # A list of ad formats that the video is allowed to show.
        # Corresponds to the JSON property `adFormats`
        # @return [Array<String>]
        attr_accessor :ad_formats
      
        # Enables this video for automatically generated midroll breaks.
        # Corresponds to the JSON property `autoGeneratedBreaks`
        # @return [Boolean]
        attr_accessor :auto_generated_breaks
        alias_method :auto_generated_breaks?, :auto_generated_breaks
      
        # The point at which the break occurs during the video playback.
        # Corresponds to the JSON property `breakPosition`
        # @return [Array<String>]
        attr_accessor :break_position
      
        # The ID that YouTube uses to uniquely identify the video associated with the
        # advertising settings.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For this resource, the value is youtubePartner#
        # videoAdvertisingOption.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A value that uniquely identifies the video to the third-party ad server.
        # Corresponds to the JSON property `tpAdServerVideoId`
        # @return [String]
        attr_accessor :tp_ad_server_video_id
      
        # The base URL for a third-party ad server from which YouTube can retrieve in-
        # stream ads for the video.
        # Corresponds to the JSON property `tpTargetingUrl`
        # @return [String]
        attr_accessor :tp_targeting_url
      
        # A parameter string to append to the end of the request to the third-party ad
        # server.
        # Corresponds to the JSON property `tpUrlParameters`
        # @return [String]
        attr_accessor :tp_url_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_breaks = args[:ad_breaks] if args.key?(:ad_breaks)
          @ad_formats = args[:ad_formats] if args.key?(:ad_formats)
          @auto_generated_breaks = args[:auto_generated_breaks] if args.key?(:auto_generated_breaks)
          @break_position = args[:break_position] if args.key?(:break_position)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @tp_ad_server_video_id = args[:tp_ad_server_video_id] if args.key?(:tp_ad_server_video_id)
          @tp_targeting_url = args[:tp_targeting_url] if args.key?(:tp_targeting_url)
          @tp_url_parameters = args[:tp_url_parameters] if args.key?(:tp_url_parameters)
        end
      end
      
      # 
      class VideoAdvertisingOptionGetEnabledAdsResponse
        include Google::Apis::Core::Hashable
      
        # A list of ad breaks that occur in a claimed YouTube video.
        # Corresponds to the JSON property `adBreaks`
        # @return [Array<Google::Apis::YoutubePartnerV1::AdBreak>]
        attr_accessor :ad_breaks
      
        # This field indicates whether YouTube can show ads when the video is played in
        # an embedded player.
        # Corresponds to the JSON property `adsOnEmbeds`
        # @return [Boolean]
        attr_accessor :ads_on_embeds
        alias_method :ads_on_embeds?, :ads_on_embeds
      
        # A list that identifies the countries where ads can run and the types of ads
        # allowed in those countries.
        # Corresponds to the JSON property `countriesRestriction`
        # @return [Array<Google::Apis::YoutubePartnerV1::CountriesRestriction>]
        attr_accessor :countries_restriction
      
        # The ID that YouTube uses to uniquely identify the claimed video.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For this resource, the value is youtubePartner#
        # videoAdvertisingOptionGetEnabledAds.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_breaks = args[:ad_breaks] if args.key?(:ad_breaks)
          @ads_on_embeds = args[:ads_on_embeds] if args.key?(:ads_on_embeds)
          @countries_restriction = args[:countries_restriction] if args.key?(:countries_restriction)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Whitelist
        include Google::Apis::Core::Hashable
      
        # The YouTube channel ID that uniquely identifies the whitelisted channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the API resource. For whitelist resources, this value is
        # youtubePartner#whitelist.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Title of the whitelisted YouTube channel.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class WhitelistListResponse
        include Google::Apis::Core::Hashable
      
        # A list of whitelist resources that match the request criteria.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::YoutubePartnerV1::Whitelist>]
        attr_accessor :items
      
        # The type of the API response. For this operation, the value is youtubePartner#
        # whitelistList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token that can be used as the value of the pageToken parameter to retrieve
        # the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The pageInfo object encapsulates paging information for the result set.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::YoutubePartnerV1::PageInfo]
        attr_accessor :page_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @page_info = args[:page_info] if args.key?(:page_info)
        end
      end
      
      # 
      class YoutubePartnerApiProtoFrontendV1Origin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
        end
      end
    end
  end
end
