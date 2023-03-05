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
      
      # Abuse reporting configuration outlining what is supported in this conference.
      class AbuseReportingConfig
        include Google::Apis::Core::Hashable
      
        # Whether the current call may include video recordings in its abuse reports.
        # Corresponds to the JSON property `recordingAllowed`
        # @return [Boolean]
        attr_accessor :recording_allowed
        alias_method :recording_allowed?, :recording_allowed
      
        # Whether the current call may include user generated content (chat, polls, Q&A..
        # .) in its abuse reports.
        # Corresponds to the JSON property `writtenUgcAllowed`
        # @return [Boolean]
        attr_accessor :written_ugc_allowed
        alias_method :written_ugc_allowed?, :written_ugc_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recording_allowed = args[:recording_allowed] if args.key?(:recording_allowed)
          @written_ugc_allowed = args[:written_ugc_allowed] if args.key?(:written_ugc_allowed)
        end
      end
      
      # Information about how devices in a meeting have acked for a session/operation.
      class AckInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Number of meeting devices that have not acked yet.
        # Corresponds to the JSON property `unackedDeviceCount`
        # @return [Fixnum]
        attr_accessor :unacked_device_count
      
        # Output only. IDs of meeting devices (at most ten are provided) that have not
        # acked yet.
        # Corresponds to the JSON property `unackedDeviceIds`
        # @return [Array<String>]
        attr_accessor :unacked_device_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unacked_device_count = args[:unacked_device_count] if args.key?(:unacked_device_count)
          @unacked_device_ids = args[:unacked_device_ids] if args.key?(:unacked_device_ids)
        end
      end
      
      # The request set by clients to instruct Backend how the user intend to fix the
      # ACL. Technically it's not a request to ACL Fixer, because Backend uses /
      # DriveService.Share to modify Drive ACLs.
      class AclFixRequest
        include Google::Apis::Core::Hashable
      
        # For Spaces messages: This field is ignored. For DMs messages: The list of
        # email addresses that should be added to the Drive item's ACL. In general, the
        # list should not be empty when the boolean "should_fix" field is set; otherwise,
        # the list should be empty. During transition - when clients do not specify
        # this field but the "should_fix" is true, we follow the legacy behavior: share
        # to all users in the DM regardless of emails. This behavior is being phased out.
        # Corresponds to the JSON property `recipientEmails`
        # @return [Array<String>]
        attr_accessor :recipient_emails
      
        # 
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Whether to attempt to fix the ACL by adding the room or DM members to the
        # Drive file's ACL.
        # Corresponds to the JSON property `shouldFix`
        # @return [Boolean]
        attr_accessor :should_fix
        alias_method :should_fix?, :should_fix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recipient_emails = args[:recipient_emails] if args.key?(:recipient_emails)
          @role = args[:role] if args.key?(:role)
          @should_fix = args[:should_fix] if args.key?(:should_fix)
        end
      end
      
      # The message reconstructed based on information in the response of /
      # PermissionFixOptionsService.Query (or the Apiary API that wraps it). Indicates
      # the ability of the requester to change the access to the Drive file for the
      # room roster or the DM members. Used in GetMessagePreviewMetadataResponse only.
      class AclFixStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fixability`
        # @return [String]
        attr_accessor :fixability
      
        # List of recipient email addresses for which access can be granted. This field
        # contains the same email addresses from the GetMessagePreviewMetadata request
        # if all recipients can be successfully added to the ACL as determined by Drive
        # ACL Fixer. For now, the field is non-empty if and only if the "fixability"
        # value is "CAN_FIX".
        # Corresponds to the JSON property `fixableEmailAddress`
        # @return [Array<String>]
        attr_accessor :fixable_email_address
      
        # List of recipient email addresses for which an out-of-domain-sharing warning
        # must be shown, stating that these email addresses are not in the Google Apps
        # organization that the requested item belong to. Empty if all recipients are in
        # the same Google Apps organization.
        # Corresponds to the JSON property `outOfDomainWarningEmailAddress`
        # @return [Array<String>]
        attr_accessor :out_of_domain_warning_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixability = args[:fixability] if args.key?(:fixability)
          @fixable_email_address = args[:fixable_email_address] if args.key?(:fixable_email_address)
          @out_of_domain_warning_email_address = args[:out_of_domain_warning_email_address] if args.key?(:out_of_domain_warning_email_address)
        end
      end
      
      # Next tag: 4
      class AclInfo
        include Google::Apis::Core::Hashable
      
        # Number of groups which have at least read access to the document.
        # Corresponds to the JSON property `groupsCount`
        # @return [Fixnum]
        attr_accessor :groups_count
      
        # The scope to which the content was shared.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Number of users which have at least read access to the document.
        # Corresponds to the JSON property `usersCount`
        # @return [Fixnum]
        attr_accessor :users_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups_count = args[:groups_count] if args.key?(:groups_count)
          @scope = args[:scope] if args.key?(:scope)
          @users_count = args[:users_count] if args.key?(:users_count)
        end
      end
      
      # List of string parameters that developers can specify when the above action
      # method (in apps script) is invoked. An example use case is for 3 snooze
      # buttons: snooze now, snooze 1 day, snooze next week. Developers can have
      # action method = snooze() and pass the snooze type and snooze time in list of
      # string parameters.
      class ActionParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
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
      
      # 
      class AddonComposeUiActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Earlier we used to populate just the affected_members list and inferred the
      # new membership state (roles didn't exist back then) from the Type. go/dynamite-
      # finra required backend to know the previous membership state to reconstruct
      # membership history. The proper solution involved cleaning up up Type enum, but
      # it was used in many, many places. This was added as a stop-gap solution to
      # unblock FINRA without breaking everything. Later role update and target
      # audience update started relying on this to communicate information to clients
      # about what transition happened. So this is now required to be populated and
      # should be in sync with affected_members for new messages.
      class AffectedMembership
        include Google::Apis::Core::Hashable
      
        # Eventually this can be updated to a oneOf User, Space (for nested spaces),
        # Bots or Service, as and when these use cases come up.
        # Corresponds to the JSON property `affectedMember`
        # @return [Google::Apis::CloudsearchV1::MemberId]
        attr_accessor :affected_member
      
        # 
        # Corresponds to the JSON property `priorMembershipRole`
        # @return [String]
        attr_accessor :prior_membership_role
      
        # 
        # Corresponds to the JSON property `priorMembershipState`
        # @return [String]
        attr_accessor :prior_membership_state
      
        # 
        # Corresponds to the JSON property `targetMembershipRole`
        # @return [String]
        attr_accessor :target_membership_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_member = args[:affected_member] if args.key?(:affected_member)
          @prior_membership_role = args[:prior_membership_role] if args.key?(:prior_membership_role)
          @prior_membership_state = args[:prior_membership_state] if args.key?(:prior_membership_state)
          @target_membership_role = args[:target_membership_role] if args.key?(:target_membership_role)
        end
      end
      
      # Represents a principal who has authenticated as any kind of user which the
      # application understands. This is typically used for "wiki-like" security,
      # where anyone is allowed access so long as they can be held accountable for
      # that access. Since the purpose is knowing whom to blame, it is up to the
      # application to decide what kinds of users it knows how to blame. For example,
      # an application might choose to include GAIA users in "all authenticated users",
      # but not include MDB users. Nothing here.
      class AllAuthenticatedUsersProto
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # NOTE WHEN ADDING NEW PROTO FIELDS: Be sure to add datapol annotations to new
      # fields with potential PII, so they get scrubbed when logging protos for errors.
      # NEXT TAG: 31
      class Annotation
        include Google::Apis::Core::Hashable
      
        # Annotation metadata for Babel-only items that signals which type of
        # placeholder message should be displayed in Babel clients.
        # Corresponds to the JSON property `babelPlaceholderMetadata`
        # @return [Google::Apis::CloudsearchV1::BabelPlaceholderMetadata]
        attr_accessor :babel_placeholder_metadata
      
        # LINT.ThenChange(//depot/google3/java/com/google/apps/dynamite/v1/backend/
        # action/common/SystemMessageHelper.java)
        # Corresponds to the JSON property `cardCapabilityMetadata`
        # @return [Google::Apis::CloudsearchV1::CardCapabilityMetadata]
        attr_accessor :card_capability_metadata
      
        # Whether the annotation should be rendered as a preview chip. If this is
        # missing or unspecified, fallback to should_not_render on the metadata.
        # Corresponds to the JSON property `chipRenderType`
        # @return [String]
        attr_accessor :chip_render_type
      
        # Annotation metadata app unfurl consent.
        # Corresponds to the JSON property `consentedAppUnfurlMetadata`
        # @return [Google::Apis::CloudsearchV1::ConsentedAppUnfurlMetadata]
        attr_accessor :consented_app_unfurl_metadata
      
        # 
        # Corresponds to the JSON property `customEmojiMetadata`
        # @return [Google::Apis::CloudsearchV1::CustomEmojiMetadata]
        attr_accessor :custom_emoji_metadata
      
        # Annotation metadata for Data Loss Prevention that pertains to DLP violation on
        # message send or edit events. It is used for client -> BE communication and
        # other downstream process in BE (e.g. storage and audit logging), and it should
        # never be returned to the client.
        # Corresponds to the JSON property `dataLossPreventionMetadata`
        # @return [Google::Apis::CloudsearchV1::DataLossPreventionMetadata]
        attr_accessor :data_loss_prevention_metadata
      
        # Annotation metadata for Drive artifacts.
        # Corresponds to the JSON property `driveMetadata`
        # @return [Google::Apis::CloudsearchV1::DriveMetadata]
        attr_accessor :drive_metadata
      
        # Annotation metadata for markup formatting
        # Corresponds to the JSON property `formatMetadata`
        # @return [Google::Apis::CloudsearchV1::FormatMetadata]
        attr_accessor :format_metadata
      
        # 
        # Corresponds to the JSON property `groupRetentionSettingsUpdated`
        # @return [Google::Apis::CloudsearchV1::GroupRetentionSettingsUpdatedMetaData]
        attr_accessor :group_retention_settings_updated
      
        # Annotation metadata for an GsuiteIntegration artifact.
        # Corresponds to the JSON property `gsuiteIntegrationMetadata`
        # @return [Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata]
        attr_accessor :gsuite_integration_metadata
      
        # Annotation metadata to display system messages for incoming webhook events.
        # Next Tag: 7
        # Corresponds to the JSON property `incomingWebhookChangedMetadata`
        # @return [Google::Apis::CloudsearchV1::IncomingWebhookChangedMetadata]
        attr_accessor :incoming_webhook_changed_metadata
      
        # The inline render format of this annotation. go/drive-smart-chips-chat-v2.
        # Corresponds to the JSON property `inlineRenderFormat`
        # @return [String]
        attr_accessor :inline_render_format
      
        # Annotation metadata to display system message for integration config updated
        # event. This metadata is stored in spanner, and can be dispatched to clients
        # without any field modification or transformation.
        # Corresponds to the JSON property `integrationConfigUpdated`
        # @return [Google::Apis::CloudsearchV1::IntegrationConfigUpdatedMetadata]
        attr_accessor :integration_config_updated
      
        # Interaction data for an annotation, which may be supplemental to the metadata
        # oneof. For example, this will contain the fully built navigation target for
        # smart chips. NEXT TAG: 2
        # Corresponds to the JSON property `interactionData`
        # @return [Google::Apis::CloudsearchV1::InteractionData]
        attr_accessor :interaction_data
      
        # Length of the text_body substring beginning from start_index the Annotation
        # corresponds to.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # * A client-assigned ID for this annotation. This is helpful in matching the
        # back-filled annotations to the original annotations on client side, without
        # having to re-parse the message. There is no guarantee an annotation has a
        # local_id, it's a purely client used and controlled field with no guarantee of
        # uniqueness.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Annotation metadata to display system messages for membership changes. Next
        # Tag: 8
        # Corresponds to the JSON property `membershipChanged`
        # @return [Google::Apis::CloudsearchV1::MembershipChangedMetadata]
        attr_accessor :membership_changed
      
        # 
        # Corresponds to the JSON property `readReceiptsSettingsMetadata`
        # @return [Google::Apis::CloudsearchV1::ReadReceiptsSettingsUpdatedMetadata]
        attr_accessor :read_receipts_settings_metadata
      
        # A list of capabilities that are used in this message.
        # Corresponds to the JSON property `requiredMessageFeaturesMetadata`
        # @return [Google::Apis::CloudsearchV1::RequiredMessageFeaturesMetadata]
        attr_accessor :required_message_features_metadata
      
        # 
        # Corresponds to the JSON property `roomUpdated`
        # @return [Google::Apis::CloudsearchV1::RoomUpdatedMetadata]
        attr_accessor :room_updated
      
        # Whether or not the annotation is invalidated by the server. Example of
        # situations for invalidation include: when the URL is malformed, or when Drive
        # item ID is rejected by Drive Service.
        # Corresponds to the JSON property `serverInvalidated`
        # @return [Boolean]
        attr_accessor :server_invalidated
        alias_method :server_invalidated?, :server_invalidated
      
        # Annotation metadata for slash commands (/).
        # Corresponds to the JSON property `slashCommandMetadata`
        # @return [Google::Apis::CloudsearchV1::SlashCommandMetadata]
        attr_accessor :slash_command_metadata
      
        # Start index (0-indexed) of the Message text the Annotation corresponds to,
        # inclusive.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Type of the Annotation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # * A unique server-assigned ID for this annotation. This is helpful in matching
        # annotation objects when fetched from service. All uploads should have a
        # unique_id after the message they are attached to is successfully sent. Url
        # annotations that originally were uploads (i.e. policy violations) will have a
        # unique_id after the message they are attached to is successfully sent. No
        # other url annotations should have a unique_id. All drive annotations should
        # have a unique_id after the message they are attached to is successfully sent.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Annotation metadata for user Upload artifacts.
        # Corresponds to the JSON property `uploadMetadata`
        # @return [Google::Apis::CloudsearchV1::UploadMetadata]
        attr_accessor :upload_metadata
      
        # Annotation metadata for a Weblink. In case of pasted link it can qualify to be
        # other types in addition to being a URL - like DRIVE_DOC/DRIVE_SHEET and so on.
        # The URL metadata will also be present and it's up to the client to decide
        # which metadata to render it with. These fields are filled in using page render
        # service.
        # Corresponds to the JSON property `urlMetadata`
        # @return [Google::Apis::CloudsearchV1::UrlMetadata]
        attr_accessor :url_metadata
      
        # Annotation metadata for user mentions (+/@/-).
        # Corresponds to the JSON property `userMentionMetadata`
        # @return [Google::Apis::CloudsearchV1::UserMentionMetadata]
        attr_accessor :user_mention_metadata
      
        # 
        # Corresponds to the JSON property `videoCallMetadata`
        # @return [Google::Apis::CloudsearchV1::VideoCallMetadata]
        attr_accessor :video_call_metadata
      
        # Annotation metadata for YouTube artifact.
        # Corresponds to the JSON property `youtubeMetadata`
        # @return [Google::Apis::CloudsearchV1::YoutubeMetadata]
        attr_accessor :youtube_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @babel_placeholder_metadata = args[:babel_placeholder_metadata] if args.key?(:babel_placeholder_metadata)
          @card_capability_metadata = args[:card_capability_metadata] if args.key?(:card_capability_metadata)
          @chip_render_type = args[:chip_render_type] if args.key?(:chip_render_type)
          @consented_app_unfurl_metadata = args[:consented_app_unfurl_metadata] if args.key?(:consented_app_unfurl_metadata)
          @custom_emoji_metadata = args[:custom_emoji_metadata] if args.key?(:custom_emoji_metadata)
          @data_loss_prevention_metadata = args[:data_loss_prevention_metadata] if args.key?(:data_loss_prevention_metadata)
          @drive_metadata = args[:drive_metadata] if args.key?(:drive_metadata)
          @format_metadata = args[:format_metadata] if args.key?(:format_metadata)
          @group_retention_settings_updated = args[:group_retention_settings_updated] if args.key?(:group_retention_settings_updated)
          @gsuite_integration_metadata = args[:gsuite_integration_metadata] if args.key?(:gsuite_integration_metadata)
          @incoming_webhook_changed_metadata = args[:incoming_webhook_changed_metadata] if args.key?(:incoming_webhook_changed_metadata)
          @inline_render_format = args[:inline_render_format] if args.key?(:inline_render_format)
          @integration_config_updated = args[:integration_config_updated] if args.key?(:integration_config_updated)
          @interaction_data = args[:interaction_data] if args.key?(:interaction_data)
          @length = args[:length] if args.key?(:length)
          @local_id = args[:local_id] if args.key?(:local_id)
          @membership_changed = args[:membership_changed] if args.key?(:membership_changed)
          @read_receipts_settings_metadata = args[:read_receipts_settings_metadata] if args.key?(:read_receipts_settings_metadata)
          @required_message_features_metadata = args[:required_message_features_metadata] if args.key?(:required_message_features_metadata)
          @room_updated = args[:room_updated] if args.key?(:room_updated)
          @server_invalidated = args[:server_invalidated] if args.key?(:server_invalidated)
          @slash_command_metadata = args[:slash_command_metadata] if args.key?(:slash_command_metadata)
          @start_index = args[:start_index] if args.key?(:start_index)
          @type = args[:type] if args.key?(:type)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @upload_metadata = args[:upload_metadata] if args.key?(:upload_metadata)
          @url_metadata = args[:url_metadata] if args.key?(:url_metadata)
          @user_mention_metadata = args[:user_mention_metadata] if args.key?(:user_mention_metadata)
          @video_call_metadata = args[:video_call_metadata] if args.key?(:video_call_metadata)
          @youtube_metadata = args[:youtube_metadata] if args.key?(:youtube_metadata)
        end
      end
      
      # Identifier of an App.
      class AppId
        include Google::Apis::Core::Hashable
      
        # Enum indicating the type of App this is.
        # Corresponds to the JSON property `appType`
        # @return [String]
        attr_accessor :app_type
      
        # Enum indicating which 1P App this is when app_type is GSUITE_APP. Determined &
        # set by the 1P API as a convenience for all users of this identifier(Eg.
        # clients, chime, backend etc.) to map to 1P properties.
        # Corresponds to the JSON property `gsuiteAppType`
        # @return [String]
        attr_accessor :gsuite_app_type
      
        # Numeric identifier of the App. Set to Project number for 1/3P Apps. For
        # Webhook, this is WebhookId. Determined & set by the 1P API from App
        # credentials on the side channel.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_type = args[:app_type] if args.key?(:app_type)
          @gsuite_app_type = args[:gsuite_app_type] if args.key?(:gsuite_app_type)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Next Id: 7
      class AppsDynamiteSharedActivityFeedAnnotationData
        include Google::Apis::Core::Hashable
      
        # Timestamp of when the Activity Feed message that contains this annotation was
        # created. This is roughly when the activity happened, such as when a reaction
        # happened, but will have at least some small delay, since the Activity Feed
        # message is created asynchronously after. This timestamp should only be used
        # for display when the activity create time is not available in the Chat UI,
        # like the time of a reaction.
        # Corresponds to the JSON property `activityFeedMessageCreateTime`
        # @return [String]
        attr_accessor :activity_feed_message_create_time
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `activityFeedMessageId`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :activity_feed_message_id
      
        # Next Id: 5
        # Corresponds to the JSON property `chatItem`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItem]
        attr_accessor :chat_item
      
        # Contains info regarding the updater of an Activity Feed item. Next Id: 8
        # Corresponds to the JSON property `sharedUserInfo`
        # @return [Google::Apis::CloudsearchV1::UserInfo]
        attr_accessor :shared_user_info
      
        # UserId of the AF item updater to show and the updater count to show.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationDataUserInfo]
        attr_accessor :user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_feed_message_create_time = args[:activity_feed_message_create_time] if args.key?(:activity_feed_message_create_time)
          @activity_feed_message_id = args[:activity_feed_message_id] if args.key?(:activity_feed_message_id)
          @chat_item = args[:chat_item] if args.key?(:chat_item)
          @shared_user_info = args[:shared_user_info] if args.key?(:shared_user_info)
          @user_info = args[:user_info] if args.key?(:user_info)
        end
      end
      
      # UserId of the AF item updater to show and the updater count to show.
      class AppsDynamiteSharedActivityFeedAnnotationDataUserInfo
        include Google::Apis::Core::Hashable
      
        # Describes how updater_count_to_show should be used.
        # Corresponds to the JSON property `updaterCountDisplayType`
        # @return [String]
        attr_accessor :updater_count_display_type
      
        # The number of updaters for clients to show, currently set to the total number
        # of updaters minus the one set in updater_to_show.
        # Corresponds to the JSON property `updaterCountToShow`
        # @return [Fixnum]
        attr_accessor :updater_count_to_show
      
        # Primary key for User resource.
        # Corresponds to the JSON property `updaterToShow`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :updater_to_show
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @updater_count_display_type = args[:updater_count_display_type] if args.key?(:updater_count_display_type)
          @updater_count_to_show = args[:updater_count_to_show] if args.key?(:updater_count_to_show)
          @updater_to_show = args[:updater_to_show] if args.key?(:updater_to_show)
        end
      end
      
      # Optional field for apps overriding display info
      class AppsDynamiteSharedAppProfile
        include Google::Apis::Core::Hashable
      
        # Displayed user avatar emoji.
        # Corresponds to the JSON property `avatarEmoji`
        # @return [String]
        attr_accessor :avatar_emoji
      
        # Displayed user avatar url.
        # Corresponds to the JSON property `avatarUrl`
        # @return [String]
        attr_accessor :avatar_url
      
        # Displayed user name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_emoji = args[:avatar_emoji] if args.key?(:avatar_emoji)
          @avatar_url = args[:avatar_url] if args.key?(:avatar_url)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This is the internal version of the API proto at google3/google/chat/v1/
      # gsuite_message_integration.proto Data used to render Assistant suggestions.
      # See go/bullseye-rendering.
      class AppsDynamiteSharedAssistantAnnotationData
        include Google::Apis::Core::Hashable
      
        # Data for an Assistant suggestion.
        # Corresponds to the JSON property `suggestion`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSuggestion]
        attr_accessor :suggestion
      
        # Data for a response to an unfulfillable request.
        # Corresponds to the JSON property `unfulfillable`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantUnfulfillableRequest]
        attr_accessor :unfulfillable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
          @unfulfillable = args[:unfulfillable] if args.key?(:unfulfillable)
        end
      end
      
      # Represents info regarding suggestion debug information.
      class AppsDynamiteSharedAssistantDebugContext
        include Google::Apis::Core::Hashable
      
        # The query that triggered the resulting suggestion.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Data needed to render feedback on the Assistant card
      class AppsDynamiteSharedAssistantFeedbackContext
        include Google::Apis::Core::Hashable
      
        # Specifies a list of feedback chips to show
        # Corresponds to the JSON property `feedbackChips`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContextFeedbackChip>]
        attr_accessor :feedback_chips
      
        # Whether the thumbs feedback is provided
        # Corresponds to the JSON property `thumbsFeedback`
        # @return [String]
        attr_accessor :thumbs_feedback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_chips = args[:feedback_chips] if args.key?(:feedback_chips)
          @thumbs_feedback = args[:thumbs_feedback] if args.key?(:thumbs_feedback)
        end
      end
      
      # Suggestion chips for users to indicate positive or negative feedback
      class AppsDynamiteSharedAssistantFeedbackContextFeedbackChip
        include Google::Apis::Core::Hashable
      
        # What type of chip to display
        # Corresponds to the JSON property `feedbackChipType`
        # @return [String]
        attr_accessor :feedback_chip_type
      
        # Whether the chip has been selected
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_chip_type = args[:feedback_chip_type] if args.key?(:feedback_chip_type)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Session context specific for Assistant suggestions.
      class AppsDynamiteSharedAssistantSessionContext
        include Google::Apis::Core::Hashable
      
        # Unique identifier populated by the contextual request handler for each
        # vertical (Ex: File Suggestions, Smart Scheduling, etc.) that can be used to
        # track sessions end-to-end. May span multiple users (sender-specific).
        # Corresponds to the JSON property `contextualSessionId`
        # @return [String]
        attr_accessor :contextual_session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contextual_session_id = args[:contextual_session_id] if args.key?(:contextual_session_id)
        end
      end
      
      # Data for an Assistant suggestion.
      class AppsDynamiteSharedAssistantSuggestion
        include Google::Apis::Core::Hashable
      
        # Represents info regarding suggestion debug information.
        # Corresponds to the JSON property `debugContext`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantDebugContext]
        attr_accessor :debug_context
      
        # Data needed to render feedback on the Assistant card
        # Corresponds to the JSON property `feedbackContext`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantFeedbackContext]
        attr_accessor :feedback_context
      
        # Data for a FindDocument suggestion type.
        # Corresponds to the JSON property `findDocumentSuggestion`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedFindDocumentSuggestion]
        attr_accessor :find_document_suggestion
      
        # String representation of the suggestions provided.
        # Corresponds to the JSON property `serializedSuggestions`
        # @return [String]
        attr_accessor :serialized_suggestions
      
        # Session context specific for Assistant suggestions.
        # Corresponds to the JSON property `sessionContext`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantSessionContext]
        attr_accessor :session_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_context = args[:debug_context] if args.key?(:debug_context)
          @feedback_context = args[:feedback_context] if args.key?(:feedback_context)
          @find_document_suggestion = args[:find_document_suggestion] if args.key?(:find_document_suggestion)
          @serialized_suggestions = args[:serialized_suggestions] if args.key?(:serialized_suggestions)
          @session_context = args[:session_context] if args.key?(:session_context)
        end
      end
      
      # Data for a response to an unfulfillable request.
      class AppsDynamiteSharedAssistantUnfulfillableRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class AppsDynamiteSharedAvatarInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `emoji`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji]
        attr_accessor :emoji
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emoji = args[:emoji] if args.key?(:emoji)
        end
      end
      
      # Metadata used only in Dynamite backend for uploaded attachments.
      class AppsDynamiteSharedBackendUploadMetadata
        include Google::Apis::Core::Hashable
      
        # Blobstore path for the uploaded attachment
        # Corresponds to the JSON property `blobPath`
        # @return [String]
        attr_accessor :blob_path
      
        # The original file name for the content, not the full path.
        # Corresponds to the JSON property `contentName`
        # @return [String]
        attr_accessor :content_name
      
        # Scotty reported content size by default. http://google3/uploader/agent/
        # scotty_agent.proto?l=101&rcl=140889785
        # Corresponds to the JSON property `contentSize`
        # @return [Fixnum]
        attr_accessor :content_size
      
        # Type is from Scotty's best_guess by default: http://google3/uploader/agent/
        # scotty_agent.proto?l=51&rcl=140889785
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The results of the Data Loss Prevention (DLP) scan of the attachment.
        # DEPRECATED: use dlp_scan_summary instead.
        # Corresponds to the JSON property `dlpScanOutcome`
        # @return [String]
        attr_accessor :dlp_scan_outcome
      
        # A summary of a DLP scan event. This is a summary and should contain the
        # minimum amount of data required to identify and process DLP scans. It is
        # written to Starcast and encoded & returned to the client on attachment upload.
        # Corresponds to the JSON property `dlpScanSummary`
        # @return [Google::Apis::CloudsearchV1::DlpScanSummary]
        attr_accessor :dlp_scan_summary
      
        # Id representing a group that could be a space, a chat, or a direct message
        # space. Which ID is set here will determine which group
        # Corresponds to the JSON property `groupId`
        # @return [Google::Apis::CloudsearchV1::GroupId]
        attr_accessor :group_id
      
        # If the uploaded file is a video that has been transcoded on the client side
        # Next tag: 18
        # Corresponds to the JSON property `isClientSideTranscodedVideo`
        # @return [Boolean]
        attr_accessor :is_client_side_transcoded_video
        alias_method :is_client_side_transcoded_video?, :is_client_side_transcoded_video
      
        # Dimension for the uploaded attachments.
        # Corresponds to the JSON property `originalDimension`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension]
        attr_accessor :original_dimension
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `quoteReplyMessageId`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :quote_reply_message_id
      
        # The SHA256 hash of the attachment bytes.
        # Corresponds to the JSON property `sha256`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256
      
        # User IP address at upload time. Ex. "123.1.2.3". Used by Ares abuse scanning.
        # Corresponds to the JSON property `uploadIp`
        # @return [String]
        attr_accessor :upload_ip
      
        # Timestamp of when user finished uploading the content.
        # Corresponds to the JSON property `uploadTimestampUsec`
        # @return [Fixnum]
        attr_accessor :upload_timestamp_usec
      
        # VideoID of the video attachments. This ID shall meets the Youtube ID format of
        # 16 hex characters. For example, '4c14b8825af6059b' is a valid ID.
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        # Full Blobstore ID for the video thumbnail.
        # Corresponds to the JSON property `videoThumbnailBlobId`
        # @return [String]
        attr_accessor :video_thumbnail_blob_id
      
        # Result for a virus scan.
        # Corresponds to the JSON property `virusScanResult`
        # @return [String]
        attr_accessor :virus_scan_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_path = args[:blob_path] if args.key?(:blob_path)
          @content_name = args[:content_name] if args.key?(:content_name)
          @content_size = args[:content_size] if args.key?(:content_size)
          @content_type = args[:content_type] if args.key?(:content_type)
          @dlp_scan_outcome = args[:dlp_scan_outcome] if args.key?(:dlp_scan_outcome)
          @dlp_scan_summary = args[:dlp_scan_summary] if args.key?(:dlp_scan_summary)
          @group_id = args[:group_id] if args.key?(:group_id)
          @is_client_side_transcoded_video = args[:is_client_side_transcoded_video] if args.key?(:is_client_side_transcoded_video)
          @original_dimension = args[:original_dimension] if args.key?(:original_dimension)
          @quote_reply_message_id = args[:quote_reply_message_id] if args.key?(:quote_reply_message_id)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @upload_ip = args[:upload_ip] if args.key?(:upload_ip)
          @upload_timestamp_usec = args[:upload_timestamp_usec] if args.key?(:upload_timestamp_usec)
          @video_id = args[:video_id] if args.key?(:video_id)
          @video_thumbnail_blob_id = args[:video_thumbnail_blob_id] if args.key?(:video_thumbnail_blob_id)
          @virus_scan_result = args[:virus_scan_result] if args.key?(:virus_scan_result)
        end
      end
      
      # 
      class AppsDynamiteSharedCalendarEventAnnotationData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `calendarEvent`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent]
        attr_accessor :calendar_event
      
        # Creation of an event (no extra data for now).
        # Corresponds to the JSON property `eventCreation`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataEventCreation]
        attr_accessor :event_creation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar_event = args[:calendar_event] if args.key?(:calendar_event)
          @event_creation = args[:event_creation] if args.key?(:event_creation)
        end
      end
      
      # 
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEvent
        include Google::Apis::Core::Hashable
      
        # The end time of the event.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime]
        attr_accessor :end_time
      
        # ID of the event.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # The start time of the event.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime]
        attr_accessor :start_time
      
        # Title of the event (at the time the message was generated).
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @event_id = args[:event_id] if args.key?(:event_id)
          @start_time = args[:start_time] if args.key?(:start_time)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `allDay`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :all_day
      
        # Non all day event.
        # Corresponds to the JSON property `timed`
        # @return [String]
        attr_accessor :timed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_day = args[:all_day] if args.key?(:all_day)
          @timed = args[:timed] if args.key?(:timed)
        end
      end
      
      # Creation of an event (no extra data for now).
      class AppsDynamiteSharedCalendarEventAnnotationDataEventCreation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Data used to render Meet or Google Voice chips in Chat. See go/dynamite-
      # calling-artifacts-in-chat.
      class AppsDynamiteSharedCallAnnotationData
        include Google::Apis::Core::Hashable
      
        # Timestamp when the call ended. Used to render the call ended system message.
        # Corresponds to the JSON property `callEndedTimestamp`
        # @return [String]
        attr_accessor :call_ended_timestamp
      
        # Metadata required to generate call artifacts. This can either be the metadata
        # for a Meet or, in the future, Google Voice call.
        # Corresponds to the JSON property `callMetadata`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCallMetadata]
        attr_accessor :call_metadata
      
        # Required. Indicates the call status for the space. Used to determine the chip'
        # s state.
        # Corresponds to the JSON property `callStatus`
        # @return [String]
        attr_accessor :call_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_ended_timestamp = args[:call_ended_timestamp] if args.key?(:call_ended_timestamp)
          @call_metadata = args[:call_metadata] if args.key?(:call_metadata)
          @call_status = args[:call_status] if args.key?(:call_status)
        end
      end
      
      # Metadata required to generate call artifacts. This can either be the metadata
      # for a Meet or, in the future, Google Voice call.
      class AppsDynamiteSharedCallMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata specific for a Meet call that are required to generate call artifacts.
        # Corresponds to the JSON property `meetMetadata`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedMeetMetadata]
        attr_accessor :meet_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meet_metadata = args[:meet_metadata] if args.key?(:meet_metadata)
        end
      end
      
      # Card click which identifies one suggestion provided by the app/bot.
      class AppsDynamiteSharedCardClickSuggestion
        include Google::Apis::Core::Hashable
      
        # Identify the button/action that created the suggestion. A simple example would
        # be a card button within the stream, or the id which can identify a specific
        # suggestion.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `suggestionMessageId`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :suggestion_message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @suggestion_message_id = args[:suggestion_message_id] if args.key?(:suggestion_message_id)
        end
      end
      
      # Next Id: 5
      class AppsDynamiteSharedChatItem
        include Google::Apis::Core::Hashable
      
        # Information needed to render the specific type of feed item.
        # Corresponds to the JSON property `activityInfo`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfo>]
        attr_accessor :activity_info
      
        # Information about the space that the item originated from. This will be used
        # to display Activity Feed items from rooms, and only contain the necessary
        # information, such as the space name and group attributes. NEXT TAG: 6
        # Corresponds to the JSON property `groupInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemGroupInfo]
        attr_accessor :group_info
      
        # Information that references a Dynamite chat message. This is only used for
        # Activity Feed messages.
        # Corresponds to the JSON property `messageInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageInfo]
        attr_accessor :message_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_info = args[:activity_info] if args.key?(:activity_info)
          @group_info = args[:group_info] if args.key?(:group_info)
          @message_info = args[:message_info] if args.key?(:message_info)
        end
      end
      
      # 
      class AppsDynamiteSharedChatItemActivityInfo
        include Google::Apis::Core::Hashable
      
        # Existence of this attribute indicates that the AF item is for a message nudge
        # item.
        # Corresponds to the JSON property `feedItemNudge`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemNudge]
        attr_accessor :feed_item_nudge
      
        # Existence of this attribute indicates that the AF item is for message
        # reactions, but it is intentionally left empty since the list of reactions can
        # be found in the top-level Message.Reactions.
        # Corresponds to the JSON property `feedItemReactions`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemReactions]
        attr_accessor :feed_item_reactions
      
        # Existence of this attribute indicates that the AF item is for thread reply.
        # Corresponds to the JSON property `feedItemThreadReply`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply]
        attr_accessor :feed_item_thread_reply
      
        # Existence of this attribute indicates that the AF item is for a user mention
        # item.
        # Corresponds to the JSON property `feedItemUserMention`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention]
        attr_accessor :feed_item_user_mention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feed_item_nudge = args[:feed_item_nudge] if args.key?(:feed_item_nudge)
          @feed_item_reactions = args[:feed_item_reactions] if args.key?(:feed_item_reactions)
          @feed_item_thread_reply = args[:feed_item_thread_reply] if args.key?(:feed_item_thread_reply)
          @feed_item_user_mention = args[:feed_item_user_mention] if args.key?(:feed_item_user_mention)
        end
      end
      
      # Existence of this attribute indicates that the AF item is for a message nudge
      # item.
      class AppsDynamiteSharedChatItemActivityInfoFeedItemNudge
        include Google::Apis::Core::Hashable
      
        # Nudge type of the nudge feed item.
        # Corresponds to the JSON property `nudgeType`
        # @return [String]
        attr_accessor :nudge_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nudge_type = args[:nudge_type] if args.key?(:nudge_type)
        end
      end
      
      # Existence of this attribute indicates that the AF item is for message
      # reactions, but it is intentionally left empty since the list of reactions can
      # be found in the top-level Message.Reactions.
      class AppsDynamiteSharedChatItemActivityInfoFeedItemReactions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Existence of this attribute indicates that the AF item is for thread reply.
      class AppsDynamiteSharedChatItemActivityInfoFeedItemThreadReply
        include Google::Apis::Core::Hashable
      
        # Reply type of the thread reply feed item. The field is not persisted in
        # storage. It's populated when constructing Activity Feed payload.
        # Corresponds to the JSON property `replyType`
        # @return [String]
        attr_accessor :reply_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reply_type = args[:reply_type] if args.key?(:reply_type)
        end
      end
      
      # Existence of this attribute indicates that the AF item is for a user mention
      # item.
      class AppsDynamiteSharedChatItemActivityInfoFeedItemUserMention
        include Google::Apis::Core::Hashable
      
        # User mention type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information about the space that the item originated from. This will be used
      # to display Activity Feed items from rooms, and only contain the necessary
      # information, such as the space name and group attributes. NEXT TAG: 6
      class AppsDynamiteSharedChatItemGroupInfo
        include Google::Apis::Core::Hashable
      
        # This is needed to determine what type of group the source message came from to
        # support click-to-source.
        # Corresponds to the JSON property `attributeCheckerGroupType`
        # @return [String]
        attr_accessor :attribute_checker_group_type
      
        # 
        # Corresponds to the JSON property `groupName`
        # @return [String]
        attr_accessor :group_name
      
        # Timestamp of when the group containing the message has been read by the user.
        # Corresponds to the JSON property `groupReadTimeUsec`
        # @return [Fixnum]
        attr_accessor :group_read_time_usec
      
        # Indicates whether the group has inline replies enabled. If enabled, clients
        # will render the space with inline replies.
        # Corresponds to the JSON property `inlineThreadingEnabled`
        # @return [Boolean]
        attr_accessor :inline_threading_enabled
        alias_method :inline_threading_enabled?, :inline_threading_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_checker_group_type = args[:attribute_checker_group_type] if args.key?(:attribute_checker_group_type)
          @group_name = args[:group_name] if args.key?(:group_name)
          @group_read_time_usec = args[:group_read_time_usec] if args.key?(:group_read_time_usec)
          @inline_threading_enabled = args[:inline_threading_enabled] if args.key?(:inline_threading_enabled)
        end
      end
      
      # Denotes a type of content report a user can send.
      class AppsDynamiteSharedContentReportType
        include Google::Apis::Core::Hashable
      
        # Required. Google-defined system violation, covering the most common violations.
        # Corresponds to the JSON property `systemViolation`
        # @return [String]
        attr_accessor :system_violation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @system_violation = args[:system_violation] if args.key?(:system_violation)
        end
      end
      
      # Proto representation of a custom emoji. May be used in both APIs and in
      # Spanner, but certain fields should be restricted to one or the other. See the
      # per-field documentation for details. NEXT_TAG: 14
      class AppsDynamiteSharedCustomEmoji
        include Google::Apis::Core::Hashable
      
        # ID for the underlying image data in Blobstore. This field should *only* be
        # present in Spanner or within the server, but should not be exposed in public
        # APIs.
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # Content type of the file used to upload the emoji. Used for takeout. Written
        # to Spanner when the emoji is created.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Time when the Emoji was created, in microseconds. This field may be present in
        # Spanner, within the server, or in public APIs.
        # Corresponds to the JSON property `createTimeMicros`
        # @return [Fixnum]
        attr_accessor :create_time_micros
      
        # Primary key for User resource.
        # Corresponds to the JSON property `creatorUserId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :creator_user_id
      
        # Time when the emoji was deleted, in microseconds. This field may be present in
        # Spanner, within the server, or in public APIs. Only present if the emoji has
        # been deleted.
        # Corresponds to the JSON property `deleteTimeMicros`
        # @return [Fixnum]
        attr_accessor :delete_time_micros
      
        # Output only. A short-lived URL clients can use for directly accessing a custom
        # emoji image. This field is intended for API consumption, and should *never* be
        # persisted to Spanner.
        # Corresponds to the JSON property `ephemeralUrl`
        # @return [String]
        attr_accessor :ephemeral_url
      
        # Represents a GSuite customer ID. Obfuscated with CustomerIdObfuscator.
        # Corresponds to the JSON property `ownerCustomerId`
        # @return [Google::Apis::CloudsearchV1::CustomerId]
        attr_accessor :owner_customer_id
      
        # Opaque token that clients use to construct the URL for accessing the custom
        # emoji’s image data. This field is intended for API consumption, and should *
        # never* be persisted to Spanner.
        # Corresponds to the JSON property `readToken`
        # @return [String]
        attr_accessor :read_token
      
        # User-provided, human-readable ID for the custom emoji. Users are expected to
        # observe this field in the UI instead of the UUID. This shortcode should be
        # unique within an organization, but has no global uniqueness guarantees, unlike
        # the UUID. This field should *never* be persisted to Spanner.
        # Corresponds to the JSON property `shortcode`
        # @return [String]
        attr_accessor :shortcode
      
        # Snapshot of the current state of the emoji, which may differ from the source-
        # of-truth in the CustomEmojis table. This field should *never* be persisted to
        # Spanner.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `updateTimeMicros`
        # @return [Fixnum]
        attr_accessor :update_time_micros
      
        # Unique key for a custom emoji resource. Required. This field is *always*
        # populated.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @content_type = args[:content_type] if args.key?(:content_type)
          @create_time_micros = args[:create_time_micros] if args.key?(:create_time_micros)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @delete_time_micros = args[:delete_time_micros] if args.key?(:delete_time_micros)
          @ephemeral_url = args[:ephemeral_url] if args.key?(:ephemeral_url)
          @owner_customer_id = args[:owner_customer_id] if args.key?(:owner_customer_id)
          @read_token = args[:read_token] if args.key?(:read_token)
          @shortcode = args[:shortcode] if args.key?(:shortcode)
          @state = args[:state] if args.key?(:state)
          @update_time_micros = args[:update_time_micros] if args.key?(:update_time_micros)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Dimension for the uploaded attachments.
      class AppsDynamiteSharedDimension
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # 
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # LINT.IfChange
      class AppsDynamiteSharedDlpMetricsMetadata
        include Google::Apis::Core::Hashable
      
        # [required] Describes the DLP status of message send and attachment upload
        # events.
        # Corresponds to the JSON property `dlpStatus`
        # @return [String]
        attr_accessor :dlp_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dlp_status = args[:dlp_status] if args.key?(:dlp_status)
        end
      end
      
      # Data for rendering a document.
      class AppsDynamiteSharedDocument
        include Google::Apis::Core::Hashable
      
        # Unique file ID.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # Data for rendering a justification for a document.
        # Corresponds to the JSON property `justification`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedJustification]
        attr_accessor :justification
      
        # Time the document was last modified.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Used to determine which icon to render (e.g. docs, slides, sheets)
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Title of the document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL of the document.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_id = args[:file_id] if args.key?(:file_id)
          @justification = args[:justification] if args.key?(:justification)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class AppsDynamiteSharedEmoji
        include Google::Apis::Core::Hashable
      
        # Proto representation of a custom emoji. May be used in both APIs and in
        # Spanner, but certain fields should be restricted to one or the other. See the
        # per-field documentation for details. NEXT_TAG: 14
        # Corresponds to the JSON property `customEmoji`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji]
        attr_accessor :custom_emoji
      
        # A basic emoji represented by a unicode string.
        # Corresponds to the JSON property `unicode`
        # @return [String]
        attr_accessor :unicode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emoji = args[:custom_emoji] if args.key?(:custom_emoji)
          @unicode = args[:unicode] if args.key?(:unicode)
        end
      end
      
      # Data for a FindDocument suggestion type.
      class AppsDynamiteSharedFindDocumentSuggestion
        include Google::Apis::Core::Hashable
      
        # List of documents to render as suggestions.
        # Corresponds to the JSON property `documentSuggestions`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedDocument>]
        attr_accessor :document_suggestions
      
        # Whether to show the action buttons in the card for the suggestions.
        # Corresponds to the JSON property `showActionButtons`
        # @return [Boolean]
        attr_accessor :show_action_buttons
        alias_method :show_action_buttons?, :show_action_buttons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_suggestions = args[:document_suggestions] if args.key?(:document_suggestions)
          @show_action_buttons = args[:show_action_buttons] if args.key?(:show_action_buttons)
        end
      end
      
      # NEXT TAG: 3 A GroupDetails proto will store the information pertaining to
      # single Group.
      class AppsDynamiteSharedGroupDetails
        include Google::Apis::Core::Hashable
      
        # A simple text that describes the purpose of a single Group, the general theme
        # of the topics to be posted and/or the denominator of the Group participants.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A simple text describing the rules and expectations from members when
        # participating in conversation.
        # Corresponds to the JSON property `guidelines`
        # @return [String]
        attr_accessor :guidelines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @guidelines = args[:guidelines] if args.key?(:guidelines)
        end
      end
      
      # 
      class AppsDynamiteSharedGroupVisibility
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Data for rendering a justification for a document.
      class AppsDynamiteSharedJustification
        include Google::Apis::Core::Hashable
      
        # Time the action took place.
        # Corresponds to the JSON property `actionTime`
        # @return [String]
        attr_accessor :action_time
      
        # Type of action performed on the document.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # Data for rendering a person associated with a document.
        # Corresponds to the JSON property `documentOwner`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedJustificationPerson]
        attr_accessor :document_owner
      
        # Words or phrases from the user's query that describes the document content. (
        # Ex: Users query is "Can you share the document about Bullseye?" the extracted
        # topic would be "Bullseye").
        # Corresponds to the JSON property `topics`
        # @return [Array<String>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_time = args[:action_time] if args.key?(:action_time)
          @action_type = args[:action_type] if args.key?(:action_type)
          @document_owner = args[:document_owner] if args.key?(:document_owner)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # Data for rendering a person associated with a document.
      class AppsDynamiteSharedJustificationPerson
        include Google::Apis::Core::Hashable
      
        # Whether the person is the recipient of the suggestions.
        # Corresponds to the JSON property `isRecipient`
        # @return [Boolean]
        attr_accessor :is_recipient
        alias_method :is_recipient?, :is_recipient
      
        # Primary key for User resource.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_recipient = args[:is_recipient] if args.key?(:is_recipient)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Metadata specific for a Meet call that are required to generate call artifacts.
      class AppsDynamiteSharedMeetMetadata
        include Google::Apis::Core::Hashable
      
        # Required. A globally unique code (e.g. "cxv-zbgj-wzw") that points to a
        # meeting space. Note: Meeting codes may be regenerated, which will cause old
        # meeting codes to become invalid.
        # Corresponds to the JSON property `meetingCode`
        # @return [String]
        attr_accessor :meeting_code
      
        # Required. A URL, in the format "https://meet.google.com/*" (e.g. https://meet.
        # google.com/cxv-zbgj-wzw), to identify and access the meeting space.
        # Corresponds to the JSON property `meetingUrl`
        # @return [String]
        attr_accessor :meeting_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meeting_code = args[:meeting_code] if args.key?(:meeting_code)
          @meeting_url = args[:meeting_url] if args.key?(:meeting_url)
        end
      end
      
      # Information that references a Dynamite chat message. This is only used for
      # Activity Feed messages.
      class AppsDynamiteSharedMessageInfo
        include Google::Apis::Core::Hashable
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `messageId`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :message_id
      
        # The type of the source chat message.
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        # Timestamp of when the topic containing the message has been read by the user.
        # This is populated if the message references an inline reply, in which case the
        # space may be marked as read but the topic still has unread messages.
        # Corresponds to the JSON property `topicReadTimeUsec`
        # @return [Fixnum]
        attr_accessor :topic_read_time_usec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_id = args[:message_id] if args.key?(:message_id)
          @message_type = args[:message_type] if args.key?(:message_type)
          @topic_read_time_usec = args[:topic_read_time_usec] if args.key?(:topic_read_time_usec)
        end
      end
      
      # The payload(restricted to 1P applications) to be stored with a specific
      # message.
      class AppsDynamiteSharedMessageIntegrationPayload
        include Google::Apis::Core::Hashable
      
        # Pantheon project number used to identify the calling app.
        # Corresponds to the JSON property `projectNumber`
        # @return [Fixnum]
        attr_accessor :project_number
      
        # A payload containing Tasks metadata for rendering a live card. Currently not
        # used by the Tasks integration.
        # Corresponds to the JSON property `tasksMessageIntegrationPayload`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksMessageIntegrationPayload]
        attr_accessor :tasks_message_integration_payload
      
        # An enum indicating which 1P application's payload this is. This field is
        # required to add 1P payload.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_number = args[:project_number] if args.key?(:project_number)
          @tasks_message_integration_payload = args[:tasks_message_integration_payload] if args.key?(:tasks_message_integration_payload)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Contains info about the entity that something is, or is owned by.
      class AppsDynamiteSharedOrganizationInfo
        include Google::Apis::Core::Hashable
      
        # Intentionally empty. Used to disambiguate consumer and customer use cases in
        # oneof below.
        # Corresponds to the JSON property `consumerInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoConsumerInfo]
        attr_accessor :consumer_info
      
        # 
        # Corresponds to the JSON property `customerInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfoCustomerInfo]
        attr_accessor :customer_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_info = args[:consumer_info] if args.key?(:consumer_info)
          @customer_info = args[:customer_info] if args.key?(:customer_info)
        end
      end
      
      # Intentionally empty. Used to disambiguate consumer and customer use cases in
      # oneof below.
      class AppsDynamiteSharedOrganizationInfoConsumerInfo
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class AppsDynamiteSharedOrganizationInfoCustomerInfo
        include Google::Apis::Core::Hashable
      
        # Represents a GSuite customer ID. Obfuscated with CustomerIdObfuscator.
        # Corresponds to the JSON property `customerId`
        # @return [Google::Apis::CloudsearchV1::CustomerId]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # Stores the suggestion provided by apps/bots.
      class AppsDynamiteSharedOriginAppSuggestion
        include Google::Apis::Core::Hashable
      
        # Identifier of an App.
        # Corresponds to the JSON property `appId`
        # @return [Google::Apis::CloudsearchV1::AppId]
        attr_accessor :app_id
      
        # Card click which identifies one suggestion provided by the app/bot.
        # Corresponds to the JSON property `cardClickSuggestion`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCardClickSuggestion]
        attr_accessor :card_click_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @card_click_suggestion = args[:card_click_suggestion] if args.key?(:card_click_suggestion)
        end
      end
      
      # 
      class AppsDynamiteSharedPhoneNumber
        include Google::Apis::Core::Hashable
      
        # The phone number type, e.g., work, mobile, etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The actual phone number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class AppsDynamiteSharedReaction
        include Google::Apis::Core::Hashable
      
        # The total number of users who have reacted.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # When the first emoji of this type was added.
        # Corresponds to the JSON property `createTimestamp`
        # @return [Fixnum]
        attr_accessor :create_timestamp
      
        # Whether the current user reacted using this emoji. Note: Unlike most
        # properties of messages, this is different per-user.
        # Corresponds to the JSON property `currentUserParticipated`
        # @return [Boolean]
        attr_accessor :current_user_participated
        alias_method :current_user_participated?, :current_user_participated
      
        # 
        # Corresponds to the JSON property `emoji`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedEmoji]
        attr_accessor :emoji
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @create_timestamp = args[:create_timestamp] if args.key?(:create_timestamp)
          @current_user_participated = args[:current_user_participated] if args.key?(:current_user_participated)
          @emoji = args[:emoji] if args.key?(:emoji)
        end
      end
      
      # The settings of retention period of a message or topic.
      class AppsDynamiteSharedRetentionSettings
        include Google::Apis::Core::Hashable
      
        # The timestamp after which the message/topic should be removed, in microseconds
        # since the epoch, when state == EPHEMERAL_ONE_DAY. The value should not be set
        # in other cases.
        # Corresponds to the JSON property `expiryTimestamp`
        # @return [Fixnum]
        attr_accessor :expiry_timestamp
      
        # The retention state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiry_timestamp = args[:expiry_timestamp] if args.key?(:expiry_timestamp)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains info on membership count for member types: HUMAN_USER, APP_USER &
      # ROSTER_MEMBER different states: INVITED, JOINED
      class AppsDynamiteSharedSegmentedMembershipCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `memberType`
        # @return [String]
        attr_accessor :member_type
      
        # count of members with given type and state
        # Corresponds to the JSON property `membershipCount`
        # @return [Fixnum]
        attr_accessor :membership_count
      
        # 
        # Corresponds to the JSON property `membershipState`
        # @return [String]
        attr_accessor :membership_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member_type = args[:member_type] if args.key?(:member_type)
          @membership_count = args[:membership_count] if args.key?(:membership_count)
          @membership_state = args[:membership_state] if args.key?(:membership_state)
        end
      end
      
      # 
      class AppsDynamiteSharedSegmentedMembershipCounts
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCount>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Defines the representation of a single matching space.
      class AppsDynamiteSharedSpaceInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `avatarInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAvatarInfo]
        attr_accessor :avatar_info
      
        # 
        # Corresponds to the JSON property `avatarUrl`
        # @return [String]
        attr_accessor :avatar_url
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Id representing a group that could be a space, a chat, or a direct message
        # space. Which ID is set here will determine which group
        # Corresponds to the JSON property `groupId`
        # @return [Google::Apis::CloudsearchV1::GroupId]
        attr_accessor :group_id
      
        # The email address of the user that invited the calling user to the room, if
        # available. This field will only be populated for direct invites, it will be
        # empty if the user was indirectly invited to the group.
        # Corresponds to the JSON property `inviterEmail`
        # @return [String]
        attr_accessor :inviter_email
      
        # Whether this is a space that enables guest access
        # Corresponds to the JSON property `isExternal`
        # @return [Boolean]
        attr_accessor :is_external
        alias_method :is_external?, :is_external
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated. Use segmented_membership_counts instead which also includes other
        # counts such as rosters.
        # Corresponds to the JSON property `numMembers`
        # @return [Fixnum]
        attr_accessor :num_members
      
        # Member counts object with types of members and their respective counts.
        # Corresponds to the JSON property `segmentedMembershipCounts`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts]
        attr_accessor :segmented_membership_counts
      
        # searching user's membership state in this space
        # Corresponds to the JSON property `userMembershipState`
        # @return [String]
        attr_accessor :user_membership_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_info = args[:avatar_info] if args.key?(:avatar_info)
          @avatar_url = args[:avatar_url] if args.key?(:avatar_url)
          @description = args[:description] if args.key?(:description)
          @group_id = args[:group_id] if args.key?(:group_id)
          @inviter_email = args[:inviter_email] if args.key?(:inviter_email)
          @is_external = args[:is_external] if args.key?(:is_external)
          @name = args[:name] if args.key?(:name)
          @num_members = args[:num_members] if args.key?(:num_members)
          @segmented_membership_counts = args[:segmented_membership_counts] if args.key?(:segmented_membership_counts)
          @user_membership_state = args[:user_membership_state] if args.key?(:user_membership_state)
        end
      end
      
      # This is the internal version of the API proto at google3/google/chat/v1/
      # gsuite_message_integration.proto
      class AppsDynamiteSharedTasksAnnotationData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `assigneeChange`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataAssigneeChange]
        attr_accessor :assignee_change
      
        # 
        # Corresponds to the JSON property `completionChange`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCompletionChange]
        attr_accessor :completion_change
      
        # 
        # Corresponds to the JSON property `creation`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataCreation]
        attr_accessor :creation
      
        # 
        # Corresponds to the JSON property `deletionChange`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataDeletionChange]
        attr_accessor :deletion_change
      
        # ID of task. Will be used to create deep links to Tasks.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        # All relevant task properties for a Chat message.
        # Corresponds to the JSON property `taskProperties`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataTaskProperties]
        attr_accessor :task_properties
      
        # Used for task card attachments on custom user messages that should be kept as
        # is without generating an i18n event message, e.g. the user starts a
        # conversation from an existing task. IMPORTANT: please don't populate this
        # field yet as it could break existing flows until it's implemented. See code at
        # http://shortn/_CM74CdENMx used by http://shortn/_5o85POJY8Q.
        # Corresponds to the JSON property `userDefinedMessage`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage]
        attr_accessor :user_defined_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee_change = args[:assignee_change] if args.key?(:assignee_change)
          @completion_change = args[:completion_change] if args.key?(:completion_change)
          @creation = args[:creation] if args.key?(:creation)
          @deletion_change = args[:deletion_change] if args.key?(:deletion_change)
          @task_id = args[:task_id] if args.key?(:task_id)
          @task_properties = args[:task_properties] if args.key?(:task_properties)
          @user_defined_message = args[:user_defined_message] if args.key?(:user_defined_message)
        end
      end
      
      # 
      class AppsDynamiteSharedTasksAnnotationDataAssigneeChange
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `oldAssignee`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :old_assignee
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @old_assignee = args[:old_assignee] if args.key?(:old_assignee)
        end
      end
      
      # 
      class AppsDynamiteSharedTasksAnnotationDataCompletionChange
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class AppsDynamiteSharedTasksAnnotationDataCreation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class AppsDynamiteSharedTasksAnnotationDataDeletionChange
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # All relevant task properties for a Chat message.
      class AppsDynamiteSharedTasksAnnotationDataTaskProperties
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `assignee`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :assignee
      
        # Whether the task is marked as completed.
        # Corresponds to the JSON property `completed`
        # @return [Boolean]
        attr_accessor :completed
        alias_method :completed?, :completed
      
        # Whether the task is marked as deleted.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The description of the task. If Task original description's length is greater
        # than 1024, then Task BE sends the truncated description to Dynamite
        # Integration Server.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :start_date
      
        # Set if the task has both a date and a time. Source of truth in Tasks BE: http:/
        # /shortn/_u6cr0F5ttE
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The title of the task.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @completed = args[:completed] if args.key?(:completed)
          @deleted = args[:deleted] if args.key?(:deleted)
          @description = args[:description] if args.key?(:description)
          @start_date = args[:start_date] if args.key?(:start_date)
          @start_time = args[:start_time] if args.key?(:start_time)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Used for task card attachments on custom user messages that should be kept as
      # is without generating an i18n event message, e.g. the user starts a
      # conversation from an existing task. IMPORTANT: please don't populate this
      # field yet as it could break existing flows until it's implemented. See code at
      # http://shortn/_CM74CdENMx used by http://shortn/_5o85POJY8Q.
      class AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A payload containing Tasks metadata for rendering a live card. Currently not
      # used by the Tasks integration.
      class AppsDynamiteSharedTasksMessageIntegrationPayload
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # User-block relationship
      class AppsDynamiteSharedUserBlockRelationship
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hasBlockedRequester`
        # @return [Boolean]
        attr_accessor :has_blocked_requester
        alias_method :has_blocked_requester?, :has_blocked_requester
      
        # 
        # Corresponds to the JSON property `isBlockedByRequester`
        # @return [Boolean]
        attr_accessor :is_blocked_by_requester
        alias_method :is_blocked_by_requester?, :is_blocked_by_requester
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_blocked_requester = args[:has_blocked_requester] if args.key?(:has_blocked_requester)
          @is_blocked_by_requester = args[:is_blocked_by_requester] if args.key?(:is_blocked_by_requester)
        end
      end
      
      # Reference to a transcoded video attachment.
      class AppsDynamiteSharedVideoReference
        include Google::Apis::Core::Hashable
      
        # Available transcode format. Value is defined in video/storage/proto/
        # content_header.proto
        # Corresponds to the JSON property `format`
        # @return [Array<Fixnum>]
        attr_accessor :format
      
        # Transcode status
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # An action that describes the behavior when the form is submitted. For example,
      # an Apps Script can be invoked to handle the form.
      class AppsDynamiteStorageAction
        include Google::Apis::Core::Hashable
      
        # Apps Script function to invoke when the containing element is clicked/
        # activated.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # 
        # Corresponds to the JSON property `interaction`
        # @return [String]
        attr_accessor :interaction
      
        # 
        # Corresponds to the JSON property `loadIndicator`
        # @return [String]
        attr_accessor :load_indicator
      
        # List of action parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageActionActionParameter>]
        attr_accessor :parameters
      
        # Indicates whether form values persist after the action. The default value is `
        # false`. If `true`, form values remain after the action is triggered. When
        # using [LoadIndicator.NONE](workspace/add-ons/reference/rpc/google.apps.card.v1#
        # loadindicator) for actions, `persist_values` = `true`is recommended, as it
        # ensures that any changes made by the user after form or on change actions are
        # sent to the server are not overwritten by the response. If `false`, the form
        # values are cleared when the action is triggered. When `persist_values` is set
        # to `false`, it is strongly recommended that the card use [LoadIndicator.
        # SPINNER](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
        # for all actions, as this locks the UI to ensure no changes are made by the
        # user while the action is being processed.
        # Corresponds to the JSON property `persistValues`
        # @return [Boolean]
        attr_accessor :persist_values
        alias_method :persist_values?, :persist_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @interaction = args[:interaction] if args.key?(:interaction)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @parameters = args[:parameters] if args.key?(:parameters)
          @persist_values = args[:persist_values] if args.key?(:persist_values)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze 1 day, snooze next
      # week. You might use action method = snooze(), passing the snooze type and
      # snooze time in the list of string parameters.
      class AppsDynamiteStorageActionActionParameter
        include Google::Apis::Core::Hashable
      
        # The name of the parameter for the action script.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the parameter.
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
      
      # Represents the complete border style applied to widgets.
      class AppsDynamiteStorageBorderStyle
        include Google::Apis::Core::Hashable
      
        # The corner radius for the border.
        # Corresponds to the JSON property `cornerRadius`
        # @return [Fixnum]
        attr_accessor :corner_radius
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `strokeColor`
        # @return [Google::Apis::CloudsearchV1::Color]
        attr_accessor :stroke_color
      
        # The border type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corner_radius = args[:corner_radius] if args.key?(:corner_radius)
          @stroke_color = args[:stroke_color] if args.key?(:stroke_color)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A button. Can be a text button or an image button.
      class AppsDynamiteStorageButton
        include Google::Apis::Core::Hashable
      
        # The alternative text used for accessibility. Has no effect when an icon is set;
        # use `icon.alt_text` instead.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::CloudsearchV1::Color]
        attr_accessor :color
      
        # If true, the button is displayed in a disabled state and doesn't respond to
        # user actions.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The icon image.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon]
        attr_accessor :icon
      
        # The action to perform when the button is clicked.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick]
        attr_accessor :on_click
      
        # The text of the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @color = args[:color] if args.key?(:color)
          @disabled = args[:disabled] if args.key?(:disabled)
          @icon = args[:icon] if args.key?(:icon)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A list of buttons layed out horizontally.
      class AppsDynamiteStorageButtonList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageButton>]
        attr_accessor :buttons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
        end
      end
      
      # A card is a UI element that can contain UI widgets such as text and images.
      # For more information, see Cards . For example, the following JSON creates a
      # card that has a header with the name, position, icons, and link for a contact,
      # followed by a section with contact information like email and phone number. ```
      # ` "header": ` "title": "Heba Salam", "subtitle": "Software Engineer", "
      # imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/heba_salam.
      # png", "imageAltText": "Avatar for Heba Salam" `, "sections" : [ ` "header": "
      # Contact Info", "widgets": [ ` "decorated_text": ` "icon": ` "knownIcon": "
      # EMAIL" `, "content": "heba.salam@example.com" ` `, ` "decoratedText": ` "icon":
      # ` "knownIcon": "PERSON" `, "content": "Online" ` `, ` "decoratedText": ` "
      # icon": ` "knownIcon": "PHONE" `, "content": "+1 (555) 555-1234" ` `, ` "
      # buttons": [ ` "textButton": ` "text": "Share", `, "onClick": ` "openLink": ` "
      # url": "https://example.com/share" ` ` `, ` "textButton": ` "text": "Edit", `, "
      # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
      # viewType", "value": "EDIT" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` ` `
      # ] ` ], "collapsible": true, "uncollapsibleWidgetsCount": 3 ` ], "cardActions":
      # [ ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https://
      # example.com/feedback" ` ` ` ], "name": "contact-card-K3wB6arF2H9L" ` ```
      class AppsDynamiteStorageCard
        include Google::Apis::Core::Hashable
      
        # The actions of this card. They are added to a card's generated toolbar menu.
        # For example, the following JSON constructs a card action menu with Settings
        # and Send Feedback options: ``` "card_actions": [ ` "actionLabel": "Setting", "
        # onClick": ` "action": ` "functionName": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "SETTING" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` `
        # `, ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https:
        # //example.com/feedback" ` ` ` ] ```
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardAction>]
        attr_accessor :card_actions
      
        # The header of the card. A header usually contains a title and an image.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageCardCardHeader]
        attr_accessor :header
      
        # Name of the card, which is used as a identifier for the card in card
        # navigation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sections are separated by a line divider.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageCardSection>]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_actions = args[:card_actions] if args.key?(:card_actions)
          @header = args[:header] if args.key?(:header)
          @name = args[:name] if args.key?(:name)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # A card action is the action associated with the card. For example, an invoice
      # card might include actions such as delete invoice, email invoice, or open the
      # invoice in a browser.
      class AppsDynamiteStorageCardCardAction
        include Google::Apis::Core::Hashable
      
        # The label that displays as the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # The onclick action for this action item.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_label = args[:action_label] if args.key?(:action_label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class AppsDynamiteStorageCardCardHeader
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image which is used for accessibility.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # The image's type.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The URL of the image in the card header.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The subtitle of the card header.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title of the card header. The title must be specified. The header has a
        # fixed height: if both a title and subtitle are specified, each takes up one
        # line. If only the title is specified, it takes up both lines.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_alt_text = args[:image_alt_text] if args.key?(:image_alt_text)
          @image_type = args[:image_type] if args.key?(:image_type)
          @image_url = args[:image_url] if args.key?(:image_url)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A section contains a collection of widgets that are rendered vertically in the
      # order that they are specified. Across all platforms, cards have a narrow fixed
      # width, so there is currently no need for layout properties, for example, float.
      class AppsDynamiteStorageCardSection
        include Google::Apis::Core::Hashable
      
        # Indicates whether this section is collapsible. If a section is collapsible,
        # the description must be given.
        # Corresponds to the JSON property `collapsible`
        # @return [Boolean]
        attr_accessor :collapsible
        alias_method :collapsible?, :collapsible
      
        # The header of the section. Formatted text is supported.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The number of uncollapsible widgets. For example, when a section contains five
        # widgets and the `numUncollapsibleWidget` is set to `2`, the first two widgets
        # are always shown and the last three are collapsed as default. The `
        # numUncollapsibleWidget` is taken into account only when collapsible is set to `
        # true`.
        # Corresponds to the JSON property `uncollapsibleWidgetsCount`
        # @return [Fixnum]
        attr_accessor :uncollapsible_widgets_count
      
        # A section must contain at least 1 widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageWidget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapsible = args[:collapsible] if args.key?(:collapsible)
          @header = args[:header] if args.key?(:header)
          @uncollapsible_widgets_count = args[:uncollapsible_widgets_count] if args.key?(:uncollapsible_widgets_count)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # Represents a Columns widget that displays a single row of columns.
      class AppsDynamiteStorageColumns
        include Google::Apis::Core::Hashable
      
        # Each card supports up to 2 columns.
        # Corresponds to the JSON property `columnItems`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumn>]
        attr_accessor :column_items
      
        # Controls how the column resizes based on screen width.
        # Corresponds to the JSON property `wrapStyle`
        # @return [String]
        attr_accessor :wrap_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_items = args[:column_items] if args.key?(:column_items)
          @wrap_style = args[:wrap_style] if args.key?(:wrap_style)
        end
      end
      
      # Represents a Column that consists of widgets stacked vertically.
      class AppsDynamiteStorageColumnsColumn
        include Google::Apis::Core::Hashable
      
        # The horizontal alignment of the column.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # Specifies how the column content is sized horizontally.
        # Corresponds to the JSON property `horizontalSizeStyle`
        # @return [String]
        attr_accessor :horizontal_size_style
      
        # The vertical alignment of the column.
        # Corresponds to the JSON property `verticalAlignment`
        # @return [String]
        attr_accessor :vertical_alignment
      
        # LINT.ThenChange(//depot/google3/google/apps/card/v1/card.proto) Array of
        # widgets included in the column.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageColumnsColumnWidgets>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @horizontal_size_style = args[:horizontal_size_style] if args.key?(:horizontal_size_style)
          @vertical_alignment = args[:vertical_alignment] if args.key?(:vertical_alignment)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # LINT.IfChange The `column` widget can contain these widgets.
      class AppsDynamiteStorageColumnsColumnWidgets
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally.
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList]
        attr_accessor :button_list
      
        # The widget that lets users to specify a date and time.
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget or a button
        # after the text.
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText]
        attr_accessor :decorated_text
      
        # An image that is specified by a URL and can have an onClick action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageImage]
        attr_accessor :image
      
        # A widget that creates a UI item (for example, a drop-down list) with options
        # for users to select.
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput]
        attr_accessor :selection_input
      
        # A text input is a UI item where users can input text. A text input can also
        # have an onChange action and suggestions.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. See [Text formatting](workspace/
        # add-ons/concepts/widgets#text_formatting") for details.
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
          @date_time_picker = args[:date_time_picker] if args.key?(:date_time_picker)
          @decorated_text = args[:decorated_text] if args.key?(:decorated_text)
          @image = args[:image] if args.key?(:image)
          @selection_input = args[:selection_input] if args.key?(:selection_input)
          @text_input = args[:text_input] if args.key?(:text_input)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # The widget that lets users to specify a date and time.
      class AppsDynamiteStorageDateTimePicker
        include Google::Apis::Core::Hashable
      
        # The label for the field that displays to the user.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input that's used in formInput, and uniquely identifies
        # this input.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :on_change_action
      
        # The number representing the time zone offset from UTC, in minutes. If set, the
        # `value_ms_epoch` is displayed in the specified time zone. If not set, it uses
        # the user's time zone setting on the client side.
        # Corresponds to the JSON property `timezoneOffsetDate`
        # @return [Fixnum]
        attr_accessor :timezone_offset_date
      
        # The type of the date/time picker.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value to display as the default value before user input or previous user
        # input. It is represented in milliseconds (Epoch time). For `DATE_AND_TIME`
        # type, the full epoch value is used. For `DATE_ONLY` type, only date of the
        # epoch time is used. For `TIME_ONLY` type, only time of the epoch time is used.
        # For example, you can set epoch time to `3 * 60 * 60 * 1000` to represent 3am.
        # Corresponds to the JSON property `valueMsEpoch`
        # @return [Fixnum]
        attr_accessor :value_ms_epoch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @timezone_offset_date = args[:timezone_offset_date] if args.key?(:timezone_offset_date)
          @type = args[:type] if args.key?(:type)
          @value_ms_epoch = args[:value_ms_epoch] if args.key?(:value_ms_epoch)
        end
      end
      
      # A widget that displays text with optional decorations such as a label above or
      # below the text, an icon in front of the text, a selection widget or a button
      # after the text.
      class AppsDynamiteStorageDecoratedText
        include Google::Apis::Core::Hashable
      
        # The formatted text label that shows below the main text.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageButton]
        attr_accessor :button
      
        # An icon displayed after the text.
        # Corresponds to the JSON property `endIcon`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon]
        attr_accessor :end_icon
      
        # Deprecated in favor of start_icon.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon]
        attr_accessor :icon
      
        # Only the top and bottom label and content region are clickable.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick]
        attr_accessor :on_click
      
        # The icon displayed in front of the text.
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageIcon]
        attr_accessor :start_icon
      
        # A switch widget can be clicked to change its state or trigger an action.
        # Corresponds to the JSON property `switchControl`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedTextSwitchControl]
        attr_accessor :switch_control
      
        # Required. The main widget formatted text. See Text formatting for details.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The formatted text label that shows above the main text.
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        # The wrap text setting. If `true`, the text is wrapped and displayed in
        # multiline. Otherwise, the text is truncated.
        # Corresponds to the JSON property `wrapText`
        # @return [Boolean]
        attr_accessor :wrap_text
        alias_method :wrap_text?, :wrap_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_label = args[:bottom_label] if args.key?(:bottom_label)
          @button = args[:button] if args.key?(:button)
          @end_icon = args[:end_icon] if args.key?(:end_icon)
          @icon = args[:icon] if args.key?(:icon)
          @on_click = args[:on_click] if args.key?(:on_click)
          @start_icon = args[:start_icon] if args.key?(:start_icon)
          @switch_control = args[:switch_control] if args.key?(:switch_control)
          @text = args[:text] if args.key?(:text)
          @top_label = args[:top_label] if args.key?(:top_label)
          @wrap_text = args[:wrap_text] if args.key?(:wrap_text)
        end
      end
      
      # 
      class AppsDynamiteStorageDecoratedTextSwitchControl
        include Google::Apis::Core::Hashable
      
        # The control type, either switch or checkbox.
        # Corresponds to the JSON property `controlType`
        # @return [String]
        attr_accessor :control_type
      
        # The name of the switch widget that's used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :on_change_action
      
        # If the switch is selected.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The value is what is passed back in the callback.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_type = args[:control_type] if args.key?(:control_type)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @selected = args[:selected] if args.key?(:selected)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A divider that appears in between widgets.
      class AppsDynamiteStorageDivider
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a Grid widget that displays items in a configurable grid layout.
      class AppsDynamiteStorageGrid
        include Google::Apis::Core::Hashable
      
        # Represents the complete border style applied to widgets.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle]
        attr_accessor :border_style
      
        # The number of columns to display in the grid. A default value is used if this
        # field isn't specified, and that default value is different depending on where
        # the grid is shown (dialog versus companion).
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # The items to display in the grid.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageGridGridItem>]
        attr_accessor :items
      
        # This callback is reused by each individual grid item, but with the item's
        # identifier and index in the items list added to the callback's parameters.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick]
        attr_accessor :on_click
      
        # The text that displays in the grid header.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @border_style = args[:border_style] if args.key?(:border_style)
          @column_count = args[:column_count] if args.key?(:column_count)
          @items = args[:items] if args.key?(:items)
          @on_click = args[:on_click] if args.key?(:on_click)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a single item in the grid layout.
      class AppsDynamiteStorageGridGridItem
        include Google::Apis::Core::Hashable
      
        # A user-specified identifier for this grid item. This identifier is returned in
        # the parent Grid's onClick callback parameters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The image that displays in the grid item.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageImageComponent]
        attr_accessor :image
      
        # The layout to use for the grid item.
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        # The grid item's subtitle.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The horizontal alignment of the grid item's text.
        # Corresponds to the JSON property `textAlignment`
        # @return [String]
        attr_accessor :text_alignment
      
        # The grid item's title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @image = args[:image] if args.key?(:image)
          @layout = args[:layout] if args.key?(:layout)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @text_alignment = args[:text_alignment] if args.key?(:text_alignment)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class AppsDynamiteStorageIcon
        include Google::Apis::Core::Hashable
      
        # The description of the icon, used for accessibility. The default value is
        # provided if you don't specify one.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The crop style applied to the image. In some cases, applying a `CIRCLE` crop
        # causes the image to be drawn larger than a standard icon.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The icon specified by the string name of a list of known icons
        # Corresponds to the JSON property `knownIcon`
        # @return [String]
        attr_accessor :known_icon
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @image_type = args[:image_type] if args.key?(:image_type)
          @known_icon = args[:known_icon] if args.key?(:known_icon)
        end
      end
      
      # An image that is specified by a URL and can have an onClick action.
      class AppsDynamiteStorageImage
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image, used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # An image URL.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @image_url = args[:image_url] if args.key?(:image_url)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class AppsDynamiteStorageImageComponent
        include Google::Apis::Core::Hashable
      
        # The accessibility label for the image.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents the complete border style applied to widgets.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageBorderStyle]
        attr_accessor :border_style
      
        # Represents the crop style applied to an image.
        # Corresponds to the JSON property `cropStyle`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageImageCropStyle]
        attr_accessor :crop_style
      
        # The image URL.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @border_style = args[:border_style] if args.key?(:border_style)
          @crop_style = args[:crop_style] if args.key?(:crop_style)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # Represents the crop style applied to an image.
      class AppsDynamiteStorageImageCropStyle
        include Google::Apis::Core::Hashable
      
        # The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`.
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The crop type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class AppsDynamiteStorageOnClick
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :action
      
        # Actions handled by individual host apps.
        # Corresponds to the JSON property `hostAppAction`
        # @return [Google::Apis::CloudsearchV1::HostAppActionMarkup]
        attr_accessor :host_app_action
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `openDynamicLinkAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :open_dynamic_link_action
      
        # If specified, this onClick triggers an open link action.
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLink]
        attr_accessor :open_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @host_app_action = args[:host_app_action] if args.key?(:host_app_action)
          @open_dynamic_link_action = args[:open_dynamic_link_action] if args.key?(:open_dynamic_link_action)
          @open_link = args[:open_link] if args.key?(:open_link)
        end
      end
      
      # 
      class AppsDynamiteStorageOpenLink
        include Google::Apis::Core::Hashable
      
        # Represents the platform specific uri/intent to open for each client.
        # Corresponds to the JSON property `appUri`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUri]
        attr_accessor :app_uri
      
        # 
        # Corresponds to the JSON property `onClose`
        # @return [String]
        attr_accessor :on_close
      
        # 
        # Corresponds to the JSON property `openAs`
        # @return [String]
        attr_accessor :open_as
      
        # The URL to open.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_uri = args[:app_uri] if args.key?(:app_uri)
          @on_close = args[:on_close] if args.key?(:on_close)
          @open_as = args[:open_as] if args.key?(:open_as)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents the platform specific uri/intent to open for each client.
      class AppsDynamiteStorageOpenLinkAppUri
        include Google::Apis::Core::Hashable
      
        # Android intent.
        # Corresponds to the JSON property `androidIntent`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntent]
        attr_accessor :android_intent
      
        # A companion uri string to be opened in the chat companion window. on the web.
        # Corresponds to the JSON property `companionUri`
        # @return [String]
        attr_accessor :companion_uri
      
        # A uri string to be opened in the corresponding iOS hosting app.
        # Corresponds to the JSON property `iosUri`
        # @return [String]
        attr_accessor :ios_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_intent = args[:android_intent] if args.key?(:android_intent)
          @companion_uri = args[:companion_uri] if args.key?(:companion_uri)
          @ios_uri = args[:ios_uri] if args.key?(:ios_uri)
        end
      end
      
      # Android intent.
      class AppsDynamiteStorageOpenLinkAppUriIntent
        include Google::Apis::Core::Hashable
      
        # A list of extra data for the android intent. For example, for a calendar event
        # edit intent, the event title information can be passed as extra data.
        # Corresponds to the JSON property `extraData`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageOpenLinkAppUriIntentExtraData>]
        attr_accessor :extra_data
      
        # An android intent action string for the `@link android.content.Intent` object.
        # For example: for the view intent action type, a valid value will be android.
        # content.Intent.ACTION_VIEW.
        # Corresponds to the JSON property `intentAction`
        # @return [String]
        attr_accessor :intent_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extra_data = args[:extra_data] if args.key?(:extra_data)
          @intent_action = args[:intent_action] if args.key?(:intent_action)
        end
      end
      
      # Extra data for an android intent. Valid keys are defined in the hosting app
      # contract.
      class AppsDynamiteStorageOpenLinkAppUriIntentExtraData
        include Google::Apis::Core::Hashable
      
        # A key for the intent extra data.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value for the given extra data key.
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
      
      # A widget that creates a UI item (for example, a drop-down list) with options
      # for users to select.
      class AppsDynamiteStorageSelectionInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInputSelectionItem>]
        attr_accessor :items
      
        # The label displayed ahead of the switch control.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input which is used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :on_change_action
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The item in the switch control. A radio button, at most one of the items is
      # selected.
      class AppsDynamiteStorageSelectionInputSelectionItem
        include Google::Apis::Core::Hashable
      
        # If more than one item is selected for `RADIO_BUTTON` and `DROPDOWN`, the first
        # selected item is treated as selected and the ones after are ignored.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The text to be displayed.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item. The client should use this as a form
        # input value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected = args[:selected] if args.key?(:selected)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A container wrapping elements necessary for showing suggestion items used in
      # text input autocomplete.
      class AppsDynamiteStorageSuggestions
        include Google::Apis::Core::Hashable
      
        # A list of suggestions items which will be used in are used in autocomplete.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestionsSuggestionItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # A suggestion item. Only supports text for now.
      class AppsDynamiteStorageSuggestionsSuggestionItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A text input is a UI item where users can input text. A text input can also
      # have an onChange action and suggestions.
      class AppsDynamiteStorageTextInput
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `autoCompleteAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :auto_complete_action
      
        # The hint text.
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # A container wrapping elements necessary for showing suggestion items used in
        # text input autocomplete.
        # Corresponds to the JSON property `initialSuggestions`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageSuggestions]
        attr_accessor :initial_suggestions
      
        # At least one of label and hintText must be specified.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input which is used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageAction]
        attr_accessor :on_change_action
      
        # The style of the text, for example, a single line or multiple lines.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The default value when there is no input from the user.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_complete_action = args[:auto_complete_action] if args.key?(:auto_complete_action)
          @hint_text = args[:hint_text] if args.key?(:hint_text)
          @initial_suggestions = args[:initial_suggestions] if args.key?(:initial_suggestions)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A paragraph of text that supports formatting. See [Text formatting](workspace/
      # add-ons/concepts/widgets#text_formatting") for details.
      class AppsDynamiteStorageTextParagraph
        include Google::Apis::Core::Hashable
      
        # The text that's shown in the widget.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A widget is a UI element that presents texts, images, etc.
      class AppsDynamiteStorageWidget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally.
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageButtonList]
        attr_accessor :button_list
      
        # Represents a Columns widget that displays a single row of columns.
        # Corresponds to the JSON property `columns`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageColumns]
        attr_accessor :columns
      
        # The widget that lets users to specify a date and time.
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget or a button
        # after the text.
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDecoratedText]
        attr_accessor :decorated_text
      
        # A divider that appears in between widgets.
        # Corresponds to the JSON property `divider`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageDivider]
        attr_accessor :divider
      
        # Represents a Grid widget that displays items in a configurable grid layout.
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageGrid]
        attr_accessor :grid
      
        # The horizontal alignment of this widget.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # An image that is specified by a URL and can have an onClick action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageImage]
        attr_accessor :image
      
        # A widget that creates a UI item (for example, a drop-down list) with options
        # for users to select.
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageSelectionInput]
        attr_accessor :selection_input
      
        # A text input is a UI item where users can input text. A text input can also
        # have an onChange action and suggestions.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageTextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. See [Text formatting](workspace/
        # add-ons/concepts/widgets#text_formatting") for details.
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageTextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
          @columns = args[:columns] if args.key?(:columns)
          @date_time_picker = args[:date_time_picker] if args.key?(:date_time_picker)
          @decorated_text = args[:decorated_text] if args.key?(:decorated_text)
          @divider = args[:divider] if args.key?(:divider)
          @grid = args[:grid] if args.key?(:grid)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @image = args[:image] if args.key?(:image)
          @selection_input = args[:selection_input] if args.key?(:selection_input)
          @text_input = args[:text_input] if args.key?(:text_input)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # Interactive objects inside a message. Documentation: - https://api.slack.com/
      # docs/message-buttons
      class AppsDynamiteV1ApiCompatV1Action
        include Google::Apis::Core::Hashable
      
        # Confirmation dialog config.
        # Corresponds to the JSON property `confirm`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1ActionConfirm]
        attr_accessor :confirm
      
        # Unique identifier for this action.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Button style ("default", "primary", or "danger").
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # User-facing label for the action.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Action type - currently only "button".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Payload for this action. Will be sent to the action handler along with name.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confirm = args[:confirm] if args.key?(:confirm)
          @name = args[:name] if args.key?(:name)
          @style = args[:style] if args.key?(:style)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Confirmation dialog config.
      class AppsDynamiteV1ApiCompatV1ActionConfirm
        include Google::Apis::Core::Hashable
      
        # "Cancel" button label.
        # Corresponds to the JSON property `dismiss_text`
        # @return [String]
        attr_accessor :dismiss_text
      
        # "OK" button label.
        # Corresponds to the JSON property `ok_text`
        # @return [String]
        attr_accessor :ok_text
      
        # Confirmation dialog body text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Confirmation dialog title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dismiss_text = args[:dismiss_text] if args.key?(:dismiss_text)
          @ok_text = args[:ok_text] if args.key?(:ok_text)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Richly formatted attachments. Documentation: - https://api.slack.com/docs/
      # message-attachments
      class AppsDynamiteV1ApiCompatV1Attachment
        include Google::Apis::Core::Hashable
      
        # Array of actions (currently only buttons).
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Action>]
        attr_accessor :actions
      
        # Undocumented - used in interactive button examples. The only valid value
        # appears to be "default".
        # Corresponds to the JSON property `attachment_type`
        # @return [String]
        attr_accessor :attachment_type
      
        # Avatar URL for the user.
        # Corresponds to the JSON property `author_icon`
        # @return [String]
        attr_accessor :author_icon
      
        # URL that the user name should link to.
        # Corresponds to the JSON property `author_link`
        # @return [String]
        attr_accessor :author_link
      
        # User name to display as the author of the message.
        # Corresponds to the JSON property `author_name`
        # @return [String]
        attr_accessor :author_name
      
        # Unique identifier for the collection of buttons within this attachment. Will
        # be sent back to the action handler URL when a button is clicked.
        # Corresponds to the JSON property `callback_id`
        # @return [String]
        attr_accessor :callback_id
      
        # A color "bar" to display to the left of the attachment.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Fallback plain-text string for clients that don't support attachments.
        # Corresponds to the JSON property `fallback`
        # @return [String]
        attr_accessor :fallback
      
        # Columns of text inside the attachment body.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Field>]
        attr_accessor :fields
      
        # A string displayed at the bottom of the attachment.
        # Corresponds to the JSON property `footer`
        # @return [String]
        attr_accessor :footer
      
        # Avatar URL displayed to the left of the footer.
        # Corresponds to the JSON property `footer_icon`
        # @return [String]
        attr_accessor :footer_icon
      
        # URL of an image to display in an image chip.
        # Corresponds to the JSON property `image_url`
        # @return [String]
        attr_accessor :image_url
      
        # List of fields to apply formatting to.
        # Corresponds to the JSON property `mrkdwn_in`
        # @return [Array<String>]
        attr_accessor :mrkdwn_in
      
        # A string to show above the attachment.
        # Corresponds to the JSON property `pretext`
        # @return [String]
        attr_accessor :pretext
      
        # Main text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # URL of a thumbnail image to display to the right of the attachment body.
        # Corresponds to the JSON property `thumb_url`
        # @return [String]
        attr_accessor :thumb_url
      
        # Title string of this attachment.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that the title string should link to.
        # Corresponds to the JSON property `title_link`
        # @return [String]
        attr_accessor :title_link
      
        # UNIX timestamp of the attachment.
        # Corresponds to the JSON property `ts`
        # @return [Fixnum]
        attr_accessor :ts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @attachment_type = args[:attachment_type] if args.key?(:attachment_type)
          @author_icon = args[:author_icon] if args.key?(:author_icon)
          @author_link = args[:author_link] if args.key?(:author_link)
          @author_name = args[:author_name] if args.key?(:author_name)
          @callback_id = args[:callback_id] if args.key?(:callback_id)
          @color = args[:color] if args.key?(:color)
          @fallback = args[:fallback] if args.key?(:fallback)
          @fields = args[:fields] if args.key?(:fields)
          @footer = args[:footer] if args.key?(:footer)
          @footer_icon = args[:footer_icon] if args.key?(:footer_icon)
          @image_url = args[:image_url] if args.key?(:image_url)
          @mrkdwn_in = args[:mrkdwn_in] if args.key?(:mrkdwn_in)
          @pretext = args[:pretext] if args.key?(:pretext)
          @text = args[:text] if args.key?(:text)
          @thumb_url = args[:thumb_url] if args.key?(:thumb_url)
          @title = args[:title] if args.key?(:title)
          @title_link = args[:title_link] if args.key?(:title_link)
          @ts = args[:ts] if args.key?(:ts)
        end
      end
      
      # A column of text in an attachment. Documentation: - https://api.slack.com/docs/
      # message-attachments
      class AppsDynamiteV1ApiCompatV1Field
        include Google::Apis::Core::Hashable
      
        # Whether the field can be shown side-by-side with another field.
        # Corresponds to the JSON property `short`
        # @return [Boolean]
        attr_accessor :short
        alias_method :short?, :short
      
        # The heading text, shown in bold.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The text value of the field.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @short = args[:short] if args.key?(:short)
          @title = args[:title] if args.key?(:title)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addonAttachments`
        # @return [Array<Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment>]
        attr_accessor :addon_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addon_attachments = args[:addon_attachments] if args.key?(:addon_attachments)
        end
      end
      
      # 
      class AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkupAddonAttachment
        include Google::Apis::Core::Hashable
      
        # Link to the resource's icon.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # MIME type of the content in resource_url.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # 
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # Title of the attachment.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Markup that defines conference data associated to a Google Calendar event.
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup
        include Google::Apis::Core::Hashable
      
        # Unique identifier for this conference data. Maximum 512 characters long.
        # Corresponds to the JSON property `conferenceId`
        # @return [String]
        attr_accessor :conference_id
      
        # An identifier of the conferencing solution. Must match a value from the
        # deployment's `calendar.conferenceSolution.id` field.
        # Corresponds to the JSON property `conferenceSolutionId`
        # @return [String]
        attr_accessor :conference_solution_id
      
        # Entry points to the conference. Maximum 300 entry points are allowed.
        # Corresponds to the JSON property `entryPoints`
        # @return [Array<Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup>]
        attr_accessor :entry_points
      
        # Represents an error that occurred during conference creation.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError]
        attr_accessor :error
      
        # Additional notes (such as instructions from the administrator, legal notices)
        # to display to the user. Can contain HTML. Max length 2048 characters.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # Additional add-on parameters. Maximum 300 parameters are allowed.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conference_id = args[:conference_id] if args.key?(:conference_id)
          @conference_solution_id = args[:conference_solution_id] if args.key?(:conference_solution_id)
          @entry_points = args[:entry_points] if args.key?(:entry_points)
          @error = args[:error] if args.key?(:error)
          @note = args[:note] if args.key?(:note)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # A way to join the conference.
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup
        include Google::Apis::Core::Hashable
      
        # An access code for accessing the conference. Maximum 128 characters long.
        # Corresponds to the JSON property `accessCode`
        # @return [String]
        attr_accessor :access_code
      
        # Features of the entry point, such as being toll or toll-free. One entry point
        # can have multiple features.
        # Corresponds to the JSON property `features`
        # @return [Array<String>]
        attr_accessor :features
      
        # The label of the entry point to display to the user. Maximum 512 characters
        # long.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # A meeting code for accessing the conference. Maximum 128 characters long.
        # Corresponds to the JSON property `meetingCode`
        # @return [String]
        attr_accessor :meeting_code
      
        # A passcode for accessing the conference. Maximum 128 characters long.
        # Corresponds to the JSON property `passcode`
        # @return [String]
        attr_accessor :passcode
      
        # A password for accessing the conference. Maximum 128 characters long.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # A PIN for accessing the conference. Maximum 128 characters long.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        # The CLDR/ISO 3166 region code for the country associated with this entry point.
        # Applicable only to `Type.PHONE`.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The type of the entry point. Required.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A URI for joining the conference. Supports tel: and http(s): and should be at
        # most 1300 characters long. Required.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_code = args[:access_code] if args.key?(:access_code)
          @features = args[:features] if args.key?(:features)
          @label = args[:label] if args.key?(:label)
          @meeting_code = args[:meeting_code] if args.key?(:meeting_code)
          @passcode = args[:passcode] if args.key?(:passcode)
          @password = args[:password] if args.key?(:password)
          @pin = args[:pin] if args.key?(:pin)
          @region_code = args[:region_code] if args.key?(:region_code)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents an error that occurred during conference creation.
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError
        include Google::Apis::Core::Hashable
      
        # If the error type is `AUTHENTICATION`, the add-on can provide a URL allowing
        # users to log in. Maximum 1300 characters long.
        # Corresponds to the JSON property `authenticationUrl`
        # @return [String]
        attr_accessor :authentication_url
      
        # The type of error. Required.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_url = args[:authentication_url] if args.key?(:authentication_url)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Solution-specific parameters that are persisted with the event data and, if an
      # update or delete is needed, are passed to the add-on. For example: `[`key: '
      # sessionKey', value: '123'`, `key: 'meetingId', value: '456'`]`
      class AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter
        include Google::Apis::Core::Hashable
      
        # The key of the parameter. Maximum 50 characters long. Required.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the parameter. Maximum 1024 characters long. Required.
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
      
      # 
      class AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup
        include Google::Apis::Core::Hashable
      
        # A list of attendees to add to the Google Calendar event.
        # Corresponds to the JSON property `addAttendeeEmails`
        # @return [Array<String>]
        attr_accessor :add_attendee_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_attendee_emails = args[:add_attendee_emails] if args.key?(:add_attendee_emails)
        end
      end
      
      # 
      class AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup
        include Google::Apis::Core::Hashable
      
        # Markup that defines conference data associated to a Google Calendar event.
        # Corresponds to the JSON property `conferenceData`
        # @return [Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup]
        attr_accessor :conference_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conference_data = args[:conference_data] if args.key?(:conference_data)
        end
      end
      
      # Attachments that follow the message text.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # The markup for developers to specify the contents of a contextual AddOn.
        # Corresponds to the JSON property `addOnData`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup]
        attr_accessor :add_on_data
      
        # Primary key for User resource.
        # Corresponds to the JSON property `appId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :app_id
      
        # To identify an attachment within repeated in a message
        # Corresponds to the JSON property `attachmentId`
        # @return [String]
        attr_accessor :attachment_id
      
        # A card is a UI element that can contain UI widgets such as text and images.
        # For more information, see Cards . For example, the following JSON creates a
        # card that has a header with the name, position, icons, and link for a contact,
        # followed by a section with contact information like email and phone number. ```
        # ` "header": ` "title": "Heba Salam", "subtitle": "Software Engineer", "
        # imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/heba_salam.
        # png", "imageAltText": "Avatar for Heba Salam" `, "sections" : [ ` "header": "
        # Contact Info", "widgets": [ ` "decorated_text": ` "icon": ` "knownIcon": "
        # EMAIL" `, "content": "heba.salam@example.com" ` `, ` "decoratedText": ` "icon":
        # ` "knownIcon": "PERSON" `, "content": "Online" ` `, ` "decoratedText": ` "
        # icon": ` "knownIcon": "PHONE" `, "content": "+1 (555) 555-1234" ` `, ` "
        # buttons": [ ` "textButton": ` "text": "Share", `, "onClick": ` "openLink": ` "
        # url": "https://example.com/share" ` ` `, ` "textButton": ` "text": "Edit", `, "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` ` `
        # ] ` ], "collapsible": true, "uncollapsibleWidgetsCount": 3 ` ], "cardActions":
        # [ ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https://
        # example.com/feedback" ` ` ` ], "name": "contact-card-K3wB6arF2H9L" ` ```
        # Corresponds to the JSON property `cardAddOnData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteStorageCard]
        attr_accessor :card_add_on_data
      
        # The markup for developers to specify the contents of a contextual AddOn. A
        # contextual AddOn is triggered in context of an email. For that email, there
        # can be N items that are associated with the email (e.g. contacts, sales lead,
        # meeting information). Each item is represented as a "card". A card has two
        # views, collapsed and detailed. If there are more than 1 card, the cards are
        # show as a list of collapsed views. The end user can expand into the detailed
        # view for each of those cards. In the detailed view, developers have the
        # freedom to use a variety of "widgets" to construct it. The model here is to
        # restrict (make consistent for end users) the navigation of the N cards but
        # providing developers the freedom to build the detailed view that can best
        # represent their use case/content. Go http://go/aoig-widgets1 to see the mocks.
        # Post v1, we plan to support new AddOn use cases that will require different
        # and separate 'templates'. For example, a compose triggered AddOn which will
        # support a new set of use cases with different user interaction patterns. As a
        # result, we will likely need a very different template than this one.
        # Corresponds to the JSON property `deprecatedAddOnData`
        # @return [Google::Apis::CloudsearchV1::ContextualAddOnMarkup]
        attr_accessor :deprecated_add_on_data
      
        # Richly formatted attachments. Documentation: - https://api.slack.com/docs/
        # message-attachments
        # Corresponds to the JSON property `slackData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteV1ApiCompatV1Attachment]
        attr_accessor :slack_data
      
        # The height of image url as fetched by fife. This field is asynchronously
        # filled.
        # Corresponds to the JSON property `slackDataImageUrlHeight`
        # @return [Fixnum]
        attr_accessor :slack_data_image_url_height
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_on_data = args[:add_on_data] if args.key?(:add_on_data)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attachment_id = args[:attachment_id] if args.key?(:attachment_id)
          @card_add_on_data = args[:card_add_on_data] if args.key?(:card_add_on_data)
          @deprecated_add_on_data = args[:deprecated_add_on_data] if args.key?(:deprecated_add_on_data)
          @slack_data = args[:slack_data] if args.key?(:slack_data)
          @slack_data_image_url_height = args[:slack_data_image_url_height] if args.key?(:slack_data_image_url_height)
        end
      end
      
      # An Attribute is a piece of data attached an Item. Attributes are opaque to the
      # Starbox and have no effect on, nor are they effected by, message storage,
      # indexing, or search.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # The name of the attribute. Required - If a write is attempted with an empty
        # string, the server will return an error.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudsearchV1::CaribouAttributeValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An attribute was deleted from some (subset of the) messages in this thread.
      class AttributeRemoved
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # 
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
        end
      end
      
      # An attribute was added to some (subset of the) messages in this thread.
      class AttributeSet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # The serialized attribute_value as persisted in the storage layer. The
        # application is responsible for deserializing it to an Attribute.Value if
        # appropriate.
        # Corresponds to the JSON property `attributeValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :attribute_value
      
        # 
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
        end
      end
      
      # 
      class Attributes
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attribute`
        # @return [Array<Google::Apis::CloudsearchV1::Attribute>]
        attr_accessor :attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
        end
      end
      
      # Represents the settings for Cloud audit logging
      class AuditLoggingSettings
        include Google::Apis::Core::Hashable
      
        # Indicates whether audit logging is on/off for admin activity read APIs i.e.
        # Get/List DataSources, Get/List SearchApplications etc.
        # Corresponds to the JSON property `logAdminReadActions`
        # @return [Boolean]
        attr_accessor :log_admin_read_actions
        alias_method :log_admin_read_actions?, :log_admin_read_actions
      
        # Indicates whether audit logging is on/off for data access read APIs i.e.
        # ListItems, GetItem etc.
        # Corresponds to the JSON property `logDataReadActions`
        # @return [Boolean]
        attr_accessor :log_data_read_actions
        alias_method :log_data_read_actions?, :log_data_read_actions
      
        # Indicates whether audit logging is on/off for data access write APIs i.e.
        # IndexItem etc.
        # Corresponds to the JSON property `logDataWriteActions`
        # @return [Boolean]
        attr_accessor :log_data_write_actions
        alias_method :log_data_write_actions?, :log_data_write_actions
      
        # The resource name of the GCP Project to store audit logs. Cloud audit logging
        # will be enabled after project_name has been updated through CustomerService.
        # Format: projects/`project_id`
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_admin_read_actions = args[:log_admin_read_actions] if args.key?(:log_admin_read_actions)
          @log_data_read_actions = args[:log_data_read_actions] if args.key?(:log_data_read_actions)
          @log_data_write_actions = args[:log_data_write_actions] if args.key?(:log_data_write_actions)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # A combination of an identifier for a Drive resource (e.g. file, folder, or
      # drive) and any secrets needed to access it. The secrets should never be logged,
      # and this proto annotates those secret fields to ensure that they are not.
      # Clients are encouraged to use this proto rather than defining their own, to
      # ensure that secrets are correctly annotated.
      class AuthorizedItemId
        include Google::Apis::Core::Hashable
      
        # Serialized ID of the Drive resource
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource key of the Drive item. This field should be unset if, depending on
        # the context, the item does not have a resource key, or if none was specified.
        # This must never be logged.
        # Corresponds to the JSON property `resourceKey`
        # @return [String]
        attr_accessor :resource_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @resource_key = args[:resource_key] if args.key?(:resource_key)
        end
      end
      
      # 
      class AutoComplete
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::AutoCompleteItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class AutoCompleteItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Container for Babel (Hangouts Classic) only message properties. The properties
      # here will not be consumed by Dynamite clients. They are relevant only for
      # Hangouts Classic.
      class BabelMessageProps
        include Google::Apis::Core::Hashable
      
        # Babel clients locally generate this ID to dedupe against the async fanout.
        # Corresponds to the JSON property `clientGeneratedId`
        # @return [Fixnum]
        attr_accessor :client_generated_id
      
        # NEXT ID: 12
        # Corresponds to the JSON property `contentExtension`
        # @return [Google::Apis::CloudsearchV1::ChatContentExtension]
        attr_accessor :content_extension
      
        # Stores the delivery source of messages (such as phone number for SMS).
        # Corresponds to the JSON property `deliveryMedium`
        # @return [Google::Apis::CloudsearchV1::DeliveryMedium]
        attr_accessor :delivery_medium
      
        # Primary identifier used by Hangouts Classic for its events (messages).
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # The content of a chat message, which includes 0 or more segments along with 0
        # or more embeds, which represent various attachment types (like photos).
        # Corresponds to the JSON property `messageContent`
        # @return [Google::Apis::CloudsearchV1::ChatConserverMessageContent]
        attr_accessor :message_content
      
        # Whether or not these message properties were backfilled by go/dinnertrain.
        # Corresponds to the JSON property `wasUpdatedByBackfill`
        # @return [Boolean]
        attr_accessor :was_updated_by_backfill
        alias_method :was_updated_by_backfill?, :was_updated_by_backfill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_generated_id = args[:client_generated_id] if args.key?(:client_generated_id)
          @content_extension = args[:content_extension] if args.key?(:content_extension)
          @delivery_medium = args[:delivery_medium] if args.key?(:delivery_medium)
          @event_id = args[:event_id] if args.key?(:event_id)
          @message_content = args[:message_content] if args.key?(:message_content)
          @was_updated_by_backfill = args[:was_updated_by_backfill] if args.key?(:was_updated_by_backfill)
        end
      end
      
      # Annotation metadata for Babel-only items that signals which type of
      # placeholder message should be displayed in Babel clients.
      class BabelPlaceholderMetadata
        include Google::Apis::Core::Hashable
      
        # A message delete in Dynamite inserts a Babel-only item containing this field.
        # This is only inserted for messages before the source-of-truth flip. See go/hsc-
        # message-deletions for more details.
        # Corresponds to the JSON property `deleteMetadata`
        # @return [Google::Apis::CloudsearchV1::DeleteMetadata]
        attr_accessor :delete_metadata
      
        # A message edit in Dynamite inserts a Babel-only item containing this field.
        # Corresponds to the JSON property `editMetadata`
        # @return [Google::Apis::CloudsearchV1::EditMetadata]
        attr_accessor :edit_metadata
      
        # A message representing the Hangout video start/end events in Babel
        # Corresponds to the JSON property `hangoutVideoMetadata`
        # @return [Google::Apis::CloudsearchV1::HangoutVideoEventMetadata]
        attr_accessor :hangout_video_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_metadata = args[:delete_metadata] if args.key?(:delete_metadata)
          @edit_metadata = args[:edit_metadata] if args.key?(:edit_metadata)
          @hangout_video_metadata = args[:hangout_video_metadata] if args.key?(:hangout_video_metadata)
        end
      end
      
      # Used to provide a search operator for boolean properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class BooleanOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # boolean property. For example, if operatorName is *closed* and the property's
        # name is *isClosed*, then queries like *closed:<value>* show results only where
        # the value of the property named *isClosed* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for boolean properties.
      class BooleanPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for boolean properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::BooleanOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # Represents a complete border style that can be applied to widgets.
      class BorderStyle
        include Google::Apis::Core::Hashable
      
        # The corner radius for the border.
        # Corresponds to the JSON property `cornerRadius`
        # @return [Fixnum]
        attr_accessor :corner_radius
      
        # The colors to use when the type is STROKE.
        # Corresponds to the JSON property `strokeColor`
        # @return [String]
        attr_accessor :stroke_color
      
        # The border type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corner_radius = args[:corner_radius] if args.key?(:corner_radius)
          @stroke_color = args[:stroke_color] if args.key?(:stroke_color)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Bot-specific profile information.
      class BotInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appAllowlistStatus`
        # @return [String]
        attr_accessor :app_allowlist_status
      
        # Identifier of an App.
        # Corresponds to the JSON property `appId`
        # @return [Google::Apis::CloudsearchV1::AppId]
        attr_accessor :app_id
      
        # URL for the avatar picture of the User in dynamite. This field should be
        # populated if the request is FetchBotCategories/ListBotCatalogEntries
        # Corresponds to the JSON property `botAvatarUrl`
        # @return [String]
        attr_accessor :bot_avatar_url
      
        # Non-unique, user-defined display name of the Bot. This field should be
        # populated if the request is FetchBotCategories/ListBotCatalogEntries.
        # Corresponds to the JSON property `botName`
        # @return [String]
        attr_accessor :bot_name
      
        # Short description for the bot.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of bot developer.
        # Corresponds to the JSON property `developerName`
        # @return [String]
        attr_accessor :developer_name
      
        # URL for the banner image in GSuite Market Place. The banner will be 220x140.
        # Corresponds to the JSON property `marketPlaceBannerUrl`
        # @return [String]
        attr_accessor :market_place_banner_url
      
        # Indicates whether bot is enabled/disabled.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # If the app supports a home screen.
        # Corresponds to the JSON property `supportHomeScreen`
        # @return [Boolean]
        attr_accessor :support_home_screen
        alias_method :support_home_screen?, :support_home_screen
      
        # Urls with additional bot related information.
        # Corresponds to the JSON property `supportUrls`
        # @return [Google::Apis::CloudsearchV1::SupportUrls]
        attr_accessor :support_urls
      
        # The supported uses are limited according to the user that made the request. If
        # the user does not have permission to use the bot, the list will be empty. This
        # could occur for non whitelisted bots in the catalog.
        # Corresponds to the JSON property `supportedUses`
        # @return [Array<String>]
        attr_accessor :supported_uses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_allowlist_status = args[:app_allowlist_status] if args.key?(:app_allowlist_status)
          @app_id = args[:app_id] if args.key?(:app_id)
          @bot_avatar_url = args[:bot_avatar_url] if args.key?(:bot_avatar_url)
          @bot_name = args[:bot_name] if args.key?(:bot_name)
          @description = args[:description] if args.key?(:description)
          @developer_name = args[:developer_name] if args.key?(:developer_name)
          @market_place_banner_url = args[:market_place_banner_url] if args.key?(:market_place_banner_url)
          @status = args[:status] if args.key?(:status)
          @support_home_screen = args[:support_home_screen] if args.key?(:support_home_screen)
          @support_urls = args[:support_urls] if args.key?(:support_urls)
          @supported_uses = args[:supported_uses] if args.key?(:supported_uses)
        end
      end
      
      # Information about a bot response, branched from shared/bot_response.proto
      # without frontend User proto as we never store it.
      class BotResponse
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `botId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :bot_id
      
        # 
        # Corresponds to the JSON property `requiredAction`
        # @return [String]
        attr_accessor :required_action
      
        # 
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        # URL for setting up bot.
        # Corresponds to the JSON property `setupUrl`
        # @return [String]
        attr_accessor :setup_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bot_id = args[:bot_id] if args.key?(:bot_id)
          @required_action = args[:required_action] if args.key?(:required_action)
          @response_type = args[:response_type] if args.key?(:response_type)
          @setup_url = args[:setup_url] if args.key?(:setup_url)
        end
      end
      
      # Broadcast access information of a meeting space.
      class BroadcastAccess
        include Google::Apis::Core::Hashable
      
        # The policy that controls the broadcast's viewer access.
        # Corresponds to the JSON property `accessPolicy`
        # @return [String]
        attr_accessor :access_policy
      
        # A URL that can be used to access the broadcast of the meeting. This field will
        # be empty if broadcast is not enabled. It will be populated by the backend.
        # Clients cannot modify the value.
        # Corresponds to the JSON property `viewUrl`
        # @return [String]
        attr_accessor :view_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_policy = args[:access_policy] if args.key?(:access_policy)
          @view_url = args[:view_url] if args.key?(:view_url)
        end
      end
      
      # Information about a broadcast session.
      class BroadcastSessionInfo
        include Google::Apis::Core::Hashable
      
        # A unique server-generated ID for the broadcast session.
        # Corresponds to the JSON property `broadcastSessionId`
        # @return [String]
        attr_accessor :broadcast_session_id
      
        # Statistics of the broadcast session.
        # Corresponds to the JSON property `broadcastStats`
        # @return [Google::Apis::CloudsearchV1::BroadcastStats]
        attr_accessor :broadcast_stats
      
        # Input only. Deprecated field, should not be used.
        # Corresponds to the JSON property `ingestionId`
        # @return [String]
        attr_accessor :ingestion_id
      
        # Information about the state of a (recording, broadcast, transcription...)
        # session in a conference.
        # Corresponds to the JSON property `sessionStateInfo`
        # @return [Google::Apis::CloudsearchV1::SessionStateInfo]
        attr_accessor :session_state_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @broadcast_session_id = args[:broadcast_session_id] if args.key?(:broadcast_session_id)
          @broadcast_stats = args[:broadcast_stats] if args.key?(:broadcast_stats)
          @ingestion_id = args[:ingestion_id] if args.key?(:ingestion_id)
          @session_state_info = args[:session_state_info] if args.key?(:session_state_info)
        end
      end
      
      # Statistics of the broadcast session.
      class BroadcastStats
        include Google::Apis::Core::Hashable
      
        # Estimated concurrent viewer count.
        # Corresponds to the JSON property `estimatedViewerCount`
        # @return [Fixnum]
        attr_accessor :estimated_viewer_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_viewer_count = args[:estimated_viewer_count] if args.key?(:estimated_viewer_count)
        end
      end
      
      # 
      class Button
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `imageButton`
        # @return [Google::Apis::CloudsearchV1::ImageButton]
        attr_accessor :image_button
      
        # 
        # Corresponds to the JSON property `textButton`
        # @return [Google::Apis::CloudsearchV1::TextButton]
        attr_accessor :text_button
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_button = args[:image_button] if args.key?(:image_button)
          @text_button = args[:text_button] if args.key?(:text_button)
        end
      end
      
      # 
      class CalendarClientActionMarkup
        include Google::Apis::Core::Hashable
      
        # An action that adds attachments to the Google Calendar event.
        # Corresponds to the JSON property `addAttachmentsActionMarkup`
        # @return [Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup]
        attr_accessor :add_attachments_action_markup
      
        # An action that adds attendees to the Google Calendar event.
        # Corresponds to the JSON property `editAttendeesActionMarkup`
        # @return [Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup]
        attr_accessor :edit_attendees_action_markup
      
        # An action that adds conference data to the Google Calendar event.
        # Corresponds to the JSON property `editConferenceDataActionMarkup`
        # @return [Google::Apis::CloudsearchV1::AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup]
        attr_accessor :edit_conference_data_action_markup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_attachments_action_markup = args[:add_attachments_action_markup] if args.key?(:add_attachments_action_markup)
          @edit_attendees_action_markup = args[:edit_attendees_action_markup] if args.key?(:edit_attendees_action_markup)
          @edit_conference_data_action_markup = args[:edit_conference_data_action_markup] if args.key?(:edit_conference_data_action_markup)
        end
      end
      
      # Contains information regarding an ongoing conference (aka call) for a meeting
      # space.
      class CallInfo
        include Google::Apis::Core::Hashable
      
        # Abuse reporting configuration outlining what is supported in this conference.
        # Corresponds to the JSON property `abuseReportingConfig`
        # @return [Google::Apis::CloudsearchV1::AbuseReportingConfig]
        attr_accessor :abuse_reporting_config
      
        # Resource for displaying user info
        # Corresponds to the JSON property `artifactOwner`
        # @return [Google::Apis::CloudsearchV1::UserDisplayInfo]
        attr_accessor :artifact_owner
      
        # Output only. Documents attached to an ongoing conference.
        # Corresponds to the JSON property `attachedDocuments`
        # @return [Array<Google::Apis::CloudsearchV1::DocumentInfo>]
        attr_accessor :attached_documents
      
        # List of available access types of the conference.
        # Corresponds to the JSON property `availableAccessTypes`
        # @return [Array<String>]
        attr_accessor :available_access_types
      
        # Output only. The set of reactions that clients are allowed to send and can
        # expect to receive. Note that a device in the conference should have the
        # MAY_SEND_REACTIONS privilege to be able to send reactions.
        # Corresponds to the JSON property `availableReactions`
        # @return [Array<Google::Apis::CloudsearchV1::ReactionInfo>]
        attr_accessor :available_reactions
      
        # Information about a broadcast session.
        # Corresponds to the JSON property `broadcastSessionInfo`
        # @return [Google::Apis::CloudsearchV1::BroadcastSessionInfo]
        attr_accessor :broadcast_session_info
      
        # Output only. The calendar event ID of a Google Calendar event that the meeting
        # space is associated with. If the meeting space is not associated with an event
        # in Google Calendar, this field is empty. For recurring events, it refers to
        # the recurring instance associated with the current call, as determined by the
        # server.
        # Corresponds to the JSON property `calendarEventId`
        # @return [String]
        attr_accessor :calendar_event_id
      
        # Metadata about a co-activity session.
        # Corresponds to the JSON property `coActivity`
        # @return [Google::Apis::CloudsearchV1::CoActivity]
        attr_accessor :co_activity
      
        # Information about a collaboration session.
        # Corresponds to the JSON property `collaboration`
        # @return [Google::Apis::CloudsearchV1::Collaboration]
        attr_accessor :collaboration
      
        # Information needed for Client-side Encryption.
        # Corresponds to the JSON property `cseInfo`
        # @return [Google::Apis::CloudsearchV1::CseInfo]
        attr_accessor :cse_info
      
        # Output only. The maximum number of devices that may be in the joined state
        # simultaneously in this conference. This can be used by clients to guess
        # whether it will be possible to join, but the only way to know is to try to
        # join. It can also be used to inform users about the limit that is in effect.
        # This limit is normally set when the conference is created and not changed
        # during the lifetime of the conference. But there are some cases where it may
        # change, so clients should be aware that the information may be stale.
        # Corresponds to the JSON property `maxJoinedDevices`
        # @return [Fixnum]
        attr_accessor :max_joined_devices
      
        # Output only. The name or description of the organization or domain that the
        # organizer belongs to. The expected use of this in clients is to present
        # messages like "John Doe (outside of Google.com) is trying to join this call",
        # where "Google.com" is the organization name. The field will be empty if the
        # organization name could not be determined, possibly because of a backend error.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # Information provided to clients so that they can show upgrade promos and
        # warnings on call ending early (for non-paying users).
        # Corresponds to the JSON property `paygateInfo`
        # @return [Google::Apis::CloudsearchV1::PaygateInfo]
        attr_accessor :paygate_info
      
        # Presenter contains information about which device is currently presenting as
        # well as which device requested the presenter to be set.
        # Corresponds to the JSON property `presenter`
        # @return [Google::Apis::CloudsearchV1::Presenter]
        attr_accessor :presenter
      
        # This message is deprecated, please use RecordingSessionInfo instead.
        # Information about recording in the current conference.
        # Corresponds to the JSON property `recordingInfo`
        # @return [Google::Apis::CloudsearchV1::RecordingInfo]
        attr_accessor :recording_info
      
        # Information about a recording session.
        # Corresponds to the JSON property `recordingSessionInfo`
        # @return [Google::Apis::CloudsearchV1::RecordingSessionInfo]
        attr_accessor :recording_session_info
      
        # Effective settings of the ongoing conference.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::CloudsearchV1::CallSettings]
        attr_accessor :settings
      
        # Output only. Info about streaming sessions (recording or broadcast) for this
        # conference. This should contain all active sessions. Currently, it's
        # guaranteed to have at most one recording and at most one broadcast (at most
        # two sessions in total). For each application type (recording or broadcast),
        # latest inactive session is included if there's no active one.
        # Corresponds to the JSON property `streamingSessions`
        # @return [Array<Google::Apis::CloudsearchV1::StreamingSessionInfo>]
        attr_accessor :streaming_sessions
      
        # Information about a transcription session.
        # Corresponds to the JSON property `transcriptionSessionInfo`
        # @return [Google::Apis::CloudsearchV1::TranscriptionSessionInfo]
        attr_accessor :transcription_session_info
      
        # The number of devices viewing the conference - MeetingDevices that are in
        # VIEWER role and JOINED state in the conference.
        # Corresponds to the JSON property `viewerCount`
        # @return [Fixnum]
        attr_accessor :viewer_count
      
        # Information about active YouTube broadcast sessions in the ongoing conference.
        # Corresponds to the JSON property `youTubeBroadcastSessionInfos`
        # @return [Array<Google::Apis::CloudsearchV1::YouTubeBroadcastSessionInfo>]
        attr_accessor :you_tube_broadcast_session_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abuse_reporting_config = args[:abuse_reporting_config] if args.key?(:abuse_reporting_config)
          @artifact_owner = args[:artifact_owner] if args.key?(:artifact_owner)
          @attached_documents = args[:attached_documents] if args.key?(:attached_documents)
          @available_access_types = args[:available_access_types] if args.key?(:available_access_types)
          @available_reactions = args[:available_reactions] if args.key?(:available_reactions)
          @broadcast_session_info = args[:broadcast_session_info] if args.key?(:broadcast_session_info)
          @calendar_event_id = args[:calendar_event_id] if args.key?(:calendar_event_id)
          @co_activity = args[:co_activity] if args.key?(:co_activity)
          @collaboration = args[:collaboration] if args.key?(:collaboration)
          @cse_info = args[:cse_info] if args.key?(:cse_info)
          @max_joined_devices = args[:max_joined_devices] if args.key?(:max_joined_devices)
          @organization_name = args[:organization_name] if args.key?(:organization_name)
          @paygate_info = args[:paygate_info] if args.key?(:paygate_info)
          @presenter = args[:presenter] if args.key?(:presenter)
          @recording_info = args[:recording_info] if args.key?(:recording_info)
          @recording_session_info = args[:recording_session_info] if args.key?(:recording_session_info)
          @settings = args[:settings] if args.key?(:settings)
          @streaming_sessions = args[:streaming_sessions] if args.key?(:streaming_sessions)
          @transcription_session_info = args[:transcription_session_info] if args.key?(:transcription_session_info)
          @viewer_count = args[:viewer_count] if args.key?(:viewer_count)
          @you_tube_broadcast_session_infos = args[:you_tube_broadcast_session_infos] if args.key?(:you_tube_broadcast_session_infos)
        end
      end
      
      # Effective settings of the ongoing conference.
      class CallSettings
        include Google::Apis::Core::Hashable
      
        # Indicates whether the access lock is currently on or off.
        # Corresponds to the JSON property `accessLock`
        # @return [Boolean]
        attr_accessor :access_lock
        alias_method :access_lock?, :access_lock
      
        # The current access type of the conference.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Whether users can join this conference before a host (Host or Cohost).
        # Corresponds to the JSON property `allowJoiningBeforeHost`
        # @return [Boolean]
        attr_accessor :allow_joining_before_host
        alias_method :allow_joining_before_host?, :allow_joining_before_host
      
        # Indicates whether the attendance report is currently enabled or disabled.
        # Corresponds to the JSON property `attendanceReportEnabled`
        # @return [Boolean]
        attr_accessor :attendance_report_enabled
        alias_method :attendance_report_enabled?, :attendance_report_enabled
      
        # Indicates whether the audio lock is currently on or off.
        # Corresponds to the JSON property `audioLock`
        # @return [Boolean]
        attr_accessor :audio_lock
        alias_method :audio_lock?, :audio_lock
      
        # Indicates whether the chat lock is currently on or off.
        # Corresponds to the JSON property `chatLock`
        # @return [Boolean]
        attr_accessor :chat_lock
        alias_method :chat_lock?, :chat_lock
      
        # Whether Client-side Encryption is enabled for this conference.
        # Corresponds to the JSON property `cseEnabled`
        # @return [Boolean]
        attr_accessor :cse_enabled
        alias_method :cse_enabled?, :cse_enabled
      
        # Indicates whether moderation is currently on or off.
        # Corresponds to the JSON property `moderationEnabled`
        # @return [Boolean]
        attr_accessor :moderation_enabled
        alias_method :moderation_enabled?, :moderation_enabled
      
        # Indicates whether the present lock is currently on or off.
        # Corresponds to the JSON property `presentLock`
        # @return [Boolean]
        attr_accessor :present_lock
        alias_method :present_lock?, :present_lock
      
        # Indicates whether the reactions lock is currently on or off.
        # Corresponds to the JSON property `reactionsLock`
        # @return [Boolean]
        attr_accessor :reactions_lock
        alias_method :reactions_lock?, :reactions_lock
      
        # Indicates whether the video lock is currently on or off.
        # Corresponds to the JSON property `videoLock`
        # @return [Boolean]
        attr_accessor :video_lock
        alias_method :video_lock?, :video_lock
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_lock = args[:access_lock] if args.key?(:access_lock)
          @access_type = args[:access_type] if args.key?(:access_type)
          @allow_joining_before_host = args[:allow_joining_before_host] if args.key?(:allow_joining_before_host)
          @attendance_report_enabled = args[:attendance_report_enabled] if args.key?(:attendance_report_enabled)
          @audio_lock = args[:audio_lock] if args.key?(:audio_lock)
          @chat_lock = args[:chat_lock] if args.key?(:chat_lock)
          @cse_enabled = args[:cse_enabled] if args.key?(:cse_enabled)
          @moderation_enabled = args[:moderation_enabled] if args.key?(:moderation_enabled)
          @present_lock = args[:present_lock] if args.key?(:present_lock)
          @reactions_lock = args[:reactions_lock] if args.key?(:reactions_lock)
          @video_lock = args[:video_lock] if args.key?(:video_lock)
        end
      end
      
      # Represents a principal which possesses a particular secret string whose
      # cryptographic hash is specified here. CapTokens ("Capability Tokens") are used
      # in ACLProto. It's expected that ACLs with CapTokenHolders will strongly
      # enforce them by Keystore-wrapping crypto keys for the corresponding CapTokens.
      class CapTokenHolderProto
        include Google::Apis::Core::Hashable
      
        # The hash of the corresponding capability token. The value is defined to be
        # identical to the one in acl.proto's CapTokenMetadata: 10-byte prefix of HMAC-
        # SHA1 of the token. The HMAC key is the following fixed (non-secret) 512-bit
        # value: 79b1c8f4 82baf523 b8a9ab4a e960f438 c45be041 11f1f222 e8a3f64d aeb05e3d
        # c3576acc ec649194 aede422c 4e48e0d1 ff21234a a6ed6b49 a7fa592e efd7bba3
        # Corresponds to the JSON property `tokenHmacSha1Prefix`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :token_hmac_sha1_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token_hmac_sha1_prefix = args[:token_hmac_sha1_prefix] if args.key?(:token_hmac_sha1_prefix)
        end
      end
      
      # 
      class Card
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::CloudsearchV1::CardAction>]
        attr_accessor :card_actions
      
        # 
        # Corresponds to the JSON property `displayStyle`
        # @return [String]
        attr_accessor :display_style
      
        # A persistent (sticky) footer that is added to the bottom of the card.
        # Corresponds to the JSON property `fixedFooter`
        # @return [Google::Apis::CloudsearchV1::FixedFooter]
        attr_accessor :fixed_footer
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::CloudsearchV1::CardHeader]
        attr_accessor :header
      
        # Name of the card used in CardNavigation.pop_to_card_name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # When displaying contextual content, the peek card header acts as a placeholder
        # so that the user can navigate forward between the homepage cards and the
        # contextual cards.
        # Corresponds to the JSON property `peekCardHeader`
        # @return [Google::Apis::CloudsearchV1::CardHeader]
        attr_accessor :peek_card_header
      
        # 
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::CloudsearchV1::Section>]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_actions = args[:card_actions] if args.key?(:card_actions)
          @display_style = args[:display_style] if args.key?(:display_style)
          @fixed_footer = args[:fixed_footer] if args.key?(:fixed_footer)
          @header = args[:header] if args.key?(:header)
          @name = args[:name] if args.key?(:name)
          @peek_card_header = args[:peek_card_header] if args.key?(:peek_card_header)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # When an AddOn Card is shown in detailed view, a card action is the action
      # associated with the card. For an invoice card, a typical action would be:
      # delete invoice, email invoice or open the invoice in browser.
      class CardAction
        include Google::Apis::Core::Hashable
      
        # The label used to be displayed in the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_label = args[:action_label] if args.key?(:action_label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class CardCapabilityMetadata
        include Google::Apis::Core::Hashable
      
        # NEXT TAG : 2
        # Corresponds to the JSON property `requiredCapabilities`
        # @return [Array<String>]
        attr_accessor :required_capabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_capabilities = args[:required_capabilities] if args.key?(:required_capabilities)
        end
      end
      
      # 
      class CardHeader
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image which will be used for accessibility.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # 
        # Corresponds to the JSON property `imageStyle`
        # @return [String]
        attr_accessor :image_style
      
        # 
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title must be specified. The header has a fixed height: if both a title
        # and subtitle is specified, each will take up 1 line. If only the title is
        # specified, it will take up both lines. The header is rendered in collapsed and
        # detailed view.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_alt_text = args[:image_alt_text] if args.key?(:image_alt_text)
          @image_style = args[:image_style] if args.key?(:image_style)
          @image_url = args[:image_url] if args.key?(:image_url)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class CaribouAttributeValue
        include Google::Apis::Core::Hashable
      
        # Tags 1 through 15 are reserved for the most commonly used fields.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # 
        # Corresponds to the JSON property `longValue`
        # @return [Fixnum]
        attr_accessor :long_value
      
        # Generally, applications should avoid storing raw bytes and instead store
        # structured data as protocol buffer extensions. This both reduces the amount of
        # ad-hoc attribute parsing code as well as eliminates an intermediate copy of
        # the data when deserializing the value. The rawByteValue field is mainly
        # provided for compatibility with attributes stored before the introduction of
        # the Attribute.Value.
        # Corresponds to the JSON property `rawByteValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_byte_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @long_value = args[:long_value] if args.key?(:long_value)
          @raw_byte_value = args[:raw_byte_value] if args.key?(:raw_byte_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Actions handled by Chat Clients.
      class ChatClientActionMarkup
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata used as inputs to the localization that is performed on Dynamite-
      # originated messages that are incompatible with Hangouts clients. See go/
      # localization-of-system-messages for more details.
      class ChatConserverDynamitePlaceholderMetadata
        include Google::Apis::Core::Hashable
      
        # An attachment uploaded in Dynamite and its filename.
        # Corresponds to the JSON property `attachmentMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataAttachmentMetadata]
        attr_accessor :attachment_metadata
      
        # A bot sent a message in Dynamite.
        # Corresponds to the JSON property `botMessageMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataBotMessageMetadata]
        attr_accessor :bot_message_metadata
      
        # A Calendar event message in Dynamite.
        # Corresponds to the JSON property `calendarEventMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata]
        attr_accessor :calendar_event_metadata
      
        # A message was deleted in Dynamite.
        # Corresponds to the JSON property `deleteMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataDeleteMetadata]
        attr_accessor :delete_metadata
      
        # An edit was made in Dynamite.
        # Corresponds to the JSON property `editMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataEditMetadata]
        attr_accessor :edit_metadata
      
        # The space URL embedded in the localized string.
        # Corresponds to the JSON property `spaceUrl`
        # @return [String]
        attr_accessor :space_url
      
        # A Tasks message in Dynamite.
        # Corresponds to the JSON property `tasksMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataTasksMetadata]
        attr_accessor :tasks_metadata
      
        # A Meet initiated in Dynamite and its URL.
        # Corresponds to the JSON property `videoCallMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadataVideoCallMetadata]
        attr_accessor :video_call_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_metadata = args[:attachment_metadata] if args.key?(:attachment_metadata)
          @bot_message_metadata = args[:bot_message_metadata] if args.key?(:bot_message_metadata)
          @calendar_event_metadata = args[:calendar_event_metadata] if args.key?(:calendar_event_metadata)
          @delete_metadata = args[:delete_metadata] if args.key?(:delete_metadata)
          @edit_metadata = args[:edit_metadata] if args.key?(:edit_metadata)
          @space_url = args[:space_url] if args.key?(:space_url)
          @tasks_metadata = args[:tasks_metadata] if args.key?(:tasks_metadata)
          @video_call_metadata = args[:video_call_metadata] if args.key?(:video_call_metadata)
        end
      end
      
      # An attachment uploaded in Dynamite and its filename.
      class ChatConserverDynamitePlaceholderMetadataAttachmentMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # A bot sent a message in Dynamite.
      class ChatConserverDynamitePlaceholderMetadataBotMessageMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Calendar event message in Dynamite.
      class ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A message was deleted in Dynamite.
      class ChatConserverDynamitePlaceholderMetadataDeleteMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An edit was made in Dynamite.
      class ChatConserverDynamitePlaceholderMetadataEditMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Tasks message in Dynamite.
      class ChatConserverDynamitePlaceholderMetadataTasksMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Meet initiated in Dynamite and its URL.
      class ChatConserverDynamitePlaceholderMetadataVideoCallMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `meetingUrl`
        # @return [String]
        attr_accessor :meeting_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meeting_url = args[:meeting_url] if args.key?(:meeting_url)
        end
      end
      
      # The content of a chat message, which includes 0 or more segments along with 0
      # or more embeds, which represent various attachment types (like photos).
      class ChatConserverMessageContent
        include Google::Apis::Core::Hashable
      
        # Items attached to this message, such as photos. This should *NOT* be set by
        # clients. It will be automatically set from media uploaded along with this
        # request and using the information provided in existing_media.
        # Corresponds to the JSON property `attachment`
        # @return [Array<Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment>]
        attr_accessor :attachment
      
        # The text part of the message content. Segments are concatenated together to
        # yield the full message. A message can have zero or more segments.
        # Corresponds to the JSON property `segment`
        # @return [Array<Google::Apis::CloudsearchV1::Segment>]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment = args[:attachment] if args.key?(:attachment)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # NEXT ID: 12
      class ChatContentExtension
        include Google::Apis::Core::Hashable
      
        # Annotations to decorate this event.
        # Corresponds to the JSON property `annotation`
        # @return [Array<Google::Apis::CloudsearchV1::EventAnnotation>]
        attr_accessor :annotation
      
        # Metadata used as inputs to the localization that is performed on Dynamite-
        # originated messages that are incompatible with Hangouts clients. See go/
        # localization-of-system-messages for more details.
        # Corresponds to the JSON property `dynamitePlaceholderMetadata`
        # @return [Google::Apis::CloudsearchV1::ChatConserverDynamitePlaceholderMetadata]
        attr_accessor :dynamite_placeholder_metadata
      
        # Is this event OnTR or OffTR? Since some events can be ON_THE_RECORD and have
        # an expiration_timestamp (for example enterprise retention users) we need to
        # store the otr status.
        # Corresponds to the JSON property `eventOtrStatus`
        # @return [String]
        attr_accessor :event_otr_status
      
        # Group-link sharing toggle event.
        # Corresponds to the JSON property `groupLinkSharingModificationEvent`
        # @return [Google::Apis::CloudsearchV1::GroupLinkSharingModificationEvent]
        attr_accessor :group_link_sharing_modification_event
      
        # Audio/video Hangout event.
        # Corresponds to the JSON property `hangoutEvent`
        # @return [Google::Apis::CloudsearchV1::HangoutEvent]
        attr_accessor :hangout_event
      
        # Invite accepted events. Note: this is only used ephemerally to sync to Gmail.
        # No actual cent is stored in Papyrus.
        # Corresponds to the JSON property `inviteAcceptedEvent`
        # @return [Google::Apis::CloudsearchV1::InviteAcceptedEvent]
        attr_accessor :invite_accepted_event
      
        # Join/leave events.
        # Corresponds to the JSON property `membershipChangeEvent`
        # @return [Google::Apis::CloudsearchV1::MembershipChangeEvent]
        attr_accessor :membership_change_event
      
        # Metadata for off-the-record message.
        # Corresponds to the JSON property `otrChatMessageEvent`
        # @return [Google::Apis::CloudsearchV1::OtrChatMessageEvent]
        attr_accessor :otr_chat_message_event
      
        # 
        # Corresponds to the JSON property `otrModificationEvent`
        # @return [Google::Apis::CloudsearchV1::OtrModificationEvent]
        attr_accessor :otr_modification_event
      
        # 
        # Corresponds to the JSON property `renameEvent`
        # @return [Google::Apis::CloudsearchV1::RenameEvent]
        attr_accessor :rename_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation = args[:annotation] if args.key?(:annotation)
          @dynamite_placeholder_metadata = args[:dynamite_placeholder_metadata] if args.key?(:dynamite_placeholder_metadata)
          @event_otr_status = args[:event_otr_status] if args.key?(:event_otr_status)
          @group_link_sharing_modification_event = args[:group_link_sharing_modification_event] if args.key?(:group_link_sharing_modification_event)
          @hangout_event = args[:hangout_event] if args.key?(:hangout_event)
          @invite_accepted_event = args[:invite_accepted_event] if args.key?(:invite_accepted_event)
          @membership_change_event = args[:membership_change_event] if args.key?(:membership_change_event)
          @otr_chat_message_event = args[:otr_chat_message_event] if args.key?(:otr_chat_message_event)
          @otr_modification_event = args[:otr_modification_event] if args.key?(:otr_modification_event)
          @rename_event = args[:rename_event] if args.key?(:rename_event)
        end
      end
      
      # Represents the invitees or other users associated with a Babel Chat (see http:/
      # /goto/babel). Corresponds to GroupType CHAT in //social/graph/storage/proto/
      # data.proto.
      class ChatProto
        include Google::Apis::Core::Hashable
      
        # Chat IDs consist of alphanumeric characters and colons. Currently required.
        # Corresponds to the JSON property `chatId`
        # @return [String]
        attr_accessor :chat_id
      
        # The type of Chat members to consider, e.g. "all members" vs. "invitee" These
        # are defined by legacy_relation_id values in social.graph.storage.EdgeTypeEnum.
        # EdgeType enum options in social/graph/storage/proto/id.proto. See chat.pb (
        # defined in production/config/cdd/socialgraph/mixer_config/prod/
        # node_type_config) for all valid edge types associated with chat. Currently
        # required.
        # Corresponds to the JSON property `memberType`
        # @return [Fixnum]
        attr_accessor :member_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_id = args[:chat_id] if args.key?(:chat_id)
          @member_type = args[:member_type] if args.key?(:member_type)
        end
      end
      
      # 
      class CheckAccessResponse
        include Google::Apis::Core::Hashable
      
        # Returns true if principal has access. Returns false otherwise.
        # Corresponds to the JSON property `hasAccess`
        # @return [Boolean]
        attr_accessor :has_access
        alias_method :has_access?, :has_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_access = args[:has_access] if args.key?(:has_access)
        end
      end
      
      # Represents a Google+ Circle. Currently (12/2011), a Circle is identical to the
      # ContactGroup with matching parameters, but Circle must only be used for true
      # Circles and not other Focus groups, and should be preferred over ContactGroup
      # where applicable. Soon it may become more efficient to check membership in a
      # Circle than in a ContactGroup (see http://go/superglue). Support for this
      # principal type is currently (12/2011) incomplete -- e.g., Keystore does not
      # support it yet (see b/5703421).
      class CircleProto
        include Google::Apis::Core::Hashable
      
        # Circle ID is unique only relative to the owner's Gaia ID. Currently required.
        # Corresponds to the JSON property `circleId`
        # @return [Fixnum]
        attr_accessor :circle_id
      
        # The owner of the circle. Currently required.
        # Corresponds to the JSON property `ownerGaiaId`
        # @return [Fixnum]
        attr_accessor :owner_gaia_id
      
        # If present, then tests for membership in this circle must use data known to be
        # at least as fresh as the given (FBS-assigned) timestamp. See http://go/fbs-
        # consistent-read-after-important-write Before using this, be sure that any
        # service checking authorization against this circle supports checking
        # consistency timestamps. For example, as of 12/2011, Keystore only supports
        # this for the Moonshine configuration, and in others authorization checks will
        # fail if the timestamp is present.
        # Corresponds to the JSON property `requiredConsistencyTimestampUsec`
        # @return [Fixnum]
        attr_accessor :required_consistency_timestamp_usec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle_id = args[:circle_id] if args.key?(:circle_id)
          @owner_gaia_id = args[:owner_gaia_id] if args.key?(:owner_gaia_id)
          @required_consistency_timestamp_usec = args[:required_consistency_timestamp_usec] if args.key?(:required_consistency_timestamp_usec)
        end
      end
      
      # Represents the context of the client on behalf of which a HistoryRecord is
      # produced. The ClientContext message can be used to hold context about the
      # service client (e.g. the internal server making fusebox requests) or the user
      # client (e.g. the IP address of the end user).
      class ClientContext
        include Google::Apis::Core::Hashable
      
        # The client operation to which this history record belongs. The notion of a
        # client operation is provided to keep track of client operations which might
        # span multiple transactions in the lower level.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # E.g. "pinto", "imap", "bigtop", "upload"
        # Corresponds to the JSON property `clientType`
        # @return [String]
        attr_accessor :client_type
      
        # Contains information about the session which created this history record. This
        # will be empty if the history record was generated by an internal request.
        # Corresponds to the JSON property `sessionContext`
        # @return [Google::Apis::CloudsearchV1::SessionContext]
        attr_accessor :session_context
      
        # Textual representation of the user's IP address, if available.
        # Corresponds to the JSON property `userIp`
        # @return [String]
        attr_accessor :user_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @client_type = args[:client_type] if args.key?(:client_type)
          @session_context = args[:session_context] if args.key?(:session_context)
          @user_ip = args[:user_ip] if args.key?(:user_ip)
        end
      end
      
      # Principal associated with a Cloud Principal representing third party user.
      class CloudPrincipalProto
        include Google::Apis::Core::Hashable
      
        # Format: "`identity-pool`:`subject`#" Details: go/cloud-principal-identifiers
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # ClusterInfo contains clustering related information for a particular thread
      # that would be sent as part of the conversation view. Today, this information
      # would be used by iOS notification server to identify whether the thread
      # belongs to a cluster. If the thread belongs to a grouped cluster, it would
      # identify whether the cluster is throttled.
      class ClusterInfo
        include Google::Apis::Core::Hashable
      
        # IDs of the highest priority clusters to which the thread belongs to. If this
        # field is not present, the thread does not belong to any cluster and would be
        # shown in the inbox, unclustered.
        # Corresponds to the JSON property `clusterId`
        # @return [Array<String>]
        attr_accessor :cluster_id
      
        # If the thread belongs to a grouped cluster and all of those clusters are
        # throttled, then this field is set to true.
        # Corresponds to the JSON property `throttled`
        # @return [Boolean]
        attr_accessor :throttled
        alias_method :throttled?, :throttled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @throttled = args[:throttled] if args.key?(:throttled)
        end
      end
      
      # Metadata about a co-activity session.
      class CoActivity
        include Google::Apis::Core::Hashable
      
        # The title of the activity in this co-activity session. For example, this might
        # be the title of the video being co-watched, or the name of the round of a game
        # being co-played.
        # Corresponds to the JSON property `activityTitle`
        # @return [String]
        attr_accessor :activity_title
      
        # Identifies the app handling this co-activity.
        # Corresponds to the JSON property `coActivityApp`
        # @return [String]
        attr_accessor :co_activity_app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_title = args[:activity_title] if args.key?(:activity_title)
          @co_activity_app = args[:co_activity_app] if args.key?(:co_activity_app)
        end
      end
      
      # Information about a collaboration session.
      class Collaboration
        include Google::Apis::Core::Hashable
      
        # The attachment being collaborated on.
        # Corresponds to the JSON property `attachmentId`
        # @return [String]
        attr_accessor :attachment_id
      
        # Resource for displaying user info
        # Corresponds to the JSON property `initiator`
        # @return [Google::Apis::CloudsearchV1::UserDisplayInfo]
        attr_accessor :initiator
      
        # The uri of the artifact being collaborated on.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_id = args[:attachment_id] if args.key?(:attachment_id)
          @initiator = args[:initiator] if args.key?(:initiator)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't carry
      # information about the absolute color space that should be used to interpret
      # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most
      # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
      # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
      # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
      # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
      # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
      # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
      # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
      # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
      # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
      # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
      # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
      # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
      # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
      # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
      # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
      # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
      # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
      # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
      # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
      # autorelease]; return result; ` // ... Example (JavaScript): // ... var
      # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
      # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
      # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
      # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
      # / ...
      class Color
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: `pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color)` This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is rendered as a solid
        # color (as if the alpha value had been explicitly given a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # An individual instance (or "tag") of a label configured as a communal type
      # that's associated with a message.
      class CommunalLabelTag
        include Google::Apis::Core::Hashable
      
        # Gaia ID of the user who added the tag, if any. Not present for any tags
        # automatically created by server-side processing.
        # Corresponds to the JSON property `creatorUserId`
        # @return [Fixnum]
        attr_accessor :creator_user_id
      
        # A string ID representing the label. Possible ID values are documented at go/
        # chat-labels-howto:ids. Example: "^*t_p" for "Pinned".
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @label_id = args[:label_id] if args.key?(:label_id)
        end
      end
      
      # 
      class CompositeFilter
        include Google::Apis::Core::Hashable
      
        # The logic operator of the sub filter.
        # Corresponds to the JSON property `logicOperator`
        # @return [String]
        attr_accessor :logic_operator
      
        # Sub filters.
        # Corresponds to the JSON property `subFilters`
        # @return [Array<Google::Apis::CloudsearchV1::Filter>]
        attr_accessor :sub_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logic_operator = args[:logic_operator] if args.key?(:logic_operator)
          @sub_filters = args[:sub_filters] if args.key?(:sub_filters)
        end
      end
      
      # Annotation metadata app unfurl consent.
      class ConsentedAppUnfurlMetadata
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `clientSpecifiedAppId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :client_specified_app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_specified_app_id = args[:client_specified_app_id] if args.key?(:client_specified_app_id)
        end
      end
      
      # A group of contacts for a given user, as described in http://cs/p#google3/
      # focus/backend/proto/backend.proto Historically (and in still-existing ACLs),
      # this was used to represent Google+ circles as well as contact groups, but this
      # use is now deprecated. New code should use the CIRCLE principal type to
      # represent Google+ circles.
      class ContactGroupProto
        include Google::Apis::Core::Hashable
      
        # Group ID is unique only relative to the owner's Gaia ID.
        # Corresponds to the JSON property `groupId`
        # @return [Fixnum]
        attr_accessor :group_id
      
        # 
        # Corresponds to the JSON property `ownerGaiaId`
        # @return [Fixnum]
        attr_accessor :owner_gaia_id
      
        # If present, then tests for membership in this ContactGroup must use data known
        # to be at least as fresh as the given (FBS-assigned) timestamp. See http://go/
        # fbs-consistent-read-after-important-write Before using this, be sure that any
        # service checking authorization against this group supports checking
        # consistency timestamps. For example, as of 12/2011, Keystore only supports
        # this for the Moonshine configuration, and in others authorization checks will
        # fail if the timestamp is present.
        # Corresponds to the JSON property `requiredConsistencyTimestampUsec`
        # @return [Fixnum]
        attr_accessor :required_consistency_timestamp_usec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @owner_gaia_id = args[:owner_gaia_id] if args.key?(:owner_gaia_id)
          @required_consistency_timestamp_usec = args[:required_consistency_timestamp_usec] if args.key?(:required_consistency_timestamp_usec)
        end
      end
      
      # 
      class ContentReport
        include Google::Apis::Core::Hashable
      
        # The time at which the report is generated. Always populated when it is in a
        # response.
        # Corresponds to the JSON property `reportCreateTimestamp`
        # @return [String]
        attr_accessor :report_create_timestamp
      
        # Additional user-provided justification on the report. Optional.
        # Corresponds to the JSON property `reportJustification`
        # @return [Google::Apis::CloudsearchV1::ContentReportJustification]
        attr_accessor :report_justification
      
        # Denotes a type of content report a user can send.
        # Corresponds to the JSON property `reportType`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedContentReportType]
        attr_accessor :report_type
      
        # Primary key for User resource.
        # Corresponds to the JSON property `reporterUserId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :reporter_user_id
      
        # Create timestamp of the revisions of the message when it's reported. Always
        # populated when it is in a response.
        # Corresponds to the JSON property `revisionCreateTimestamp`
        # @return [String]
        attr_accessor :revision_create_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_create_timestamp = args[:report_create_timestamp] if args.key?(:report_create_timestamp)
          @report_justification = args[:report_justification] if args.key?(:report_justification)
          @report_type = args[:report_type] if args.key?(:report_type)
          @reporter_user_id = args[:reporter_user_id] if args.key?(:reporter_user_id)
          @revision_create_timestamp = args[:revision_create_timestamp] if args.key?(:revision_create_timestamp)
        end
      end
      
      # 
      class ContentReportJustification
        include Google::Apis::Core::Hashable
      
        # Optional. User-generated free-text justification for the content report.
        # Corresponds to the JSON property `userJustification`
        # @return [String]
        attr_accessor :user_justification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_justification = args[:user_justification] if args.key?(:user_justification)
        end
      end
      
      # Summarized info of content reports. Usually less expensive to fetch than to
      # fetch all detailed reports. Set only when the request asks for it.
      class ContentReportSummary
        include Google::Apis::Core::Hashable
      
        # Total number of reports attached to this (revision of) message.
        # Corresponds to the JSON property `numberReports`
        # @return [Fixnum]
        attr_accessor :number_reports
      
        # Totoal number of reports attached to all revisions of this message (i.e. since
        # creation). Set only when the request asks for it.
        # Corresponds to the JSON property `numberReportsAllRevisions`
        # @return [Fixnum]
        attr_accessor :number_reports_all_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number_reports = args[:number_reports] if args.key?(:number_reports)
          @number_reports_all_revisions = args[:number_reports_all_revisions] if args.key?(:number_reports_all_revisions)
        end
      end
      
      # A named attribute associated with an item which can be used for influencing
      # the ranking of the item based on the context in the request.
      class ContextAttribute
        include Google::Apis::Core::Hashable
      
        # The name of the attribute. It should not be empty. The maximum length is 32
        # characters. The name must start with a letter and can only contain letters (A-
        # Z, a-z) or numbers (0-9). The name will be normalized (lower-cased) before
        # being matched.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Text values of the attribute. The maximum number of elements is 10. The
        # maximum length of an element in the array is 32 characters. The value will be
        # normalized (lower-cased) before being matched.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The markup for developers to specify the contents of a contextual AddOn. A
      # contextual AddOn is triggered in context of an email. For that email, there
      # can be N items that are associated with the email (e.g. contacts, sales lead,
      # meeting information). Each item is represented as a "card". A card has two
      # views, collapsed and detailed. If there are more than 1 card, the cards are
      # show as a list of collapsed views. The end user can expand into the detailed
      # view for each of those cards. In the detailed view, developers have the
      # freedom to use a variety of "widgets" to construct it. The model here is to
      # restrict (make consistent for end users) the navigation of the N cards but
      # providing developers the freedom to build the detailed view that can best
      # represent their use case/content. Go http://go/aoig-widgets1 to see the mocks.
      # Post v1, we plan to support new AddOn use cases that will require different
      # and separate 'templates'. For example, a compose triggered AddOn which will
      # support a new set of use cases with different user interaction patterns. As a
      # result, we will likely need a very different template than this one.
      class ContextualAddOnMarkup
        include Google::Apis::Core::Hashable
      
        # A card must contain a header and at least 1 section.
        # Corresponds to the JSON property `cards`
        # @return [Array<Google::Apis::CloudsearchV1::Card>]
        attr_accessor :cards
      
        # The Toolbar markup has been deprecated. The information is now specified in
        # the manifest.
        # Corresponds to the JSON property `toolbar`
        # @return [Google::Apis::CloudsearchV1::Toolbar]
        attr_accessor :toolbar
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cards = args[:cards] if args.key?(:cards)
          @toolbar = args[:toolbar] if args.key?(:toolbar)
        end
      end
      
      # Information needed for Client-side Encryption.
      class CseInfo
        include Google::Apis::Core::Hashable
      
        # CSE domain name claimed by the meeting owner's company. This field is expected
        # to be used for display purposes only, i.e., "Extra encryption added by $
        # cse_domain". It can differ from the `cse_domain` as defined elsewhere on the
        # User, in the case of cross-domain meetings.
        # Corresponds to the JSON property `cseDomain`
        # @return [String]
        attr_accessor :cse_domain
      
        # The wrapped CSE key used by this conference.
        # Corresponds to the JSON property `wrappedKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :wrapped_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cse_domain = args[:cse_domain] if args.key?(:cse_domain)
          @wrapped_key = args[:wrapped_key] if args.key?(:wrapped_key)
        end
      end
      
      # 
      class CustomEmojiMetadata
        include Google::Apis::Core::Hashable
      
        # Proto representation of a custom emoji. May be used in both APIs and in
        # Spanner, but certain fields should be restricted to one or the other. See the
        # per-field documentation for details. NEXT_TAG: 14
        # Corresponds to the JSON property `customEmoji`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCustomEmoji]
        attr_accessor :custom_emoji
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emoji = args[:custom_emoji] if args.key?(:custom_emoji)
        end
      end
      
      # The result of a user running a custom function.
      class CustomFunctionReturnValueMarkup
        include Google::Apis::Core::Hashable
      
        # The error message to show to the user if something went wrong.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The value that resulted from running the custom function.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a GSuite customer ID. Obfuscated with CustomerIdObfuscator.
      class CustomerId
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # Aggregation of items by status code as of the specified date.
      class CustomerIndexStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # Number of items aggregrated by status code.
        # Corresponds to the JSON property `itemCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::ItemCountByStatus>]
        attr_accessor :item_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @item_count_by_status = args[:item_count_by_status] if args.key?(:item_count_by_status)
        end
      end
      
      # 
      class CustomerQueryStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # 
        # Corresponds to the JSON property `queryCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::QueryCountByStatus>]
        attr_accessor :query_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @query_count_by_status = args[:query_count_by_status] if args.key?(:query_count_by_status)
        end
      end
      
      # Search application stats for a customer for the given date.
      class CustomerSearchApplicationStats
        include Google::Apis::Core::Hashable
      
        # The count of search applications for the date.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # 
      class CustomerSessionStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of search sessions on the day
        # Corresponds to the JSON property `searchSessionsCount`
        # @return [Fixnum]
        attr_accessor :search_sessions_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @search_sessions_count = args[:search_sessions_count] if args.key?(:search_sessions_count)
        end
      end
      
      # Represents settings at a customer level.
      class CustomerSettings
        include Google::Apis::Core::Hashable
      
        # Represents the settings for Cloud audit logging
        # Corresponds to the JSON property `auditLoggingSettings`
        # @return [Google::Apis::CloudsearchV1::AuditLoggingSettings]
        attr_accessor :audit_logging_settings
      
        # VPC SC settings for the customer. If update_mask is empty then this field will
        # be updated based on UpdateCustomerSettings request.
        # Corresponds to the JSON property `vpcSettings`
        # @return [Google::Apis::CloudsearchV1::VpcSettings]
        attr_accessor :vpc_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_logging_settings = args[:audit_logging_settings] if args.key?(:audit_logging_settings)
          @vpc_settings = args[:vpc_settings] if args.key?(:vpc_settings)
        end
      end
      
      # 
      class CustomerUserStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of unique active users in the past one day
        # Corresponds to the JSON property `oneDayActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :one_day_active_users_count
      
        # The count of unique active users in the past seven days
        # Corresponds to the JSON property `sevenDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :seven_days_active_users_count
      
        # The count of unique active users in the past thirty days
        # Corresponds to the JSON property `thirtyDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :thirty_days_active_users_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @one_day_active_users_count = args[:one_day_active_users_count] if args.key?(:one_day_active_users_count)
          @seven_days_active_users_count = args[:seven_days_active_users_count] if args.key?(:seven_days_active_users_count)
          @thirty_days_active_users_count = args[:thirty_days_active_users_count] if args.key?(:thirty_days_active_users_count)
        end
      end
      
      # Annotation metadata for Data Loss Prevention that pertains to DLP violation on
      # message send or edit events. It is used for client -> BE communication and
      # other downstream process in BE (e.g. storage and audit logging), and it should
      # never be returned to the client.
      class DataLossPreventionMetadata
        include Google::Apis::Core::Hashable
      
        # A summary of a DLP scan event. This is a summary and should contain the
        # minimum amount of data required to identify and process DLP scans. It is
        # written to Starcast and encoded & returned to the client on attachment upload.
        # Corresponds to the JSON property `dlpScanSummary`
        # @return [Google::Apis::CloudsearchV1::DlpScanSummary]
        attr_accessor :dlp_scan_summary
      
        # Flag set by client on message resend to bypass WARN violation.
        # Corresponds to the JSON property `warnAcknowledged`
        # @return [Boolean]
        attr_accessor :warn_acknowledged
        alias_method :warn_acknowledged?, :warn_acknowledged
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dlp_scan_summary = args[:dlp_scan_summary] if args.key?(:dlp_scan_summary)
          @warn_acknowledged = args[:warn_acknowledged] if args.key?(:warn_acknowledged)
        end
      end
      
      # Datasource is a logical namespace for items to be indexed. All items must
      # belong to a datasource. This is the prerequisite before items can be indexed
      # into Cloud Search.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # If true, sets the datasource to read-only mode. In read-only mode, the
        # Indexing API rejects any requests to index or delete items in this source.
        # Enabling read-only mode does not stop the processing of previously accepted
        # data.
        # Corresponds to the JSON property `disableModifications`
        # @return [Boolean]
        attr_accessor :disable_modifications
        alias_method :disable_modifications?, :disable_modifications
      
        # Disable serving any search or assist results.
        # Corresponds to the JSON property `disableServing`
        # @return [Boolean]
        attr_accessor :disable_serving
        alias_method :disable_serving?, :disable_serving
      
        # Required. Display name of the datasource The maximum length is 300 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # List of service accounts that have indexing access.
        # Corresponds to the JSON property `indexingServiceAccounts`
        # @return [Array<String>]
        attr_accessor :indexing_service_accounts
      
        # This field restricts visibility to items at the datasource level. Items within
        # the datasource are restricted to the union of users and groups included in
        # this field. Note that, this does not ensure access to a specific item, as
        # users need to have ACL permissions on the contained items. This ensures a high
        # level access on the entire datasource, and that the individual items are not
        # shared outside this visibility.
        # Corresponds to the JSON property `itemsVisibility`
        # @return [Array<Google::Apis::CloudsearchV1::GSuitePrincipal>]
        attr_accessor :items_visibility
      
        # The name of the datasource resource. Format: datasources/`source_id`. The name
        # is ignored when creating a datasource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IDs of the Long Running Operations (LROs) currently running for this schema.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        # Can a user request to get thumbnail URI for Items indexed in this data source.
        # Corresponds to the JSON property `returnThumbnailUrls`
        # @return [Boolean]
        attr_accessor :return_thumbnail_urls
        alias_method :return_thumbnail_urls?, :return_thumbnail_urls
      
        # A short name or alias for the source. This value will be used to match the '
        # source' operator. For example, if the short name is *<value>* then queries
        # like *source:<value>* will only return results for this source. The value must
        # be unique across all datasources. The value must only contain alphanumeric
        # characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one
        # of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts,
        # gplus, keep, people, teams. Its maximum length is 32 characters.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_modifications = args[:disable_modifications] if args.key?(:disable_modifications)
          @disable_serving = args[:disable_serving] if args.key?(:disable_serving)
          @display_name = args[:display_name] if args.key?(:display_name)
          @indexing_service_accounts = args[:indexing_service_accounts] if args.key?(:indexing_service_accounts)
          @items_visibility = args[:items_visibility] if args.key?(:items_visibility)
          @name = args[:name] if args.key?(:name)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
          @return_thumbnail_urls = args[:return_thumbnail_urls] if args.key?(:return_thumbnail_urls)
          @short_name = args[:short_name] if args.key?(:short_name)
        end
      end
      
      # Aggregation of items by status code as of the specified date.
      class DataSourceIndexStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # Number of items aggregrated by status code.
        # Corresponds to the JSON property `itemCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::ItemCountByStatus>]
        attr_accessor :item_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @item_count_by_status = args[:item_count_by_status] if args.key?(:item_count_by_status)
        end
      end
      
      # Restriction on Datasource.
      class DataSourceRestriction
        include Google::Apis::Core::Hashable
      
        # Filter options restricting the results. If multiple filters are present, they
        # are grouped by object type before joining. Filters with the same object type
        # are joined conjunctively, then the resulting expressions are joined
        # disjunctively. The maximum number of elements is 20. NOTE: Suggest API
        # supports only few filters at the moment: "objecttype", "type" and "mimetype".
        # For now, schema specific filters cannot be used to filter suggestions.
        # Corresponds to the JSON property `filterOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FilterOptions>]
        attr_accessor :filter_options
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_options = args[:filter_options] if args.key?(:filter_options)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Represents a whole calendar date, for example a date of birth. The time of day
      # and time zone are either specified elsewhere or are not significant. The date
      # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
      # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
      # between the year 1 and 9999.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of date. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999.
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
      
      # Optional. Provides a search operator for date properties. Search operators let
      # users restrict the query to specific fields relevant to the type of item being
      # searched.
      class DateOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the date
        # property using the greater-than operator. For example, if
        # greaterThanOperatorName is *closedafter* and the property's name is *closeDate*
        # , then queries like *closedafter:<value>* show results only where the value of
        # the property named *closeDate* is later than *<value>*. The operator name can
        # only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the date
        # property using the less-than operator. For example, if lessThanOperatorName is
        # *closedbefore* and the property's name is *closeDate*, then queries like *
        # closedbefore:<value>* show results only where the value of the property named *
        # closeDate* is earlier than *<value>*. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the actual string required in the query in order to isolate the date
        # property. For example, suppose an issue tracking schema object has a property
        # named *closeDate* that specifies an operator with an operatorName of *closedon*
        # . For searches on that data, queries like *closedon:<value>* show results only
        # where the value of the *closeDate* property matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the indexed datasource. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for date properties.
      class DatePropertyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Provides a search operator for date properties. Search operators let
        # users restrict the query to specific fields relevant to the type of item being
        # searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::DateOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # 
      class DateTimePicker
        include Google::Apis::Core::Hashable
      
        # The label for the field, which is displayed to the user.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text field which is used in FormInput, and uniquely identifies
        # this input.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Triggered when the user clicks on the Save, or Clear button from the date /
        # time picker dialog. Will only be triggered if the value changed as a result of
        # the Save / Clear operation.
        # Corresponds to the JSON property `onChange`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :on_change
      
        # The number representing the time-zone offset from UTC, in minutes. If set, the
        # value_ms_epoch will be displayed in the specified time zone. If not set, it
        # will use the user's timezone setting in client side.
        # Corresponds to the JSON property `timezoneOffsetDate`
        # @return [Fixnum]
        attr_accessor :timezone_offset_date
      
        # The type of the DateTimePicker.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value to display which can be the default value before user input or
        # previous user input. It is represented in milliseconds (Epoch time). - For
        # DATE_AND_TIME type, the full epoch value is used. - For DATE_ONLY type, only
        # date of the epoch time is used. - For TIME_ONLY type, only time of the epoch
        # time is used. For example, you can set epoch time to 3 * 60 * 60 * 1000 to
        # represent 3am.
        # Corresponds to the JSON property `valueMsEpoch`
        # @return [Fixnum]
        attr_accessor :value_ms_epoch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change = args[:on_change] if args.key?(:on_change)
          @timezone_offset_date = args[:timezone_offset_date] if args.key?(:timezone_offset_date)
          @type = args[:type] if args.key?(:type)
          @value_ms_epoch = args[:value_ms_epoch] if args.key?(:value_ms_epoch)
        end
      end
      
      # List of date values.
      class DateValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudsearchV1::Date>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Shared request debug options for all cloudsearch RPC methods.
      class DebugOptions
        include Google::Apis::Core::Hashable
      
        # If you are asked by Google to help with debugging, set this field. Otherwise,
        # ignore this field.
        # Corresponds to the JSON property `enableDebugging`
        # @return [Boolean]
        attr_accessor :enable_debugging
        alias_method :enable_debugging?, :enable_debugging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_debugging = args[:enable_debugging] if args.key?(:enable_debugging)
        end
      end
      
      # Deep-linking data is used to construct a deep-link URI for an activity or
      # frame's embed, such that on click, the user is taken to the right place in a
      # mobile app. If the app is not installed, the user is taken to the app store.
      # If not on mobile, an analogous web uri is used.
      class DeepLinkData
        include Google::Apis::Core::Hashable
      
        # Application ID (or project ID) from Google API Console.
        # Corresponds to the JSON property `appId`
        # @return [Fixnum]
        attr_accessor :app_id
      
        # The data for a Google API Console client is entered by a developer during
        # client registration and is stored in PackagingService.
        # Corresponds to the JSON property `client`
        # @return [Array<Google::Apis::CloudsearchV1::PackagingServiceClient>]
        attr_accessor :client
      
        # The ID for non-URL content. Embeds may either have no analogous web presence
        # or prefer a native mobile experience if supported. In the case of no web
        # presence, instead of setting the "url" field of an embed, such developers will
        # set this field and other content fields, e.g. thumbnail, title, description.
        # If set, this field is used to construct the deep-link URI. Note that the
        # native experience is preferred over the web link and the web link is used as a
        # fallback.
        # Corresponds to the JSON property `deepLinkId`
        # @return [String]
        attr_accessor :deep_link_id
      
        # Analogous web presence. Used as desktop fallback or when no native link data
        # is present.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @client = args[:client] if args.key?(:client)
          @deep_link_id = args[:deep_link_id] if args.key?(:deep_link_id)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A message delete in Dynamite inserts a Babel-only item containing this field.
      # This is only inserted for messages before the source-of-truth flip. See go/hsc-
      # message-deletions for more details.
      class DeleteMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class DeleteQueueItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The name of a queue to delete items from.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @queue = args[:queue] if args.key?(:queue)
        end
      end
      
      # 
      class DeliveryMedium
        include Google::Apis::Core::Hashable
      
        # Describes the medium the cent was sent/received. For example, if I receive an
        # SMS via GV, the medium_type will be GV.
        # Corresponds to the JSON property `mediumType`
        # @return [String]
        attr_accessor :medium_type
      
        # Represents both long and short phone number that can be called or texted.
        # Short telephone numbers are used to reach local services. Short numbers and
        # their purpose differ from country to country. These numbers in US are in the
        # form of N11 which is a three-digit abbreviated dialing telephone number.
        # Corresponds to the JSON property `selfPhone`
        # @return [Google::Apis::CloudsearchV1::VoicePhoneNumber]
        attr_accessor :self_phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @medium_type = args[:medium_type] if args.key?(:medium_type)
          @self_phone = args[:self_phone] if args.key?(:self_phone)
        end
      end
      
      # A reference to a top-level property within the object that should be displayed
      # in search results. The values of the chosen properties is displayed in the
      # search results along with the display label for that property if one is
      # specified. If a display label is not specified, only the values is shown.
      class DisplayedProperty
        include Google::Apis::Core::Hashable
      
        # The name of the top-level property as defined in a property definition for the
        # object. If the name is not a defined property in the schema, an error is given
        # when attempting to update the schema.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_name = args[:property_name] if args.key?(:property_name)
        end
      end
      
      # 
      class Divider
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A summary of a DLP scan event. This is a summary and should contain the
      # minimum amount of data required to identify and process DLP scans. It is
      # written to Starcast and encoded & returned to the client on attachment upload.
      class DlpScanSummary
        include Google::Apis::Core::Hashable
      
        # The scan ID of the corresponding `@link DlpViolationScanRecord` in the `@link
        # EphemeralDlpScans` Spanner table. This can be used to fetch additional details
        # about the scan, e.g. for audit logging.
        # Corresponds to the JSON property `scanId`
        # @return [String]
        attr_accessor :scan_id
      
        # Indicates that was no attempt to scan a message or attachment because it was
        # not applicable in the given context (e.g. atomic mutuate). If this is true,
        # scan_outcome should not be set. This flag is used to identify messages that
        # DLP did not attempt to scan for monitoring scan coverage. Contents that DLP
        # attempted to scan but skipped can be identified by DlpScanOutcome.
        # SCAN_SKIPPED_* reasons. DEPRECATED: The prober can determine this from the
        # context.
        # Corresponds to the JSON property `scanNotApplicableForContext`
        # @return [Boolean]
        attr_accessor :scan_not_applicable_for_context
        alias_method :scan_not_applicable_for_context?, :scan_not_applicable_for_context
      
        # The outcome of a DLP Scan. If this is set, scan_not_applicable_for_context
        # should not be true.
        # Corresponds to the JSON property `scanOutcome`
        # @return [String]
        attr_accessor :scan_outcome
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scan_id = args[:scan_id] if args.key?(:scan_id)
          @scan_not_applicable_for_context = args[:scan_not_applicable_for_context] if args.key?(:scan_not_applicable_for_context)
          @scan_outcome = args[:scan_outcome] if args.key?(:scan_outcome)
        end
      end
      
      # 
      class DmId
        include Google::Apis::Core::Hashable
      
        # Unique server assigned Id, per Direct Message Space.
        # Corresponds to the JSON property `dmId`
        # @return [String]
        attr_accessor :dm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dm_id = args[:dm_id] if args.key?(:dm_id)
        end
      end
      
      # Information on a document attached to an active conference.
      class DocumentInfo
        include Google::Apis::Core::Hashable
      
        # Information on a whiteboard attached to an active conference. A whiteboard is
        # a Jam document.
        # Corresponds to the JSON property `whiteboardInfo`
        # @return [Google::Apis::CloudsearchV1::WhiteboardInfo]
        attr_accessor :whiteboard_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @whiteboard_info = args[:whiteboard_info] if args.key?(:whiteboard_info)
        end
      end
      
      # Used to provide a search operator for double properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class DoubleOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to use the double
        # property in sorting or as a facet. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for double properties.
      class DoublePropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for double properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::DoubleOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # List of double values.
      class DoubleValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class DriveClientActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestFileScope`
        # @return [Google::Apis::CloudsearchV1::RequestFileScope]
        attr_accessor :request_file_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_file_scope = args[:request_file_scope] if args.key?(:request_file_scope)
        end
      end
      
      # Drive follow-up search restricts (e.g. "followup:suggestions").
      class DriveFollowUpRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Drive location search restricts (e.g. "is:starred").
      class DriveLocationRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Annotation metadata for Drive artifacts.
      class DriveMetadata
        include Google::Apis::Core::Hashable
      
        # The request set by clients to instruct Backend how the user intend to fix the
        # ACL. Technically it's not a request to ACL Fixer, because Backend uses /
        # DriveService.Share to modify Drive ACLs.
        # Corresponds to the JSON property `aclFixRequest`
        # @return [Google::Apis::CloudsearchV1::AclFixRequest]
        attr_accessor :acl_fix_request
      
        # The message reconstructed based on information in the response of /
        # PermissionFixOptionsService.Query (or the Apiary API that wraps it). Indicates
        # the ability of the requester to change the access to the Drive file for the
        # room roster or the DM members. Used in GetMessagePreviewMetadataResponse only.
        # Corresponds to the JSON property `aclFixStatus`
        # @return [Google::Apis::CloudsearchV1::AclFixStatus]
        attr_accessor :acl_fix_status
      
        # Can the current user edit this resource
        # Corresponds to the JSON property `canEdit`
        # @return [Boolean]
        attr_accessor :can_edit
        alias_method :can_edit?, :can_edit
      
        # Can the current user share this resource
        # Corresponds to the JSON property `canShare`
        # @return [Boolean]
        attr_accessor :can_share
        alias_method :can_share?, :can_share
      
        # Can the current user view this resource
        # Corresponds to the JSON property `canView`
        # @return [Boolean]
        attr_accessor :can_view
        alias_method :can_view?, :can_view
      
        # DriveAction for organizing this file in Drive. If the user does not have
        # access to the Drive file, the value will be DriveAction.
        # DRIVE_ACTION_UNSPECIFIED. This field is only set when part of a FileResult in
        # a ListFilesResponse.
        # Corresponds to the JSON property `driveAction`
        # @return [String]
        attr_accessor :drive_action
      
        # 
        # Corresponds to the JSON property `driveState`
        # @return [String]
        attr_accessor :drive_state
      
        # Message containing a string that is safe to use in all URL contexts in DOM
        # APIs and HTML documents; even where the referred-to resource is interpreted as
        # code, e.g., as the src of a script element.
        # Corresponds to the JSON property `embedUrl`
        # @return [Google::Apis::CloudsearchV1::TrustedResourceUrlProto]
        attr_accessor :embed_url
      
        # Indicates whether the Drive link contains an encrypted doc ID. If true,
        # Dynamite should not attempt to query the doc ID in Drive Service. See go/docid-
        # encryption for details.
        # Corresponds to the JSON property `encryptedDocId`
        # @return [Boolean]
        attr_accessor :encrypted_doc_id
        alias_method :encrypted_doc_id?, :encrypted_doc_id
      
        # This is deprecated and unneeded. TODO (b/182479059): Remove this.
        # Corresponds to the JSON property `encryptedResourceKey`
        # @return [String]
        attr_accessor :encrypted_resource_key
      
        # External mimetype of the Drive Resource (Useful for creating Drive URL) See:
        # http://b/35219462
        # Corresponds to the JSON property `externalMimetype`
        # @return [String]
        attr_accessor :external_mimetype
      
        # Drive resource ID of the artifact.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Deprecated. Whether the setting to restrict downloads is enabled for this file.
        # This was previously used to determine whether to hide the download and print
        # buttons in the UI, but is no longer used by clients, because Projector now
        # independently queries Drive to ensure that we have the most up-to-date value.
        # Corresponds to the JSON property `isDownloadRestricted`
        # @return [Boolean]
        attr_accessor :is_download_restricted
        alias_method :is_download_restricted?, :is_download_restricted
      
        # If the current user is the Drive file's owner. The field is currently only set
        # for Annotations for the ListFiles action (as opposed to fetching Topics/
        # Messages with Drive annotations).
        # Corresponds to the JSON property `isOwner`
        # @return [Boolean]
        attr_accessor :is_owner
        alias_method :is_owner?, :is_owner
      
        # The original UploadMetadata that this DriveMetadata was converted from.
        # Corresponds to the JSON property `legacyUploadMetadata`
        # @return [Google::Apis::CloudsearchV1::LegacyUploadMetadata]
        attr_accessor :legacy_upload_metadata
      
        # Mimetype of the Drive Resource
        # Corresponds to the JSON property `mimetype`
        # @return [String]
        attr_accessor :mimetype
      
        # The display name of the organization owning the Drive item.
        # Corresponds to the JSON property `organizationDisplayName`
        # @return [String]
        attr_accessor :organization_display_name
      
        # A combination of an identifier for a Drive resource (e.g. file, folder, or
        # drive) and any secrets needed to access it. The secrets should never be logged,
        # and this proto annotates those secret fields to ensure that they are not.
        # Clients are encouraged to use this proto rather than defining their own, to
        # ensure that secrets are correctly annotated.
        # Corresponds to the JSON property `shortcutAuthorizedItemId`
        # @return [Google::Apis::CloudsearchV1::AuthorizedItemId]
        attr_accessor :shortcut_authorized_item_id
      
        # If this field is set to true, server should still contact external backends to
        # get metadata for search but clients should not render this chip.
        # Corresponds to the JSON property `shouldNotRender`
        # @return [Boolean]
        attr_accessor :should_not_render
        alias_method :should_not_render?, :should_not_render
      
        # Thumbnail image of the Drive Resource
        # Corresponds to the JSON property `thumbnailHeight`
        # @return [Fixnum]
        attr_accessor :thumbnail_height
      
        # Thumbnail image of the Drive Resource
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Thumbnail image of the Drive Resource
        # Corresponds to the JSON property `thumbnailWidth`
        # @return [Fixnum]
        attr_accessor :thumbnail_width
      
        # Title of the Drive Resource
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Url string fragment that generally indicates the specific location in the
        # linked file. Example: #header=h.123abc456. If the fragment is not present this
        # will not be present and therefore default to an empty string. The "#" will not
        # be included.
        # Corresponds to the JSON property `urlFragment`
        # @return [String]
        attr_accessor :url_fragment
      
        # A wrapper around a raw resource key. The secret should never be logged, and
        # this proto annotates those secret fields to ensure that they are not. Clients
        # are encouraged to use this proto rather than defining their own, to ensure
        # that secrets are correctly annotated.
        # Corresponds to the JSON property `wrappedResourceKey`
        # @return [Google::Apis::CloudsearchV1::WrappedResourceKey]
        attr_accessor :wrapped_resource_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl_fix_request = args[:acl_fix_request] if args.key?(:acl_fix_request)
          @acl_fix_status = args[:acl_fix_status] if args.key?(:acl_fix_status)
          @can_edit = args[:can_edit] if args.key?(:can_edit)
          @can_share = args[:can_share] if args.key?(:can_share)
          @can_view = args[:can_view] if args.key?(:can_view)
          @drive_action = args[:drive_action] if args.key?(:drive_action)
          @drive_state = args[:drive_state] if args.key?(:drive_state)
          @embed_url = args[:embed_url] if args.key?(:embed_url)
          @encrypted_doc_id = args[:encrypted_doc_id] if args.key?(:encrypted_doc_id)
          @encrypted_resource_key = args[:encrypted_resource_key] if args.key?(:encrypted_resource_key)
          @external_mimetype = args[:external_mimetype] if args.key?(:external_mimetype)
          @id = args[:id] if args.key?(:id)
          @is_download_restricted = args[:is_download_restricted] if args.key?(:is_download_restricted)
          @is_owner = args[:is_owner] if args.key?(:is_owner)
          @legacy_upload_metadata = args[:legacy_upload_metadata] if args.key?(:legacy_upload_metadata)
          @mimetype = args[:mimetype] if args.key?(:mimetype)
          @organization_display_name = args[:organization_display_name] if args.key?(:organization_display_name)
          @shortcut_authorized_item_id = args[:shortcut_authorized_item_id] if args.key?(:shortcut_authorized_item_id)
          @should_not_render = args[:should_not_render] if args.key?(:should_not_render)
          @thumbnail_height = args[:thumbnail_height] if args.key?(:thumbnail_height)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @thumbnail_width = args[:thumbnail_width] if args.key?(:thumbnail_width)
          @title = args[:title] if args.key?(:title)
          @url_fragment = args[:url_fragment] if args.key?(:url_fragment)
          @wrapped_resource_key = args[:wrapped_resource_key] if args.key?(:wrapped_resource_key)
        end
      end
      
      # Drive mime-type search restricts (e.g. "type:pdf").
      class DriveMimeTypeRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").
      class DriveTimeSpanRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This is the proto for holding message level scoring information. This data is
      # used for logging in query-api server and for testing purposes.
      class DynamiteMessagesScoringInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `commonContactCount`
        # @return [Fixnum]
        attr_accessor :common_contact_count
      
        # 
        # Corresponds to the JSON property `commonCountToContactListCountRatio`
        # @return [Float]
        attr_accessor :common_count_to_contact_list_count_ratio
      
        # 
        # Corresponds to the JSON property `commonCountToMembershipCountRatio`
        # @return [Float]
        attr_accessor :common_count_to_membership_count_ratio
      
        # 
        # Corresponds to the JSON property `creatorGaiaId`
        # @return [Fixnum]
        attr_accessor :creator_gaia_id
      
        # 
        # Corresponds to the JSON property `creatorInSearcherContactList`
        # @return [Boolean]
        attr_accessor :creator_in_searcher_contact_list
        alias_method :creator_in_searcher_contact_list?, :creator_in_searcher_contact_list
      
        # 
        # Corresponds to the JSON property `crowdingMultiplier`
        # @return [Float]
        attr_accessor :crowding_multiplier
      
        # 
        # Corresponds to the JSON property `dasContactCount`
        # @return [Fixnum]
        attr_accessor :das_contact_count
      
        # 
        # Corresponds to the JSON property `finalScore`
        # @return [Float]
        attr_accessor :final_score
      
        # 
        # Corresponds to the JSON property `freshnessScore`
        # @return [Float]
        attr_accessor :freshness_score
      
        # 
        # Corresponds to the JSON property `joinedSpaceAffinityScore`
        # @return [Float]
        attr_accessor :joined_space_affinity_score
      
        # 
        # Corresponds to the JSON property `lastReadTimestampAgeInDays`
        # @return [Float]
        attr_accessor :last_read_timestamp_age_in_days
      
        # 
        # Corresponds to the JSON property `messageAgeInDays`
        # @return [Float]
        attr_accessor :message_age_in_days
      
        # 
        # Corresponds to the JSON property `messageSenderAffinityScore`
        # @return [Float]
        attr_accessor :message_sender_affinity_score
      
        # 
        # Corresponds to the JSON property `spaceId`
        # @return [Fixnum]
        attr_accessor :space_id
      
        # 
        # Corresponds to the JSON property `spaceMembershipCount`
        # @return [Fixnum]
        attr_accessor :space_membership_count
      
        # 
        # Corresponds to the JSON property `topicalityScore`
        # @return [Float]
        attr_accessor :topicality_score
      
        # 
        # Corresponds to the JSON property `unjoinedSpaceAffinityScore`
        # @return [Float]
        attr_accessor :unjoined_space_affinity_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_contact_count = args[:common_contact_count] if args.key?(:common_contact_count)
          @common_count_to_contact_list_count_ratio = args[:common_count_to_contact_list_count_ratio] if args.key?(:common_count_to_contact_list_count_ratio)
          @common_count_to_membership_count_ratio = args[:common_count_to_membership_count_ratio] if args.key?(:common_count_to_membership_count_ratio)
          @creator_gaia_id = args[:creator_gaia_id] if args.key?(:creator_gaia_id)
          @creator_in_searcher_contact_list = args[:creator_in_searcher_contact_list] if args.key?(:creator_in_searcher_contact_list)
          @crowding_multiplier = args[:crowding_multiplier] if args.key?(:crowding_multiplier)
          @das_contact_count = args[:das_contact_count] if args.key?(:das_contact_count)
          @final_score = args[:final_score] if args.key?(:final_score)
          @freshness_score = args[:freshness_score] if args.key?(:freshness_score)
          @joined_space_affinity_score = args[:joined_space_affinity_score] if args.key?(:joined_space_affinity_score)
          @last_read_timestamp_age_in_days = args[:last_read_timestamp_age_in_days] if args.key?(:last_read_timestamp_age_in_days)
          @message_age_in_days = args[:message_age_in_days] if args.key?(:message_age_in_days)
          @message_sender_affinity_score = args[:message_sender_affinity_score] if args.key?(:message_sender_affinity_score)
          @space_id = args[:space_id] if args.key?(:space_id)
          @space_membership_count = args[:space_membership_count] if args.key?(:space_membership_count)
          @topicality_score = args[:topicality_score] if args.key?(:topicality_score)
          @unjoined_space_affinity_score = args[:unjoined_space_affinity_score] if args.key?(:unjoined_space_affinity_score)
        end
      end
      
      # This is the proto for holding space level scoring information. This data is
      # used for logging in query-api server and for testing purposes.
      class DynamiteSpacesScoringInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `affinityScore`
        # @return [Float]
        attr_accessor :affinity_score
      
        # 
        # Corresponds to the JSON property `commonContactCountAffinityScore`
        # @return [Float]
        attr_accessor :common_contact_count_affinity_score
      
        # 
        # Corresponds to the JSON property `contactsIntersectionCount`
        # @return [Float]
        attr_accessor :contacts_intersection_count
      
        # 
        # Corresponds to the JSON property `finalScore`
        # @return [Float]
        attr_accessor :final_score
      
        # 
        # Corresponds to the JSON property `freshnessScore`
        # @return [Float]
        attr_accessor :freshness_score
      
        # 
        # Corresponds to the JSON property `joinedSpacesAffinityScore`
        # @return [Float]
        attr_accessor :joined_spaces_affinity_score
      
        # 
        # Corresponds to the JSON property `lastMessagePostedTimestampSecs`
        # @return [Fixnum]
        attr_accessor :last_message_posted_timestamp_secs
      
        # 
        # Corresponds to the JSON property `lastReadTimestampSecs`
        # @return [Fixnum]
        attr_accessor :last_read_timestamp_secs
      
        # 
        # Corresponds to the JSON property `memberMetadataCount`
        # @return [Float]
        attr_accessor :member_metadata_count
      
        # 
        # Corresponds to the JSON property `messageScore`
        # @return [Float]
        attr_accessor :message_score
      
        # 
        # Corresponds to the JSON property `numAucContacts`
        # @return [Fixnum]
        attr_accessor :num_auc_contacts
      
        # 
        # Corresponds to the JSON property `smallContactListAffinityScore`
        # @return [Float]
        attr_accessor :small_contact_list_affinity_score
      
        # 
        # Corresponds to the JSON property `smallUnjoinedSpacesAffinityScore`
        # @return [Float]
        attr_accessor :small_unjoined_spaces_affinity_score
      
        # 
        # Corresponds to the JSON property `spaceAgeInDays`
        # @return [Float]
        attr_accessor :space_age_in_days
      
        # 
        # Corresponds to the JSON property `spaceCreationTimestampSecs`
        # @return [Fixnum]
        attr_accessor :space_creation_timestamp_secs
      
        # 
        # Corresponds to the JSON property `topicalityScore`
        # @return [Float]
        attr_accessor :topicality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affinity_score = args[:affinity_score] if args.key?(:affinity_score)
          @common_contact_count_affinity_score = args[:common_contact_count_affinity_score] if args.key?(:common_contact_count_affinity_score)
          @contacts_intersection_count = args[:contacts_intersection_count] if args.key?(:contacts_intersection_count)
          @final_score = args[:final_score] if args.key?(:final_score)
          @freshness_score = args[:freshness_score] if args.key?(:freshness_score)
          @joined_spaces_affinity_score = args[:joined_spaces_affinity_score] if args.key?(:joined_spaces_affinity_score)
          @last_message_posted_timestamp_secs = args[:last_message_posted_timestamp_secs] if args.key?(:last_message_posted_timestamp_secs)
          @last_read_timestamp_secs = args[:last_read_timestamp_secs] if args.key?(:last_read_timestamp_secs)
          @member_metadata_count = args[:member_metadata_count] if args.key?(:member_metadata_count)
          @message_score = args[:message_score] if args.key?(:message_score)
          @num_auc_contacts = args[:num_auc_contacts] if args.key?(:num_auc_contacts)
          @small_contact_list_affinity_score = args[:small_contact_list_affinity_score] if args.key?(:small_contact_list_affinity_score)
          @small_unjoined_spaces_affinity_score = args[:small_unjoined_spaces_affinity_score] if args.key?(:small_unjoined_spaces_affinity_score)
          @space_age_in_days = args[:space_age_in_days] if args.key?(:space_age_in_days)
          @space_creation_timestamp_secs = args[:space_creation_timestamp_secs] if args.key?(:space_creation_timestamp_secs)
          @topicality_score = args[:topicality_score] if args.key?(:topicality_score)
        end
      end
      
      # A message edit in Dynamite inserts a Babel-only item containing this field.
      class EditMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class EditorClientActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requestFileScopeForActiveDocument`
        # @return [Google::Apis::CloudsearchV1::RequestFileScopeForActiveDocument]
        attr_accessor :request_file_scope_for_active_document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_file_scope_for_active_document = args[:request_file_scope_for_active_document] if args.key?(:request_file_scope_for_active_document)
        end
      end
      
      # A person's email address.
      class EmailAddress
        include Google::Apis::Core::Hashable
      
        # If the value of type is custom, this property contains the custom type string.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # The email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The URL to send email.
        # Corresponds to the JSON property `emailUrl`
        # @return [String]
        attr_accessor :email_url
      
        # Indicates if this is the user's primary email. Only one entry can be marked as
        # primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # The type of the email account. Acceptable values are: "custom", "home", "other"
        # , "work".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @email_address = args[:email_address] if args.key?(:email_address)
          @email_url = args[:email_url] if args.key?(:email_url)
          @primary = args[:primary] if args.key?(:primary)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a verified owner of the given email address. Note that a single
      # address may have many owners, and a single user may own many addresses. (All
      # lower-case, in display form -- see com.google.gaia.client.GaiaEmail)
      class EmailOwnerProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Represents an embedded object in an update. This is a wrapper class that can
      # contain a single specific item proto in an extension field. Think of it as a
      # base class like `Message` in Java. Each item proto must declare that it
      # extends this proto: message ExampleObject ` option (item_type) =
      # EXAMPLE_OBJECT; extend EmbedClientItem ` optional ExampleObject example_object
      # = ; ` ` See go/es-embeds for details.
      class EmbedClientItem
        include Google::Apis::Core::Hashable
      
        # The canonical ID of the embed. If absent, the canonical ID is equal to the ID;
        # if present, then the canonical ID represents an "equivalence class" of embeds
        # which really refer to the same object. (For example, the URLs http://www.foo.
        # com/ and http://foo.com/ refer to the same object) This field may be updated
        # periodically by background processes.
        # Corresponds to the JSON property `canonicalId`
        # @return [String]
        attr_accessor :canonical_id
      
        # Deep-linking data is used to construct a deep-link URI for an activity or
        # frame's embed, such that on click, the user is taken to the right place in a
        # mobile app. If the app is not installed, the user is taken to the app store.
        # If not on mobile, an analogous web uri is used.
        # Corresponds to the JSON property `deepLinkData`
        # @return [Google::Apis::CloudsearchV1::DeepLinkData]
        attr_accessor :deep_link_data
      
        # The ID of the embed. This corresponds to the schema.org ID, as represented in
        # the ItemScope.id field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This field records where the ItemScope was retrieved, if it was created via a
        # web fetch.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::CloudsearchV1::Provenance]
        attr_accessor :provenance
      
        # The ID used to identify the embed during rendering. This field will match ID,
        # if set, otherwise it will be the ID of the parent activity. This field is only
        # populated on the server for client use and is not persisted to storage.
        # Corresponds to the JSON property `renderId`
        # @return [String]
        attr_accessor :render_id
      
        # Signature of the embed, used for verification.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        # Transient generic data that will not be saved on the server.
        # Corresponds to the JSON property `transientData`
        # @return [Google::Apis::CloudsearchV1::TransientData]
        attr_accessor :transient_data
      
        # The first value in `type` determines which extension field will be set. When
        # creating an EmbedClientItem, you only need to set the first (primary) type in
        # this field. When the server receives the item, it will populate the full type
        # list using the parent annotations in the ItemType enum.
        # Corresponds to the JSON property `type`
        # @return [Array<String>]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_id = args[:canonical_id] if args.key?(:canonical_id)
          @deep_link_data = args[:deep_link_data] if args.key?(:deep_link_data)
          @id = args[:id] if args.key?(:id)
          @provenance = args[:provenance] if args.key?(:provenance)
          @render_id = args[:render_id] if args.key?(:render_id)
          @signature = args[:signature] if args.key?(:signature)
          @transient_data = args[:transient_data] if args.key?(:transient_data)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Used to provide a search operator for enum properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched. For example, if you provide no operator for a
      # *priority* enum property with possible values *p0* and *p1*, a query that
      # contains the term *p0* returns items that have *p0* as the value of the *
      # priority* property, as well as any items that contain the string *p0* in other
      # fields. If you provide an operator name for the enum, such as *priority*, then
      # search users can use that operator to refine results to only items that have *
      # p0* as this property's value, with the query *priority:p0*.
      class EnumOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the enum
        # property. For example, if operatorName is *priority* and the property's name
        # is *priorityVal*, then queries like *priority:<value>* show results only where
        # the value of the property named *priorityVal* matches *<value>*. By contrast,
        # a search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for enum properties, which allow you to define a restricted set of
      # strings to match user queries, set rankings for those string values, and
      # define an operator name to be paired with those strings so that users can
      # narrow results to only items with a specific value. For example, for items in
      # a request tracking system with priority information, you could define *p0* as
      # an allowable enum value and tie this enum to the operator name *priority* so
      # that search users could add *priority:p0* to their query to restrict the set
      # of results to only those items indexed with the value *p0*.
      class EnumPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for enum properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched. For example, if you provide no operator for a
        # *priority* enum property with possible values *p0* and *p1*, a query that
        # contains the term *p0* returns items that have *p0* as the value of the *
        # priority* property, as well as any items that contain the string *p0* in other
        # fields. If you provide an operator name for the enum, such as *priority*, then
        # search users can use that operator to refine results to only items that have *
        # p0* as this property's value, with the query *priority:p0*.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::EnumOperatorOptions]
        attr_accessor :operator_options
      
        # Used to specify the ordered ranking for the enumeration that determines how
        # the integer values provided in the possible EnumValuePairs are used to rank
        # results. If specified, integer values must be provided for all possible
        # EnumValuePair values given for this property. Can only be used if isRepeatable
        # is false.
        # Corresponds to the JSON property `orderedRanking`
        # @return [String]
        attr_accessor :ordered_ranking
      
        # The list of possible values for the enumeration property. All EnumValuePairs
        # must provide a string value. If you specify an integer value for one
        # EnumValuePair, then all possible EnumValuePairs must provide an integer value.
        # Both the string value and integer value must be unique over all possible
        # values. Once set, possible values cannot be removed or modified. If you supply
        # an ordered ranking and think you might insert additional enum values in the
        # future, leave gaps in the initial integer values to allow adding a value in
        # between previously registered values. The maximum number of elements is 100.
        # Corresponds to the JSON property `possibleValues`
        # @return [Array<Google::Apis::CloudsearchV1::EnumValuePair>]
        attr_accessor :possible_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @ordered_ranking = args[:ordered_ranking] if args.key?(:ordered_ranking)
          @possible_values = args[:possible_values] if args.key?(:possible_values)
        end
      end
      
      # The enumeration value pair defines two things: a required string value and an
      # optional integer value. The string value defines the necessary query term
      # required to retrieve that item, such as *p0* for a priority item. The integer
      # value determines the ranking of that string value relative to other enumerated
      # values for the same property. For example, you might associate *p0* with *0*
      # and define another enum pair such as *p1* and *1*. You must use the integer
      # value in combination with ordered ranking to set the ranking of a given value
      # relative to other enumerated values for the same property name. Here, a
      # ranking order of DESCENDING for *priority* properties results in a ranking
      # boost for items indexed with a value of *p0* compared to items indexed with a
      # value of *p1*. Without a specified ranking order, the integer value has no
      # effect on item ranking.
      class EnumValuePair
        include Google::Apis::Core::Hashable
      
        # The integer value of the EnumValuePair which must be non-negative. Optional.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # The string value of the EnumValuePair. The maximum length is 32 characters.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # List of enum values.
      class EnumValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for string values is 32 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Error information about the response.
      class ErrorInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorMessages`
        # @return [Array<Google::Apis::CloudsearchV1::ErrorMessage>]
        attr_accessor :error_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_messages = args[:error_messages] if args.key?(:error_messages)
        end
      end
      
      # Error message per source response.
      class ErrorMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # 
      class EventAnnotation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents the invitees or other users associated with a Google+ Event (see
      # http://goto/events-backend-design).
      class EventProto
        include Google::Apis::Core::Hashable
      
        # Event IDs consist of alphanumeric characters and colons. Currently required.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # The type of Event members to consider, e.g. "all members" vs. "owners" vs. "
        # admins". These are defined by legacy_relation_id values in social.graph.
        # storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.
        # proto. See event.pb (defined in production/config/cdd/socialgraph/mixer_config/
        # prod/node_type_config) for all valid edge types associated with event.
        # Currently required.
        # Corresponds to the JSON property `memberType`
        # @return [Fixnum]
        attr_accessor :member_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_id = args[:event_id] if args.key?(:event_id)
          @member_type = args[:member_type] if args.key?(:member_type)
        end
      end
      
      # A bucket in a facet is the basic unit of operation. A bucket can comprise
      # either a single value OR a contiguous range of values, depending on the type
      # of the field bucketed. FacetBucket is currently used only for returning the
      # response object.
      class FacetBucket
        include Google::Apis::Core::Hashable
      
        # Number of results that match the bucket value. Counts are only returned for
        # searches when count accuracy is ensured. Cloud Search does not guarantee facet
        # counts for any query and facet counts might be present only intermittently,
        # even for identical queries. Do not build dependencies on facet count existence;
        # instead use facet ount percentages which are always returned.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A generic way of expressing filters in a query, which supports two approaches:
        # **1. Setting a ValueFilter.** The name must match an operator_name defined in
        # the schema for your data source. **2. Setting a CompositeFilter.** The filters
        # are evaluated using the logical operator. The top-level operators can only be
        # either an AND or a NOT. AND can appear only at the top-most level. OR can
        # appear only under a top-level AND.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::CloudsearchV1::Filter]
        attr_accessor :filter
      
        # Percent of results that match the bucket value. The returned value is between (
        # 0-100], and is rounded down to an integer if fractional. If the value is not
        # explicitly returned, it represents a percentage value that rounds to 0.
        # Percentages are returned for all searches, but are an estimate. Because
        # percentages are always returned, you should render percentages instead of
        # counts.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # Definition of a single value with generic type.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudsearchV1::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @filter = args[:filter] if args.key?(:filter)
          @percentage = args[:percentage] if args.key?(:percentage)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Specifies operators to return facet results for. There will be one FacetResult
      # for every source_name/object_type/operator_name combination.
      class FacetOptions
        include Google::Apis::Core::Hashable
      
        # Used to specify integer faceting options.
        # Corresponds to the JSON property `integerFacetingOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerFacetingOptions]
        attr_accessor :integer_faceting_options
      
        # Maximum number of facet buckets that should be returned for this facet.
        # Defaults to 10. Maximum value is 100.
        # Corresponds to the JSON property `numFacetBuckets`
        # @return [Fixnum]
        attr_accessor :num_facet_buckets
      
        # If object_type is set, only those objects of that type will be used to compute
        # facets. If empty, then all objects will be used to compute facets.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator chosen for faceting. @see cloudsearch.
        # SchemaPropertyOptions
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Source name to facet on. Format: datasources/`source_id` If empty, all data
        # sources will be used.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_faceting_options = args[:integer_faceting_options] if args.key?(:integer_faceting_options)
          @num_facet_buckets = args[:num_facet_buckets] if args.key?(:num_facet_buckets)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @source_name = args[:source_name] if args.key?(:source_name)
        end
      end
      
      # Source specific facet response
      class FacetResult
        include Google::Apis::Core::Hashable
      
        # FacetBuckets for values in response containing at least a single result with
        # the corresponding filter.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::CloudsearchV1::FacetBucket>]
        attr_accessor :buckets
      
        # Object type for which facet results are returned. Can be empty.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator chosen for faceting. @see cloudsearch.
        # SchemaPropertyOptions
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Source name for which facet results are returned. Will not be empty.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @source_name = args[:source_name] if args.key?(:source_name)
        end
      end
      
      # 
      class FieldViolation
        include Google::Apis::Core::Hashable
      
        # The description of the error.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Path of field with violation.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A generic way of expressing filters in a query, which supports two approaches:
      # **1. Setting a ValueFilter.** The name must match an operator_name defined in
      # the schema for your data source. **2. Setting a CompositeFilter.** The filters
      # are evaluated using the logical operator. The top-level operators can only be
      # either an AND or a NOT. AND can appear only at the top-most level. OR can
      # appear only under a top-level AND.
      class Filter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compositeFilter`
        # @return [Google::Apis::CloudsearchV1::CompositeFilter]
        attr_accessor :composite_filter
      
        # 
        # Corresponds to the JSON property `valueFilter`
        # @return [Google::Apis::CloudsearchV1::ValueFilter]
        attr_accessor :value_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_filter = args[:composite_filter] if args.key?(:composite_filter)
          @value_filter = args[:value_filter] if args.key?(:value_filter)
        end
      end
      
      # A filter was created.
      class FilterCreated
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A filter was deleted.
      class FilterDeleted
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Filter options to be applied on query.
      class FilterOptions
        include Google::Apis::Core::Hashable
      
        # A generic way of expressing filters in a query, which supports two approaches:
        # **1. Setting a ValueFilter.** The name must match an operator_name defined in
        # the schema for your data source. **2. Setting a CompositeFilter.** The filters
        # are evaluated using the logical operator. The top-level operators can only be
        # either an AND or a NOT. AND can appear only at the top-most level. OR can
        # appear only under a top-level AND.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::CloudsearchV1::Filter]
        attr_accessor :filter
      
        # If object_type is set, only objects of that type are returned. This should
        # correspond to the name of the object that was registered within the definition
        # of schema. The maximum length is 256 characters.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @object_type = args[:object_type] if args.key?(:object_type)
        end
      end
      
      # HistoryRecord for changes associated with a filter, namely: FILTER_CREATED
      # FILTER_DELETED
      class FilterUpdate
        include Google::Apis::Core::Hashable
      
        # A filter was created.
        # Corresponds to the JSON property `filterCreated`
        # @return [Google::Apis::CloudsearchV1::FilterCreated]
        attr_accessor :filter_created
      
        # A filter was deleted.
        # Corresponds to the JSON property `filterDeleted`
        # @return [Google::Apis::CloudsearchV1::FilterDeleted]
        attr_accessor :filter_deleted
      
        # 
        # Corresponds to the JSON property `filterId`
        # @return [String]
        attr_accessor :filter_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_created = args[:filter_created] if args.key?(:filter_created)
          @filter_deleted = args[:filter_deleted] if args.key?(:filter_deleted)
          @filter_id = args[:filter_id] if args.key?(:filter_id)
        end
      end
      
      # A persistent (sticky) footer that is added to the bottom of the card.
      class FixedFooter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::CloudsearchV1::Button>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `primaryButton`
        # @return [Google::Apis::CloudsearchV1::TextButton]
        attr_accessor :primary_button
      
        # 
        # Corresponds to the JSON property `secondaryButton`
        # @return [Google::Apis::CloudsearchV1::TextButton]
        attr_accessor :secondary_button
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @primary_button = args[:primary_button] if args.key?(:primary_button)
          @secondary_button = args[:secondary_button] if args.key?(:secondary_button)
        end
      end
      
      # 
      class Folder
        include Google::Apis::Core::Hashable
      
        # Folder mapping id.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # One for each copy of the message in the IMAP folder.
        # Corresponds to the JSON property `message`
        # @return [Array<Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessage>]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # This is the content of //imapsync/folder attribute.
      class FolderAttribute
        include Google::Apis::Core::Hashable
      
        # List of all IMAP folders where the message presents.
        # Corresponds to the JSON property `folder`
        # @return [Array<Google::Apis::CloudsearchV1::Folder>]
        attr_accessor :folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folder = args[:folder] if args.key?(:folder)
        end
      end
      
      # 
      class FormAction
        include Google::Apis::Core::Hashable
      
        # Apps script function that should be invoked in the developer's apps script
        # when the containing element is clicked/activated.
        # Corresponds to the JSON property `actionMethodName`
        # @return [String]
        attr_accessor :action_method_name
      
        # 
        # Corresponds to the JSON property `loadIndicator`
        # @return [String]
        attr_accessor :load_indicator
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudsearchV1::ActionParameter>]
        attr_accessor :parameters
      
        # Indicates whether form values persist after the action. When false, the Apps
        # Script is responsible for persisting values, by setting any form field values
        # using the formInputs in the event. Disabling this behavior can be used if the
        # add-on needs the ability to clear form fields, for example, as with persistent
        # values, there is no means for clearing existing values. When disabling
        # persistent values, it is strongly recommended that the add-on use
        # LoadIndicator.SPINNER for all events, as this locks the UI to ensure no
        # changes are made by the user while the action is being processed. When using
        # LoadIndicator.NONE for any of the actions, persistent values are recommended,
        # as it ensures that any changes made by the user after form / on change actions
        # are sent to the server are not overwritten by the response. Persistent values
        # disabled by default. While we recommend persistent values be used in the
        # typical use case, we do not enable by default, as doing so would change the
        # current behavior of existing add-ons in prod.
        # Corresponds to the JSON property `persistValues`
        # @return [Boolean]
        attr_accessor :persist_values
        alias_method :persist_values?, :persist_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_method_name = args[:action_method_name] if args.key?(:action_method_name)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @parameters = args[:parameters] if args.key?(:parameters)
          @persist_values = args[:persist_values] if args.key?(:persist_values)
        end
      end
      
      # Annotation metadata for markup formatting
      class FormatMetadata
        include Google::Apis::Core::Hashable
      
        # Font color is set if and only if format_type is FONT_COLOR. The components are
        # stored as (alpha << 24) | (red << 16) | (green << 8) | blue. Clients should
        # always set the alpha component to 0xFF. NEXT TAG: 3
        # Corresponds to the JSON property `fontColor`
        # @return [Fixnum]
        attr_accessor :font_color
      
        # LINT.ThenChange(//depot/google3/apps/dynamite/v1/web/datakeys/annotated_span.
        # proto)
        # Corresponds to the JSON property `formatType`
        # @return [String]
        attr_accessor :format_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @font_color = args[:font_color] if args.key?(:font_color)
          @format_type = args[:format_type] if args.key?(:format_type)
        end
      end
      
      # Formatting information for a segment.
      class Formatting
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # This indicates that the segment should be rendered as highlighted or visually
        # emphasized.
        # Corresponds to the JSON property `highlight`
        # @return [Boolean]
        attr_accessor :highlight
        alias_method :highlight?, :highlight
      
        # 
        # Corresponds to the JSON property `italics`
        # @return [Boolean]
        attr_accessor :italics
        alias_method :italics?, :italics
      
        # 
        # Corresponds to the JSON property `strikethrough`
        # @return [Boolean]
        attr_accessor :strikethrough
        alias_method :strikethrough?, :strikethrough
      
        # If set, this indicates that the segment should be rendered with the specified
        # style. The absence of an explicit style represents "no style", i.e. the
        # segment can be rendered with the default style chosen by the application.
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # 
        # Corresponds to the JSON property `underline`
        # @return [Boolean]
        attr_accessor :underline
        alias_method :underline?, :underline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bold = args[:bold] if args.key?(:bold)
          @highlight = args[:highlight] if args.key?(:highlight)
          @italics = args[:italics] if args.key?(:italics)
          @strikethrough = args[:strikethrough] if args.key?(:strikethrough)
          @style = args[:style] if args.key?(:style)
          @underline = args[:underline] if args.key?(:underline)
        end
      end
      
      # Indicates which freshness property to use when adjusting search ranking for an
      # item. Fresher, more recent dates indicate higher quality. Use the freshness
      # option property that best works with your data. For fileshare documents, last
      # modified time is most relevant. For calendar event data, the time when the
      # event occurs is a more relevant freshness indicator. In this way, calendar
      # events that occur closer to the time of the search query are considered higher
      # quality and ranked accordingly.
      class FreshnessOptions
        include Google::Apis::Core::Hashable
      
        # The duration after which an object should be considered stale. The default
        # value is 180 days (in seconds).
        # Corresponds to the JSON property `freshnessDuration`
        # @return [String]
        attr_accessor :freshness_duration
      
        # This property indicates the freshness level of the object in the index. If set,
        # this property must be a top-level property within the property definitions
        # and it must be a timestamp type or date type. Otherwise, the Indexing API uses
        # updateTime as the freshness indicator. The maximum length is 256 characters.
        # When a property is used to calculate freshness, the value defaults to 2 years
        # from the current time.
        # Corresponds to the JSON property `freshnessProperty`
        # @return [String]
        attr_accessor :freshness_property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_duration = args[:freshness_duration] if args.key?(:freshness_duration)
          @freshness_property = args[:freshness_property] if args.key?(:freshness_property)
        end
      end
      
      # The Item message is the read interface for user data (traditionally referred
      # to as a "message", such as a mail message or a chat message, but generalized
      # to encompass other types such as tasks) and stored in Tingle. Each Item is
      # associated with a single Thread. An Item contains three classes of data. (1):
      # Item "fields" are common to items of all message types (e.g. mail, chat, task,
      # etc.) and are identified by the ItemFieldSpec.FetchType enum when fetching
      # Items. (2): Item "attributes" represent data associated with an Item that is
      # stored on behalf of the client but to which the fusebox and storage layers are
      # otherwise agnostic. (3): Item "parts" are application-defined protocol buffers
      # that affect how the Item is indexed. Item parts are referenced as extensions
      # to the ItemParts message. By default the application specifies the index terms
      # associated with an Item part. For performance sensitive applications, the
      # storage layer can be modified to understand and index data types natively.
      class FuseboxItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::CloudsearchV1::Attributes]
        attr_accessor :attributes
      
        # The creation time of the Item in micro seconds.
        # Corresponds to the JSON property `creationTimeMicroseconds`
        # @return [Fixnum]
        attr_accessor :creation_time_microseconds
      
        # The most recent history records associated with the item.
        # Corresponds to the JSON property `history`
        # @return [Google::Apis::CloudsearchV1::History]
        attr_accessor :history
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `itemKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :item_key
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Google::Apis::CloudsearchV1::Labels]
        attr_accessor :labels
      
        # The modification time of the Item in micro seconds. Modifications to the
        # message include label addition, deletion, etc.
        # Corresponds to the JSON property `lastModificationTimeUs`
        # @return [Fixnum]
        attr_accessor :last_modification_time_us
      
        # go/lockpicker Locker counterpart of references.
        # Corresponds to the JSON property `lockerReferences`
        # @return [Google::Apis::CloudsearchV1::References]
        attr_accessor :locker_references
      
        # 
        # Corresponds to the JSON property `matchInfo`
        # @return [Google::Apis::CloudsearchV1::MatchInfo]
        attr_accessor :match_info
      
        # Container for type-specific extensions of an Item. This protobuf is defined in
        # a separate file to allow types to reference/extend the message without
        # depending on other fusebox protobufs. See items.proto.
        # Corresponds to the JSON property `parts`
        # @return [Google::Apis::CloudsearchV1::ItemParts]
        attr_accessor :parts
      
        # The read timestamp at which this item was read. This is a temporary field used
        # to check if two items streamed during dual reading were read at the same
        # timestamp. This will be populated by Fusebox RPCs. "DO NOT USE UNLESS YOU TALK
        # TO FUSEBOX TEAM (gmail-fusebox@)".
        # Corresponds to the JSON property `readTs`
        # @return [Fixnum]
        attr_accessor :read_ts
      
        # References to attachments, video attachments in Youtube and Hangout messages.
        # Corresponds to the JSON property `references`
        # @return [Google::Apis::CloudsearchV1::References]
        attr_accessor :references
      
        # The snippet is a brief bit of text describing this item.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `threadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :thread_key
      
        # A base64 encoded and encrypted string generated from the Gaia Id and the
        # thread id. Used to generate the permalink for this thread, exposed from Gmail
        # API.
        # Corresponds to the JSON property `threadLocator`
        # @return [String]
        attr_accessor :thread_locator
      
        # 
        # Corresponds to the JSON property `triggers`
        # @return [Google::Apis::CloudsearchV1::Triggers]
        attr_accessor :triggers
      
        # The latest history operation id that resulted in a mutation of the item.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @creation_time_microseconds = args[:creation_time_microseconds] if args.key?(:creation_time_microseconds)
          @history = args[:history] if args.key?(:history)
          @item_key = args[:item_key] if args.key?(:item_key)
          @labels = args[:labels] if args.key?(:labels)
          @last_modification_time_us = args[:last_modification_time_us] if args.key?(:last_modification_time_us)
          @locker_references = args[:locker_references] if args.key?(:locker_references)
          @match_info = args[:match_info] if args.key?(:match_info)
          @parts = args[:parts] if args.key?(:parts)
          @read_ts = args[:read_ts] if args.key?(:read_ts)
          @references = args[:references] if args.key?(:references)
          @snippet = args[:snippet] if args.key?(:snippet)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @thread_locator = args[:thread_locator] if args.key?(:thread_locator)
          @triggers = args[:triggers] if args.key?(:triggers)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # In the context of a search, the MatchInfo contains information about which
      # Items matched the query.
      class FuseboxItemThreadMatchInfo
        include Google::Apis::Core::Hashable
      
        # If SearchQuery.Options.Clustering is present, the query will be treated as a
        # cluster query, and this field may be populated with the cluster ID of the
        # cluster to which this thread belongs, if any. The cluster ID will be a label
        # on the message.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The server id of the last item that matched the query. This is always set,
        # regardless of the compute_matching_items_per_thread option. This is the value
        # by which search results are sorted, in descending (i.e. newest first) order.
        # Corresponds to the JSON property `lastMatchingItemId`
        # @return [Fixnum]
        attr_accessor :last_matching_item_id
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `lastMatchingItemKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :last_matching_item_key
      
        # If SearchQuery.Options.compute_matching_items_per_thread, this field will
        # contain the keys of all items that matched the query, in ascending order. Note
        # that this option requires extra computation.
        # Corresponds to the JSON property `matchingItemKey`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :matching_item_key
      
        # The rank contains a tuple of numbers which may be used as a general sort order.
        # The rank should be treated as an ordered set of numbers, where the ordering
        # is done in descending order of the most significant rank member. For example,
        # given the following ranks described as (primary, secondary): (1,1), (1,2), (2,
        # 2) (2,1) The descending rank-order is: (2,2) > (2,1) > (1,2) > (1,1)
        # Corresponds to the JSON property `rank`
        # @return [Google::Apis::CloudsearchV1::Rank]
        attr_accessor :rank
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @last_matching_item_id = args[:last_matching_item_id] if args.key?(:last_matching_item_id)
          @last_matching_item_key = args[:last_matching_item_key] if args.key?(:last_matching_item_key)
          @matching_item_key = args[:matching_item_key] if args.key?(:matching_item_key)
          @rank = args[:rank] if args.key?(:rank)
        end
      end
      
      # If the Value field is not set this means the pref did not exist.
      class FuseboxPrefUpdatePreState
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GSuitePrincipal
        include Google::Apis::Core::Hashable
      
        # This principal represents all users of the Google Workspace domain of the
        # customer.
        # Corresponds to the JSON property `gsuiteDomain`
        # @return [Boolean]
        attr_accessor :gsuite_domain
        alias_method :gsuite_domain?, :gsuite_domain
      
        # This principal references a Google Workspace group name.
        # Corresponds to the JSON property `gsuiteGroupEmail`
        # @return [String]
        attr_accessor :gsuite_group_email
      
        # This principal references a Google Workspace user account.
        # Corresponds to the JSON property `gsuiteUserEmail`
        # @return [String]
        attr_accessor :gsuite_user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gsuite_domain = args[:gsuite_domain] if args.key?(:gsuite_domain)
          @gsuite_group_email = args[:gsuite_group_email] if args.key?(:gsuite_group_email)
          @gsuite_user_email = args[:gsuite_user_email] if args.key?(:gsuite_user_email)
        end
      end
      
      # 
      class GaiaGroupProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupId`
        # @return [Fixnum]
        attr_accessor :group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
        end
      end
      
      # A Gaia account, which may represent a user, device, service account, etc. For
      # prod (@prod.google.com) accounts, use MdbUserProto instead.
      class GaiaUserProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userId`
        # @return [Fixnum]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Details on the third-party interoperability settings for the meeting space.
      class GatewayAccess
        include Google::Apis::Core::Hashable
      
        # Whether third-party gateway accesses are enabled for this meeting space. If
        # enabled, the actual access code can be retrieved by calling the
        # GetGatewayAccess RPC method.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Details how to join the conference via a SIP gateway.
      class GatewaySipAccess
        include Google::Apis::Core::Hashable
      
        # Permanent numeric code for manual entry on specially configured devices,
        # currently the same as the PSTN "Universal pin".
        # Corresponds to the JSON property `sipAccessCode`
        # @return [String]
        attr_accessor :sip_access_code
      
        # The SIP URI the conference can be reached through. The string is on one of the
        # formats: "sip:@" "sips:@" where currently is the 13-digit universal pin (with
        # the future option to support using a Meet meeting code as well), and is a
        # valid address to be resolved using a DNS SRV lookup, or a dotted quad.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sip_access_code = args[:sip_access_code] if args.key?(:sip_access_code)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class GetCustomerIndexStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average item count for the given date range for which billing is done.
        # Corresponds to the JSON property `averageIndexedItemCount`
        # @return [Fixnum]
        attr_accessor :average_indexed_item_count
      
        # Summary of indexed item counts, one for each day in the requested range.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerIndexStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_indexed_item_count = args[:average_indexed_item_count] if args.key?(:average_indexed_item_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerQueryStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerQueryStats>]
        attr_accessor :stats
      
        # Total successful query count (status code 200) for the given date range.
        # Corresponds to the JSON property `totalQueryCount`
        # @return [Fixnum]
        attr_accessor :total_query_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
          @total_query_count = args[:total_query_count] if args.key?(:total_query_count)
        end
      end
      
      # Response format for search application stats for a customer.
      class GetCustomerSearchApplicationStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average search application count for the given date range.
        # Corresponds to the JSON property `averageSearchApplicationCount`
        # @return [Fixnum]
        attr_accessor :average_search_application_count
      
        # Search application stats by date.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerSearchApplicationStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_search_application_count = args[:average_search_application_count] if args.key?(:average_search_application_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerSessionStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerSessionStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerUserStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerUserStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetDataSourceIndexStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average item count for the given date range for which billing is done.
        # Corresponds to the JSON property `averageIndexedItemCount`
        # @return [Fixnum]
        attr_accessor :average_indexed_item_count
      
        # Summary of indexed item counts, one for each day in the requested range.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceIndexStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_indexed_item_count = args[:average_indexed_item_count] if args.key?(:average_indexed_item_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Response format for getting query stats for a search application between given
      # dates.
      class GetSearchApplicationQueryStatsResponse
        include Google::Apis::Core::Hashable
      
        # Query stats per date for a search application.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationQueryStats>]
        attr_accessor :stats
      
        # Total successful query count (status code 200) for the given date range.
        # Corresponds to the JSON property `totalQueryCount`
        # @return [Fixnum]
        attr_accessor :total_query_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
          @total_query_count = args[:total_query_count] if args.key?(:total_query_count)
        end
      end
      
      # 
      class GetSearchApplicationSessionStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationSessionStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetSearchApplicationUserStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationUserStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GmailClientActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `addonComposeUiActionMarkup`
        # @return [Google::Apis::CloudsearchV1::AddonComposeUiActionMarkup]
        attr_accessor :addon_compose_ui_action_markup
      
        # 
        # Corresponds to the JSON property `openCreatedDraftActionMarkup`
        # @return [Google::Apis::CloudsearchV1::OpenCreatedDraftActionMarkup]
        attr_accessor :open_created_draft_action_markup
      
        # 
        # Corresponds to the JSON property `taskAction`
        # @return [Google::Apis::CloudsearchV1::TaskActionMarkup]
        attr_accessor :task_action
      
        # 
        # Corresponds to the JSON property `updateDraftActionMarkup`
        # @return [Google::Apis::CloudsearchV1::UpdateDraftActionMarkup]
        attr_accessor :update_draft_action_markup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addon_compose_ui_action_markup = args[:addon_compose_ui_action_markup] if args.key?(:addon_compose_ui_action_markup)
          @open_created_draft_action_markup = args[:open_created_draft_action_markup] if args.key?(:open_created_draft_action_markup)
          @task_action = args[:task_action] if args.key?(:task_action)
          @update_draft_action_markup = args[:update_draft_action_markup] if args.key?(:update_draft_action_markup)
        end
      end
      
      # The markup for developers to specify the contents of a contextual AddOn.
      class GoogleChatV1ContextualAddOnMarkup
        include Google::Apis::Core::Hashable
      
        # A list of cards. A card must contain a header and at least 1 section.
        # Corresponds to the JSON property `cards`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCard>]
        attr_accessor :cards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cards = args[:cards] if args.key?(:cards)
        end
      end
      
      # A card is a UI element that can contain UI widgets such as texts, images.
      class GoogleChatV1ContextualAddOnMarkupCard
        include Google::Apis::Core::Hashable
      
        # The actions of this card.
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardAction>]
        attr_accessor :card_actions
      
        # The header of the card. A header usually contains a title and an image.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardCardHeader]
        attr_accessor :header
      
        # Name of the card.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sections are separated by a line divider.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkupCardSection>]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_actions = args[:card_actions] if args.key?(:card_actions)
          @header = args[:header] if args.key?(:header)
          @name = args[:name] if args.key?(:name)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # A card action is the action associated with the card. For an invoice card, a
      # typical action would be: delete invoice, email invoice or open the invoice in
      # browser. Not supported by Google Chat apps.
      class GoogleChatV1ContextualAddOnMarkupCardCardAction
        include Google::Apis::Core::Hashable
      
        # The label used to be displayed in the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_label = args[:action_label] if args.key?(:action_label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class GoogleChatV1ContextualAddOnMarkupCardCardHeader
        include Google::Apis::Core::Hashable
      
        # The image's type (e.g. square border or circular border).
        # Corresponds to the JSON property `imageStyle`
        # @return [String]
        attr_accessor :image_style
      
        # The URL of the image in the card header.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The subtitle of the card header.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title must be specified. The header has a fixed height: if both a title
        # and subtitle is specified, each will take up 1 line. If only the title is
        # specified, it will take up both lines.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_style = args[:image_style] if args.key?(:image_style)
          @image_url = args[:image_url] if args.key?(:image_url)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A section contains a collection of widgets that are rendered (vertically) in
      # the order that they are specified. Across all platforms, cards have a narrow
      # fixed width, so there is currently no need for layout properties (e.g. float).
      class GoogleChatV1ContextualAddOnMarkupCardSection
        include Google::Apis::Core::Hashable
      
        # The header of the section, text formatted supported.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # A section must contain at least 1 widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkup>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A widget is a UI element that presents texts, images, etc.
      class GoogleChatV1WidgetMarkup
        include Google::Apis::Core::Hashable
      
        # A list of buttons. Buttons is also oneof data and only one of these fields
        # should be set.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton>]
        attr_accessor :buttons
      
        # An image that is specified by a URL and can have an onclick action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImage]
        attr_accessor :image
      
        # A UI element contains a key (label) and a value (content). And this element
        # may also contain some actions such as onclick button.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupKeyValue]
        attr_accessor :key_value
      
        # A paragraph of text. Formatted text supported.
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image = args[:image] if args.key?(:image)
          @key_value = args[:key_value] if args.key?(:key_value)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # A button. Can be a text button or an image button.
      class GoogleChatV1WidgetMarkupButton
        include Google::Apis::Core::Hashable
      
        # An image button with an onclick action.
        # Corresponds to the JSON property `imageButton`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupImageButton]
        attr_accessor :image_button
      
        # A button with text and onclick action.
        # Corresponds to the JSON property `textButton`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupTextButton]
        attr_accessor :text_button
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_button = args[:image_button] if args.key?(:image_button)
          @text_button = args[:text_button] if args.key?(:text_button)
        end
      end
      
      # A form action describes the behavior when the form is submitted. For example,
      # an Apps Script can be invoked to handle the form.
      class GoogleChatV1WidgetMarkupFormAction
        include Google::Apis::Core::Hashable
      
        # The method name is used to identify which part of the form triggered the form
        # submission. This information is echoed back to the Chat app as part of the
        # card click event. The same method name can be used for several elements that
        # trigger a common behavior if desired.
        # Corresponds to the JSON property `actionMethodName`
        # @return [String]
        attr_accessor :action_method_name
      
        # List of action parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormActionActionParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_method_name = args[:action_method_name] if args.key?(:action_method_name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze 1 day, snooze next
      # week. You might use action method = snooze(), passing the snooze type and
      # snooze time in the list of string parameters.
      class GoogleChatV1WidgetMarkupFormActionActionParameter
        include Google::Apis::Core::Hashable
      
        # The name of the parameter for the action script.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the parameter.
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
      
      # An image that is specified by a URL and can have an onclick action.
      class GoogleChatV1WidgetMarkupImage
        include Google::Apis::Core::Hashable
      
        # The aspect ratio of this image (width/height). This field allows clients to
        # reserve the right height for the image while waiting for it to load. It's not
        # meant to override the native aspect ratio of the image. If unset, the server
        # fills it by prefetching the image.
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The URL of the image.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @image_url = args[:image_url] if args.key?(:image_url)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # An image button with an onclick action.
      class GoogleChatV1WidgetMarkupImageButton
        include Google::Apis::Core::Hashable
      
        # The icon specified by an enum that indices to an icon provided by Chat API.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The name of this image_button which will be used for accessibility. Default
        # value will be provided if developers don't specify.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @name = args[:name] if args.key?(:name)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # A UI element contains a key (label) and a value (content). And this element
      # may also contain some actions such as onclick button.
      class GoogleChatV1WidgetMarkupKeyValue
        include Google::Apis::Core::Hashable
      
        # The text of the bottom label. Formatted text supported.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupButton]
        attr_accessor :button
      
        # The text of the content. Formatted text supported and always required.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # If the content should be multiline.
        # Corresponds to the JSON property `contentMultiline`
        # @return [Boolean]
        attr_accessor :content_multiline
        alias_method :content_multiline?, :content_multiline
      
        # An enum value that will be replaced by the Chat API with the corresponding
        # icon image.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick]
        attr_accessor :on_click
      
        # The text of the top label. Formatted text supported.
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_label = args[:bottom_label] if args.key?(:bottom_label)
          @button = args[:button] if args.key?(:button)
          @content = args[:content] if args.key?(:content)
          @content_multiline = args[:content_multiline] if args.key?(:content_multiline)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @on_click = args[:on_click] if args.key?(:on_click)
          @top_label = args[:top_label] if args.key?(:top_label)
        end
      end
      
      # An onclick action (e.g. open a link).
      class GoogleChatV1WidgetMarkupOnClick
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupFormAction]
        attr_accessor :action
      
        # A link that opens a new window.
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOpenLink]
        attr_accessor :open_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @open_link = args[:open_link] if args.key?(:open_link)
        end
      end
      
      # A link that opens a new window.
      class GoogleChatV1WidgetMarkupOpenLink
        include Google::Apis::Core::Hashable
      
        # The URL to open.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A button with text and onclick action.
      class GoogleChatV1WidgetMarkupTextButton
        include Google::Apis::Core::Hashable
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::GoogleChatV1WidgetMarkupOnClick]
        attr_accessor :on_click
      
        # The text of the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A paragraph of text. Formatted text supported.
      class GoogleChatV1WidgetMarkupTextParagraph
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The corpus specific metadata for office-type documents, from Google Docs and
      # other sources. This message is passed to the scorer and beyond. Next tag: 9
      class GoogleDocsMetadata
        include Google::Apis::Core::Hashable
      
        # Next tag: 4
        # Corresponds to the JSON property `aclInfo`
        # @return [Google::Apis::CloudsearchV1::AclInfo]
        attr_accessor :acl_info
      
        # The conceptual type (presentation, document, etc.) of this document.
        # Corresponds to the JSON property `documentType`
        # @return [String]
        attr_accessor :document_type
      
        # The file extension of the document. NOTE: As of October 2018 this field is not
        # backfilled for old documents.
        # Corresponds to the JSON property `fileExtension`
        # @return [String]
        attr_accessor :file_extension
      
        # The last time this document was modified, in seconds since epoch. Only counts
        # content modifications.
        # Corresponds to the JSON property `lastContentModifiedTimestamp`
        # @return [Fixnum]
        attr_accessor :last_content_modified_timestamp
      
        # Contains number of subscribers for the document.
        # Corresponds to the JSON property `numSubscribers`
        # @return [Fixnum]
        attr_accessor :num_subscribers
      
        # Size of untruncated viewers list.
        # Corresponds to the JSON property `numViewers`
        # @return [Fixnum]
        attr_accessor :num_viewers
      
        # A message containing information about a specific result. This information is
        # passed to the scorer and beyond; in particular, GWS relies on it to format the
        # result in the UI. Split from GoogleDocsMetadata in case we later want to reuse
        # the message.
        # Corresponds to the JSON property `resultInfo`
        # @return [Google::Apis::CloudsearchV1::GoogleDocsResultInfo]
        attr_accessor :result_info
      
        # Next tag: 2
        # Corresponds to the JSON property `typeInfo`
        # @return [Google::Apis::CloudsearchV1::TypeInfo]
        attr_accessor :type_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl_info = args[:acl_info] if args.key?(:acl_info)
          @document_type = args[:document_type] if args.key?(:document_type)
          @file_extension = args[:file_extension] if args.key?(:file_extension)
          @last_content_modified_timestamp = args[:last_content_modified_timestamp] if args.key?(:last_content_modified_timestamp)
          @num_subscribers = args[:num_subscribers] if args.key?(:num_subscribers)
          @num_viewers = args[:num_viewers] if args.key?(:num_viewers)
          @result_info = args[:result_info] if args.key?(:result_info)
          @type_info = args[:type_info] if args.key?(:type_info)
        end
      end
      
      # A message containing information about a specific result. This information is
      # passed to the scorer and beyond; in particular, GWS relies on it to format the
      # result in the UI. Split from GoogleDocsMetadata in case we later want to reuse
      # the message.
      class GoogleDocsResultInfo
        include Google::Apis::Core::Hashable
      
        # The SHA1 hash of the object in Drive, if any.
        # Corresponds to the JSON property `attachmentSha1`
        # @return [String]
        attr_accessor :attachment_sha1
      
        # Identifies a particular object, including both Users and DirEntries. This Id
        # is unique across the entire server instance, such as the production or qa
        # instance.
        # Corresponds to the JSON property `cosmoId`
        # @return [Google::Apis::CloudsearchV1::Id]
        attr_accessor :cosmo_id
      
        # For Cosmo objects, the Cosmo namespace the object was in. This allows
        # downstream clients to identify whether a document was created in Writely or
        # Kix, Presently or Punch, or whether it was uploaded from GDrive. See
        # storage_cosmo.Id.NAME_SPACE for a list of all Cosmo name spaces.
        # Corresponds to the JSON property `cosmoNameSpace`
        # @return [Fixnum]
        attr_accessor :cosmo_name_space
      
        # The encrypted (user-visible) id of this object. Knowing the id is sufficient
        # to create a canonical URL for this document.
        # Corresponds to the JSON property `encryptedId`
        # @return [String]
        attr_accessor :encrypted_id
      
        # The mimetype of the document.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The visibility indicator in the UI will be based upon this.
        # Corresponds to the JSON property `shareScope`
        # @return [Google::Apis::CloudsearchV1::ShareScope]
        attr_accessor :share_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_sha1 = args[:attachment_sha1] if args.key?(:attachment_sha1)
          @cosmo_id = args[:cosmo_id] if args.key?(:cosmo_id)
          @cosmo_name_space = args[:cosmo_name_space] if args.key?(:cosmo_name_space)
          @encrypted_id = args[:encrypted_id] if args.key?(:encrypted_id)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @share_scope = args[:share_scope] if args.key?(:share_scope)
        end
      end
      
      # 
      class Grid
        include Google::Apis::Core::Hashable
      
        # Represents a complete border style that can be applied to widgets.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::CloudsearchV1::BorderStyle]
        attr_accessor :border_style
      
        # The items to display in the grid.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::GridItem>]
        attr_accessor :items
      
        # The number of columns to display in the grid. Note that a default value will
        # be used if this field is not specified, and that default value will be
        # different depending on where the grid is shown (dialog vs companion).
        # Corresponds to the JSON property `numColumns`
        # @return [Fixnum]
        attr_accessor :num_columns
      
        # This callback will be reused by each individual GridItem, but with the item's
        # identifier and index in the items list added to the callback's parameters.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        # The text to display in the grid header.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @border_style = args[:border_style] if args.key?(:border_style)
          @items = args[:items] if args.key?(:items)
          @num_columns = args[:num_columns] if args.key?(:num_columns)
          @on_click = args[:on_click] if args.key?(:on_click)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GridItem
        include Google::Apis::Core::Hashable
      
        # A user-specified identifier for this grid item. This identifier will be
        # returned in the parent Grid's on_click callback's parameters.
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        # NOTE: Through future refactoring work, this image component will eventually be
        # used in the Image widget, and will likely replace the Icon proto as well.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::ImageComponent]
        attr_accessor :image
      
        # 
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        # 
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # 
        # Corresponds to the JSON property `textAlignment`
        # @return [String]
        attr_accessor :text_alignment
      
        # Text properties.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifier = args[:identifier] if args.key?(:identifier)
          @image = args[:image] if args.key?(:image)
          @layout = args[:layout] if args.key?(:layout)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @text_alignment = args[:text_alignment] if args.key?(:text_alignment)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GroupDetailsUpdatedMetadata
        include Google::Apis::Core::Hashable
      
        # NEXT TAG: 3 A GroupDetails proto will store the information pertaining to
        # single Group.
        # Corresponds to the JSON property `newGroupDetails`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails]
        attr_accessor :new_group_details
      
        # NEXT TAG: 3 A GroupDetails proto will store the information pertaining to
        # single Group.
        # Corresponds to the JSON property `prevGroupDetails`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupDetails]
        attr_accessor :prev_group_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_group_details = args[:new_group_details] if args.key?(:new_group_details)
          @prev_group_details = args[:prev_group_details] if args.key?(:prev_group_details)
        end
      end
      
      # Id representing a group that could be a space, a chat, or a direct message
      # space. Which ID is set here will determine which group
      class GroupId
        include Google::Apis::Core::Hashable
      
        # Unique, immutable ID of the Direct Message Space
        # Corresponds to the JSON property `dmId`
        # @return [Google::Apis::CloudsearchV1::DmId]
        attr_accessor :dm_id
      
        # Primary key for Space resource.
        # Corresponds to the JSON property `spaceId`
        # @return [Google::Apis::CloudsearchV1::SpaceId]
        attr_accessor :space_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dm_id = args[:dm_id] if args.key?(:dm_id)
          @space_id = args[:space_id] if args.key?(:space_id)
        end
      end
      
      # 
      class GroupLinkSharingModificationEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `newStatus`
        # @return [String]
        attr_accessor :new_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_status = args[:new_status] if args.key?(:new_status)
        end
      end
      
      # 
      class GroupRetentionSettingsUpdatedMetaData
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `initiator`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :initiator
      
        # The settings of retention period of a message or topic.
        # Corresponds to the JSON property `retentionSettings`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings]
        attr_accessor :retention_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initiator = args[:initiator] if args.key?(:initiator)
          @retention_settings = args[:retention_settings] if args.key?(:retention_settings)
        end
      end
      
      # Annotation metadata for an GsuiteIntegration artifact.
      class GsuiteIntegrationMetadata
        include Google::Apis::Core::Hashable
      
        # Next Id: 7
        # Corresponds to the JSON property `activityFeedData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedActivityFeedAnnotationData]
        attr_accessor :activity_feed_data
      
        # This is the internal version of the API proto at google3/google/chat/v1/
        # gsuite_message_integration.proto Data used to render Assistant suggestions.
        # See go/bullseye-rendering.
        # Corresponds to the JSON property `assistantData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAssistantAnnotationData]
        attr_accessor :assistant_data
      
        # 
        # Corresponds to the JSON property `calendarEventData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCalendarEventAnnotationData]
        attr_accessor :calendar_event_data
      
        # Data used to render Meet or Google Voice chips in Chat. See go/dynamite-
        # calling-artifacts-in-chat.
        # Corresponds to the JSON property `callData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedCallAnnotationData]
        attr_accessor :call_data
      
        # 
        # Corresponds to the JSON property `clientType`
        # @return [String]
        attr_accessor :client_type
      
        # A list of all strings that are to be indexed for this 1P chip. Each string in
        # this list would be the contents of a single string field in the 1P chip. Eg.
        # For Tasks[title = “hello world”, description = “good bye”]. If we want to
        # index only the title, this would be set to [“hello world”]. If both title and
        # description, then this would be [“hello world”, “good bye”]. Please make sure
        # that the contents of this field is a subset of strings that are rendered as
        # part of the 1P Chip.
        # Corresponds to the JSON property `indexableTexts`
        # @return [Array<String>]
        attr_accessor :indexable_texts
      
        # This is the internal version of the API proto at google3/google/chat/v1/
        # gsuite_message_integration.proto
        # Corresponds to the JSON property `tasksData`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedTasksAnnotationData]
        attr_accessor :tasks_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_feed_data = args[:activity_feed_data] if args.key?(:activity_feed_data)
          @assistant_data = args[:assistant_data] if args.key?(:assistant_data)
          @calendar_event_data = args[:calendar_event_data] if args.key?(:calendar_event_data)
          @call_data = args[:call_data] if args.key?(:call_data)
          @client_type = args[:client_type] if args.key?(:client_type)
          @indexable_texts = args[:indexable_texts] if args.key?(:indexable_texts)
          @tasks_data = args[:tasks_data] if args.key?(:tasks_data)
        end
      end
      
      # 
      class HangoutEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hangoutDurationSecs`
        # @return [Fixnum]
        attr_accessor :hangout_duration_secs
      
        # 
        # Corresponds to the JSON property `mediaType`
        # @return [String]
        attr_accessor :media_type
      
        # 
        # Corresponds to the JSON property `participantId`
        # @return [Array<Google::Apis::CloudsearchV1::StoredParticipantId>]
        attr_accessor :participant_id
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hangout_duration_secs = args[:hangout_duration_secs] if args.key?(:hangout_duration_secs)
          @media_type = args[:media_type] if args.key?(:media_type)
          @participant_id = args[:participant_id] if args.key?(:participant_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A message representing the Hangout video start/end events in Babel
      class HangoutVideoEventMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hangoutVideoType`
        # @return [String]
        attr_accessor :hangout_video_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hangout_video_type = args[:hangout_video_type] if args.key?(:hangout_video_type)
        end
      end
      
      # Hashtag metadata, for HASHTAG segments. For a hashtag, the "text" field should
      # contain the display text, and the search_text field should represent the topic
      # being referenced, without the hash symbol; for example, we might have: text = "
      # #Google" hashtag_data.search_text = "Google" Another example: text = "#pikachu"
      # hashtag_data.search_text = "Pokemon" Both strings should be considered part
      # of the searchable text. In go/sbe, both are indexed and searchable.
      class HashtagData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `searchText`
        # @return [String]
        attr_accessor :search_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @search_text = args[:search_text] if args.key?(:search_text)
        end
      end
      
      # The most recent history records associated with the item.
      class History
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `record`
        # @return [Array<Google::Apis::CloudsearchV1::HistoryRecord>]
        attr_accessor :record
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record = args[:record] if args.key?(:record)
        end
      end
      
      # 
      class HistoryRecord
        include Google::Apis::Core::Hashable
      
        # Represents the context of the client on behalf of which a HistoryRecord is
        # produced. The ClientContext message can be used to hold context about the
        # service client (e.g. the internal server making fusebox requests) or the user
        # client (e.g. the IP address of the end user).
        # Corresponds to the JSON property `clientContext`
        # @return [Google::Apis::CloudsearchV1::ClientContext]
        attr_accessor :client_context
      
        # HistoryRecord for changes associated with a filter, namely: FILTER_CREATED
        # FILTER_DELETED
        # Corresponds to the JSON property `filterUpdate`
        # @return [Google::Apis::CloudsearchV1::FilterUpdate]
        attr_accessor :filter_update
      
        # HistoryRecord for changes associated with IMAP, namely: IMAP_UIDS_REASSIGN
        # Corresponds to the JSON property `imapUpdate`
        # @return [Google::Apis::CloudsearchV1::ImapUpdate]
        attr_accessor :imap_update
      
        # HistoryRecord for changes associated with a label, namely: LABEL_CREATED
        # LABEL_DELETED LABEL_RENAMED LABEL_UPDATED
        # Corresponds to the JSON property `labelUpdate`
        # @return [Google::Apis::CloudsearchV1::LabelUpdate]
        attr_accessor :label_update
      
        # HistoryRecord for changes associated with prefs, namely: PREF_WRITTEN
        # PREF_DELETED
        # Corresponds to the JSON property `prefUpdate`
        # @return [Google::Apis::CloudsearchV1::PrefUpdate]
        attr_accessor :pref_update
      
        # Each HistoryRecord has a unique id. Ids are monotonically increasing, and not
        # necessarily contiguous.
        # Corresponds to the JSON property `recordId`
        # @return [Fixnum]
        attr_accessor :record_id
      
        # HistoryRecord for changes associated with a thread, namely: MESSAGE_ADDED
        # MESSAGE_DELETED LABEL_ADDED LABEL_REMOVED ATTRIBUTE_SET ATTRIBUTE_REMOVED
        # THREAD_KEY_SET All label_ids refer to the (unchanging) value as defined by the
        # Label.id field in labels.proto. In particular, it is *not* the canonical_name.
        # Corresponds to the JSON property `threadUpdate`
        # @return [Google::Apis::CloudsearchV1::ThreadUpdate]
        attr_accessor :thread_update
      
        # Storage information pertaining to the transaction with which a HistoryRecord
        # is associated.
        # Corresponds to the JSON property `transactionContext`
        # @return [Google::Apis::CloudsearchV1::TransactionContext]
        attr_accessor :transaction_context
      
        # HistoryRecord for debug info associated with the transaction, namely:
        # TXN_DEBUG_INFO TODO(b/143845917) This is a short-term workaround for
        # unblocking fusebox writes migration. Clean up the code or land a long-term
        # solution after the rollout. go/diff-to-historyrecord
        # Corresponds to the JSON property `txnDebugInfo`
        # @return [Google::Apis::CloudsearchV1::TransactionDebugInfo]
        attr_accessor :txn_debug_info
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_context = args[:client_context] if args.key?(:client_context)
          @filter_update = args[:filter_update] if args.key?(:filter_update)
          @imap_update = args[:imap_update] if args.key?(:imap_update)
          @label_update = args[:label_update] if args.key?(:label_update)
          @pref_update = args[:pref_update] if args.key?(:pref_update)
          @record_id = args[:record_id] if args.key?(:record_id)
          @thread_update = args[:thread_update] if args.key?(:thread_update)
          @transaction_context = args[:transaction_context] if args.key?(:transaction_context)
          @txn_debug_info = args[:txn_debug_info] if args.key?(:txn_debug_info)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Actions handled by individual host apps.
      class HostAppActionMarkup
        include Google::Apis::Core::Hashable
      
        # Actions handled by Calendar.
        # Corresponds to the JSON property `calendarAction`
        # @return [Google::Apis::CloudsearchV1::CalendarClientActionMarkup]
        attr_accessor :calendar_action
      
        # Actions handled by Chat Clients.
        # Corresponds to the JSON property `chatAction`
        # @return [Google::Apis::CloudsearchV1::ChatClientActionMarkup]
        attr_accessor :chat_action
      
        # Actions handled by Drive.
        # Corresponds to the JSON property `driveAction`
        # @return [Google::Apis::CloudsearchV1::DriveClientActionMarkup]
        attr_accessor :drive_action
      
        # Actions handled by Docs, Sheets, or Slides.
        # Corresponds to the JSON property `editorAction`
        # @return [Google::Apis::CloudsearchV1::EditorClientActionMarkup]
        attr_accessor :editor_action
      
        # Actions handled by Gmail.
        # Corresponds to the JSON property `gmailAction`
        # @return [Google::Apis::CloudsearchV1::GmailClientActionMarkup]
        attr_accessor :gmail_action
      
        # Actions handled by Sheets.
        # Corresponds to the JSON property `sheetsAction`
        # @return [Google::Apis::CloudsearchV1::SheetsClientActionMarkup]
        attr_accessor :sheets_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar_action = args[:calendar_action] if args.key?(:calendar_action)
          @chat_action = args[:chat_action] if args.key?(:chat_action)
          @drive_action = args[:drive_action] if args.key?(:drive_action)
          @editor_action = args[:editor_action] if args.key?(:editor_action)
          @gmail_action = args[:gmail_action] if args.key?(:gmail_action)
          @sheets_action = args[:sheets_action] if args.key?(:sheets_action)
        end
      end
      
      # Represents a single host. Optionally, the MDB owner of the host can be
      # specified.
      class HostProto
        include Google::Apis::Core::Hashable
      
        # Lower-case, fully qualified hostname.
        # Corresponds to the JSON property `hostName`
        # @return [String]
        attr_accessor :host_name
      
        # If present, then any checks that compare this Principal to LOAS peer info must
        # confirm the peer's machine owner is equal to 'host_owner'. If absent, then any
        # peer machine owner is acceptable.
        # Corresponds to the JSON property `hostOwner`
        # @return [String]
        attr_accessor :host_owner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_name = args[:host_name] if args.key?(:host_name)
          @host_owner = args[:host_owner] if args.key?(:host_owner)
        end
      end
      
      # Used to provide a search operator for html properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class HtmlOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the html
        # property. For example, if operatorName is *subject* and the property's name is
        # *subjectLine*, then queries like *subject:<value>* show results only where the
        # value of the property named *subjectLine* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator return all items where
        # *<value>* matches the value of any html properties or text within the content
        # field for the item. The operator name can only contain lowercase letters (a-z).
        # The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for html properties.
      class HtmlPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for html properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::HtmlOperatorOptions]
        attr_accessor :operator_options
      
        # Indicates the search quality importance of the tokens within the field when
        # used for retrieval. Can only be set to DEFAULT or NONE.
        # Corresponds to the JSON property `retrievalImportance`
        # @return [Google::Apis::CloudsearchV1::RetrievalImportance]
        attr_accessor :retrieval_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @retrieval_importance = args[:retrieval_importance] if args.key?(:retrieval_importance)
        end
      end
      
      # List of html values.
      class HtmlValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for html values is 2048 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class IconImage
        include Google::Apis::Core::Hashable
      
        # The alternative text of this icon_url which will be used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The image cropping style. Note that icons with a CIRCLE style are rendered
        # larger than the default icon size.
        # Corresponds to the JSON property `imageStyle`
        # @return [String]
        attr_accessor :image_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @image_style = args[:image_style] if args.key?(:image_style)
        end
      end
      
      # Identifies a particular object, including both Users and DirEntries. This Id
      # is unique across the entire server instance, such as the production or qa
      # instance.
      class Id
        include Google::Apis::Core::Hashable
      
        # The User account in which the DirEntry was originally created. If name_space==
        # GAIA, then it's the gaia_id of the user this id is referring to.
        # Corresponds to the JSON property `creatorUserId`
        # @return [Fixnum]
        attr_accessor :creator_user_id
      
        # The local identifier for the DirEntry (local to the creator's account).
        # local_id + app_name is guaranteed to be unique within the creator account, but
        # not across all User accounts. The string is case sensitive. Ignore if
        # name_space==GAIA. NB For name_space==COSMO, all local_id's should be defined
        # in google3/java/com/google/storage/cosmo/server/api/SpecialObjectIds.java as
        # they have a special predefined meaning. See cosmo.client.CosmoIdFactory.
        # createObjectId(long,String) for IMPORTANT recommendations when generating IDs.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The name space in which this id is unique (typically the application that
        # created it). Values should be drawn from the above enum, but for
        # experimentation, use values greater than 1000.
        # Corresponds to the JSON property `nameSpace`
        # @return [Fixnum]
        attr_accessor :name_space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @local_id = args[:local_id] if args.key?(:local_id)
          @name_space = args[:name_space] if args.key?(:name_space)
        end
      end
      
      # 
      class Image
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image which will be used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The aspect ratio of this image (width/height).
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # Image url specified by developers. Server side, we will wrap with FIFE so
        # client apps can configure size/cropping/etc.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @image_url = args[:image_url] if args.key?(:image_url)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class ImageButton
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @name = args[:name] if args.key?(:name)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # NOTE: Through future refactoring work, this image component will eventually be
      # used in the Image widget, and will likely replace the Icon proto as well.
      class ImageComponent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents a complete border style that can be applied to widgets.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::CloudsearchV1::BorderStyle]
        attr_accessor :border_style
      
        # Represents a crop style that can be applied to an image.
        # Corresponds to the JSON property `cropStyle`
        # @return [Google::Apis::CloudsearchV1::ImageCropStyle]
        attr_accessor :crop_style
      
        # 
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @border_style = args[:border_style] if args.key?(:border_style)
          @crop_style = args[:crop_style] if args.key?(:crop_style)
          @image_url = args[:image_url] if args.key?(:image_url)
        end
      end
      
      # Represents a crop style that can be applied to an image.
      class ImageCropStyle
        include Google::Apis::Core::Hashable
      
        # The aspect ratio to use if the crop type is RECTANGLE_CUSTOM.
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The crop type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This is deprecated and please use KeyValue.
      class ImageKeyValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # 
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class ImapSessionContext
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `app`
        # @return [String]
        attr_accessor :app
      
        # User agent information
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # As agreed with Bond team, this holds the fingerprint of any "aguid" or "guid"
        # provided by the ID command. The fingerprint should be calculated by
        # fingerprint2011. Note that not all clients will provide aguid or guid through
        # ID command.
        # Corresponds to the JSON property `guidFingerprint`
        # @return [Fixnum]
        attr_accessor :guid_fingerprint
      
        # 
        # Corresponds to the JSON property `os`
        # @return [String]
        attr_accessor :os
      
        # 
        # Corresponds to the JSON property `osVersion`
        # @return [Google::Apis::CloudsearchV1::OsVersion]
        attr_accessor :os_version
      
        # This message contains either the device model, or a prefix of the device model
        # (AKA a trimmed device model). The "is_trimmed" field indicates which one it is.
        # Corresponds to the JSON property `possiblyTrimmedModel`
        # @return [Google::Apis::CloudsearchV1::PossiblyTrimmedModel]
        attr_accessor :possibly_trimmed_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
          @device_type = args[:device_type] if args.key?(:device_type)
          @guid_fingerprint = args[:guid_fingerprint] if args.key?(:guid_fingerprint)
          @os = args[:os] if args.key?(:os)
          @os_version = args[:os_version] if args.key?(:os_version)
          @possibly_trimmed_model = args[:possibly_trimmed_model] if args.key?(:possibly_trimmed_model)
        end
      end
      
      # Message delete history record extension that exports //imapsync/folder
      # attribute of deleted messages which have ^is label.
      class ImapSyncDelete
        include Google::Apis::Core::Hashable
      
        # This is the content of //imapsync/folder attribute.
        # Corresponds to the JSON property `mappings`
        # @return [Google::Apis::CloudsearchV1::FolderAttribute]
        attr_accessor :mappings
      
        # 
        # Corresponds to the JSON property `msgId`
        # @return [Fixnum]
        attr_accessor :msg_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mappings = args[:mappings] if args.key?(:mappings)
          @msg_id = args[:msg_id] if args.key?(:msg_id)
        end
      end
      
      # 
      class ImapUidsReassign
        include Google::Apis::Core::Hashable
      
        # Label
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        # The message Ids
        # Corresponds to the JSON property `messageId`
        # @return [Array<Fixnum>]
        attr_accessor :message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_id = args[:label_id] if args.key?(:label_id)
          @message_id = args[:message_id] if args.key?(:message_id)
        end
      end
      
      # HistoryRecord for changes associated with IMAP, namely: IMAP_UIDS_REASSIGN
      class ImapUpdate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `imapUidsReassign`
        # @return [Google::Apis::CloudsearchV1::ImapUidsReassign]
        attr_accessor :imap_uids_reassign
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imap_uids_reassign = args[:imap_uids_reassign] if args.key?(:imap_uids_reassign)
        end
      end
      
      # 
      class ImapsyncFolderAttributeFolderMessage
        include Google::Apis::Core::Hashable
      
        # Flags of the message. Represents unseen and flagged state.
        # Corresponds to the JSON property `flags`
        # @return [Google::Apis::CloudsearchV1::ImapsyncFolderAttributeFolderMessageFlags]
        attr_accessor :flags
      
        # UID of the message.
        # Corresponds to the JSON property `uid`
        # @return [Fixnum]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flags = args[:flags] if args.key?(:flags)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # 
      class ImapsyncFolderAttributeFolderMessageFlags
        include Google::Apis::Core::Hashable
      
        # Flagged state of the message.
        # Corresponds to the JSON property `flagged`
        # @return [Boolean]
        attr_accessor :flagged
        alias_method :flagged?, :flagged
      
        # Seen state of the message.
        # Corresponds to the JSON property `seen`
        # @return [Boolean]
        attr_accessor :seen
        alias_method :seen?, :seen
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flagged = args[:flagged] if args.key?(:flagged)
          @seen = args[:seen] if args.key?(:seen)
        end
      end
      
      # Annotation metadata to display system messages for incoming webhook events.
      # Next Tag: 7
      class IncomingWebhookChangedMetadata
        include Google::Apis::Core::Hashable
      
        # The webhook name at the time of the change. Used in Spanner storage, BE API
        # responses and FE API responses.
        # Corresponds to the JSON property `incomingWebhookName`
        # @return [String]
        attr_accessor :incoming_webhook_name
      
        # Primary key for User resource.
        # Corresponds to the JSON property `initiatorId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :initiator_id
      
        # User profile information. This user is not necessarily member of a space.
        # Corresponds to the JSON property `initiatorProfile`
        # @return [Google::Apis::CloudsearchV1::User]
        attr_accessor :initiator_profile
      
        # The webhook id of the incoming webhook in question. This field should not be
        # used to load webhook information dynamically and is only present for debugging
        # purposes. Used in Spanner storage, BE API responses and FE API responses.
        # Corresponds to the JSON property `obfuscatedIncomingWebhookId`
        # @return [String]
        attr_accessor :obfuscated_incoming_webhook_id
      
        # Only populated for UPDATED_NAME and UPDATED_NAME_AND_AVATAR events, where the
        # webhook name was changed. Used in Spanner storage, BE API responses and FE API
        # responses.
        # Corresponds to the JSON property `oldIncomingWebhookName`
        # @return [String]
        attr_accessor :old_incoming_webhook_name
      
        # Used in Spanner storage, BE API responses and FE API responses.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @incoming_webhook_name = args[:incoming_webhook_name] if args.key?(:incoming_webhook_name)
          @initiator_id = args[:initiator_id] if args.key?(:initiator_id)
          @initiator_profile = args[:initiator_profile] if args.key?(:initiator_profile)
          @obfuscated_incoming_webhook_id = args[:obfuscated_incoming_webhook_id] if args.key?(:obfuscated_incoming_webhook_id)
          @old_incoming_webhook_name = args[:old_incoming_webhook_name] if args.key?(:old_incoming_webhook_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class IndexItemOptions
        include Google::Apis::Core::Hashable
      
        # Specifies if the index request should allow Google Workspace principals that
        # do not exist or are deleted.
        # Corresponds to the JSON property `allowUnknownGsuitePrincipals`
        # @return [Boolean]
        attr_accessor :allow_unknown_gsuite_principals
        alias_method :allow_unknown_gsuite_principals?, :allow_unknown_gsuite_principals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_unknown_gsuite_principals = args[:allow_unknown_gsuite_principals] if args.key?(:allow_unknown_gsuite_principals)
        end
      end
      
      # 
      class IndexItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # 
        # Corresponds to the JSON property `indexItemOptions`
        # @return [Google::Apis::CloudsearchV1::IndexItemOptions]
        attr_accessor :index_item_options
      
        # Represents a single object that is an item in the search index, such as a file,
        # folder, or a database record.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::CloudsearchV1::Item]
        attr_accessor :item
      
        # Required. The RequestMode for this request.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @index_item_options = args[:index_item_options] if args.key?(:index_item_options)
          @item = args[:item] if args.key?(:item)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Request message for `InitializeCustomer` method.
      class InitializeCustomerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class InsertContent
        include Google::Apis::Core::Hashable
      
        # The content to be inserted.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The type of inserted content.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # 
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @content_type = args[:content_type] if args.key?(:content_type)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Used to specify integer faceting options.
      class IntegerFacetingOptions
        include Google::Apis::Core::Hashable
      
        # Buckets for given integer values should be in strictly ascending order. For
        # example, if values supplied are (1,5,10,100), the following facet buckets will
        # be formed `<1, [1,5), [5-10), [10-100), >=100`.
        # Corresponds to the JSON property `integerBuckets`
        # @return [Array<Fixnum>]
        attr_accessor :integer_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_buckets = args[:integer_buckets] if args.key?(:integer_buckets)
        end
      end
      
      # Used to provide a search operator for integer properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class IntegerOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property using the greater-than operator. For example, if
        # greaterThanOperatorName is *priorityabove* and the property's name is *
        # priorityVal*, then queries like *priorityabove:<value>* show results only
        # where the value of the property named *priorityVal* is greater than *<value>*.
        # The operator name can only contain lowercase letters (a-z). The maximum length
        # is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property using the less-than operator. For example, if
        # lessThanOperatorName is *prioritybelow* and the property's name is *
        # priorityVal*, then queries like *prioritybelow:<value>* show results only
        # where the value of the property named *priorityVal* is less than *<value>*.
        # The operator name can only contain lowercase letters (a-z). The maximum length
        # is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property. For example, if operatorName is *priority* and the property'
        # s name is *priorityVal*, then queries like *priority:<value>* show results
        # only where the value of the property named *priorityVal* matches *<value>*. By
        # contrast, a search that uses the same *<value>* without an operator returns
        # all items where *<value>* matches the value of any String properties or text
        # within the content field for the item. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for integer properties.
      class IntegerPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to specify integer faceting options.
        # Corresponds to the JSON property `integerFacetingOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerFacetingOptions]
        attr_accessor :integer_faceting_options
      
        # The maximum value of the property. The minimum and maximum values for the
        # property are used to rank results according to the ordered ranking. Indexing
        # requests with values greater than the maximum are accepted and ranked with the
        # same weight as items indexed with the maximum value.
        # Corresponds to the JSON property `maximumValue`
        # @return [Fixnum]
        attr_accessor :maximum_value
      
        # The minimum value of the property. The minimum and maximum values for the
        # property are used to rank results according to the ordered ranking. Indexing
        # requests with values less than the minimum are accepted and ranked with the
        # same weight as items indexed with the minimum value.
        # Corresponds to the JSON property `minimumValue`
        # @return [Fixnum]
        attr_accessor :minimum_value
      
        # Used to provide a search operator for integer properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerOperatorOptions]
        attr_accessor :operator_options
      
        # Used to specify the ordered ranking for the integer. Can only be used if
        # isRepeatable is false.
        # Corresponds to the JSON property `orderedRanking`
        # @return [String]
        attr_accessor :ordered_ranking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_faceting_options = args[:integer_faceting_options] if args.key?(:integer_faceting_options)
          @maximum_value = args[:maximum_value] if args.key?(:maximum_value)
          @minimum_value = args[:minimum_value] if args.key?(:minimum_value)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @ordered_ranking = args[:ordered_ranking] if args.key?(:ordered_ranking)
        end
      end
      
      # List of integer values.
      class IntegerValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class IntegrationConfigMutation
        include Google::Apis::Core::Hashable
      
        # Identifier of an App.
        # Corresponds to the JSON property `addApp`
        # @return [Google::Apis::CloudsearchV1::AppId]
        attr_accessor :add_app
      
        # Add a pinned tab using its identifier.
        # Corresponds to the JSON property `addPinnedItem`
        # @return [Google::Apis::CloudsearchV1::PinnedItemId]
        attr_accessor :add_pinned_item
      
        # Identifier of an App.
        # Corresponds to the JSON property `removeApp`
        # @return [Google::Apis::CloudsearchV1::AppId]
        attr_accessor :remove_app
      
        # Remove an active pinned tab using its identifier.
        # Corresponds to the JSON property `removePinnedItem`
        # @return [Google::Apis::CloudsearchV1::PinnedItemId]
        attr_accessor :remove_pinned_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_app = args[:add_app] if args.key?(:add_app)
          @add_pinned_item = args[:add_pinned_item] if args.key?(:add_pinned_item)
          @remove_app = args[:remove_app] if args.key?(:remove_app)
          @remove_pinned_item = args[:remove_pinned_item] if args.key?(:remove_pinned_item)
        end
      end
      
      # Annotation metadata to display system message for integration config updated
      # event. This metadata is stored in spanner, and can be dispatched to clients
      # without any field modification or transformation.
      class IntegrationConfigUpdatedMetadata
        include Google::Apis::Core::Hashable
      
        # Primary key for User resource.
        # Corresponds to the JSON property `initiatorId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :initiator_id
      
        # A list of updates applied on the integration config.
        # Corresponds to the JSON property `mutations`
        # @return [Array<Google::Apis::CloudsearchV1::IntegrationConfigMutation>]
        attr_accessor :mutations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initiator_id = args[:initiator_id] if args.key?(:initiator_id)
          @mutations = args[:mutations] if args.key?(:mutations)
        end
      end
      
      # Represents an interaction between a user and an item.
      class Interaction
        include Google::Apis::Core::Hashable
      
        # The time when the user acted on the item. If multiple actions of the same type
        # exist for a single user, only the most recent action is recorded.
        # Corresponds to the JSON property `interactionTime`
        # @return [String]
        attr_accessor :interaction_time
      
        # Reference to a user, group, or domain.
        # Corresponds to the JSON property `principal`
        # @return [Google::Apis::CloudsearchV1::Principal]
        attr_accessor :principal
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interaction_time = args[:interaction_time] if args.key?(:interaction_time)
          @principal = args[:principal] if args.key?(:principal)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Interaction data for an annotation, which may be supplemental to the metadata
      # oneof. For example, this will contain the fully built navigation target for
      # smart chips. NEXT TAG: 2
      class InteractionData
        include Google::Apis::Core::Hashable
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `url`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class InviteAcceptedEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `participantId`
        # @return [Array<Google::Apis::CloudsearchV1::StoredParticipantId>]
        attr_accessor :participant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @participant_id = args[:participant_id] if args.key?(:participant_id)
        end
      end
      
      # Invitee information from a Dynamite invitation. See go/dynamite-invitee-mgmt.
      class InviteeInfo
        include Google::Apis::Core::Hashable
      
        # Email as typed by the user when invited to Room or DM. This value will be
        # canonicalized and hashed before retained in storage.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Primary key for User resource.
        # Corresponds to the JSON property `userId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Represents a single object that is an item in the search index, such as a file,
      # folder, or a database record.
      class Item
        include Google::Apis::Core::Hashable
      
        # Access control list information for the item. For more information see [Map
        # ACLs](https://developers.google.com/cloud-search/docs/guides/acls).
        # Corresponds to the JSON property `acl`
        # @return [Google::Apis::CloudsearchV1::ItemAcl]
        attr_accessor :acl
      
        # Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8
        # encoded strings are allowed as inlineContent. If the content is uploaded and
        # not binary, it must be UTF-8 encoded.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::CloudsearchV1::ItemContent]
        attr_accessor :content
      
        # The type for this item.
        # Corresponds to the JSON property `itemType`
        # @return [String]
        attr_accessor :item_type
      
        # Available metadata fields for the item.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::CloudsearchV1::ItemMetadata]
        attr_accessor :metadata
      
        # The name of the Item. Format: datasources/`source_id`/items/`item_id` This is
        # a required field. The maximum length is 1536 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional state connector can store for this item. The maximum length is
        # 10000 bytes.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Queue this item belongs to. The maximum length is 100 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # This contains item's status and any errors.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudsearchV1::ItemStatus]
        attr_accessor :status
      
        # Available structured data fields for the item.
        # Corresponds to the JSON property `structuredData`
        # @return [Google::Apis::CloudsearchV1::ItemStructuredData]
        attr_accessor :structured_data
      
        # Required. The indexing system stores the version from the datasource as a byte
        # string and compares the Item version in the index to the version of the queued
        # Item using lexical ordering. Cloud Search Indexing won't index or delete any
        # queued item with a version value that is less than or equal to the version of
        # the currently indexed item. The maximum length for this field is 1024 bytes.
        # For information on how item version affects the deletion process, refer to [
        # Handle revisions after manual deletes](https://developers.google.com/cloud-
        # search/docs/guides/operations).
        # Corresponds to the JSON property `version`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl = args[:acl] if args.key?(:acl)
          @content = args[:content] if args.key?(:content)
          @item_type = args[:item_type] if args.key?(:item_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
          @queue = args[:queue] if args.key?(:queue)
          @status = args[:status] if args.key?(:status)
          @structured_data = args[:structured_data] if args.key?(:structured_data)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Access control list information for the item. For more information see [Map
      # ACLs](https://developers.google.com/cloud-search/docs/guides/acls).
      class ItemAcl
        include Google::Apis::Core::Hashable
      
        # Sets the type of access rules to apply when an item inherits its ACL from a
        # parent. This should always be set in tandem with the inheritAclFrom field.
        # Also, when the inheritAclFrom field is set, this field should be set to a
        # valid AclInheritanceType.
        # Corresponds to the JSON property `aclInheritanceType`
        # @return [String]
        attr_accessor :acl_inheritance_type
      
        # List of principals who are explicitly denied access to the item in search
        # results. While principals are denied access by default, use denied readers to
        # handle exceptions and override the list allowed readers. The maximum number of
        # elements is 100.
        # Corresponds to the JSON property `deniedReaders`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :denied_readers
      
        # The name of the item to inherit the Access Permission List (ACL) from. Note:
        # ACL inheritance *only* provides access permissions to child items and does not
        # define structural relationships, nor does it provide convenient ways to delete
        # large groups of items. Deleting an ACL parent from the index only alters the
        # access permissions of child items that reference the parent in the
        # inheritAclFrom field. The item is still in the index, but may not visible in
        # search results. By contrast, deletion of a container item also deletes all
        # items that reference the container via the containerName field. The maximum
        # length for this field is 1536 characters.
        # Corresponds to the JSON property `inheritAclFrom`
        # @return [String]
        attr_accessor :inherit_acl_from
      
        # Optional. List of owners for the item. This field has no bearing on document
        # access permissions. It does, however, offer a slight ranking boosts items
        # where the querying user is an owner. The maximum number of elements is 5.
        # Corresponds to the JSON property `owners`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :owners
      
        # List of principals who are allowed to see the item in search results. Optional
        # if inheriting permissions from another item or if the item is not intended to
        # be visible, such as virtual containers. The maximum number of elements is 1000.
        # Corresponds to the JSON property `readers`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :readers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl_inheritance_type = args[:acl_inheritance_type] if args.key?(:acl_inheritance_type)
          @denied_readers = args[:denied_readers] if args.key?(:denied_readers)
          @inherit_acl_from = args[:inherit_acl_from] if args.key?(:inherit_acl_from)
          @owners = args[:owners] if args.key?(:owners)
          @readers = args[:readers] if args.key?(:readers)
        end
      end
      
      # Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8
      # encoded strings are allowed as inlineContent. If the content is uploaded and
      # not binary, it must be UTF-8 encoded.
      class ItemContent
        include Google::Apis::Core::Hashable
      
        # Represents an upload session reference. This reference is created via upload
        # method. This reference is valid for 30 days after its creation. Updating of
        # item content may refer to this uploaded content via contentDataRef.
        # Corresponds to the JSON property `contentDataRef`
        # @return [Google::Apis::CloudsearchV1::UploadItemRef]
        attr_accessor :content_data_ref
      
        # 
        # Corresponds to the JSON property `contentFormat`
        # @return [String]
        attr_accessor :content_format
      
        # Hashing info calculated and provided by the API client for content. Can be
        # used with the items.push method to calculate modified state. The maximum
        # length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # Content that is supplied inlined within the update method. The maximum length
        # is 102400 bytes (100 KiB).
        # Corresponds to the JSON property `inlineContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_data_ref = args[:content_data_ref] if args.key?(:content_data_ref)
          @content_format = args[:content_format] if args.key?(:content_format)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @inline_content = args[:inline_content] if args.key?(:inline_content)
        end
      end
      
      # 
      class ItemCountByStatus
        include Google::Apis::Core::Hashable
      
        # Number of items matching the status code.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Number of items matching the status code for which billing is done. This
        # excludes virtual container items from the total count. This count would not be
        # applicable for items with ERROR or NEW_ITEM status code.
        # Corresponds to the JSON property `indexedItemsCount`
        # @return [Fixnum]
        attr_accessor :indexed_items_count
      
        # Status of the items.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @indexed_items_count = args[:indexed_items_count] if args.key?(:indexed_items_count)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # Available metadata fields for the item.
      class ItemMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the container for this item. Deletion of the container item leads
        # to automatic deletion of this item. Note: ACLs are not inherited from a
        # container item. To provide ACL inheritance for an item, use the inheritAclFrom
        # field. The maximum length is 1536 characters.
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # The BCP-47 language code for the item, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier. The maximum length is 32 characters.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # A set of named attributes associated with the item. This can be used for
        # influencing the ranking of the item based on the context in the request. The
        # maximum number of elements is 10.
        # Corresponds to the JSON property `contextAttributes`
        # @return [Array<Google::Apis::CloudsearchV1::ContextAttribute>]
        attr_accessor :context_attributes
      
        # The time when the item was created in the source repository.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Hashing value provided by the API caller. This can be used with the items.push
        # method to calculate modified state. The maximum length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # A list of interactions for the item. Interactions are used to improve Search
        # quality, but are not exposed to end users. The maximum number of elements is
        # 1000.
        # Corresponds to the JSON property `interactions`
        # @return [Array<Google::Apis::CloudsearchV1::Interaction>]
        attr_accessor :interactions
      
        # Additional keywords or phrases that should match the item. Used internally for
        # user generated content. The maximum number of elements is 100. The maximum
        # length is 8192 characters.
        # Corresponds to the JSON property `keywords`
        # @return [Array<String>]
        attr_accessor :keywords
      
        # The original mime-type of ItemContent.content in the source repository. The
        # maximum length is 256 characters.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The type of the item. This should correspond to the name of an object
        # definition in the schema registered for the data source. For example, if the
        # schema for the data source contains an object definition with name 'document',
        # then item indexing requests for objects of that type should set objectType to '
        # document'. The maximum length is 256 characters.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Additional search quality metadata of the item.
        # Corresponds to the JSON property `searchQualityMetadata`
        # @return [Google::Apis::CloudsearchV1::SearchQualityMetadata]
        attr_accessor :search_quality_metadata
      
        # Link to the source repository serving the data. Seach results apply this link
        # to the title. Whitespace or special characters may cause Cloud Seach result
        # links to trigger a redirect notice; to avoid this, encode the URL. The maximum
        # length is 2048 characters.
        # Corresponds to the JSON property `sourceRepositoryUrl`
        # @return [String]
        attr_accessor :source_repository_url
      
        # The title of the item. If given, this will be the displayed title of the
        # Search result. The maximum length is 2048 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time when the item was last modified in the source repository.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @content_language = args[:content_language] if args.key?(:content_language)
          @context_attributes = args[:context_attributes] if args.key?(:context_attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @interactions = args[:interactions] if args.key?(:interactions)
          @keywords = args[:keywords] if args.key?(:keywords)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @object_type = args[:object_type] if args.key?(:object_type)
          @search_quality_metadata = args[:search_quality_metadata] if args.key?(:search_quality_metadata)
          @source_repository_url = args[:source_repository_url] if args.key?(:source_repository_url)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Container for type-specific extensions of an Item. This protobuf is defined in
      # a separate file to allow types to reference/extend the message without
      # depending on other fusebox protobufs. See items.proto.
      class ItemParts
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This contains item's status and any errors.
      class ItemStatus
        include Google::Apis::Core::Hashable
      
        # Status code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Error details in case the item is in ERROR state.
        # Corresponds to the JSON property `processingErrors`
        # @return [Array<Google::Apis::CloudsearchV1::ProcessingError>]
        attr_accessor :processing_errors
      
        # Repository error reported by connector.
        # Corresponds to the JSON property `repositoryErrors`
        # @return [Array<Google::Apis::CloudsearchV1::RepositoryError>]
        attr_accessor :repository_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @processing_errors = args[:processing_errors] if args.key?(:processing_errors)
          @repository_errors = args[:repository_errors] if args.key?(:repository_errors)
        end
      end
      
      # Available structured data fields for the item.
      class ItemStructuredData
        include Google::Apis::Core::Hashable
      
        # Hashing value provided by the API caller. This can be used with the items.push
        # method to calculate modified state. The maximum length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # A structured data object consisting of named properties.
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::CloudsearchV1::StructuredDataObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # An ItemThread is an ordered list of Items. An ItemThread corresponds to a "
      # conversation" in the context of mail. An Item belongs to exactly one
      # ItemThread.
      class ItemThread
        include Google::Apis::Core::Hashable
      
        # ClusterInfo contains clustering related information for a particular thread
        # that would be sent as part of the conversation view. Today, this information
        # would be used by iOS notification server to identify whether the thread
        # belongs to a cluster. If the thread belongs to a grouped cluster, it would
        # identify whether the cluster is throttled.
        # Corresponds to the JSON property `clusterInfo`
        # @return [Google::Apis::CloudsearchV1::ClusterInfo]
        attr_accessor :cluster_info
      
        # The Items in the ItemThread. In the context of a search, the list of Items may
        # be a subset of those that logically belong to the ItemThread. The details of
        # which items are included are available in the ItemThreadView returned in the
        # overall rpc response.
        # Corresponds to the JSON property `item`
        # @return [Array<Google::Apis::CloudsearchV1::FuseboxItem>]
        attr_accessor :item
      
        # The server id of the last item returned in the ItemThread. This can be deduced
        # from the [item] list but is provided for convenience. When manually
        # constructing an ItemThreadViewSpec to perform operations on the ItemThread,
        # this value can be used as the [high_item_id_watermark].
        # Corresponds to the JSON property `lastItemId`
        # @return [Fixnum]
        attr_accessor :last_item_id
      
        # In the context of a search, the MatchInfo contains information about which
        # Items matched the query.
        # Corresponds to the JSON property `matchInfo`
        # @return [Google::Apis::CloudsearchV1::FuseboxItemThreadMatchInfo]
        attr_accessor :match_info
      
        # A snippet summarizing the thread. This field is only populated for searches.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `threadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :thread_key
      
        # A base64 encoded and encrypted string generated from the Gaia Id and the
        # thread id. Used to generate the permalink for this thread, exposed from Gmail
        # API.
        # Corresponds to the JSON property `threadLocator`
        # @return [String]
        attr_accessor :thread_locator
      
        # State of an topic thread as maintained within Tingle.
        # Corresponds to the JSON property `topicState`
        # @return [Google::Apis::CloudsearchV1::TopicState]
        attr_accessor :topic_state
      
        # The latest history operation id that resulted in a mutation of any item in the
        # thread.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_info = args[:cluster_info] if args.key?(:cluster_info)
          @item = args[:item] if args.key?(:item)
          @last_item_id = args[:last_item_id] if args.key?(:last_item_id)
          @match_info = args[:match_info] if args.key?(:match_info)
          @snippet = args[:snippet] if args.key?(:snippet)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @thread_locator = args[:thread_locator] if args.key?(:thread_locator)
          @topic_state = args[:topic_state] if args.key?(:topic_state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Identifies a jobsetted server as a target for Trigger dispatch.
      class JobsettedServerSpec
        include Google::Apis::Core::Hashable
      
        # E.g. "gateway", "stubby" etc. Leave unset to use the default unnamed port.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # E.g. "satellite-server", "bigtop-sync", etc.
        # Corresponds to the JSON property `serverName`
        # @return [String]
        attr_accessor :server_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port_name = args[:port_name] if args.key?(:port_name)
          @server_name = args[:server_name] if args.key?(:server_name)
        end
      end
      
      # 
      class KeyValue
        include Google::Apis::Core::Hashable
      
        # Formatted text supported.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # 
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::CloudsearchV1::Button]
        attr_accessor :button
      
        # Formatted text supported and always required.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # 
        # Corresponds to the JSON property `contentMultiline`
        # @return [Boolean]
        attr_accessor :content_multiline
        alias_method :content_multiline?, :content_multiline
      
        # 
        # Corresponds to the JSON property `endIcon`
        # @return [Google::Apis::CloudsearchV1::IconImage]
        attr_accessor :end_icon
      
        # 
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The alternative text of this icon_url which will be used for accessibility.
        # Corresponds to the JSON property `iconAltText`
        # @return [String]
        attr_accessor :icon_alt_text
      
        # 
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # 
        # Corresponds to the JSON property `imageStyle`
        # @return [String]
        attr_accessor :image_style
      
        # Only the top/bottom label + content region is clickable.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        # The optional icon to display before the text content.
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::CloudsearchV1::IconImage]
        attr_accessor :start_icon
      
        # 
        # Corresponds to the JSON property `switchWidget`
        # @return [Google::Apis::CloudsearchV1::SwitchWidget]
        attr_accessor :switch_widget
      
        # Formatted text supported.
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_label = args[:bottom_label] if args.key?(:bottom_label)
          @button = args[:button] if args.key?(:button)
          @content = args[:content] if args.key?(:content)
          @content_multiline = args[:content_multiline] if args.key?(:content_multiline)
          @end_icon = args[:end_icon] if args.key?(:end_icon)
          @icon = args[:icon] if args.key?(:icon)
          @icon_alt_text = args[:icon_alt_text] if args.key?(:icon_alt_text)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @image_style = args[:image_style] if args.key?(:image_style)
          @on_click = args[:on_click] if args.key?(:on_click)
          @start_icon = args[:start_icon] if args.key?(:start_icon)
          @switch_widget = args[:switch_widget] if args.key?(:switch_widget)
          @top_label = args[:top_label] if args.key?(:top_label)
        end
      end
      
      # A label was added to some (subset of the) messages in this thread.
      class LabelAdded
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        # 
        # Corresponds to the JSON property `labelName`
        # @return [String]
        attr_accessor :label_name
      
        # 
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        # 
        # Corresponds to the JSON property `syncId`
        # @return [Fixnum]
        attr_accessor :sync_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_id = args[:label_id] if args.key?(:label_id)
          @label_name = args[:label_name] if args.key?(:label_name)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
          @sync_id = args[:sync_id] if args.key?(:sync_id)
        end
      end
      
      # A label was created.
      class LabelCreated
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A label was deleted.
      class LabelDeleted
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A label was removed from some (subset of the) messages in this thread.
      class LabelRemoved
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        # 
        # Corresponds to the JSON property `labelName`
        # @return [String]
        attr_accessor :label_name
      
        # 
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        # 
        # Corresponds to the JSON property `syncId`
        # @return [Fixnum]
        attr_accessor :sync_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_id = args[:label_id] if args.key?(:label_id)
          @label_name = args[:label_name] if args.key?(:label_name)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
          @sync_id = args[:sync_id] if args.key?(:sync_id)
        end
      end
      
      # A label was renamed.
      class LabelRenamed
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `oldCanonicalName`
        # @return [String]
        attr_accessor :old_canonical_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @old_canonical_name = args[:old_canonical_name] if args.key?(:old_canonical_name)
        end
      end
      
      # HistoryRecord for changes associated with a label, namely: LABEL_CREATED
      # LABEL_DELETED LABEL_RENAMED LABEL_UPDATED
      class LabelUpdate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `canonicalName`
        # @return [String]
        attr_accessor :canonical_name
      
        # A label was created.
        # Corresponds to the JSON property `labelCreated`
        # @return [Google::Apis::CloudsearchV1::LabelCreated]
        attr_accessor :label_created
      
        # A label was deleted.
        # Corresponds to the JSON property `labelDeleted`
        # @return [Google::Apis::CloudsearchV1::LabelDeleted]
        attr_accessor :label_deleted
      
        # 
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        # A label was renamed.
        # Corresponds to the JSON property `labelRenamed`
        # @return [Google::Apis::CloudsearchV1::LabelRenamed]
        attr_accessor :label_renamed
      
        # A label pref was updated outside of a rename, create, or delete.
        # Corresponds to the JSON property `labelUpdated`
        # @return [Google::Apis::CloudsearchV1::LabelUpdated]
        attr_accessor :label_updated
      
        # 
        # Corresponds to the JSON property `syncId`
        # @return [Fixnum]
        attr_accessor :sync_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_name = args[:canonical_name] if args.key?(:canonical_name)
          @label_created = args[:label_created] if args.key?(:label_created)
          @label_deleted = args[:label_deleted] if args.key?(:label_deleted)
          @label_id = args[:label_id] if args.key?(:label_id)
          @label_renamed = args[:label_renamed] if args.key?(:label_renamed)
          @label_updated = args[:label_updated] if args.key?(:label_updated)
          @sync_id = args[:sync_id] if args.key?(:sync_id)
        end
      end
      
      # A label pref was updated outside of a rename, create, or delete.
      class LabelUpdated
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Labels
        include Google::Apis::Core::Hashable
      
        # The display name of the labels. This is populated (instead of the id) when the
        # request fetch_spec has LABEL_DISPLAY_NAMES.
        # Corresponds to the JSON property `displayName`
        # @return [Array<String>]
        attr_accessor :display_name
      
        # The ids of the labels attached to the Item, e.g. "^i", "^x_1"
        # Corresponds to the JSON property `id`
        # @return [Array<String>]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # The language configuration for the session.
      class LanguageConfig
        include Google::Apis::Core::Hashable
      
        # The spoken language(s) in BCP47 language code.
        # Corresponds to the JSON property `spokenLanguages`
        # @return [Array<String>]
        attr_accessor :spoken_languages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spoken_languages = args[:spoken_languages] if args.key?(:spoken_languages)
        end
      end
      
      # 
      class LdapGroupProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupName`
        # @return [String]
        attr_accessor :group_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_name = args[:group_name] if args.key?(:group_name)
        end
      end
      
      # 
      class LdapUserProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # The original UploadMetadata that this DriveMetadata was converted from.
      class LegacyUploadMetadata
        include Google::Apis::Core::Hashable
      
        # A unique ID generated from legacy UploadMetadata. This is used for interopping
        # URLs after uploading blob to shared drive. Links in Classic might break
        # without this. go/drive-file-attachment-interop-from-dynamite.
        # Corresponds to the JSON property `legacyUniqueId`
        # @return [String]
        attr_accessor :legacy_unique_id
      
        # Annotation metadata for user Upload artifacts.
        # Corresponds to the JSON property `uploadMetadata`
        # @return [Google::Apis::CloudsearchV1::UploadMetadata]
        attr_accessor :upload_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legacy_unique_id = args[:legacy_unique_id] if args.key?(:legacy_unique_id)
          @upload_metadata = args[:upload_metadata] if args.key?(:upload_metadata)
        end
      end
      
      # Link metadata, for LINK segments. Anchor text should be stored in the "text"
      # field of the Segment, which can also serve as a fallback.
      class LinkData
        include Google::Apis::Core::Hashable
      
        # An Attachment represents a linked entity associated with a piece of social
        # content. This may be a 1st-party or 3rd-party entity. In the Papyrus context,
        # an Attachment is part of a Cent, and sits alongside the main content of the
        # cent, which is represented as a sequence of Segments. Right now an Attachment
        # is just a wrapper around an Embed, but we provide the extra layer of
        # abstraction since, as Embeds move to separate storage in Briefcase, we may
        # want to add additional fields that are not part of the Embed proper, but that (
        # for example) relate to the usage of the linked content within the particular
        # post/cent.
        # Corresponds to the JSON property `attachment`
        # @return [Google::Apis::CloudsearchV1::SocialCommonAttachmentAttachment]
        attr_accessor :attachment
      
        # The hint to use when rendering the associated attachment. Ignored if there is
        # no associated attachment.
        # Corresponds to the JSON property `attachmentRenderHint`
        # @return [String]
        attr_accessor :attachment_render_hint
      
        # If we wish to show the user a different (e.g. shortened) version of the URL
        # for display purposes, then that version should be set here. If this field isn'
        # t set, link_target will be used for both purposes.
        # Corresponds to the JSON property `displayUrl`
        # @return [String]
        attr_accessor :display_url
      
        # link_target is the URL to navigate to when clicked. This could be the original
        # URL, or a URL signed by the GWS URL signing service.
        # Corresponds to the JSON property `linkTarget`
        # @return [String]
        attr_accessor :link_target
      
        # LinkType is an optional field that provides additional information regarding
        # link target. For example, link type can be identified as the SELF_LINK when
        # the request was executed from the same link as the link target.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # Title is an optional field that provides a short string that describes the
        # link or its destination. User interfaces often use title as a tooltip or for
        # accessibility purposes. However, they are of course free to present this data
        # in any form. This field is plain text.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment = args[:attachment] if args.key?(:attachment)
          @attachment_render_hint = args[:attachment_render_hint] if args.key?(:attachment_render_hint)
          @display_url = args[:display_url] if args.key?(:display_url)
          @link_target = args[:link_target] if args.key?(:link_target)
          @link_type = args[:link_type] if args.key?(:link_type)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class ListDataSourceResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudsearchV1::DataSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class ListItemNamesForUnmappedIdentityResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `itemNames`
        # @return [Array<String>]
        attr_accessor :item_names
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_names = args[:item_names] if args.key?(:item_names)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListItemsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudsearchV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # List sources response.
      class ListQuerySourcesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudsearchV1::QuerySource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class ListSearchApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `searchApplications`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplication>]
        attr_accessor :search_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @search_applications = args[:search_applications] if args.key?(:search_applications)
        end
      end
      
      # 
      class ListUnmappedIdentitiesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `unmappedIdentities`
        # @return [Array<Google::Apis::CloudsearchV1::UnmappedIdentity>]
        attr_accessor :unmapped_identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unmapped_identities = args[:unmapped_identities] if args.key?(:unmapped_identities)
        end
      end
      
      # 
      class MatchInfo
        include Google::Apis::Core::Hashable
      
        # Reference keys for image attachments that matches search query.
        # Corresponds to the JSON property `matchingImageReferenceKey`
        # @return [Array<String>]
        attr_accessor :matching_image_reference_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matching_image_reference_key = args[:matching_image_reference_key] if args.key?(:matching_image_reference_key)
        end
      end
      
      # Matched range of a snippet [start, end).
      class MatchRange
        include Google::Apis::Core::Hashable
      
        # End of the match in the snippet.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Starting position of the match in the snippet.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # An entity from the MDB namespace that is to be interpreted as a group. If
      # using this for authorization, you should do an exact match of the peer role
      # against group_name or any of the names in the Chubby expansion of the MDB
      # group named group_name.
      class MdbGroupProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupName`
        # @return [String]
        attr_accessor :group_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_name = args[:group_name] if args.key?(:group_name)
        end
      end
      
      # An entity from the MDB namespace that is to be interpreted as a user. If using
      # this for authorization, you should only do an exact match on the peer role
      # against user_name.
      class MdbUserProto
        include Google::Apis::Core::Hashable
      
        # Do not set this field. Contact credentials-eng@ if you believe you absolutely
        # need to use it. This is the @prod.google.com Gaia ID that corresponds to the
        # MDB user, see go/authn-merge for details. This field may always be safely
        # ignored when performing an authorization check.
        # Corresponds to the JSON property `gaiaId`
        # @return [Fixnum]
        attr_accessor :gaia_id
      
        # 
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gaia_id = args[:gaia_id] if args.key?(:gaia_id)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Media resource.
      class Media
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A meeting space is a persistent object that is the context for one or more
      # calls. The meeting space is what makes users find each other when they want to
      # meet and to find shared resources. With two exceptions, all the fields in the
      # meeting space resource are visible publicly to any client, even anonymous
      # users. The exceptions are that * The call_info field is only visible to
      # clients that have a device (as indicated by the meeting token) in the JOINED
      # or HIDDEN state. * The meeting_alias field will only be set for users who are
      # in the same domain as the meeting space. The meeting space resource (outside
      # call_info) should only contain information necessary to join a call in the
      # meeting space, and not any other metadata about the meeting space, such as
      # what organization it belongs to or things related to ongoing calls.
      class MeetingSpace
        include Google::Apis::Core::Hashable
      
        # Which number classes are accepted by this meeting at the moment? When there is
        # no ongoing conference, this field may change independent of the version number
        # of the MeetingSpace. When a conference starts, this field will be locked to
        # the value at that time, and then will be unlocked again at the end of the
        # conference.
        # Corresponds to the JSON property `acceptedNumberClass`
        # @return [Array<String>]
        attr_accessor :accepted_number_class
      
        # Broadcast access information of a meeting space.
        # Corresponds to the JSON property `broadcastAccess`
        # @return [Google::Apis::CloudsearchV1::BroadcastAccess]
        attr_accessor :broadcast_access
      
        # Contains information regarding an ongoing conference (aka call) for a meeting
        # space.
        # Corresponds to the JSON property `callInfo`
        # @return [Google::Apis::CloudsearchV1::CallInfo]
        attr_accessor :call_info
      
        # Details on the third-party interoperability settings for the meeting space.
        # Corresponds to the JSON property `gatewayAccess`
        # @return [Google::Apis::CloudsearchV1::GatewayAccess]
        attr_accessor :gateway_access
      
        # The SIP based access methods that can be used to join the conference.
        # Corresponds to the JSON property `gatewaySipAccess`
        # @return [Array<Google::Apis::CloudsearchV1::GatewaySipAccess>]
        attr_accessor :gateway_sip_access
      
        # An optional alias for the meeting space. The alias can in some cases be
        # resolved to the meeting space, similar to the meeting code. The limitation is
        # that the user needs to be in the same meeting domain as the meeting space.
        # Corresponds to the JSON property `meetingAlias`
        # @return [String]
        attr_accessor :meeting_alias
      
        # A meeting code is a globally unique code which points to a meeting space. Note:
        # Meeting codes may be regenerated, which will cause old meeting codes to
        # become invalid.
        # Corresponds to the JSON property `meetingCode`
        # @return [String]
        attr_accessor :meeting_code
      
        # A unique server-generated ID for the meeting space. This is the resource name
        # of the meeting space resource and has the form `spaces/`, where is a sequence
        # of characters in the [base64url set](https://tools.ietf.org/html/rfc4648#
        # section-5), without any `=` characters.
        # Corresponds to the JSON property `meetingSpaceId`
        # @return [String]
        attr_accessor :meeting_space_id
      
        # A URL to identify and access the meeting space. Output only.
        # Corresponds to the JSON property `meetingUrl`
        # @return [String]
        attr_accessor :meeting_url
      
        # Output only. A URL that clients (e.g. Calendar) can use to show the web page
        # with all join methods available for this meeting space. This link is also used
        # in iOS universal links and Android intents, used for opening the "More ways to
        # join" view in the Meet mobile apps. Example: https://tel.meet/mee-ting-cod?pin=
        # 1234567891011 Here, "pin" is the universal phone PIN. We include it explicitly
        # to better support the offline case on the mobile. This is set when the meeting
        # space has either a universal PIN or an interop PIN and clients who can show a "
        # more ways to join" button should show it whenever this field is set.
        # Corresponds to the JSON property `moreJoinUrl`
        # @return [String]
        attr_accessor :more_join_url
      
        # All regional phone access methods for this meeting space. Can be empty.
        # Corresponds to the JSON property `phoneAccess`
        # @return [Array<Google::Apis::CloudsearchV1::PhoneAccess>]
        attr_accessor :phone_access
      
        # Settings of a meeting space that can be edited by users with corresponding
        # manage privilege. These settings are always populated in responses.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::CloudsearchV1::Settings]
        attr_accessor :settings
      
        # Universal phone access contains information required to dial into a conference
        # using one of a static list of phone numbers and a universal PIN. The phone
        # number list is distributed separately.
        # Corresponds to the JSON property `universalPhoneAccess`
        # @return [Google::Apis::CloudsearchV1::UniversalPhoneAccess]
        attr_accessor :universal_phone_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_number_class = args[:accepted_number_class] if args.key?(:accepted_number_class)
          @broadcast_access = args[:broadcast_access] if args.key?(:broadcast_access)
          @call_info = args[:call_info] if args.key?(:call_info)
          @gateway_access = args[:gateway_access] if args.key?(:gateway_access)
          @gateway_sip_access = args[:gateway_sip_access] if args.key?(:gateway_sip_access)
          @meeting_alias = args[:meeting_alias] if args.key?(:meeting_alias)
          @meeting_code = args[:meeting_code] if args.key?(:meeting_code)
          @meeting_space_id = args[:meeting_space_id] if args.key?(:meeting_space_id)
          @meeting_url = args[:meeting_url] if args.key?(:meeting_url)
          @more_join_url = args[:more_join_url] if args.key?(:more_join_url)
          @phone_access = args[:phone_access] if args.key?(:phone_access)
          @settings = args[:settings] if args.key?(:settings)
          @universal_phone_access = args[:universal_phone_access] if args.key?(:universal_phone_access)
        end
      end
      
      # 
      class Member
        include Google::Apis::Core::Hashable
      
        # Roster profile information.
        # Corresponds to the JSON property `roster`
        # @return [Google::Apis::CloudsearchV1::Roster]
        attr_accessor :roster
      
        # User profile information. This user is not necessarily member of a space.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::CloudsearchV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @roster = args[:roster] if args.key?(:roster)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Eventually this can be updated to a oneOf User, Space (for nested spaces),
      # Bots or Service, as and when these use cases come up.
      class MemberId
        include Google::Apis::Core::Hashable
      
        # Primary key for Roster resource.
        # Corresponds to the JSON property `rosterId`
        # @return [Google::Apis::CloudsearchV1::RosterId]
        attr_accessor :roster_id
      
        # Primary key for User resource.
        # Corresponds to the JSON property `userId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @roster_id = args[:roster_id] if args.key?(:roster_id)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class MembershipChangeEvent
        include Google::Apis::Core::Hashable
      
        # This should only be set when MembershipChange type is LEAVE.
        # Corresponds to the JSON property `leaveReason`
        # @return [String]
        attr_accessor :leave_reason
      
        # 
        # Corresponds to the JSON property `participantId`
        # @return [Array<Google::Apis::CloudsearchV1::StoredParticipantId>]
        attr_accessor :participant_id
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @leave_reason = args[:leave_reason] if args.key?(:leave_reason)
          @participant_id = args[:participant_id] if args.key?(:participant_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Annotation metadata to display system messages for membership changes. Next
      # Tag: 8
      class MembershipChangedMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `affectedMemberProfiles`
        # @return [Array<Google::Apis::CloudsearchV1::Member>]
        attr_accessor :affected_member_profiles
      
        # List of users and rosters whose membership status changed.
        # Corresponds to the JSON property `affectedMembers`
        # @return [Array<Google::Apis::CloudsearchV1::MemberId>]
        attr_accessor :affected_members
      
        # 
        # Corresponds to the JSON property `affectedMemberships`
        # @return [Array<Google::Apis::CloudsearchV1::AffectedMembership>]
        attr_accessor :affected_memberships
      
        # Primary key for User resource.
        # Corresponds to the JSON property `initiator`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :initiator
      
        # User profile information. This user is not necessarily member of a space.
        # Corresponds to the JSON property `initiatorProfile`
        # @return [Google::Apis::CloudsearchV1::User]
        attr_accessor :initiator_profile
      
        # The type of the user who initiated this membership change.
        # Corresponds to the JSON property `initiatorType`
        # @return [String]
        attr_accessor :initiator_type
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_member_profiles = args[:affected_member_profiles] if args.key?(:affected_member_profiles)
          @affected_members = args[:affected_members] if args.key?(:affected_members)
          @affected_memberships = args[:affected_memberships] if args.key?(:affected_memberships)
          @initiator = args[:initiator] if args.key?(:initiator)
          @initiator_profile = args[:initiator_profile] if args.key?(:initiator_profile)
          @initiator_type = args[:initiator_type] if args.key?(:initiator_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This is deprecated and please use SelectionControl by setting type to DROPDOWN.
      class Menu
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::MenuItem>]
        attr_accessor :items
      
        # Label used to be displayed ahead of the menu. It is optional.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text field which is will be used in FormInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If specified, form is submitted when selection changed. If not specified,
        # developer will need to specify a separate button.
        # Corresponds to the JSON property `onChange`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :on_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change = args[:on_change] if args.key?(:on_change)
        end
      end
      
      # 
      class MenuItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The text to be displayed.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item which will be sent back to app scripts.
        # Client should use as a form input value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected = args[:selected] if args.key?(:selected)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Message posted to a Space.
      class Message
        include Google::Apis::Core::Hashable
      
        # Annotations parsed and extracted from the text body.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::CloudsearchV1::Annotation>]
        attr_accessor :annotations
      
        # Optional field for apps overriding display info
        # Corresponds to the JSON property `appProfile`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile]
        attr_accessor :app_profile
      
        # Attachments parsed from incoming webhooks
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::CloudsearchV1::Attachment>]
        attr_accessor :attachments
      
        # Stores tombstone message attributes: go/tombstone-message-attributes-overview
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::CloudsearchV1::MessageAttributes]
        attr_accessor :attributes
      
        # Responses from bots indicating if extra auth/config is needed.
        # Corresponds to the JSON property `botResponses`
        # @return [Array<Google::Apis::CloudsearchV1::BotResponse>]
        attr_accessor :bot_responses
      
        # Communal labels associated with a message. These exist on the message itself
        # regardless of which user fetches them. Order of entries is arbitrary and will
        # not list duplicates of the same label_id. See go/chat-labels-design for
        # details.
        # Corresponds to the JSON property `communalLabels`
        # @return [Array<Google::Apis::CloudsearchV1::CommunalLabelTag>]
        attr_accessor :communal_labels
      
        # Summarized info of content reports. Usually less expensive to fetch than to
        # fetch all detailed reports. Set only when the request asks for it.
        # Corresponds to the JSON property `contentReportSummary`
        # @return [Google::Apis::CloudsearchV1::ContentReportSummary]
        attr_accessor :content_report_summary
      
        # Time when the Message was posted in microseconds.
        # Corresponds to the JSON property `createTime`
        # @return [Fixnum]
        attr_accessor :create_time
      
        # Primary key for User resource.
        # Corresponds to the JSON property `creatorId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :creator_id
      
        # Indicates who can delete the message. This field is set on the read path (e.g.
        # ListTopics) but doesn’t have any effect on the write path (e.g.
        # CreateMessageRequest).
        # Corresponds to the JSON property `deletableBy`
        # @return [String]
        attr_accessor :deletable_by
      
        # Time when the Message was deleted in microseconds. This field is set to
        # nonzero value only for Messages deleted globally.
        # Corresponds to the JSON property `deleteTime`
        # @return [Fixnum]
        attr_accessor :delete_time
      
        # Time when the Message was per-user deleted by the message requester in
        # microseconds. This field is set to nonzero value only for Message per-user
        # deleted by the requester.
        # Corresponds to the JSON property `deleteTimeForRequester`
        # @return [Fixnum]
        attr_accessor :delete_time_for_requester
      
        # Was this message deleted by Vault (Only used for Vault support) This is false
        # if message is live or message was deleted by user.
        # Corresponds to the JSON property `deletedByVault`
        # @return [Boolean]
        attr_accessor :deleted_by_vault
        alias_method :deleted_by_vault?, :deleted_by_vault
      
        # A summary of a DLP scan event. This is a summary and should contain the
        # minimum amount of data required to identify and process DLP scans. It is
        # written to Starcast and encoded & returned to the client on attachment upload.
        # Corresponds to the JSON property `dlpScanSummary`
        # @return [Google::Apis::CloudsearchV1::DlpScanSummary]
        attr_accessor :dlp_scan_summary
      
        # Indicates who can edit the message. This field is set on the read path (e.g.
        # ListTopics) but doesn’t have any effect on the write path (e.g.
        # CreateMessageRequest).
        # Corresponds to the JSON property `editableBy`
        # @return [String]
        attr_accessor :editable_by
      
        # A plain-text description of the attachment, used when clients cannot display
        # formatted attachment (e.g. mobile push notifications).
        # Corresponds to the JSON property `fallbackText`
        # @return [String]
        attr_accessor :fallback_text
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :id
      
        # Whether the message is content purged. Content purged messages contain only
        # data required for tombstone (see go/chat-infinite-tombstone). This field is
        # only used by Vault to display tombstone and should only be set to true if the
        # message is a tombstone.
        # Corresponds to the JSON property `isContentPurged`
        # @return [Boolean]
        attr_accessor :is_content_purged
        alias_method :is_content_purged?, :is_content_purged
      
        # Output only. Indicates if the message is an inline reply. Set to true only if
        # the message's ParentPath is non-NULL. Currently, only inline replies have non-
        # NULL ParentPath. See go/chat-be-inline-reply-indicator.
        # Corresponds to the JSON property `isInlineReply`
        # @return [Boolean]
        attr_accessor :is_inline_reply
        alias_method :is_inline_reply?, :is_inline_reply
      
        # If the message was edited by a user, timestamp of the last edit, in
        # microseconds.
        # Corresponds to the JSON property `lastEditTime`
        # @return [Fixnum]
        attr_accessor :last_edit_time
      
        # Time when the Message text was last updated in microseconds.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [Fixnum]
        attr_accessor :last_update_time
      
        # A unique id specified on the client side.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The payload(restricted to 1P applications) to be stored with a specific
        # message.
        # Corresponds to the JSON property `messageIntegrationPayload`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedMessageIntegrationPayload]
        attr_accessor :message_integration_payload
      
        # Where the message was posted from
        # Corresponds to the JSON property `messageOrigin`
        # @return [String]
        attr_accessor :message_origin
      
        # State of the message, indicating whether the message is visible to all members
        # in the group or is only visible to the sender only, or the
        # private_message_viewer if it is set.
        # Corresponds to the JSON property `messageState`
        # @return [String]
        attr_accessor :message_state
      
        # Indicates if this message contains any suggestions that were provided by any
        # Apps.
        # Corresponds to the JSON property `originAppSuggestions`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedOriginAppSuggestion>]
        attr_accessor :origin_app_suggestions
      
        # Personal labels associated with a message for the viewing user. Order of
        # entries is arbitrary and will not list duplicates of the same label_id. See go/
        # chat-labels-design for details. NOTE: This will be unpopulated in the case of
        # SpaceChangelog events.
        # Corresponds to the JSON property `personalLabels`
        # @return [Array<Google::Apis::CloudsearchV1::PersonalLabelTag>]
        attr_accessor :personal_labels
      
        # A list of per-user private information. This is deprecated, because we no
        # longer plan to support partially private messages or private messages for
        # multiple users. The message_state and private_message_viewer fields should be
        # sufficient for this infrastructure.
        # Corresponds to the JSON property `privateMessageInfos`
        # @return [Array<Google::Apis::CloudsearchV1::PrivateMessageInfo>]
        attr_accessor :private_message_infos
      
        # Primary key for User resource.
        # Corresponds to the JSON property `privateMessageViewer`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :private_message_viewer
      
        # Container for storing properties applicable to messages. For now (until
        # storage consolidation is complete), it will only be used for babel props. In
        # the future it could be used to house Dynamite properties for experimenting/
        # rapid prototyping.
        # Corresponds to the JSON property `props`
        # @return [Google::Apis::CloudsearchV1::MessageProps]
        attr_accessor :props
      
        # Output only. Whether this message has been quoted by another message or not.
        # Used by clients to handle message edit flows for messages that have been
        # quoted.
        # Corresponds to the JSON property `quotedByState`
        # @return [String]
        attr_accessor :quoted_by_state
      
        # Quote metadata: go/message-quoting-be-dd-v2. This proto is only used on the
        # read path. For the request proto, refer to `QuotedMessagePayload`. Fields are
        # either derived from storage directly from the Item this metadata belongs to,
        # or is hydrated at read time from another Item read. Note:
        # QuotedMessageMetadata proto is similar to Message proto with less field.
        # Reasons to differtiate QuotedMessageMetadata from Message are: 1. Not all
        # fields for original message is applicable for quoted message. (E.g. reactions,
        # is_inline_reply, etc.), thus separting out for confusion. 2. We don't support
        # nested message quoting. For more detailed discussion, please see http://shortn/
        # _VsSXQb2C7P. For future reference: if your new feature/field will be supported
        # in message quoting feature (go/chat-quoting-prd), you will need to add that
        # field within QuotedMessageMetadata
        # Corresponds to the JSON property `quotedMessageMetadata`
        # @return [Google::Apis::CloudsearchV1::QuotedMessageMetadata]
        attr_accessor :quoted_message_metadata
      
        # A list of user reactions to this message. Ordered by the timestamp of the
        # first reaction, ascending (oldest to newest).
        # Corresponds to the JSON property `reactions`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedReaction>]
        attr_accessor :reactions
      
        # Output only. Details of content reports. Set only when the request asks for it.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::CloudsearchV1::ContentReport>]
        attr_accessor :reports
      
        # The settings of retention period of a message or topic.
        # Corresponds to the JSON property `retentionSettings`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings]
        attr_accessor :retention_settings
      
        # Used by clients to correctly log format type for message creation due to
        # complexity with client side optimistic update (see go/content-metric-post-send-
        # logging for details). Currently, only set by server in the message or topic
        # creation path.
        # Corresponds to the JSON property `richTextFormattingType`
        # @return [String]
        attr_accessor :rich_text_formatting_type
      
        # A client-specified string that can be used to uniquely identify a message in a
        # space, in lieu of `id.message_id`.
        # Corresponds to the JSON property `secondaryMessageKey`
        # @return [String]
        attr_accessor :secondary_message_key
      
        # Plaintext body of the Message.
        # Corresponds to the JSON property `textBody`
        # @return [String]
        attr_accessor :text_body
      
        # Tombstoning is the act of leaving a contextual trace when deleting a message.
        # See more: go/tombstone-prd, go/hub-dynamite-tombstones-server-design-v2.
        # Corresponds to the JSON property `tombstoneMetadata`
        # @return [Google::Apis::CloudsearchV1::TombstoneMetadata]
        attr_accessor :tombstone_metadata
      
        # Primary key for User resource.
        # Corresponds to the JSON property `updaterId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :updater_id
      
        # UploadMetadata b/36864213 is an ongoing effort to move UploadMetadata out of
        # annotations field and save it to upload_metadata field only. After the
        # migration, UploadMetadata will only be saved in this field.
        # Corresponds to the JSON property `uploadMetadata`
        # @return [Array<Google::Apis::CloudsearchV1::UploadMetadata>]
        attr_accessor :upload_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @app_profile = args[:app_profile] if args.key?(:app_profile)
          @attachments = args[:attachments] if args.key?(:attachments)
          @attributes = args[:attributes] if args.key?(:attributes)
          @bot_responses = args[:bot_responses] if args.key?(:bot_responses)
          @communal_labels = args[:communal_labels] if args.key?(:communal_labels)
          @content_report_summary = args[:content_report_summary] if args.key?(:content_report_summary)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_id = args[:creator_id] if args.key?(:creator_id)
          @deletable_by = args[:deletable_by] if args.key?(:deletable_by)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @delete_time_for_requester = args[:delete_time_for_requester] if args.key?(:delete_time_for_requester)
          @deleted_by_vault = args[:deleted_by_vault] if args.key?(:deleted_by_vault)
          @dlp_scan_summary = args[:dlp_scan_summary] if args.key?(:dlp_scan_summary)
          @editable_by = args[:editable_by] if args.key?(:editable_by)
          @fallback_text = args[:fallback_text] if args.key?(:fallback_text)
          @id = args[:id] if args.key?(:id)
          @is_content_purged = args[:is_content_purged] if args.key?(:is_content_purged)
          @is_inline_reply = args[:is_inline_reply] if args.key?(:is_inline_reply)
          @last_edit_time = args[:last_edit_time] if args.key?(:last_edit_time)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @local_id = args[:local_id] if args.key?(:local_id)
          @message_integration_payload = args[:message_integration_payload] if args.key?(:message_integration_payload)
          @message_origin = args[:message_origin] if args.key?(:message_origin)
          @message_state = args[:message_state] if args.key?(:message_state)
          @origin_app_suggestions = args[:origin_app_suggestions] if args.key?(:origin_app_suggestions)
          @personal_labels = args[:personal_labels] if args.key?(:personal_labels)
          @private_message_infos = args[:private_message_infos] if args.key?(:private_message_infos)
          @private_message_viewer = args[:private_message_viewer] if args.key?(:private_message_viewer)
          @props = args[:props] if args.key?(:props)
          @quoted_by_state = args[:quoted_by_state] if args.key?(:quoted_by_state)
          @quoted_message_metadata = args[:quoted_message_metadata] if args.key?(:quoted_message_metadata)
          @reactions = args[:reactions] if args.key?(:reactions)
          @reports = args[:reports] if args.key?(:reports)
          @retention_settings = args[:retention_settings] if args.key?(:retention_settings)
          @rich_text_formatting_type = args[:rich_text_formatting_type] if args.key?(:rich_text_formatting_type)
          @secondary_message_key = args[:secondary_message_key] if args.key?(:secondary_message_key)
          @text_body = args[:text_body] if args.key?(:text_body)
          @tombstone_metadata = args[:tombstone_metadata] if args.key?(:tombstone_metadata)
          @updater_id = args[:updater_id] if args.key?(:updater_id)
          @upload_metadata = args[:upload_metadata] if args.key?(:upload_metadata)
        end
      end
      
      # A message was added. Specifying id and initial labels.
      class MessageAdded
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attributeIds`
        # @return [Array<String>]
        attr_accessor :attribute_ids
      
        # 
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `messageKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :message_key
      
        # Note that there can be fewer sync ids than label ids.
        # Corresponds to the JSON property `syncIds`
        # @return [Array<Fixnum>]
        attr_accessor :sync_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_ids = args[:attribute_ids] if args.key?(:attribute_ids)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @message_key = args[:message_key] if args.key?(:message_key)
          @sync_ids = args[:sync_ids] if args.key?(:sync_ids)
        end
      end
      
      # Stores tombstone message attributes: go/tombstone-message-attributes-overview
      class MessageAttributes
        include Google::Apis::Core::Hashable
      
        # If true: message is a tombstone in the client. Default false.
        # Corresponds to the JSON property `isTombstone`
        # @return [Boolean]
        attr_accessor :is_tombstone
        alias_method :is_tombstone?, :is_tombstone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_tombstone = args[:is_tombstone] if args.key?(:is_tombstone)
        end
      end
      
      # Some (subset of the) messages in this thread were deleted.
      class MessageDeleted
        include Google::Apis::Core::Hashable
      
        # Value of coproc's message delete history record extension that exports /
        # imapsync/folder attribute of deleted messages which have ^is label.
        # Corresponds to the JSON property `imapSyncMappings`
        # @return [Array<Google::Apis::CloudsearchV1::ImapSyncDelete>]
        attr_accessor :imap_sync_mappings
      
        # 
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        # Value of coproc's message delete history record extension that exports /wonder/
        # message_mapping/`vertical` attribute of deleted messages which have smartmail
        # label (eg. ^cob_sm_invoice, etc).
        # Corresponds to the JSON property `wonderCardMappings`
        # @return [Array<Google::Apis::CloudsearchV1::WonderCardDelete>]
        attr_accessor :wonder_card_mappings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imap_sync_mappings = args[:imap_sync_mappings] if args.key?(:imap_sync_mappings)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
          @wonder_card_mappings = args[:wonder_card_mappings] if args.key?(:wonder_card_mappings)
        end
      end
      
      # Primary key for Message resource.
      class MessageId
        include Google::Apis::Core::Hashable
      
        # Opaque, server-assigned ID of the Message. While this ID is guaranteed to be
        # unique within the Space, it's not guaranteed to be globally unique.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # Primary key identifying Message resource's immediate parent. For top-level
        # Messages, either topic_id or chat_id is populated. For replies, message_id is
        # populated with the topic Message's ID.
        # Corresponds to the JSON property `parentId`
        # @return [Google::Apis::CloudsearchV1::MessageParentId]
        attr_accessor :parent_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_id = args[:message_id] if args.key?(:message_id)
          @parent_id = args[:parent_id] if args.key?(:parent_id)
        end
      end
      
      # 
      class MessageInfo
        include Google::Apis::Core::Hashable
      
        # Message author’s user type (human/bot).
        # Corresponds to the JSON property `authorUserType`
        # @return [String]
        attr_accessor :author_user_type
      
        # Message posted to a Space.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::CloudsearchV1::Message]
        attr_accessor :message
      
        # Searcher's membership state in the space where the message is posted.
        # Corresponds to the JSON property `searcherMembershipState`
        # @return [String]
        attr_accessor :searcher_membership_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_user_type = args[:author_user_type] if args.key?(:author_user_type)
          @message = args[:message] if args.key?(:message)
          @searcher_membership_state = args[:searcher_membership_state] if args.key?(:searcher_membership_state)
        end
      end
      
      # Primary key identifying Message resource's immediate parent. For top-level
      # Messages, either topic_id or chat_id is populated. For replies, message_id is
      # populated with the topic Message's ID.
      class MessageParentId
        include Google::Apis::Core::Hashable
      
        # ID of the Topic this Message is posted to. NEXT TAG : 5
        # Corresponds to the JSON property `topicId`
        # @return [Google::Apis::CloudsearchV1::TopicId]
        attr_accessor :topic_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
        end
      end
      
      # Container for storing properties applicable to messages. For now (until
      # storage consolidation is complete), it will only be used for babel props. In
      # the future it could be used to house Dynamite properties for experimenting/
      # rapid prototyping.
      class MessageProps
        include Google::Apis::Core::Hashable
      
        # Container for Babel (Hangouts Classic) only message properties. The properties
        # here will not be consumed by Dynamite clients. They are relevant only for
        # Hangouts Classic.
        # Corresponds to the JSON property `babelProps`
        # @return [Google::Apis::CloudsearchV1::BabelMessageProps]
        attr_accessor :babel_props
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @babel_props = args[:babel_props] if args.key?(:babel_props)
        end
      end
      
      # This is proto2's version of MessageSet.
      class MessageSet
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata of a matched search result.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The creation time for this document or object in the search result.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Options that specify how to display a structured data search result.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::ResultDisplayMetadata]
        attr_accessor :display_options
      
        # Indexed fields in structured data, returned as a generic named property.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudsearchV1::NamedProperty>]
        attr_accessor :fields
      
        # Mime type of the search result.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Object type of the search result.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Object to represent a person.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :owner
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        # The thumbnail URL of the result.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # The last modified date for the object in the search result. If not set in the
        # item, the value returned here is empty. When `updateTime` is used for
        # calculating freshness and is not set, this value defaults to 2 years from the
        # current time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_options = args[:display_options] if args.key?(:display_options)
          @fields = args[:fields] if args.key?(:fields)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @object_type = args[:object_type] if args.key?(:object_type)
          @owner = args[:owner] if args.key?(:owner)
          @source = args[:source] if args.key?(:source)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A metaline is a list of properties that are displayed along with the search
      # result to provide context.
      class Metaline
        include Google::Apis::Core::Hashable
      
        # The list of displayed properties for the metaline. The maximum number of
        # properties is 5.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::CloudsearchV1::DisplayedProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A union-like type for identifiying an object in storage. MultiKeys contain
      # multiple key fields, each in a separate key space. At least one key field must
      # be set. More than one key field may be set as long as all key values refer to
      # the same object. All objects in storage have unique server_id keys. All
      # MultiKeys returned from storage to storage clients will always have the
      # server_id field set. When creating an object, if a MultiKey without a
      # server_id is supplied to storage, the storage system will auto-assign a server
      # ID to the new object. For all other storage requests (i.e. those not creating
      # new objects), clients may omit server_id (as long as they supply another key).
      # Instead of server ids, clients can specify string based
      # client_assigned_perm_id keys. Mail message drafts are a prime example of these
      # kinds of objects. Each time a user saves a new version of a draft, the storage
      # system needs to create a new object with the updated draft content and needs
      # to delete the object containing the old content. The new object gets a new
      # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
      # object containing the old content. Carrying forward the perm ID allows it to
      # be used to consistently refer to the same logical object across revisions.
      # These perm IDs save sync clients from having to deal with changing object IDs.
      # For example, assume there's a mail message in storage with SERVER_ID = 123 and
      # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
      # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
      # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
      # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
      # storage. The individual keys are extracted and processed separately. Both the
      # integer ids as well as string ids are indexed for efficient retrieval using
      # the same fields in the backend. See go/tingle-multikeys for more information
      # on background and motivation.
      class MultiKey
        include Google::Apis::Core::Hashable
      
        # A client-assigned string based key.
        # Corresponds to the JSON property `clientAssignedPermId`
        # @return [String]
        attr_accessor :client_assigned_perm_id
      
        # A server-assigned ID. This ID must be used only by Gmail and is constructed
        # using millesecond ts << 20 + randomness. The ID affects the sort order of the
        # index.
        # Corresponds to the JSON property `serverId`
        # @return [Fixnum]
        attr_accessor :server_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_assigned_perm_id = args[:client_assigned_perm_id] if args.key?(:client_assigned_perm_id)
          @server_id = args[:server_id] if args.key?(:server_id)
        end
      end
      
      # A person's name.
      class Name
        include Google::Apis::Core::Hashable
      
        # The read-only display name formatted according to the locale specified by the
        # viewer's account or the `Accept-Language` HTTP header.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A typed name-value pair for structured data. The type of the value should be
      # the same as the registered type for the `name` property in the object
      # definition of `objectType`.
      class NamedProperty
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # List of date values.
        # Corresponds to the JSON property `dateValues`
        # @return [Google::Apis::CloudsearchV1::DateValues]
        attr_accessor :date_values
      
        # List of double values.
        # Corresponds to the JSON property `doubleValues`
        # @return [Google::Apis::CloudsearchV1::DoubleValues]
        attr_accessor :double_values
      
        # List of enum values.
        # Corresponds to the JSON property `enumValues`
        # @return [Google::Apis::CloudsearchV1::EnumValues]
        attr_accessor :enum_values
      
        # List of html values.
        # Corresponds to the JSON property `htmlValues`
        # @return [Google::Apis::CloudsearchV1::HtmlValues]
        attr_accessor :html_values
      
        # List of integer values.
        # Corresponds to the JSON property `integerValues`
        # @return [Google::Apis::CloudsearchV1::IntegerValues]
        attr_accessor :integer_values
      
        # The name of the property. This name should correspond to the name of the
        # property that was registered for object definition in the schema. The maximum
        # allowable length for this property is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of object values.
        # Corresponds to the JSON property `objectValues`
        # @return [Google::Apis::CloudsearchV1::ObjectValues]
        attr_accessor :object_values
      
        # List of text values.
        # Corresponds to the JSON property `textValues`
        # @return [Google::Apis::CloudsearchV1::TextValues]
        attr_accessor :text_values
      
        # List of timestamp values.
        # Corresponds to the JSON property `timestampValues`
        # @return [Google::Apis::CloudsearchV1::TimestampValues]
        attr_accessor :timestamp_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_values = args[:date_values] if args.key?(:date_values)
          @double_values = args[:double_values] if args.key?(:double_values)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @html_values = args[:html_values] if args.key?(:html_values)
          @integer_values = args[:integer_values] if args.key?(:integer_values)
          @name = args[:name] if args.key?(:name)
          @object_values = args[:object_values] if args.key?(:object_values)
          @text_values = args[:text_values] if args.key?(:text_values)
          @timestamp_values = args[:timestamp_values] if args.key?(:timestamp_values)
        end
      end
      
      # Represents an OAuth consumer, a/k/a AuthSub target. These principals are
      # identified by domain name (e.g., example.com). Historically, Dasher domain
      # GAIA group IDs have been used instead, but that doesn't work: http://go/tricky-
      # gaia-ids
      class OAuthConsumerProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # The definition for an object within a data source.
      class ObjectDefinition
        include Google::Apis::Core::Hashable
      
        # The name for the object, which then defines its type. Item indexing requests
        # should set the objectType field equal to this value. For example, if *name* is
        # *Document*, then indexing requests for items of type Document should set
        # objectType equal to *Document*. Each object definition must be uniquely named
        # within a schema. The name must start with a letter and can only contain
        # letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The options for an object.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudsearchV1::ObjectOptions]
        attr_accessor :options
      
        # The property definitions for the object. The maximum number of elements is
        # 1000.
        # Corresponds to the JSON property `propertyDefinitions`
        # @return [Array<Google::Apis::CloudsearchV1::PropertyDefinition>]
        attr_accessor :property_definitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @property_definitions = args[:property_definitions] if args.key?(:property_definitions)
        end
      end
      
      # The display options for an object.
      class ObjectDisplayOptions
        include Google::Apis::Core::Hashable
      
        # Defines the properties that are displayed in the metalines of the search
        # results. The property values are displayed in the order given here. If a
        # property holds multiple values, all of the values are displayed before the
        # next properties. For this reason, it is a good practice to specify singular
        # properties before repeated properties in this list. All of the properties must
        # set is_returnable to true. The maximum number of metalines is 3.
        # Corresponds to the JSON property `metalines`
        # @return [Array<Google::Apis::CloudsearchV1::Metaline>]
        attr_accessor :metalines
      
        # The user friendly label to display in the search result to indicate the type
        # of the item. This is OPTIONAL; if not provided, an object label isn't
        # displayed on the context line of the search results. The maximum length is 64
        # characters.
        # Corresponds to the JSON property `objectDisplayLabel`
        # @return [String]
        attr_accessor :object_display_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metalines = args[:metalines] if args.key?(:metalines)
          @object_display_label = args[:object_display_label] if args.key?(:object_display_label)
        end
      end
      
      # The options for an object.
      class ObjectOptions
        include Google::Apis::Core::Hashable
      
        # The display options for an object.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::ObjectDisplayOptions]
        attr_accessor :display_options
      
        # Indicates which freshness property to use when adjusting search ranking for an
        # item. Fresher, more recent dates indicate higher quality. Use the freshness
        # option property that best works with your data. For fileshare documents, last
        # modified time is most relevant. For calendar event data, the time when the
        # event occurs is a more relevant freshness indicator. In this way, calendar
        # events that occur closer to the time of the search query are considered higher
        # quality and ranked accordingly.
        # Corresponds to the JSON property `freshnessOptions`
        # @return [Google::Apis::CloudsearchV1::FreshnessOptions]
        attr_accessor :freshness_options
      
        # Operators that can be used to filter suggestions. For Suggest API, only
        # operators mentioned here will be honored in the FilterOptions. Only TEXT and
        # ENUM operators are supported. NOTE: "objecttype", "type" and "mimetype" are
        # already supported. This property is to configure schema specific operators.
        # Even though this is an array, only one operator can be specified. This is an
        # array for future extensibility. Operators mapping to multiple properties
        # within the same object are not supported. If the operator spans across
        # different object types, this option has to be set once for each object
        # definition.
        # Corresponds to the JSON property `suggestionFilteringOperators`
        # @return [Array<String>]
        attr_accessor :suggestion_filtering_operators
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_options = args[:display_options] if args.key?(:display_options)
          @freshness_options = args[:freshness_options] if args.key?(:freshness_options)
          @suggestion_filtering_operators = args[:suggestion_filtering_operators] if args.key?(:suggestion_filtering_operators)
        end
      end
      
      # The options for object properties.
      class ObjectPropertyOptions
        include Google::Apis::Core::Hashable
      
        # The properties of the sub-object. These properties represent a nested object.
        # For example, if this property represents a postal address, the
        # subobjectProperties might be named *street*, *city*, and *state*. The maximum
        # number of elements is 1000.
        # Corresponds to the JSON property `subobjectProperties`
        # @return [Array<Google::Apis::CloudsearchV1::PropertyDefinition>]
        attr_accessor :subobject_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subobject_properties = args[:subobject_properties] if args.key?(:subobject_properties)
        end
      end
      
      # List of object values.
      class ObjectValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudsearchV1::StructuredDataObject>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class OnClick
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :action
      
        # This can be used as a short form for OpenLink with the default OpenAs and
        # OnClose. It may be undeprecated if this proves to be handy for developers.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # 
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::CloudsearchV1::OpenLink]
        attr_accessor :open_link
      
        # An add-on triggers this action when the form action needs to open a link. This
        # differs from the open_link above in that this needs to talk to server to get
        # the link. Thus some preparation work is required for web client to do before
        # the open link action response comes back.
        # Corresponds to the JSON property `openLinkAction`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :open_link_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @link = args[:link] if args.key?(:link)
          @open_link = args[:open_link] if args.key?(:open_link)
          @open_link_action = args[:open_link_action] if args.key?(:open_link_action)
        end
      end
      
      # 
      class OpenCreatedDraftActionMarkup
        include Google::Apis::Core::Hashable
      
        # The ID of the newly created draft in the form "r123".
        # Corresponds to the JSON property `draftId`
        # @return [String]
        attr_accessor :draft_id
      
        # The server storage ID in hex format, for example,"15e9fa622ce1029d".
        # Corresponds to the JSON property `draftStorageId`
        # @return [String]
        attr_accessor :draft_storage_id
      
        # The ID of the thread containing the newly created draft, for example, "
        # 15e9fa622ce1029d".
        # Corresponds to the JSON property `draftThreadId`
        # @return [String]
        attr_accessor :draft_thread_id
      
        # The server permanent ID for the draft's thread. This field isn't set anywhere,
        # and it's ignored when processing OpenCreatedDraftActionMarkup. Supply and use
        # draftThreadStorageId instead.
        # Corresponds to the JSON property `draftThreadServerPermId`
        # @return [String]
        attr_accessor :draft_thread_server_perm_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @draft_id = args[:draft_id] if args.key?(:draft_id)
          @draft_storage_id = args[:draft_storage_id] if args.key?(:draft_storage_id)
          @draft_thread_id = args[:draft_thread_id] if args.key?(:draft_thread_id)
          @draft_thread_server_perm_id = args[:draft_thread_server_perm_id] if args.key?(:draft_thread_server_perm_id)
        end
      end
      
      # 
      class OpenLink
        include Google::Apis::Core::Hashable
      
        # Next available ID: 5
        # Corresponds to the JSON property `loadIndicator`
        # @return [String]
        attr_accessor :load_indicator
      
        # 
        # Corresponds to the JSON property `onClose`
        # @return [String]
        attr_accessor :on_close
      
        # 
        # Corresponds to the JSON property `openAs`
        # @return [String]
        attr_accessor :open_as
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @on_close = args[:on_close] if args.key?(:on_close)
          @open_as = args[:open_as] if args.key?(:open_as)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudsearchV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class OsVersion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `majorVersion`
        # @return [Fixnum]
        attr_accessor :major_version
      
        # 
        # Corresponds to the JSON property `minorVersion`
        # @return [Fixnum]
        attr_accessor :minor_version
      
        # 
        # Corresponds to the JSON property `tertiaryVersion`
        # @return [Fixnum]
        attr_accessor :tertiary_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @major_version = args[:major_version] if args.key?(:major_version)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
          @tertiary_version = args[:tertiary_version] if args.key?(:tertiary_version)
        end
      end
      
      # 
      class OtrChatMessageEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `expirationTimestampUsec`
        # @return [Fixnum]
        attr_accessor :expiration_timestamp_usec
      
        # 
        # Corresponds to the JSON property `kansasRowId`
        # @return [String]
        attr_accessor :kansas_row_id
      
        # 
        # Corresponds to the JSON property `kansasVersionInfo`
        # @return [String]
        attr_accessor :kansas_version_info
      
        # 
        # Corresponds to the JSON property `messageOtrStatus`
        # @return [String]
        attr_accessor :message_otr_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_timestamp_usec = args[:expiration_timestamp_usec] if args.key?(:expiration_timestamp_usec)
          @kansas_row_id = args[:kansas_row_id] if args.key?(:kansas_row_id)
          @kansas_version_info = args[:kansas_version_info] if args.key?(:kansas_version_info)
          @message_otr_status = args[:message_otr_status] if args.key?(:message_otr_status)
        end
      end
      
      # 
      class OtrModificationEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `newOtrStatus`
        # @return [String]
        attr_accessor :new_otr_status
      
        # 
        # Corresponds to the JSON property `newOtrToggle`
        # @return [String]
        attr_accessor :new_otr_toggle
      
        # 
        # Corresponds to the JSON property `oldOtrStatus`
        # @return [String]
        attr_accessor :old_otr_status
      
        # 
        # Corresponds to the JSON property `oldOtrToggle`
        # @return [String]
        attr_accessor :old_otr_toggle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_otr_status = args[:new_otr_status] if args.key?(:new_otr_status)
          @new_otr_toggle = args[:new_otr_toggle] if args.key?(:new_otr_toggle)
          @old_otr_status = args[:old_otr_status] if args.key?(:old_otr_status)
          @old_otr_toggle = args[:old_otr_toggle] if args.key?(:old_otr_toggle)
        end
      end
      
      # Developers register a client in Google API Console to get the deep-linking
      # feature on Google+ posts or frames about their apps. The client data is stored
      # in this proto.
      class PackagingServiceClient
        include Google::Apis::Core::Hashable
      
        # Android app's package name to generate the deep-link URI.
        # Corresponds to the JSON property `androidPackageName`
        # @return [String]
        attr_accessor :android_package_name
      
        # iOS app's App Store ID to generate the App Store URL when app is not installed
        # on device.
        # Corresponds to the JSON property `iosAppStoreId`
        # @return [String]
        attr_accessor :ios_app_store_id
      
        # iOS app's bundle ID to generate the deep-link URI.
        # Corresponds to the JSON property `iosBundleId`
        # @return [String]
        attr_accessor :ios_bundle_id
      
        # Type of Google API Console client.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_package_name = args[:android_package_name] if args.key?(:android_package_name)
          @ios_app_store_id = args[:ios_app_store_id] if args.key?(:ios_app_store_id)
          @ios_bundle_id = args[:ios_bundle_id] if args.key?(:ios_bundle_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information provided to clients so that they can show upgrade promos and
      # warnings on call ending early (for non-paying users).
      class PaygateInfo
        include Google::Apis::Core::Hashable
      
        # Time when client should show message that the call is ending soon.
        # Corresponds to the JSON property `callEndingSoonWarningTime`
        # @return [String]
        attr_accessor :call_ending_soon_warning_time
      
        # Time when the call will end if the user does not upgrade (after in-call
        # upgrade support check has been implemented).
        # Corresponds to the JSON property `callEndingTime`
        # @return [String]
        attr_accessor :call_ending_time
      
        # This boolean is used by clients to decide whether the user should be shown
        # promos to upgrade.
        # Corresponds to the JSON property `showUpgradePromos`
        # @return [Boolean]
        attr_accessor :show_upgrade_promos
        alias_method :show_upgrade_promos?, :show_upgrade_promos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_ending_soon_warning_time = args[:call_ending_soon_warning_time] if args.key?(:call_ending_soon_warning_time)
          @call_ending_time = args[:call_ending_time] if args.key?(:call_ending_time)
          @show_upgrade_promos = args[:show_upgrade_promos] if args.key?(:show_upgrade_promos)
        end
      end
      
      # This field contains information about the person being suggested.
      class PeopleSuggestion
        include Google::Apis::Core::Hashable
      
        # Object to represent a person.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Object to represent a person.
      class Person
        include Google::Apis::Core::Hashable
      
        # The person's email addresses
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<Google::Apis::CloudsearchV1::EmailAddress>]
        attr_accessor :email_addresses
      
        # The resource name of the person to provide information about. See [`People.get`
        # ](https://developers.google.com/people/api/rest/v1/people/get) from the Google
        # People API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated ID of a person.
        # Corresponds to the JSON property `obfuscatedId`
        # @return [String]
        attr_accessor :obfuscated_id
      
        # The person's name
        # Corresponds to the JSON property `personNames`
        # @return [Array<Google::Apis::CloudsearchV1::Name>]
        attr_accessor :person_names
      
        # The person's phone numbers
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::CloudsearchV1::PhoneNumber>]
        attr_accessor :phone_numbers
      
        # A person's read-only photo. A picture shown next to the person's name to help
        # others recognize the person in search results.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::CloudsearchV1::Photo>]
        attr_accessor :photos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @name = args[:name] if args.key?(:name)
          @obfuscated_id = args[:obfuscated_id] if args.key?(:obfuscated_id)
          @person_names = args[:person_names] if args.key?(:person_names)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @photos = args[:photos] if args.key?(:photos)
        end
      end
      
      # An individual instance (or "tag") of a label configured as a personal type
      # that's associated with a message.
      class PersonalLabelTag
        include Google::Apis::Core::Hashable
      
        # A string ID representing the label. Possible ID values are documented at go/
        # chat-labels-howto:ids. Examples: "^t" for "Starred", "^nu" for "Nudged".
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_id = args[:label_id] if args.key?(:label_id)
        end
      end
      
      # Phone access contains information required to dial into a conference using a
      # regional phone number and a PIN that is specific to that phone number.
      class PhoneAccess
        include Google::Apis::Core::Hashable
      
        # The phone number to dial for this meeting space in INTERNATIONAL format. Full
        # phone number with a leading '+' character and whitespace separations.
        # Corresponds to the JSON property `formattedPhoneNumber`
        # @return [String]
        attr_accessor :formatted_phone_number
      
        # The BCP 47/LDML language code for the language associated with this phone
        # access. To be parsed by the i18n LanguageCode utility. Examples: "es-419" for
        # Latin American Spanish, "fr-CA" for Canadian French.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The phone number to dial for this meeting space in E.164 format. Full phone
        # number with a leading '+' character.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The PIN that users must enter after dialing the given number. The PIN consists
        # of only decimal digits and the length may vary.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        # The CLDR/ISO 3166 region code for the country associated with this phone
        # access. To be parsed by the i18n RegionCode utility. Example: "SE" for Sweden.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_phone_number = args[:formatted_phone_number] if args.key?(:formatted_phone_number)
          @language_code = args[:language_code] if args.key?(:language_code)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @pin = args[:pin] if args.key?(:pin)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A person's Phone Number
      class PhoneNumber
        include Google::Apis::Core::Hashable
      
        # The phone number of the person.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A person's photo.
      class Photo
        include Google::Apis::Core::Hashable
      
        # The URL of the photo.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class PinnedItemId
        include Google::Apis::Core::Hashable
      
        # Identifier for a Drive file (e.g. Docs, Sheets, Slides).
        # Corresponds to the JSON property `driveId`
        # @return [String]
        attr_accessor :drive_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_id = args[:drive_id] if args.key?(:drive_id)
        end
      end
      
      # 
      class PollItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Maximum number of items to return. The maximum value is 100 and the default
        # value is 20.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Queue name to fetch items from. If unspecified, PollItems will fetch from '
        # default' queue. The maximum length is 100 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # Limit the items polled to the ones with these statuses.
        # Corresponds to the JSON property `statusCodes`
        # @return [Array<String>]
        attr_accessor :status_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @limit = args[:limit] if args.key?(:limit)
          @queue = args[:queue] if args.key?(:queue)
          @status_codes = args[:status_codes] if args.key?(:status_codes)
        end
      end
      
      # 
      class PollItemsResponse
        include Google::Apis::Core::Hashable
      
        # Set of items from the queue available for connector to process. These items
        # have the following subset of fields populated: version metadata.hash
        # structured_data.hash content.hash payload status queue
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # This message contains either the device model, or a prefix of the device model
      # (AKA a trimmed device model). The "is_trimmed" field indicates which one it is.
      class PossiblyTrimmedModel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `isTrimmed`
        # @return [Boolean]
        attr_accessor :is_trimmed
        alias_method :is_trimmed?, :is_trimmed
      
        # 
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_trimmed = args[:is_trimmed] if args.key?(:is_trimmed)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # See http://s/?fileprint=//depot/google3/security/authentication/postini/
      # auth_token.proto
      class PostiniUserProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `postiniUserId`
        # @return [Fixnum]
        attr_accessor :postini_user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postini_user_id = args[:postini_user_id] if args.key?(:postini_user_id)
        end
      end
      
      # State of the thread previous to the update. This really just describes the
      # label state of all messages before the update.
      class PreState
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `messageKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :message_key
      
        # Note that there can be fewer sync ids than label ids.
        # Corresponds to the JSON property `syncIds`
        # @return [Array<Fixnum>]
        attr_accessor :sync_ids
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `threadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :thread_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @message_key = args[:message_key] if args.key?(:message_key)
          @sync_ids = args[:sync_ids] if args.key?(:sync_ids)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
        end
      end
      
      # PREF_DELETED
      class PrefDeleted
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # HistoryRecord for changes associated with prefs, namely: PREF_WRITTEN
      # PREF_DELETED
      class PrefUpdate
        include Google::Apis::Core::Hashable
      
        # Name of the affected preference.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If the Value field is not set this means the pref did not exist.
        # Corresponds to the JSON property `preState`
        # @return [Google::Apis::CloudsearchV1::FuseboxPrefUpdatePreState]
        attr_accessor :pre_state
      
        # PREF_DELETED
        # Corresponds to the JSON property `prefDeleted`
        # @return [Google::Apis::CloudsearchV1::PrefDeleted]
        attr_accessor :pref_deleted
      
        # PREF_WRITTEN
        # Corresponds to the JSON property `prefWritten`
        # @return [Google::Apis::CloudsearchV1::PrefWritten]
        attr_accessor :pref_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @pre_state = args[:pre_state] if args.key?(:pre_state)
          @pref_deleted = args[:pref_deleted] if args.key?(:pref_deleted)
          @pref_written = args[:pref_written] if args.key?(:pref_written)
        end
      end
      
      # PREF_WRITTEN
      class PrefWritten
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Presenter contains information about which device is currently presenting as
      # well as which device requested the presenter to be set.
      class Presenter
        include Google::Apis::Core::Hashable
      
        # The device resource name of the device which requested the current presenter
        # to be set. This field can not be modified by clients.
        # Corresponds to the JSON property `byDeviceId`
        # @return [String]
        attr_accessor :by_device_id
      
        # The device resource names of other devices which can control the current
        # presentation.
        # Corresponds to the JSON property `copresenterDeviceIds`
        # @return [Array<String>]
        attr_accessor :copresenter_device_ids
      
        # The device resource name of the currently presenting device.
        # Corresponds to the JSON property `presenterDeviceId`
        # @return [String]
        attr_accessor :presenter_device_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @by_device_id = args[:by_device_id] if args.key?(:by_device_id)
          @copresenter_device_ids = args[:copresenter_device_ids] if args.key?(:copresenter_device_ids)
          @presenter_device_id = args[:presenter_device_id] if args.key?(:presenter_device_id)
        end
      end
      
      # Reference to a user, group, or domain.
      class Principal
        include Google::Apis::Core::Hashable
      
        # This principal is a group identified using an external identity. The name
        # field must specify the group resource name with this format: identitysources/`
        # source_id`/groups/`ID`
        # Corresponds to the JSON property `groupResourceName`
        # @return [String]
        attr_accessor :group_resource_name
      
        # This principal is a Google Workspace user, group or domain.
        # Corresponds to the JSON property `gsuitePrincipal`
        # @return [Google::Apis::CloudsearchV1::GSuitePrincipal]
        attr_accessor :gsuite_principal
      
        # This principal is a user identified using an external identity. The name field
        # must specify the user resource name with this format: identitysources/`
        # source_id`/users/`ID`
        # Corresponds to the JSON property `userResourceName`
        # @return [String]
        attr_accessor :user_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_resource_name = args[:group_resource_name] if args.key?(:group_resource_name)
          @gsuite_principal = args[:gsuite_principal] if args.key?(:gsuite_principal)
          @user_resource_name = args[:user_resource_name] if args.key?(:user_resource_name)
        end
      end
      
      # A Principal represents something to which permissions are assigned, often but
      # not always a user or group of some kind. It is most appropriate for use in
      # ACLs and authorization checks. Callers should prefer to use the wrapper
      # classes in google3/security/credentials/public/principal.h google3/java/com/
      # google/security/credentials/Principal.java google3/security/credentials/go/
      # principal.go unless direct proto access is essential. If you update this
      # protocol buffer, please update the wrapper classes as well. LINT.IfChange
      class PrincipalProto
        include Google::Apis::Core::Hashable
      
        # Represents a principal who has authenticated as any kind of user which the
        # application understands. This is typically used for "wiki-like" security,
        # where anyone is allowed access so long as they can be held accountable for
        # that access. Since the purpose is knowing whom to blame, it is up to the
        # application to decide what kinds of users it knows how to blame. For example,
        # an application might choose to include GAIA users in "all authenticated users",
        # but not include MDB users. Nothing here.
        # Corresponds to the JSON property `allAuthenticatedUsers`
        # @return [Google::Apis::CloudsearchV1::AllAuthenticatedUsersProto]
        attr_accessor :all_authenticated_users
      
        # Represents a principal which possesses a particular secret string whose
        # cryptographic hash is specified here. CapTokens ("Capability Tokens") are used
        # in ACLProto. It's expected that ACLs with CapTokenHolders will strongly
        # enforce them by Keystore-wrapping crypto keys for the corresponding CapTokens.
        # Corresponds to the JSON property `capTokenHolder`
        # @return [Google::Apis::CloudsearchV1::CapTokenHolderProto]
        attr_accessor :cap_token_holder
      
        # Represents the invitees or other users associated with a Babel Chat (see http:/
        # /goto/babel). Corresponds to GroupType CHAT in //social/graph/storage/proto/
        # data.proto.
        # Corresponds to the JSON property `chat`
        # @return [Google::Apis::CloudsearchV1::ChatProto]
        attr_accessor :chat
      
        # Represents a Google+ Circle. Currently (12/2011), a Circle is identical to the
        # ContactGroup with matching parameters, but Circle must only be used for true
        # Circles and not other Focus groups, and should be preferred over ContactGroup
        # where applicable. Soon it may become more efficient to check membership in a
        # Circle than in a ContactGroup (see http://go/superglue). Support for this
        # principal type is currently (12/2011) incomplete -- e.g., Keystore does not
        # support it yet (see b/5703421).
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::CloudsearchV1::CircleProto]
        attr_accessor :circle
      
        # Principal associated with a Cloud Principal representing third party user.
        # Corresponds to the JSON property `cloudPrincipal`
        # @return [Google::Apis::CloudsearchV1::CloudPrincipalProto]
        attr_accessor :cloud_principal
      
        # A group of contacts for a given user, as described in http://cs/p#google3/
        # focus/backend/proto/backend.proto Historically (and in still-existing ACLs),
        # this was used to represent Google+ circles as well as contact groups, but this
        # use is now deprecated. New code should use the CIRCLE principal type to
        # represent Google+ circles.
        # Corresponds to the JSON property `contactGroup`
        # @return [Google::Apis::CloudsearchV1::ContactGroupProto]
        attr_accessor :contact_group
      
        # Represents a verified owner of the given email address. Note that a single
        # address may have many owners, and a single user may own many addresses. (All
        # lower-case, in display form -- see com.google.gaia.client.GaiaEmail)
        # Corresponds to the JSON property `emailOwner`
        # @return [Google::Apis::CloudsearchV1::EmailOwnerProto]
        attr_accessor :email_owner
      
        # Represents the invitees or other users associated with a Google+ Event (see
        # http://goto/events-backend-design).
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CloudsearchV1::EventProto]
        attr_accessor :event
      
        # scope = GAIA_GROUP
        # Corresponds to the JSON property `gaiaGroup`
        # @return [Google::Apis::CloudsearchV1::GaiaGroupProto]
        attr_accessor :gaia_group
      
        # A Gaia account, which may represent a user, device, service account, etc. For
        # prod (@prod.google.com) accounts, use MdbUserProto instead.
        # Corresponds to the JSON property `gaiaUser`
        # @return [Google::Apis::CloudsearchV1::GaiaUserProto]
        attr_accessor :gaia_user
      
        # Represents a single host. Optionally, the MDB owner of the host can be
        # specified.
        # Corresponds to the JSON property `host`
        # @return [Google::Apis::CloudsearchV1::HostProto]
        attr_accessor :host
      
        # scope = LDAP_GROUP
        # Corresponds to the JSON property `ldapGroup`
        # @return [Google::Apis::CloudsearchV1::LdapGroupProto]
        attr_accessor :ldap_group
      
        # scope = LDAP_USER
        # Corresponds to the JSON property `ldapUser`
        # @return [Google::Apis::CloudsearchV1::LdapUserProto]
        attr_accessor :ldap_user
      
        # An entity from the MDB namespace that is to be interpreted as a group. If
        # using this for authorization, you should do an exact match of the peer role
        # against group_name or any of the names in the Chubby expansion of the MDB
        # group named group_name.
        # Corresponds to the JSON property `mdbGroup`
        # @return [Google::Apis::CloudsearchV1::MdbGroupProto]
        attr_accessor :mdb_group
      
        # An entity from the MDB namespace that is to be interpreted as a user. If using
        # this for authorization, you should only do an exact match on the peer role
        # against user_name.
        # Corresponds to the JSON property `mdbUser`
        # @return [Google::Apis::CloudsearchV1::MdbUserProto]
        attr_accessor :mdb_user
      
        # Represents an OAuth consumer, a/k/a AuthSub target. These principals are
        # identified by domain name (e.g., example.com). Historically, Dasher domain
        # GAIA group IDs have been used instead, but that doesn't work: http://go/tricky-
        # gaia-ids
        # Corresponds to the JSON property `oauthConsumer`
        # @return [Google::Apis::CloudsearchV1::OAuthConsumerProto]
        attr_accessor :oauth_consumer
      
        # See http://s/?fileprint=//depot/google3/security/authentication/postini/
        # auth_token.proto
        # Corresponds to the JSON property `postiniUser`
        # @return [Google::Apis::CloudsearchV1::PostiniUserProto]
        attr_accessor :postini_user
      
        # Principal associated with a given RBAC role. This principal is used by Sphinx
        # Provisioning Service for RBAC provisionable (go/sphinx-rbacz).
        # Corresponds to the JSON property `rbacRole`
        # @return [Google::Apis::CloudsearchV1::RbacRoleProto]
        attr_accessor :rbac_role
      
        # Principal associated with a given RBAC subject. This principal is used by
        # Sphinx Provisioning Service for RBAC provisionable (go/sphinx-rbacz).
        # Corresponds to the JSON property `rbacSubject`
        # @return [Google::Apis::CloudsearchV1::RbacSubjectProto]
        attr_accessor :rbac_subject
      
        # A type of sharing target that points to some resource's ACL. Used to refer to
        # the set of Principals that have the given privilege ('role_id') for the given
        # resource ('application_id', 'object_id', 'object_part'). The meaning of '
        # role_id' is interpreted only by implementations of AclRpcService and is
        # usually dependent on 'application_id' All fields except object_part are
        # required. If present, object_part must be non-empty.
        # Corresponds to the JSON property `resourceRole`
        # @return [Google::Apis::CloudsearchV1::ResourceRoleProto]
        attr_accessor :resource_role
      
        # This is only optional because required enums cannot be extended. Currently
        # required.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Represents a principal who possesses a signing key corresponding to the
        # verification key or keyset described here.
        # Corresponds to the JSON property `signingKeyPossessor`
        # @return [Google::Apis::CloudsearchV1::SigningKeyPossessorProto]
        attr_accessor :signing_key_possessor
      
        # Represents a principal which possesses a particular, presumably secret, string.
        # Useful for things like "auth keys," used for anonymous sharing. Since
        # representing this principal with the actual secret included reveals the secret,
        # it's best if the requisite condition is enforced in some other way, for
        # example via Keystore wrapping attributes (Keystore will unwrap only if the
        # specified secret, aka "attribute", is presented). All that's stored here is an
        # identifying label.
        # Corresponds to the JSON property `simpleSecretHolder`
        # @return [Google::Apis::CloudsearchV1::SimpleSecretHolderProto]
        attr_accessor :simple_secret_holder
      
        # Represents a user pseudonym. Pseudonyms are linked accounts on Google and
        # third-party services (e.g. YouTube or Twitter) and are described by a Social
        # Graph Node.
        # Corresponds to the JSON property `socialGraphNode`
        # @return [Google::Apis::CloudsearchV1::SocialGraphNodeProto]
        attr_accessor :social_graph_node
      
        # Represents the set of members (of a given type) in a Google+ Square (see http:/
        # /go/squares). A Square with default member_type is currently (1/2012)
        # identical to the GaiaGroup with the same ID, but that is expected to change
        # soon (see http://go/superglue). Support for this principal type is currently (
        # 1/2012) incomplete -- e.g., Keystore does not support it yet (see b/5703421).
        # Corresponds to the JSON property `square`
        # @return [Google::Apis::CloudsearchV1::SquareProto]
        attr_accessor :square
      
        # scope = YOUTUBE_USER
        # Corresponds to the JSON property `youtubeUser`
        # @return [Google::Apis::CloudsearchV1::YoutubeUserProto]
        attr_accessor :youtube_user
      
        # See go/zwieback. New uses of Zwieback sessions must be approved via go/
        # zwieback-request.
        # Corresponds to the JSON property `zwiebackSession`
        # @return [Google::Apis::CloudsearchV1::ZwiebackSessionProto]
        attr_accessor :zwieback_session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_authenticated_users = args[:all_authenticated_users] if args.key?(:all_authenticated_users)
          @cap_token_holder = args[:cap_token_holder] if args.key?(:cap_token_holder)
          @chat = args[:chat] if args.key?(:chat)
          @circle = args[:circle] if args.key?(:circle)
          @cloud_principal = args[:cloud_principal] if args.key?(:cloud_principal)
          @contact_group = args[:contact_group] if args.key?(:contact_group)
          @email_owner = args[:email_owner] if args.key?(:email_owner)
          @event = args[:event] if args.key?(:event)
          @gaia_group = args[:gaia_group] if args.key?(:gaia_group)
          @gaia_user = args[:gaia_user] if args.key?(:gaia_user)
          @host = args[:host] if args.key?(:host)
          @ldap_group = args[:ldap_group] if args.key?(:ldap_group)
          @ldap_user = args[:ldap_user] if args.key?(:ldap_user)
          @mdb_group = args[:mdb_group] if args.key?(:mdb_group)
          @mdb_user = args[:mdb_user] if args.key?(:mdb_user)
          @oauth_consumer = args[:oauth_consumer] if args.key?(:oauth_consumer)
          @postini_user = args[:postini_user] if args.key?(:postini_user)
          @rbac_role = args[:rbac_role] if args.key?(:rbac_role)
          @rbac_subject = args[:rbac_subject] if args.key?(:rbac_subject)
          @resource_role = args[:resource_role] if args.key?(:resource_role)
          @scope = args[:scope] if args.key?(:scope)
          @signing_key_possessor = args[:signing_key_possessor] if args.key?(:signing_key_possessor)
          @simple_secret_holder = args[:simple_secret_holder] if args.key?(:simple_secret_holder)
          @social_graph_node = args[:social_graph_node] if args.key?(:social_graph_node)
          @square = args[:square] if args.key?(:square)
          @youtube_user = args[:youtube_user] if args.key?(:youtube_user)
          @zwieback_session = args[:zwieback_session] if args.key?(:zwieback_session)
        end
      end
      
      # Private message information specific to a given user. DEPRECATED: Use the
      # privateMessageViewer field in CreateMessageInfo instead.
      class PrivateMessageInfo
        include Google::Apis::Core::Hashable
      
        # Annotations private to `@code userId`.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::CloudsearchV1::Annotation>]
        attr_accessor :annotations
      
        # Attachments private to `@code userId`.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::CloudsearchV1::Attachment>]
        attr_accessor :attachments
      
        # 
        # Corresponds to the JSON property `contextualAddOnMarkup`
        # @return [Array<Google::Apis::CloudsearchV1::GoogleChatV1ContextualAddOnMarkup>]
        attr_accessor :contextual_add_on_markup
      
        # 
        # Corresponds to the JSON property `gsuiteIntegrationMetadata`
        # @return [Array<Google::Apis::CloudsearchV1::GsuiteIntegrationMetadata>]
        attr_accessor :gsuite_integration_metadata
      
        # Text private to `@code user_id`. Initial restriction: Only one of public text
        # or private text is rendered on the client. So if public text is set, private
        # text is ignored.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Primary key for User resource.
        # Corresponds to the JSON property `userId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @attachments = args[:attachments] if args.key?(:attachments)
          @contextual_add_on_markup = args[:contextual_add_on_markup] if args.key?(:contextual_add_on_markup)
          @gsuite_integration_metadata = args[:gsuite_integration_metadata] if args.key?(:gsuite_integration_metadata)
          @text = args[:text] if args.key?(:text)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # 
      class ProcessingError
        include Google::Apis::Core::Hashable
      
        # Error code indicating the nature of the error.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The description of the error.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # In case the item fields are invalid, this field contains the details about the
        # validation errors.
        # Corresponds to the JSON property `fieldViolations`
        # @return [Array<Google::Apis::CloudsearchV1::FieldViolation>]
        attr_accessor :field_violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @field_violations = args[:field_violations] if args.key?(:field_violations)
        end
      end
      
      # The definition of a property within an object.
      class PropertyDefinition
        include Google::Apis::Core::Hashable
      
        # The options for boolean properties.
        # Corresponds to the JSON property `booleanPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::BooleanPropertyOptions]
        attr_accessor :boolean_property_options
      
        # The options for date properties.
        # Corresponds to the JSON property `datePropertyOptions`
        # @return [Google::Apis::CloudsearchV1::DatePropertyOptions]
        attr_accessor :date_property_options
      
        # The display options for a property.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::PropertyDisplayOptions]
        attr_accessor :display_options
      
        # The options for double properties.
        # Corresponds to the JSON property `doublePropertyOptions`
        # @return [Google::Apis::CloudsearchV1::DoublePropertyOptions]
        attr_accessor :double_property_options
      
        # The options for enum properties, which allow you to define a restricted set of
        # strings to match user queries, set rankings for those string values, and
        # define an operator name to be paired with those strings so that users can
        # narrow results to only items with a specific value. For example, for items in
        # a request tracking system with priority information, you could define *p0* as
        # an allowable enum value and tie this enum to the operator name *priority* so
        # that search users could add *priority:p0* to their query to restrict the set
        # of results to only those items indexed with the value *p0*.
        # Corresponds to the JSON property `enumPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::EnumPropertyOptions]
        attr_accessor :enum_property_options
      
        # The options for html properties.
        # Corresponds to the JSON property `htmlPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::HtmlPropertyOptions]
        attr_accessor :html_property_options
      
        # The options for integer properties.
        # Corresponds to the JSON property `integerPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerPropertyOptions]
        attr_accessor :integer_property_options
      
        # Indicates that the property can be used for generating facets. Cannot be true
        # for properties whose type is object. IsReturnable must be true to set this
        # option. Only supported for boolean, enum, integer, and text properties.
        # Corresponds to the JSON property `isFacetable`
        # @return [Boolean]
        attr_accessor :is_facetable
        alias_method :is_facetable?, :is_facetable
      
        # Indicates that multiple values are allowed for the property. For example, a
        # document only has one description but can have multiple comments. Cannot be
        # true for properties whose type is a boolean. If set to false, properties that
        # contain more than one value cause the indexing request for that item to be
        # rejected.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # Indicates that the property identifies data that should be returned in search
        # results via the Query API. If set to *true*, indicates that Query API users
        # can use matching property fields in results. However, storing fields requires
        # more space allocation and uses more bandwidth for search queries, which
        # impacts performance over large datasets. Set to *true* here only if the field
        # is needed for search results. Cannot be true for properties whose type is an
        # object.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # Indicates that the property can be used for sorting. Cannot be true for
        # properties that are repeatable. Cannot be true for properties whose type is
        # object. IsReturnable must be true to set this option. Only supported for
        # boolean, date, double, integer, and timestamp properties.
        # Corresponds to the JSON property `isSortable`
        # @return [Boolean]
        attr_accessor :is_sortable
        alias_method :is_sortable?, :is_sortable
      
        # Indicates that the property can be used for generating query suggestions.
        # Corresponds to the JSON property `isSuggestable`
        # @return [Boolean]
        attr_accessor :is_suggestable
        alias_method :is_suggestable?, :is_suggestable
      
        # Indicates that users can perform wildcard search for this property. Only
        # supported for Text properties. IsReturnable must be true to set this option.
        # In a given datasource maximum of 5 properties can be marked as
        # is_wildcard_searchable. For more details, see [Define object properties](https:
        # //developers.google.com/cloud-search/docs/guides/schema-guide#properties)
        # Corresponds to the JSON property `isWildcardSearchable`
        # @return [Boolean]
        attr_accessor :is_wildcard_searchable
        alias_method :is_wildcard_searchable?, :is_wildcard_searchable
      
        # The name of the property. Item indexing requests sent to the Indexing API
        # should set the property name equal to this value. For example, if name is *
        # subject_line*, then indexing requests for document items with subject fields
        # should set the name for that field equal to *subject_line*. Use the name as
        # the identifier for the object property. Once registered as a property for an
        # object, you cannot re-use this name for another property within that object.
        # The name must start with a letter and can only contain letters (A-Z, a-z) or
        # numbers (0-9). The maximum length is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The options for object properties.
        # Corresponds to the JSON property `objectPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::ObjectPropertyOptions]
        attr_accessor :object_property_options
      
        # The options for text properties.
        # Corresponds to the JSON property `textPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::TextPropertyOptions]
        attr_accessor :text_property_options
      
        # The options for timestamp properties.
        # Corresponds to the JSON property `timestampPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::TimestampPropertyOptions]
        attr_accessor :timestamp_property_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_property_options = args[:boolean_property_options] if args.key?(:boolean_property_options)
          @date_property_options = args[:date_property_options] if args.key?(:date_property_options)
          @display_options = args[:display_options] if args.key?(:display_options)
          @double_property_options = args[:double_property_options] if args.key?(:double_property_options)
          @enum_property_options = args[:enum_property_options] if args.key?(:enum_property_options)
          @html_property_options = args[:html_property_options] if args.key?(:html_property_options)
          @integer_property_options = args[:integer_property_options] if args.key?(:integer_property_options)
          @is_facetable = args[:is_facetable] if args.key?(:is_facetable)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @is_sortable = args[:is_sortable] if args.key?(:is_sortable)
          @is_suggestable = args[:is_suggestable] if args.key?(:is_suggestable)
          @is_wildcard_searchable = args[:is_wildcard_searchable] if args.key?(:is_wildcard_searchable)
          @name = args[:name] if args.key?(:name)
          @object_property_options = args[:object_property_options] if args.key?(:object_property_options)
          @text_property_options = args[:text_property_options] if args.key?(:text_property_options)
          @timestamp_property_options = args[:timestamp_property_options] if args.key?(:timestamp_property_options)
        end
      end
      
      # The display options for a property.
      class PropertyDisplayOptions
        include Google::Apis::Core::Hashable
      
        # The user friendly label for the property that is used if the property is
        # specified to be displayed in ObjectDisplayOptions. If provided, the display
        # label is shown in front of the property values when the property is part of
        # the object display options. For example, if the property value is '1', the
        # value by itself may not be useful context for the user. If the display name
        # given was 'priority', then the user sees 'priority : 1' in the search results
        # which provides clear context to search users. This is OPTIONAL; if not given,
        # only the property values are displayed. The maximum length is 64 characters.
        # Corresponds to the JSON property `displayLabel`
        # @return [String]
        attr_accessor :display_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_label = args[:display_label] if args.key?(:display_label)
        end
      end
      
      # This field records where the ItemScope was retrieved, if it was created via a
      # web fetch.
      class Provenance
        include Google::Apis::Core::Hashable
      
        # Annotation blob from Annotation Service.
        # Corresponds to the JSON property `annotationBlob`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :annotation_blob
      
        # Canonical url of the retrieved_url, if one was resolved during retrieval, for
        # example, if a rel="canonical" link tag was provided in the retrieved web page.
        # Corresponds to the JSON property `canonicalUrl`
        # @return [String]
        attr_accessor :canonical_url
      
        # The url originally passed in the PRS request, which should be used to re-
        # discover the content. Note that this URL may be a forwarding service or link
        # shortener (bit.ly), so it should not be assumed to be canonical, but should be
        # used for navigation back to the original source of the itemscope.
        # Corresponds to the JSON property `inputUrl`
        # @return [String]
        attr_accessor :input_url
      
        # Contains exact types as parsed, whether or not we recognized that type at
        # parse time. If an itemscope is created by merging SchemaOrg markup and open
        # graph markup then the first itemtype would be schemaorg type, the second would
        # be open graph and so on. example: http://schema.org/VideoObject, og:video.
        # movie Plain text; usually a URL
        # Corresponds to the JSON property `itemtype`
        # @return [Array<String>]
        attr_accessor :itemtype
      
        # The server retrieved timestamp (in msec).
        # Corresponds to the JSON property `retrievedTimestampMsec`
        # @return [Fixnum]
        attr_accessor :retrieved_timestamp_msec
      
        # The final URL that was the actual source of the itemscope, after any redirects.
        # Corresponds to the JSON property `retrievedUrl`
        # @return [String]
        attr_accessor :retrieved_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_blob = args[:annotation_blob] if args.key?(:annotation_blob)
          @canonical_url = args[:canonical_url] if args.key?(:canonical_url)
          @input_url = args[:input_url] if args.key?(:input_url)
          @itemtype = args[:itemtype] if args.key?(:itemtype)
          @retrieved_timestamp_msec = args[:retrieved_timestamp_msec] if args.key?(:retrieved_timestamp_msec)
          @retrieved_url = args[:retrieved_url] if args.key?(:retrieved_url)
        end
      end
      
      # Represents an item to be pushed to the indexing queue.
      class PushItem
        include Google::Apis::Core::Hashable
      
        # Content hash of the item according to the repository. If specified, this is
        # used to determine how to modify this item's status. Setting this field and the
        # type field results in argument error. The maximum length is 2048 characters.
        # Corresponds to the JSON property `contentHash`
        # @return [String]
        attr_accessor :content_hash
      
        # The metadata hash of the item according to the repository. If specified, this
        # is used to determine how to modify this item's status. Setting this field and
        # the type field results in argument error. The maximum length is 2048
        # characters.
        # Corresponds to the JSON property `metadataHash`
        # @return [String]
        attr_accessor :metadata_hash
      
        # Provides additional document state information for the connector, such as an
        # alternate repository ID and other metadata. The maximum length is 8192 bytes.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Queue to which this item belongs. The `default` queue is chosen if this field
        # is not specified. The maximum length is 512 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # Errors when the connector is communicating to the source repository.
        # Corresponds to the JSON property `repositoryError`
        # @return [Google::Apis::CloudsearchV1::RepositoryError]
        attr_accessor :repository_error
      
        # Structured data hash of the item according to the repository. If specified,
        # this is used to determine how to modify this item's status. Setting this field
        # and the type field results in argument error. The maximum length is 2048
        # characters.
        # Corresponds to the JSON property `structuredDataHash`
        # @return [String]
        attr_accessor :structured_data_hash
      
        # The type of the push operation that defines the push behavior.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_hash = args[:content_hash] if args.key?(:content_hash)
          @metadata_hash = args[:metadata_hash] if args.key?(:metadata_hash)
          @payload = args[:payload] if args.key?(:payload)
          @queue = args[:queue] if args.key?(:queue)
          @repository_error = args[:repository_error] if args.key?(:repository_error)
          @structured_data_hash = args[:structured_data_hash] if args.key?(:structured_data_hash)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class PushItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Represents an item to be pushed to the indexing queue.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::CloudsearchV1::PushItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # 
      class QueryCountByStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # This represents the http status code.
        # Corresponds to the JSON property `statusCode`
        # @return [Fixnum]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # 
      class QueryInterpretation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `interpretationType`
        # @return [String]
        attr_accessor :interpretation_type
      
        # The interpretation of the query used in search. For example, queries with
        # natural language intent like "email from john" will be interpreted as "from:
        # john source:mail". This field will not be filled when the reason is
        # NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY.
        # Corresponds to the JSON property `interpretedQuery`
        # @return [String]
        attr_accessor :interpreted_query
      
        # The reason for interpretation of the query. This field will not be UNSPECIFIED
        # if the interpretation type is not NONE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interpretation_type = args[:interpretation_type] if args.key?(:interpretation_type)
          @interpreted_query = args[:interpreted_query] if args.key?(:interpreted_query)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Default options to interpret user query.
      class QueryInterpretationConfig
        include Google::Apis::Core::Hashable
      
        # Set this flag to disable supplemental results retrieval, setting a flag here
        # will not retrieve supplemental results for queries associated with a given
        # search application. If this flag is set to True, it will take precedence over
        # the option set at Query level. For the default value of False, query level
        # flag will set the correct interpretation for supplemental results.
        # Corresponds to the JSON property `forceDisableSupplementalResults`
        # @return [Boolean]
        attr_accessor :force_disable_supplemental_results
        alias_method :force_disable_supplemental_results?, :force_disable_supplemental_results
      
        # Enable this flag to turn off all internal optimizations like natural language (
        # NL) interpretation of queries, supplemental results retrieval, and usage of
        # synonyms including custom ones. If this flag is set to True, it will take
        # precedence over the option set at Query level. For the default value of False,
        # query level flag will set the correct interpretation for verbatim mode.
        # Corresponds to the JSON property `forceVerbatimMode`
        # @return [Boolean]
        attr_accessor :force_verbatim_mode
        alias_method :force_verbatim_mode?, :force_verbatim_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force_disable_supplemental_results = args[:force_disable_supplemental_results] if args.key?(:force_disable_supplemental_results)
          @force_verbatim_mode = args[:force_verbatim_mode] if args.key?(:force_verbatim_mode)
        end
      end
      
      # Options to interpret user query.
      class QueryInterpretationOptions
        include Google::Apis::Core::Hashable
      
        # Flag to disable natural language (NL) interpretation of queries. Default is
        # false, Set to true to disable natural language interpretation. NL
        # interpretation only applies to predefined datasources.
        # Corresponds to the JSON property `disableNlInterpretation`
        # @return [Boolean]
        attr_accessor :disable_nl_interpretation
        alias_method :disable_nl_interpretation?, :disable_nl_interpretation
      
        # Use this flag to disable supplemental results for a query. Supplemental
        # results setting chosen at SearchApplication level will take precedence if set
        # to True.
        # Corresponds to the JSON property `disableSupplementalResults`
        # @return [Boolean]
        attr_accessor :disable_supplemental_results
        alias_method :disable_supplemental_results?, :disable_supplemental_results
      
        # Enable this flag to turn off all internal optimizations like natural language (
        # NL) interpretation of queries, supplemental result retrieval, and usage of
        # synonyms including custom ones. Nl interpretation will be disabled if either
        # one of the two flags is true.
        # Corresponds to the JSON property `enableVerbatimMode`
        # @return [Boolean]
        attr_accessor :enable_verbatim_mode
        alias_method :enable_verbatim_mode?, :enable_verbatim_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_nl_interpretation = args[:disable_nl_interpretation] if args.key?(:disable_nl_interpretation)
          @disable_supplemental_results = args[:disable_supplemental_results] if args.key?(:disable_supplemental_results)
          @enable_verbatim_mode = args[:enable_verbatim_mode] if args.key?(:enable_verbatim_mode)
        end
      end
      
      # Information relevant only to a query entry.
      class QueryItem
        include Google::Apis::Core::Hashable
      
        # True if the text was generated by means other than a previous user search.
        # Corresponds to the JSON property `isSynthetic`
        # @return [Boolean]
        attr_accessor :is_synthetic
        alias_method :is_synthetic?, :is_synthetic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_synthetic = args[:is_synthetic] if args.key?(:is_synthetic)
        end
      end
      
      # The definition of a operator that can be used in a Search/Suggest request.
      class QueryOperator
        include Google::Apis::Core::Hashable
      
        # Display name of the operator
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Potential list of values for the opeatror field. This field is only filled
        # when we can safely enumerate all the possible values of this operator.
        # Corresponds to the JSON property `enumValues`
        # @return [Array<String>]
        attr_accessor :enum_values
      
        # Indicates the operator name that can be used to isolate the property using the
        # greater-than operator.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Can this operator be used to get facets.
        # Corresponds to the JSON property `isFacetable`
        # @return [Boolean]
        attr_accessor :is_facetable
        alias_method :is_facetable?, :is_facetable
      
        # Indicates if multiple values can be set for this property.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # Will the property associated with this facet be returned as part of search
        # results.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # Can this operator be used to sort results.
        # Corresponds to the JSON property `isSortable`
        # @return [Boolean]
        attr_accessor :is_sortable
        alias_method :is_sortable?, :is_sortable
      
        # Can get suggestions for this field.
        # Corresponds to the JSON property `isSuggestable`
        # @return [Boolean]
        attr_accessor :is_suggestable
        alias_method :is_suggestable?, :is_suggestable
      
        # Indicates the operator name that can be used to isolate the property using the
        # less-than operator.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # The name of the object corresponding to the operator. This field is only
        # filled for schema-specific operators, and is unset for common operators.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # The type of the operator.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @is_facetable = args[:is_facetable] if args.key?(:is_facetable)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @is_sortable = args[:is_sortable] if args.key?(:is_sortable)
          @is_suggestable = args[:is_suggestable] if args.key?(:is_suggestable)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # List of sources that the user can search using the query API.
      class QuerySource
        include Google::Apis::Core::Hashable
      
        # Display name of the data source.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # List of all operators applicable for this source.
        # Corresponds to the JSON property `operators`
        # @return [Array<Google::Apis::CloudsearchV1::QueryOperator>]
        attr_accessor :operators
      
        # A short name or alias for the source. This value can be used with the 'source'
        # operator.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operators = args[:operators] if args.key?(:operators)
          @short_name = args[:short_name] if args.key?(:short_name)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # This field does not contain anything as of now and is just used as an
      # indicator that the suggest result was a phrase completion.
      class QuerySuggestion
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Quote metadata: go/message-quoting-be-dd-v2. This proto is only used on the
      # read path. For the request proto, refer to `QuotedMessagePayload`. Fields are
      # either derived from storage directly from the Item this metadata belongs to,
      # or is hydrated at read time from another Item read. Note:
      # QuotedMessageMetadata proto is similar to Message proto with less field.
      # Reasons to differtiate QuotedMessageMetadata from Message are: 1. Not all
      # fields for original message is applicable for quoted message. (E.g. reactions,
      # is_inline_reply, etc.), thus separting out for confusion. 2. We don't support
      # nested message quoting. For more detailed discussion, please see http://shortn/
      # _VsSXQb2C7P. For future reference: if your new feature/field will be supported
      # in message quoting feature (go/chat-quoting-prd), you will need to add that
      # field within QuotedMessageMetadata
      class QuotedMessageMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Snapshot of the annotations of the quoted message.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::CloudsearchV1::Annotation>]
        attr_accessor :annotations
      
        # Optional field for apps overriding display info
        # Corresponds to the JSON property `appProfile`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedAppProfile]
        attr_accessor :app_profile
      
        # Output only. The bot attachment state of the quoted message. Used by clients
        # to display a bot attachment indicator in the UI.
        # Corresponds to the JSON property `botAttachmentState`
        # @return [String]
        attr_accessor :bot_attachment_state
      
        # Output only. Time when the quoted message was posted in microseconds.
        # Corresponds to the JSON property `createTimeMicros`
        # @return [Fixnum]
        attr_accessor :create_time_micros
      
        # Primary key for User resource.
        # Corresponds to the JSON property `creatorId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :creator_id
      
        # Output only. Time when the quoted message was last edited by a user at the
        # time when quoting action happens. Time is in microseconds.
        # Corresponds to the JSON property `lastEditTimeMicros`
        # @return [Fixnum]
        attr_accessor :last_edit_time_micros
      
        # The `last_update_time` of the original message when the client initiated the
        # quote creation. This is derived from the request payload passed from clients.
        # Used to fetch the quoted message contents at a specific time on the read path.
        # This field is populated from storage directly.
        # Corresponds to the JSON property `lastUpdateTimeWhenQuotedMicros`
        # @return [Fixnum]
        attr_accessor :last_update_time_when_quoted_micros
      
        # Primary key for Message resource.
        # Corresponds to the JSON property `messageId`
        # @return [Google::Apis::CloudsearchV1::MessageId]
        attr_accessor :message_id
      
        # Output only. The state of the quoted message. Used by clients to display
        # tombstones for quotes that reference a deleted message.
        # Corresponds to the JSON property `messageState`
        # @return [String]
        attr_accessor :message_state
      
        # The settings of retention period of a message or topic.
        # Corresponds to the JSON property `retentionSettings`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedRetentionSettings]
        attr_accessor :retention_settings
      
        # Output only. Snapshot of the text body of the quoted message.
        # Corresponds to the JSON property `textBody`
        # @return [String]
        attr_accessor :text_body
      
        # Primary key for User resource.
        # Corresponds to the JSON property `updaterId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :updater_id
      
        # Output only. Upload metadata of the quoted message.
        # Corresponds to the JSON property `uploadMetadata`
        # @return [Array<Google::Apis::CloudsearchV1::UploadMetadata>]
        attr_accessor :upload_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @app_profile = args[:app_profile] if args.key?(:app_profile)
          @bot_attachment_state = args[:bot_attachment_state] if args.key?(:bot_attachment_state)
          @create_time_micros = args[:create_time_micros] if args.key?(:create_time_micros)
          @creator_id = args[:creator_id] if args.key?(:creator_id)
          @last_edit_time_micros = args[:last_edit_time_micros] if args.key?(:last_edit_time_micros)
          @last_update_time_when_quoted_micros = args[:last_update_time_when_quoted_micros] if args.key?(:last_update_time_when_quoted_micros)
          @message_id = args[:message_id] if args.key?(:message_id)
          @message_state = args[:message_state] if args.key?(:message_state)
          @retention_settings = args[:retention_settings] if args.key?(:retention_settings)
          @text_body = args[:text_body] if args.key?(:text_body)
          @updater_id = args[:updater_id] if args.key?(:updater_id)
          @upload_metadata = args[:upload_metadata] if args.key?(:upload_metadata)
        end
      end
      
      # The rank contains a tuple of numbers which may be used as a general sort order.
      # The rank should be treated as an ordered set of numbers, where the ordering
      # is done in descending order of the most significant rank member. For example,
      # given the following ranks described as (primary, secondary): (1,1), (1,2), (2,
      # 2) (2,1) The descending rank-order is: (2,2) > (2,1) > (1,2) > (1,1)
      class Rank
        include Google::Apis::Core::Hashable
      
        # The primary rank is the most significant rank member. This rank element should
        # always be present. Items with higher primary rank are always considered of
        # higher rank than those of lower primary rank.
        # Corresponds to the JSON property `primary`
        # @return [Fixnum]
        attr_accessor :primary
      
        # The secondary rank may be used to rank items of identical primary rank. This
        # rank element should always be present.
        # Corresponds to the JSON property `secondary`
        # @return [Fixnum]
        attr_accessor :secondary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary = args[:primary] if args.key?(:primary)
          @secondary = args[:secondary] if args.key?(:secondary)
        end
      end
      
      # Principal associated with a given RBAC role. This principal is used by Sphinx
      # Provisioning Service for RBAC provisionable (go/sphinx-rbacz).
      class RbacRoleProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # DEPRECATED as of 01.11.2019
        # Corresponds to the JSON property `rbacNamespace`
        # @return [String]
        attr_accessor :rbac_namespace
      
        # Format: "role/z?" - "role" is the Sphinx globally unique name of the Sphinx
        # role that provisions the RBAC role. - "/z?" suffix indicates which Zanzibar
        # environment stores the role membership data ("/zd": dev, "/zs": staging, "/zp":
        # prod, "/zt": local test instance). Example: "mysystem_myrole/zp"
        # Corresponds to the JSON property `rbacRoleName`
        # @return [String]
        attr_accessor :rbac_role_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @rbac_namespace = args[:rbac_namespace] if args.key?(:rbac_namespace)
          @rbac_role_name = args[:rbac_role_name] if args.key?(:rbac_role_name)
        end
      end
      
      # Principal associated with a given RBAC subject. This principal is used by
      # Sphinx Provisioning Service for RBAC provisionable (go/sphinx-rbacz).
      class RbacSubjectProto
        include Google::Apis::Core::Hashable
      
        # Format "username" without "@domain", e.g., "bogdand".
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Contains information about an emoji reaction.
      class ReactionInfo
        include Google::Apis::Core::Hashable
      
        # Unicode string representing a single emoji.
        # Corresponds to the JSON property `emoji`
        # @return [String]
        attr_accessor :emoji
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emoji = args[:emoji] if args.key?(:emoji)
        end
      end
      
      # 
      class ReadReceiptsSettingsUpdatedMetadata
        include Google::Apis::Core::Hashable
      
        # The new read receipts state.
        # Corresponds to the JSON property `readReceiptsEnabled`
        # @return [Boolean]
        attr_accessor :read_receipts_enabled
        alias_method :read_receipts_enabled?, :read_receipts_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_receipts_enabled = args[:read_receipts_enabled] if args.key?(:read_receipts_enabled)
        end
      end
      
      # 
      class Recipient
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # A recording event is something that happens to the recording in a conference.
      class RecordingEvent
        include Google::Apis::Core::Hashable
      
        # The initiator of the latest event of the recording. It will be set for all
        # user events (`type` is 100-199) and unset for all server events (`type` is 200-
        # 299).
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The type of event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This message is deprecated, please use RecordingSessionInfo instead.
      # Information about recording in the current conference.
      class RecordingInfo
        include Google::Apis::Core::Hashable
      
        # A recording event is something that happens to the recording in a conference.
        # Corresponds to the JSON property `latestRecordingEvent`
        # @return [Google::Apis::CloudsearchV1::RecordingEvent]
        attr_accessor :latest_recording_event
      
        # The display name of the owner of the recording output. Email notifications
        # about uploaded recordings will also be sent to this owner.
        # Corresponds to the JSON property `ownerDisplayName`
        # @return [String]
        attr_accessor :owner_display_name
      
        # The device resource name of the producer device for the currently active
        # recording. Note that, after the producer drops/leaves the conference, this
        # field will be cleaned up by the server after a delay.
        # Corresponds to the JSON property `producerDeviceId`
        # @return [String]
        attr_accessor :producer_device_id
      
        # The application type of the current active recording. `
        # RECORDING_APPLICATION_TYPE_UNSPECIFIED` if `recording_status` is inactive.
        # Corresponds to the JSON property `recordingApplicationType`
        # @return [String]
        attr_accessor :recording_application_type
      
        # An identifier for the current recording, if any. This is returned whenever
        # recording_status is either `RECORDING_STARTING` or `RECORDING_STARTED`.
        # Corresponds to the JSON property `recordingId`
        # @return [String]
        attr_accessor :recording_id
      
        # The current status of the recording. This can be used by clients to show a
        # recording dot or similar to indicated to the user that a recording is taking
        # place.
        # Corresponds to the JSON property `recordingStatus`
        # @return [String]
        attr_accessor :recording_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_recording_event = args[:latest_recording_event] if args.key?(:latest_recording_event)
          @owner_display_name = args[:owner_display_name] if args.key?(:owner_display_name)
          @producer_device_id = args[:producer_device_id] if args.key?(:producer_device_id)
          @recording_application_type = args[:recording_application_type] if args.key?(:recording_application_type)
          @recording_id = args[:recording_id] if args.key?(:recording_id)
          @recording_status = args[:recording_status] if args.key?(:recording_status)
        end
      end
      
      # Information about a recording session.
      class RecordingSessionInfo
        include Google::Apis::Core::Hashable
      
        # Input only. Deprecated field, should not be used.
        # Corresponds to the JSON property `ownerEmail`
        # @return [String]
        attr_accessor :owner_email
      
        # A unique server-generated ID for the recording session.
        # Corresponds to the JSON property `recordingSessionId`
        # @return [String]
        attr_accessor :recording_session_id
      
        # Information about the state of a (recording, broadcast, transcription...)
        # session in a conference.
        # Corresponds to the JSON property `sessionStateInfo`
        # @return [Google::Apis::CloudsearchV1::SessionStateInfo]
        attr_accessor :session_state_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner_email = args[:owner_email] if args.key?(:owner_email)
          @recording_session_id = args[:recording_session_id] if args.key?(:recording_session_id)
          @session_state_info = args[:session_state_info] if args.key?(:session_state_info)
        end
      end
      
      # All fields in this proto are now columns in spanner see google3/storage/slice/
      # production/gmail/user_data_tables.pi for documentation.
      class Reference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `blobId`
        # @return [String]
        attr_accessor :blob_id
      
        # 
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # 
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # LINT.IfChange
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # LINT.ThenChange(//depot/google3/storage/slice/production/gmail/
        # user_data_tables.pi)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_id = args[:blob_id] if args.key?(:blob_id)
          @content_type = args[:content_type] if args.key?(:content_type)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # 
      class References
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::CloudsearchV1::Reference>]
        attr_accessor :references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @references = args[:references] if args.key?(:references)
        end
      end
      
      # 
      class RenameEvent
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `newName`
        # @return [String]
        attr_accessor :new_name
      
        # 
        # Corresponds to the JSON property `originalName`
        # @return [String]
        attr_accessor :original_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_name = args[:new_name] if args.key?(:new_name)
          @original_name = args[:original_name] if args.key?(:original_name)
        end
      end
      
      # Errors when the connector is communicating to the source repository.
      class RepositoryError
        include Google::Apis::Core::Hashable
      
        # Message that describes the error. The maximum allowable length of the message
        # is 8192 characters.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Error codes. Matches the definition of HTTP status codes.
        # Corresponds to the JSON property `httpStatusCode`
        # @return [Fixnum]
        attr_accessor :http_status_code
      
        # The type of error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @http_status_code = args[:http_status_code] if args.key?(:http_status_code)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class RequestFileScope
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
        end
      end
      
      # 
      class RequestFileScopeForActiveDocument
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Shared request options for all RPC methods.
      class RequestOptions
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For
        # translations. Set this field using the language set in browser or for the page.
        # In the event that the user's language preference is known, set this field to
        # the known user language. When specified, the documents in search results are
        # biased towards the specified language. From Suggest API perspective, for 3p
        # suggest this is used as a hint while making predictions to add language
        # boosting.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The ID generated when you create a search application using the [admin console]
        # (https://support.google.com/a/answer/9043922).
        # Corresponds to the JSON property `searchApplicationId`
        # @return [String]
        attr_accessor :search_application_id
      
        # Current user's time zone id, such as "America/Los_Angeles" or "Australia/
        # Sydney". These IDs are defined by [Unicode Common Locale Data Repository (CLDR)
        # ](http://cldr.unicode.org/) project, and currently available in the file [
        # timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml).
        # This field is used to correctly interpret date and time queries. If this field
        # is not specified, the default time zone (UTC) is used.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @language_code = args[:language_code] if args.key?(:language_code)
          @search_application_id = args[:search_application_id] if args.key?(:search_application_id)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # A list of capabilities that are used in this message.
      class RequiredMessageFeaturesMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `requiredFeatures`
        # @return [Array<String>]
        attr_accessor :required_features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_features = args[:required_features] if args.key?(:required_features)
        end
      end
      
      # 
      class ResetSearchApplicationRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
        end
      end
      
      # A type of sharing target that points to some resource's ACL. Used to refer to
      # the set of Principals that have the given privilege ('role_id') for the given
      # resource ('application_id', 'object_id', 'object_part'). The meaning of '
      # role_id' is interpreted only by implementations of AclRpcService and is
      # usually dependent on 'application_id' All fields except object_part are
      # required. If present, object_part must be non-empty.
      class ResourceRoleProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # 
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # 
        # Corresponds to the JSON property `objectPart`
        # @return [String]
        attr_accessor :object_part
      
        # 
        # Corresponds to the JSON property `roleId`
        # @return [Fixnum]
        attr_accessor :role_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @object_part = args[:object_part] if args.key?(:object_part)
          @role_id = args[:role_id] if args.key?(:role_id)
        end
      end
      
      # Debugging information about the response.
      class ResponseDebugInfo
        include Google::Apis::Core::Hashable
      
        # General debug info formatted for display.
        # Corresponds to the JSON property `formattedDebugInfo`
        # @return [String]
        attr_accessor :formatted_debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_debug_info = args[:formatted_debug_info] if args.key?(:formatted_debug_info)
        end
      end
      
      # Information relevant only to a restrict entry. NextId: 12
      class RestrictItem
        include Google::Apis::Core::Hashable
      
        # Drive follow-up search restricts (e.g. "followup:suggestions").
        # Corresponds to the JSON property `driveFollowUpRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveFollowUpRestrict]
        attr_accessor :drive_follow_up_restrict
      
        # Drive location search restricts (e.g. "is:starred").
        # Corresponds to the JSON property `driveLocationRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveLocationRestrict]
        attr_accessor :drive_location_restrict
      
        # Drive mime-type search restricts (e.g. "type:pdf").
        # Corresponds to the JSON property `driveMimeTypeRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveMimeTypeRestrict]
        attr_accessor :drive_mime_type_restrict
      
        # The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").
        # Corresponds to the JSON property `driveTimeSpanRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveTimeSpanRestrict]
        attr_accessor :drive_time_span_restrict
      
        # The search restrict (e.g. "after:2017-09-11 before:2017-09-12").
        # Corresponds to the JSON property `searchOperator`
        # @return [String]
        attr_accessor :search_operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_follow_up_restrict = args[:drive_follow_up_restrict] if args.key?(:drive_follow_up_restrict)
          @drive_location_restrict = args[:drive_location_restrict] if args.key?(:drive_location_restrict)
          @drive_mime_type_restrict = args[:drive_mime_type_restrict] if args.key?(:drive_mime_type_restrict)
          @drive_time_span_restrict = args[:drive_time_span_restrict] if args.key?(:drive_time_span_restrict)
          @search_operator = args[:search_operator] if args.key?(:search_operator)
        end
      end
      
      # Result count information
      class ResultCounts
        include Google::Apis::Core::Hashable
      
        # Result count information for each source with results.
        # Corresponds to the JSON property `sourceResultCounts`
        # @return [Array<Google::Apis::CloudsearchV1::SourceResultCount>]
        attr_accessor :source_result_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_result_counts = args[:source_result_counts] if args.key?(:source_result_counts)
        end
      end
      
      # Debugging information about the result.
      class ResultDebugInfo
        include Google::Apis::Core::Hashable
      
        # General debug info formatted for display.
        # Corresponds to the JSON property `formattedDebugInfo`
        # @return [String]
        attr_accessor :formatted_debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_debug_info = args[:formatted_debug_info] if args.key?(:formatted_debug_info)
        end
      end
      
      # Display Fields for Search Results
      class ResultDisplayField
        include Google::Apis::Core::Hashable
      
        # The display label for the property.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The operator name of the property.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # A typed name-value pair for structured data. The type of the value should be
        # the same as the registered type for the `name` property in the object
        # definition of `objectType`.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::CloudsearchV1::NamedProperty]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # The collection of fields that make up a displayed line
      class ResultDisplayLine
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudsearchV1::ResultDisplayField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # 
      class ResultDisplayMetadata
        include Google::Apis::Core::Hashable
      
        # The metalines content to be displayed with the result.
        # Corresponds to the JSON property `metalines`
        # @return [Array<Google::Apis::CloudsearchV1::ResultDisplayLine>]
        attr_accessor :metalines
      
        # The display label for the object.
        # Corresponds to the JSON property `objectTypeLabel`
        # @return [String]
        attr_accessor :object_type_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metalines = args[:metalines] if args.key?(:metalines)
          @object_type_label = args[:object_type_label] if args.key?(:object_type_label)
        end
      end
      
      # 
      class RetrievalImportance
        include Google::Apis::Core::Hashable
      
        # Indicates the ranking importance given to property when it is matched during
        # retrieval. Once set, the token importance of a property cannot be changed.
        # Corresponds to the JSON property `importance`
        # @return [String]
        attr_accessor :importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @importance = args[:importance] if args.key?(:importance)
        end
      end
      
      # 
      class RoomRenameMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `newName`
        # @return [String]
        attr_accessor :new_name
      
        # NEXT_TAG: 3
        # Corresponds to the JSON property `prevName`
        # @return [String]
        attr_accessor :prev_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_name = args[:new_name] if args.key?(:new_name)
          @prev_name = args[:prev_name] if args.key?(:prev_name)
        end
      end
      
      # 
      class RoomUpdatedMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `groupDetailsMetadata`
        # @return [Google::Apis::CloudsearchV1::GroupDetailsUpdatedMetadata]
        attr_accessor :group_details_metadata
      
        # 
        # Corresponds to the JSON property `groupLinkSharingEnabled`
        # @return [Boolean]
        attr_accessor :group_link_sharing_enabled
        alias_method :group_link_sharing_enabled?, :group_link_sharing_enabled
      
        # User profile information. This user is not necessarily member of a space.
        # Corresponds to the JSON property `initiator`
        # @return [Google::Apis::CloudsearchV1::User]
        attr_accessor :initiator
      
        # The type of the user who initiated this room update.
        # Corresponds to the JSON property `initiatorType`
        # @return [String]
        attr_accessor :initiator_type
      
        # What was updated in the room.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `renameMetadata`
        # @return [Google::Apis::CloudsearchV1::RoomRenameMetadata]
        attr_accessor :rename_metadata
      
        # DEPRECATED: See GroupVisibility proto definition.
        # Corresponds to the JSON property `visibility`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedGroupVisibility]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_details_metadata = args[:group_details_metadata] if args.key?(:group_details_metadata)
          @group_link_sharing_enabled = args[:group_link_sharing_enabled] if args.key?(:group_link_sharing_enabled)
          @initiator = args[:initiator] if args.key?(:initiator)
          @initiator_type = args[:initiator_type] if args.key?(:initiator_type)
          @name = args[:name] if args.key?(:name)
          @rename_metadata = args[:rename_metadata] if args.key?(:rename_metadata)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # Roster profile information.
      class Roster
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `avatarUrl`
        # @return [String]
        attr_accessor :avatar_url
      
        # Primary key for Roster resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::CloudsearchV1::RosterId]
        attr_accessor :id
      
        # Whether caller has visibility into members of the roster.
        # Corresponds to the JSON property `isMembershipVisibleToCaller`
        # @return [Boolean]
        attr_accessor :is_membership_visible_to_caller
        alias_method :is_membership_visible_to_caller?, :is_membership_visible_to_caller
      
        # 
        # Corresponds to the JSON property `membershipCount`
        # @return [Fixnum]
        attr_accessor :membership_count
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Roster gaia key, usually an email address. Set in looking up rosters response.
        # Corresponds to the JSON property `rosterGaiaKey`
        # @return [String]
        attr_accessor :roster_gaia_key
      
        # Roster deletion state - considered active unless set to deleted
        # Corresponds to the JSON property `rosterState`
        # @return [String]
        attr_accessor :roster_state
      
        # Roster membership count. May contain counts based on member type and
        # membership state.
        # Corresponds to the JSON property `segmentedMembershipCounts`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedSegmentedMembershipCounts]
        attr_accessor :segmented_membership_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_url = args[:avatar_url] if args.key?(:avatar_url)
          @id = args[:id] if args.key?(:id)
          @is_membership_visible_to_caller = args[:is_membership_visible_to_caller] if args.key?(:is_membership_visible_to_caller)
          @membership_count = args[:membership_count] if args.key?(:membership_count)
          @name = args[:name] if args.key?(:name)
          @roster_gaia_key = args[:roster_gaia_key] if args.key?(:roster_gaia_key)
          @roster_state = args[:roster_state] if args.key?(:roster_state)
          @segmented_membership_counts = args[:segmented_membership_counts] if args.key?(:segmented_membership_counts)
        end
      end
      
      # Primary key for Roster resource.
      class RosterId
        include Google::Apis::Core::Hashable
      
        # Opaque, server-assigned ID of the Roster.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Options for Triggers dispatched via RPC.
      class RpcOptions
        include Google::Apis::Core::Hashable
      
        # This is proto2's version of MessageSet.
        # Corresponds to the JSON property `requestExtensions`
        # @return [Google::Apis::CloudsearchV1::MessageSet]
        attr_accessor :request_extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_extensions = args[:request_extensions] if args.key?(:request_extensions)
        end
      end
      
      # Message containing a string that is safe to use in URL contexts in DOM APIs
      # and HTML documents, where the URL context does not refer to a resource that
      # loads code.
      class SafeUrlProto
        include Google::Apis::Core::Hashable
      
        # IMPORTANT: Never set or read this field, even from tests, it is private. See
        # documentation at the top of .proto file for programming language packages with
        # which to create or read this message.
        # Corresponds to the JSON property `privateDoNotAccessOrElseSafeUrlWrappedValue`
        # @return [String]
        attr_accessor :private_do_not_access_or_else_safe_url_wrapped_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_do_not_access_or_else_safe_url_wrapped_value = args[:private_do_not_access_or_else_safe_url_wrapped_value] if args.key?(:private_do_not_access_or_else_safe_url_wrapped_value)
        end
      end
      
      # The schema definition for a data source.
      class Schema
        include Google::Apis::Core::Hashable
      
        # The list of top-level objects for the data source. The maximum number of
        # elements is 10.
        # Corresponds to the JSON property `objectDefinitions`
        # @return [Array<Google::Apis::CloudsearchV1::ObjectDefinition>]
        attr_accessor :object_definitions
      
        # IDs of the Long Running Operations (LROs) currently running for this schema.
        # After modifying the schema, wait for operations to complete before indexing
        # additional content.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_definitions = args[:object_definitions] if args.key?(:object_definitions)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
        end
      end
      
      # Scoring configurations for a source while processing a Search or Suggest
      # request.
      class ScoringConfig
        include Google::Apis::Core::Hashable
      
        # Whether to use freshness as a ranking signal. By default, freshness is used as
        # a ranking signal. Note that this setting is not available in the Admin UI.
        # Corresponds to the JSON property `disableFreshness`
        # @return [Boolean]
        attr_accessor :disable_freshness
        alias_method :disable_freshness?, :disable_freshness
      
        # Whether to personalize the results. By default, personal signals will be used
        # to boost results.
        # Corresponds to the JSON property `disablePersonalization`
        # @return [Boolean]
        attr_accessor :disable_personalization
        alias_method :disable_personalization?, :disable_personalization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_freshness = args[:disable_freshness] if args.key?(:disable_freshness)
          @disable_personalization = args[:disable_personalization] if args.key?(:disable_personalization)
        end
      end
      
      # SearchApplication
      class SearchApplication
        include Google::Apis::Core::Hashable
      
        # Retrictions applied to the configurations. The maximum number of elements is
        # 10.
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # The default fields for returning facet results. The sources specified here
        # also have been included in data_source_restrictions above.
        # Corresponds to the JSON property `defaultFacetOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FacetOptions>]
        attr_accessor :default_facet_options
      
        # The default options for sorting the search results
        # Corresponds to the JSON property `defaultSortOptions`
        # @return [Google::Apis::CloudsearchV1::SortOptions]
        attr_accessor :default_sort_options
      
        # Display name of the Search Application. The maximum length is 300 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether audit logging is on/off for requests made for the search
        # application in query APIs.
        # Corresponds to the JSON property `enableAuditLog`
        # @return [Boolean]
        attr_accessor :enable_audit_log
        alias_method :enable_audit_log?, :enable_audit_log
      
        # The name of the Search Application. Format: searchapplications/`application_id`
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. IDs of the Long Running Operations (LROs) currently running for
        # this schema. Output only field.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        # Default options to interpret user query.
        # Corresponds to the JSON property `queryInterpretationConfig`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretationConfig]
        attr_accessor :query_interpretation_config
      
        # With each result we should return the URI for its thumbnail (when applicable)
        # Corresponds to the JSON property `returnResultThumbnailUrls`
        # @return [Boolean]
        attr_accessor :return_result_thumbnail_urls
        alias_method :return_result_thumbnail_urls?, :return_result_thumbnail_urls
      
        # Scoring configurations for a source while processing a Search or Suggest
        # request.
        # Corresponds to the JSON property `scoringConfig`
        # @return [Google::Apis::CloudsearchV1::ScoringConfig]
        attr_accessor :scoring_config
      
        # Configuration for a sources specified in data_source_restrictions.
        # Corresponds to the JSON property `sourceConfig`
        # @return [Array<Google::Apis::CloudsearchV1::SourceConfig>]
        attr_accessor :source_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @default_facet_options = args[:default_facet_options] if args.key?(:default_facet_options)
          @default_sort_options = args[:default_sort_options] if args.key?(:default_sort_options)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_audit_log = args[:enable_audit_log] if args.key?(:enable_audit_log)
          @name = args[:name] if args.key?(:name)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
          @query_interpretation_config = args[:query_interpretation_config] if args.key?(:query_interpretation_config)
          @return_result_thumbnail_urls = args[:return_result_thumbnail_urls] if args.key?(:return_result_thumbnail_urls)
          @scoring_config = args[:scoring_config] if args.key?(:scoring_config)
          @source_config = args[:source_config] if args.key?(:source_config)
        end
      end
      
      # Search application level query stats per date
      class SearchApplicationQueryStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # 
        # Corresponds to the JSON property `queryCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::QueryCountByStatus>]
        attr_accessor :query_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @query_count_by_status = args[:query_count_by_status] if args.key?(:query_count_by_status)
        end
      end
      
      # 
      class SearchApplicationSessionStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of search sessions on the day
        # Corresponds to the JSON property `searchSessionsCount`
        # @return [Fixnum]
        attr_accessor :search_sessions_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @search_sessions_count = args[:search_sessions_count] if args.key?(:search_sessions_count)
        end
      end
      
      # 
      class SearchApplicationUserStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of unique active users in the past one day
        # Corresponds to the JSON property `oneDayActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :one_day_active_users_count
      
        # The count of unique active users in the past seven days
        # Corresponds to the JSON property `sevenDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :seven_days_active_users_count
      
        # The count of unique active users in the past thirty days
        # Corresponds to the JSON property `thirtyDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :thirty_days_active_users_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @one_day_active_users_count = args[:one_day_active_users_count] if args.key?(:one_day_active_users_count)
          @seven_days_active_users_count = args[:seven_days_active_users_count] if args.key?(:seven_days_active_users_count)
          @thirty_days_active_users_count = args[:thirty_days_active_users_count] if args.key?(:thirty_days_active_users_count)
        end
      end
      
      # 
      class SearchItemsByViewUrlRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The next_page_token value returned from a previous request, if any.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specify the full view URL to find the corresponding item. The maximum length
        # is 2048 characters.
        # Corresponds to the JSON property `viewUrl`
        # @return [String]
        attr_accessor :view_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @page_token = args[:page_token] if args.key?(:page_token)
          @view_url = args[:view_url] if args.key?(:view_url)
        end
      end
      
      # 
      class SearchItemsByViewUrlResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Additional search quality metadata of the item.
      class SearchQualityMetadata
        include Google::Apis::Core::Hashable
      
        # An indication of the quality of the item, used to influence search quality.
        # Value should be between 0.0 (lowest quality) and 1.0 (highest quality). The
        # default value is 0.0.
        # Corresponds to the JSON property `quality`
        # @return [Float]
        attr_accessor :quality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quality = args[:quality] if args.key?(:quality)
        end
      end
      
      # The search API request.
      class SearchRequest
        include Google::Apis::Core::Hashable
      
        # Context attributes for the request which will be used to adjust ranking of
        # search results. The maximum number of elements is 10.
        # Corresponds to the JSON property `contextAttributes`
        # @return [Array<Google::Apis::CloudsearchV1::ContextAttribute>]
        attr_accessor :context_attributes
      
        # The sources to use for querying. If not specified, all data sources from the
        # current search application are used.
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # 
        # Corresponds to the JSON property `facetOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FacetOptions>]
        attr_accessor :facet_options
      
        # Maximum number of search results to return in one page. Valid values are
        # between 1 and 100, inclusive. Default value is 10. Minimum value is 50 when
        # results beyond 2000 are requested.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The raw query string. See supported search operators in the [Narrow your
        # search with operators](https://support.google.com/cloudsearch/answer/6172299)
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Options to interpret user query.
        # Corresponds to the JSON property `queryInterpretationOptions`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretationOptions]
        attr_accessor :query_interpretation_options
      
        # Shared request options for all RPC methods.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::CloudsearchV1::RequestOptions]
        attr_accessor :request_options
      
        # The options for sorting the search results
        # Corresponds to the JSON property `sortOptions`
        # @return [Google::Apis::CloudsearchV1::SortOptions]
        attr_accessor :sort_options
      
        # Starting index of the results.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_attributes = args[:context_attributes] if args.key?(:context_attributes)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @facet_options = args[:facet_options] if args.key?(:facet_options)
          @page_size = args[:page_size] if args.key?(:page_size)
          @query = args[:query] if args.key?(:query)
          @query_interpretation_options = args[:query_interpretation_options] if args.key?(:query_interpretation_options)
          @request_options = args[:request_options] if args.key?(:request_options)
          @sort_options = args[:sort_options] if args.key?(:sort_options)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # The search API response.
      class SearchResponse
        include Google::Apis::Core::Hashable
      
        # Debugging information about the response.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::CloudsearchV1::ResponseDebugInfo]
        attr_accessor :debug_info
      
        # Error information about the response.
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::CloudsearchV1::ErrorInfo]
        attr_accessor :error_info
      
        # Repeated facet results.
        # Corresponds to the JSON property `facetResults`
        # @return [Array<Google::Apis::CloudsearchV1::FacetResult>]
        attr_accessor :facet_results
      
        # Whether there are more search results matching the query.
        # Corresponds to the JSON property `hasMoreResults`
        # @return [Boolean]
        attr_accessor :has_more_results
        alias_method :has_more_results?, :has_more_results
      
        # Query interpretation result for user query. Empty if query interpretation is
        # disabled.
        # Corresponds to the JSON property `queryInterpretation`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretation]
        attr_accessor :query_interpretation
      
        # The estimated result count for this query.
        # Corresponds to the JSON property `resultCountEstimate`
        # @return [Fixnum]
        attr_accessor :result_count_estimate
      
        # The exact result count for this query.
        # Corresponds to the JSON property `resultCountExact`
        # @return [Fixnum]
        attr_accessor :result_count_exact
      
        # Result count information
        # Corresponds to the JSON property `resultCounts`
        # @return [Google::Apis::CloudsearchV1::ResultCounts]
        attr_accessor :result_counts
      
        # Results from a search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudsearchV1::SearchResult>]
        attr_accessor :results
      
        # Suggested spelling for the query.
        # Corresponds to the JSON property `spellResults`
        # @return [Array<Google::Apis::CloudsearchV1::SpellResult>]
        attr_accessor :spell_results
      
        # Structured results for the user query. These results are not counted against
        # the page_size.
        # Corresponds to the JSON property `structuredResults`
        # @return [Array<Google::Apis::CloudsearchV1::StructuredResult>]
        attr_accessor :structured_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @error_info = args[:error_info] if args.key?(:error_info)
          @facet_results = args[:facet_results] if args.key?(:facet_results)
          @has_more_results = args[:has_more_results] if args.key?(:has_more_results)
          @query_interpretation = args[:query_interpretation] if args.key?(:query_interpretation)
          @result_count_estimate = args[:result_count_estimate] if args.key?(:result_count_estimate)
          @result_count_exact = args[:result_count_exact] if args.key?(:result_count_exact)
          @result_counts = args[:result_counts] if args.key?(:result_counts)
          @results = args[:results] if args.key?(:results)
          @spell_results = args[:spell_results] if args.key?(:spell_results)
          @structured_results = args[:structured_results] if args.key?(:structured_results)
        end
      end
      
      # Results containing indexed information for a document.
      class SearchResult
        include Google::Apis::Core::Hashable
      
        # If source is clustered, provide list of clustered results. There will only be
        # one level of clustered results. If current source is not enabled for
        # clustering, this field will be empty.
        # Corresponds to the JSON property `clusteredResults`
        # @return [Array<Google::Apis::CloudsearchV1::SearchResult>]
        attr_accessor :clustered_results
      
        # Debugging information about the result.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::CloudsearchV1::ResultDebugInfo]
        attr_accessor :debug_info
      
        # Metadata of a matched search result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::CloudsearchV1::Metadata]
        attr_accessor :metadata
      
        # Snippet of the search result, which summarizes the content of the resulting
        # page.
        # Corresponds to the JSON property `snippet`
        # @return [Google::Apis::CloudsearchV1::Snippet]
        attr_accessor :snippet
      
        # Title of the search result.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The URL of the search result. The URL contains a Google redirect to the actual
        # item. This URL is signed and shouldn't be changed.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clustered_results = args[:clustered_results] if args.key?(:clustered_results)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippet = args[:snippet] if args.key?(:snippet)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Sections are separated by a line divider. They contain a collection of widgets
      # that are rendered (vertically) in the order that they are specified. Across
      # all platforms, AddOns have a narrow fixed width, so there is currently no need
      # for layout properties (e.g. float).
      class Section
        include Google::Apis::Core::Hashable
      
        # Indicating whether this section is collapsable. If a section is collapsable,
        # the description must be given.
        # Corresponds to the JSON property `collapsable`
        # @return [Boolean]
        attr_accessor :collapsable
        alias_method :collapsable?, :collapsable
      
        # The header of the section, text formatted supported.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The number of uncollapsable widgets. For example, when a section contains 5
        # widgets and the num_uncollapsable_widget are set to be 2, The first 2 widgets
        # will always shown and the last 3 is collapsed as default. Only when
        # collapsable is set to be true, the num_uncollapsable_widget will be taken into
        # account.
        # Corresponds to the JSON property `numUncollapsableWidgets`
        # @return [Fixnum]
        attr_accessor :num_uncollapsable_widgets
      
        # A section must contain at least 1 widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::CloudsearchV1::WidgetMarkup>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapsable = args[:collapsable] if args.key?(:collapsable)
          @description = args[:description] if args.key?(:description)
          @num_uncollapsable_widgets = args[:num_uncollapsable_widgets] if args.key?(:num_uncollapsable_widgets)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # 
      class Segment
        include Google::Apis::Core::Hashable
      
        # Formatting information for a segment.
        # Corresponds to the JSON property `formatting`
        # @return [Google::Apis::CloudsearchV1::Formatting]
        attr_accessor :formatting
      
        # Hashtag metadata, for HASHTAG segments. For a hashtag, the "text" field should
        # contain the display text, and the search_text field should represent the topic
        # being referenced, without the hash symbol; for example, we might have: text = "
        # #Google" hashtag_data.search_text = "Google" Another example: text = "#pikachu"
        # hashtag_data.search_text = "Pokemon" Both strings should be considered part
        # of the searchable text. In go/sbe, both are indexed and searchable.
        # Corresponds to the JSON property `hashtagData`
        # @return [Google::Apis::CloudsearchV1::HashtagData]
        attr_accessor :hashtag_data
      
        # Link metadata, for LINK segments. Anchor text should be stored in the "text"
        # field of the Segment, which can also serve as a fallback.
        # Corresponds to the JSON property `linkData`
        # @return [Google::Apis::CloudsearchV1::LinkData]
        attr_accessor :link_data
      
        # Text content of the Segment. As a general rule, this field should contain the
        # actual text that should be rendered in the UI. Thus, for a hashtag, it should
        # be "#Foo", and for a link, it should be the display text. Clients that do not
        # understand a particular segment type may use this text, along with the
        # Formatting info below, as a fallback for display. The field is not required --
        # if all relevant information is carried in other metadata fields and there is
        # no need for a fallback, or it is not practical for a fallback to be provided
        # for any other reason, the field may be left blank. A standard example would be
        # a user reference being transmitted between server layers, where a gaia-ID
        # representation may be sufficient and there is no need for a textual fallback.
        # In such a case, it would be valid and useful - though not required - for
        # servers to compute and populate a fallback on the serving path.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Type of Segment.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Person metadata, for USER_MENTION segments. Should always contain at least one
        # of user_gaia_id, user_id, email or user. The exact set of populated fields may
        # differ depending on the context and the level in the serving stack; for
        # example, emails will be elided on the viewing path. But as a general rule, a
        # proto having any one of the four is valid, subject to the standard constraints
        # of the applied annotations -- that is, communication between servers and
        # clients will ignore jspb.ignore fields, and communication between servers and
        # other servers (or between servers and storage) will ignore client_only fields.
        # For more on the annotations, see the comments in social/common/
        # segment_annotations.proto
        # Corresponds to the JSON property `userMentionData`
        # @return [Google::Apis::CloudsearchV1::UserMentionData]
        attr_accessor :user_mention_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatting = args[:formatting] if args.key?(:formatting)
          @hashtag_data = args[:hashtag_data] if args.key?(:hashtag_data)
          @link_data = args[:link_data] if args.key?(:link_data)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
          @user_mention_data = args[:user_mention_data] if args.key?(:user_mention_data)
        end
      end
      
      # 
      class SelectionControl
        include Google::Apis::Core::Hashable
      
        # For radio button, at most one of the items will be selected.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::SelectionItem>]
        attr_accessor :items
      
        # Label used to be displayed ahead of the selection control. It is optional.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text field which is will be used in FormInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If specified, form is submitted when selection changed. If not specified,
        # developer will need to specify a separate button.
        # Corresponds to the JSON property `onChange`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :on_change
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change = args[:on_change] if args.key?(:on_change)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class SelectionItem
        include Google::Apis::Core::Hashable
      
        # If more than one items are selected for RADIO_BUTTON and DROPDOWN, the first
        # selected item is treated as sElected and the after ones are all ignored.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The text to be displayed.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item which will be sent back to app scripts.
        # Client should use as a form input value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected = args[:selected] if args.key?(:selected)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class SessionContext
        include Google::Apis::Core::Hashable
      
        # Time at which this activity's session was authenticated, in seconds since the
        # epoch.
        # Corresponds to the JSON property `authTime`
        # @return [Fixnum]
        attr_accessor :auth_time
      
        # Gaia ID of the authenticated user when delegate access is active. In such
        # sessions the main gaia ID is that of the delegator, i.e. the account being
        # accessed.
        # Corresponds to the JSON property `delegateUserId`
        # @return [Fixnum]
        attr_accessor :delegate_user_id
      
        # Device User Session ID, see go/dusi.
        # Corresponds to the JSON property `dusi`
        # @return [String]
        attr_accessor :dusi
      
        # Imap session context for Bond/Gmail integration
        # Corresponds to the JSON property `imapSessionContext`
        # @return [Google::Apis::CloudsearchV1::ImapSessionContext]
        attr_accessor :imap_session_context
      
        # OAuth login ID.
        # Corresponds to the JSON property `oauthLoginId`
        # @return [Fixnum]
        attr_accessor :oauth_login_id
      
        # The devconsole project ID of the developer who authenticated with OAuth.
        # Corresponds to the JSON property `oauthProjectId`
        # @return [Fixnum]
        attr_accessor :oauth_project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_time = args[:auth_time] if args.key?(:auth_time)
          @delegate_user_id = args[:delegate_user_id] if args.key?(:delegate_user_id)
          @dusi = args[:dusi] if args.key?(:dusi)
          @imap_session_context = args[:imap_session_context] if args.key?(:imap_session_context)
          @oauth_login_id = args[:oauth_login_id] if args.key?(:oauth_login_id)
          @oauth_project_id = args[:oauth_project_id] if args.key?(:oauth_project_id)
        end
      end
      
      # A session event is something that happens to the streaming session in a
      # conference.
      class SessionEvent
        include Google::Apis::Core::Hashable
      
        # The initiator of the latest event of the streaming session. It will be set for
        # all user events (`type` is 100-199) and unset for all server events(`type` is
        # 200-299).
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The type of event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information about the state of a (recording, broadcast, transcription...)
      # session in a conference.
      class SessionStateInfo
        include Google::Apis::Core::Hashable
      
        # Information about how devices in a meeting have acked for a session/operation.
        # Corresponds to the JSON property `ackInfo`
        # @return [Google::Apis::CloudsearchV1::AckInfo]
        attr_accessor :ack_info
      
        # The language configuration for the session.
        # Corresponds to the JSON property `languageConfig`
        # @return [Google::Apis::CloudsearchV1::LanguageConfig]
        attr_accessor :language_config
      
        # Output only. The device id of the actor is set if the current state is a
        # result of a user action, is empty otherwise.
        # Corresponds to the JSON property `lastActorDeviceId`
        # @return [String]
        attr_accessor :last_actor_device_id
      
        # Output only. The max end time of the session, at this time the session will be
        # force stopped/terminated. Clients are expected to use this timestamp to warn
        # users about the force stop.
        # Corresponds to the JSON property `maxEndTime`
        # @return [String]
        attr_accessor :max_end_time
      
        # State of the session.
        # Corresponds to the JSON property `sessionState`
        # @return [String]
        attr_accessor :session_state
      
        # Output only. The reason the session was transitioned to STOPPED state.
        # Corresponds to the JSON property `sessionStopReason`
        # @return [String]
        attr_accessor :session_stop_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_info = args[:ack_info] if args.key?(:ack_info)
          @language_config = args[:language_config] if args.key?(:language_config)
          @last_actor_device_id = args[:last_actor_device_id] if args.key?(:last_actor_device_id)
          @max_end_time = args[:max_end_time] if args.key?(:max_end_time)
          @session_state = args[:session_state] if args.key?(:session_state)
          @session_stop_reason = args[:session_stop_reason] if args.key?(:session_stop_reason)
        end
      end
      
      # Settings of a meeting space that can be edited by users with corresponding
      # manage privilege. These settings are always populated in responses.
      class Settings
        include Google::Apis::Core::Hashable
      
        # The access lock of the meeting space that lets hosts control who can join the
        # meeting.
        # Corresponds to the JSON property `accessLock`
        # @return [Boolean]
        attr_accessor :access_lock
        alias_method :access_lock?, :access_lock
      
        # The access type of the meeting space.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Whether users can join before host in the conferences of this meeting space.
        # Corresponds to the JSON property `allowJoiningBeforeHost`
        # @return [Boolean]
        attr_accessor :allow_joining_before_host
        alias_method :allow_joining_before_host?, :allow_joining_before_host
      
        # Whether attendance report is enabled for the meeting space.
        # Corresponds to the JSON property `attendanceReportEnabled`
        # @return [Boolean]
        attr_accessor :attendance_report_enabled
        alias_method :attendance_report_enabled?, :attendance_report_enabled
      
        # The chat lock of the meeting space that lets owner control whether the
        # participants can send chat messages.
        # Corresponds to the JSON property `chatLock`
        # @return [Boolean]
        attr_accessor :chat_lock
        alias_method :chat_lock?, :chat_lock
      
        # Whether meeting artifacts will be shared with cohosts.
        # Corresponds to the JSON property `cohostArtifactSharingEnabled`
        # @return [Boolean]
        attr_accessor :cohost_artifact_sharing_enabled
        alias_method :cohost_artifact_sharing_enabled?, :cohost_artifact_sharing_enabled
      
        # Whether Client-side Encryption is enabled for the meeting space.
        # Corresponds to the JSON property `cseEnabled`
        # @return [Boolean]
        attr_accessor :cse_enabled
        alias_method :cse_enabled?, :cse_enabled
      
        # Whether the default role is viewer or not.
        # Corresponds to the JSON property `defaultAsViewer`
        # @return [Boolean]
        attr_accessor :default_as_viewer
        alias_method :default_as_viewer?, :default_as_viewer
      
        # Indicates whether the meeting space is moderated.
        # Corresponds to the JSON property `moderationEnabled`
        # @return [Boolean]
        attr_accessor :moderation_enabled
        alias_method :moderation_enabled?, :moderation_enabled
      
        # The present lock of the meeting space that lets owner control whether the
        # participants can present their screen.
        # Corresponds to the JSON property `presentLock`
        # @return [Boolean]
        attr_accessor :present_lock
        alias_method :present_lock?, :present_lock
      
        # The reactions lock of the meeting space that lets owner control whether the
        # participants can send reactions.
        # Corresponds to the JSON property `reactionsLock`
        # @return [Boolean]
        attr_accessor :reactions_lock
        alias_method :reactions_lock?, :reactions_lock
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_lock = args[:access_lock] if args.key?(:access_lock)
          @access_type = args[:access_type] if args.key?(:access_type)
          @allow_joining_before_host = args[:allow_joining_before_host] if args.key?(:allow_joining_before_host)
          @attendance_report_enabled = args[:attendance_report_enabled] if args.key?(:attendance_report_enabled)
          @chat_lock = args[:chat_lock] if args.key?(:chat_lock)
          @cohost_artifact_sharing_enabled = args[:cohost_artifact_sharing_enabled] if args.key?(:cohost_artifact_sharing_enabled)
          @cse_enabled = args[:cse_enabled] if args.key?(:cse_enabled)
          @default_as_viewer = args[:default_as_viewer] if args.key?(:default_as_viewer)
          @moderation_enabled = args[:moderation_enabled] if args.key?(:moderation_enabled)
          @present_lock = args[:present_lock] if args.key?(:present_lock)
          @reactions_lock = args[:reactions_lock] if args.key?(:reactions_lock)
        end
      end
      
      # 
      class ShareScope
        include Google::Apis::Core::Hashable
      
        # If scope is DOMAIN, this field contains the dasher domain, for example "google.
        # com".
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The scope to which the content was shared.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # 
      class SheetsClientActionMarkup
        include Google::Apis::Core::Hashable
      
        # The result of a user running a custom function.
        # Corresponds to the JSON property `customFunctionReturnValueMarkup`
        # @return [Google::Apis::CloudsearchV1::CustomFunctionReturnValueMarkup]
        attr_accessor :custom_function_return_value_markup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_function_return_value_markup = args[:custom_function_return_value_markup] if args.key?(:custom_function_return_value_markup)
        end
      end
      
      # Represents a principal who possesses a signing key corresponding to the
      # verification key or keyset described here.
      class SigningKeyPossessorProto
        include Google::Apis::Core::Hashable
      
        # This value must be from the KeyMetadata.Type enum in keymaster.proto.
        # Corresponds to the JSON property `keymasterKeyType`
        # @return [Fixnum]
        attr_accessor :keymaster_key_type
      
        # The actual verification key bytes corresponding to the above type.
        # Corresponds to the JSON property `serializedVerificationKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :serialized_verification_key
      
        # The binary serialized Keymaster SerializedReader of a public keyset. The
        # keyset must contain exactly one key. N.B.: If this field is populated,
        # serialized_verification_key should be set to the empty string and
        # keymaster_key_type should be set to zero.
        # Corresponds to the JSON property `serializedVerificationKeyset`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :serialized_verification_keyset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keymaster_key_type = args[:keymaster_key_type] if args.key?(:keymaster_key_type)
          @serialized_verification_key = args[:serialized_verification_key] if args.key?(:serialized_verification_key)
          @serialized_verification_keyset = args[:serialized_verification_keyset] if args.key?(:serialized_verification_keyset)
        end
      end
      
      # Represents a principal which possesses a particular, presumably secret, string.
      # Useful for things like "auth keys," used for anonymous sharing. Since
      # representing this principal with the actual secret included reveals the secret,
      # it's best if the requisite condition is enforced in some other way, for
      # example via Keystore wrapping attributes (Keystore will unwrap only if the
      # specified secret, aka "attribute", is presented). All that's stored here is an
      # identifying label.
      class SimpleSecretHolderProto
        include Google::Apis::Core::Hashable
      
        # SimpleSecretProto (in authenticator.proto) and SimpleSecretHolderProto (below)
        # share the notion of a "label", which identifies a particular secret without (
        # hopefully) revealing the secret. Note that a SimpleSecretLabel only
        # disambiguates between secrets used to get access to some particular object.
        # Two different secrets that apply to two different objects could have the same
        # label. For example, in the common sharing model, each object has no more than
        # one "auth key". Therefore, the label for an auth key simply has type =
        # AUTH_KEY with no additional information. In theory, we could add some sort of
        # resource ID to SimpleSecretLabel to make it more explicit. However, in
        # practice, this is never really needed. A SimpleSecret for one object is never
        # used to authorize a request on some other object, so there is no ambiguity.
        # Also, since SimpleSecrets must obviously be unguessable, there is no risk that
        # a SimpleSecret intended for one object will accidentally grant access to
        # another.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::CloudsearchV1::SimpleSecretLabelProto]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # SimpleSecretProto (in authenticator.proto) and SimpleSecretHolderProto (below)
      # share the notion of a "label", which identifies a particular secret without (
      # hopefully) revealing the secret. Note that a SimpleSecretLabel only
      # disambiguates between secrets used to get access to some particular object.
      # Two different secrets that apply to two different objects could have the same
      # label. For example, in the common sharing model, each object has no more than
      # one "auth key". Therefore, the label for an auth key simply has type =
      # AUTH_KEY with no additional information. In theory, we could add some sort of
      # resource ID to SimpleSecretLabel to make it more explicit. However, in
      # practice, this is never really needed. A SimpleSecret for one object is never
      # used to authorize a request on some other object, so there is no ambiguity.
      # Also, since SimpleSecrets must obviously be unguessable, there is no risk that
      # a SimpleSecret intended for one object will accidentally grant access to
      # another.
      class SimpleSecretLabelProto
        include Google::Apis::Core::Hashable
      
        # ***DEPRECATED (3-Oct-2011) *** This field should be deleted when code stops
        # using CAP_TOKEN labels. Used when type = CAP_TOKEN. When a CAP_TOKEN label
        # appears in a SimpleSecretHolder Principal, |capability_id| must be filled in
        # to identify one of the capabilities on the ACL. When a CAP_TOKEN label appears
        # in a SimpleSecret Authenticator, it is NOT necessary to fill in |capability_id|
        # -- ACL Service will find the ID by searching all capabilities on the ACL for
        # one associated with the token given by the SimpleSecret's secret data. If |
        # capability_id| is specified, though, then the Authenticator will only be
        # accepted if it actually matches that particular token ID.
        # Corresponds to the JSON property `capabilityId`
        # @return [Fixnum]
        attr_accessor :capability_id
      
        # Used when type = GENERIC_SECRET
        # Corresponds to the JSON property `genericLabel`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :generic_label
      
        # Used when type == INVITE.
        # Corresponds to the JSON property `inviteId`
        # @return [Fixnum]
        attr_accessor :invite_id
      
        # This is optional because required enums cannot be extended.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capability_id = args[:capability_id] if args.key?(:capability_id)
          @generic_label = args[:generic_label] if args.key?(:generic_label)
          @invite_id = args[:invite_id] if args.key?(:invite_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Annotation metadata for slash commands (/).
      class SlashCommandMetadata
        include Google::Apis::Core::Hashable
      
        # Hint string for the arguments expected by the slash command.
        # Corresponds to the JSON property `argumentsHint`
        # @return [String]
        attr_accessor :arguments_hint
      
        # Unique id for the slash command.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        # Name of the slash command.
        # Corresponds to the JSON property `commandName`
        # @return [String]
        attr_accessor :command_name
      
        # Primary key for User resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :id
      
        # Whether or not this slash command should trigger a dialog.
        # Corresponds to the JSON property `triggersDialog`
        # @return [Boolean]
        attr_accessor :triggers_dialog
        alias_method :triggers_dialog?, :triggers_dialog
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments_hint = args[:arguments_hint] if args.key?(:arguments_hint)
          @command_id = args[:command_id] if args.key?(:command_id)
          @command_name = args[:command_name] if args.key?(:command_name)
          @id = args[:id] if args.key?(:id)
          @triggers_dialog = args[:triggers_dialog] if args.key?(:triggers_dialog)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Snippet of the search result, which summarizes the content of the resulting
      # page.
      class Snippet
        include Google::Apis::Core::Hashable
      
        # The matched ranges in the snippet.
        # Corresponds to the JSON property `matchRanges`
        # @return [Array<Google::Apis::CloudsearchV1::MatchRange>]
        attr_accessor :match_ranges
      
        # The snippet of the document. The snippet of the document. May contain escaped
        # HTML character that should be unescaped prior to rendering.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_ranges = args[:match_ranges] if args.key?(:match_ranges)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # An Attachment represents a linked entity associated with a piece of social
      # content. This may be a 1st-party or 3rd-party entity. In the Papyrus context,
      # an Attachment is part of a Cent, and sits alongside the main content of the
      # cent, which is represented as a sequence of Segments. Right now an Attachment
      # is just a wrapper around an Embed, but we provide the extra layer of
      # abstraction since, as Embeds move to separate storage in Briefcase, we may
      # want to add additional fields that are not part of the Embed proper, but that (
      # for example) relate to the usage of the linked content within the particular
      # post/cent.
      class SocialCommonAttachmentAttachment
        include Google::Apis::Core::Hashable
      
        # Represents an embedded object in an update. This is a wrapper class that can
        # contain a single specific item proto in an extension field. Think of it as a
        # base class like `Message` in Java. Each item proto must declare that it
        # extends this proto: message ExampleObject ` option (item_type) =
        # EXAMPLE_OBJECT; extend EmbedClientItem ` optional ExampleObject example_object
        # = ; ` ` See go/es-embeds for details.
        # Corresponds to the JSON property `embedItem`
        # @return [Google::Apis::CloudsearchV1::EmbedClientItem]
        attr_accessor :embed_item
      
        # An id to uniquely identify an attachment when several attachments are in a
        # collection.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @embed_item = args[:embed_item] if args.key?(:embed_item)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Represents a user pseudonym. Pseudonyms are linked accounts on Google and
      # third-party services (e.g. YouTube or Twitter) and are described by a Social
      # Graph Node.
      class SocialGraphNodeProto
        include Google::Apis::Core::Hashable
      
        # The fields from ccc/socialgraph/socialgraphnode.proto:SgnNode that uniquely
        # identify a social graph node. The 'ident' field is not included here because
        # its value can be changed.
        # Corresponds to the JSON property `sgnDomain`
        # @return [String]
        attr_accessor :sgn_domain
      
        # 
        # Corresponds to the JSON property `sgnPk`
        # @return [String]
        attr_accessor :sgn_pk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sgn_domain = args[:sgn_domain] if args.key?(:sgn_domain)
          @sgn_pk = args[:sgn_pk] if args.key?(:sgn_pk)
        end
      end
      
      # 
      class SortOptions
        include Google::Apis::Core::Hashable
      
        # The name of the operator corresponding to the field to sort on. The
        # corresponding property must be marked as sortable.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Ascending is the default sort order
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
        end
      end
      
      # Defines sources for the suggest/search APIs.
      class Source
        include Google::Apis::Core::Hashable
      
        # Source name for content indexed by the Indexing API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Predefined content source for Google Apps.
        # Corresponds to the JSON property `predefinedSource`
        # @return [String]
        attr_accessor :predefined_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @predefined_source = args[:predefined_source] if args.key?(:predefined_source)
        end
      end
      
      # Configurations for a source while processing a Search or Suggest request.
      class SourceConfig
        include Google::Apis::Core::Hashable
      
        # Set search results crowding limits. Crowding is a situation in which multiple
        # results from the same source or host "crowd out" other results, diminishing
        # the quality of search for users. To foster better search quality and source
        # diversity in search results, you can set a condition to reduce repetitive
        # results by source.
        # Corresponds to the JSON property `crowdingConfig`
        # @return [Google::Apis::CloudsearchV1::SourceCrowdingConfig]
        attr_accessor :crowding_config
      
        # Set the scoring configuration. This allows modifying the ranking of results
        # for a source.
        # Corresponds to the JSON property `scoringConfig`
        # @return [Google::Apis::CloudsearchV1::SourceScoringConfig]
        attr_accessor :scoring_config
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crowding_config = args[:crowding_config] if args.key?(:crowding_config)
          @scoring_config = args[:scoring_config] if args.key?(:scoring_config)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Set search results crowding limits. Crowding is a situation in which multiple
      # results from the same source or host "crowd out" other results, diminishing
      # the quality of search for users. To foster better search quality and source
      # diversity in search results, you can set a condition to reduce repetitive
      # results by source.
      class SourceCrowdingConfig
        include Google::Apis::Core::Hashable
      
        # Maximum number of results allowed from a datasource in a result page as long
        # as results from other sources are not exhausted. Value specified must not be
        # negative. A default value is used if this value is equal to 0. To disable
        # crowding, set the value greater than 100.
        # Corresponds to the JSON property `numResults`
        # @return [Fixnum]
        attr_accessor :num_results
      
        # Maximum number of suggestions allowed from a source. No limits will be set on
        # results if this value is less than or equal to 0.
        # Corresponds to the JSON property `numSuggestions`
        # @return [Fixnum]
        attr_accessor :num_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_results = args[:num_results] if args.key?(:num_results)
          @num_suggestions = args[:num_suggestions] if args.key?(:num_suggestions)
        end
      end
      
      # Per source result count information.
      class SourceResultCount
        include Google::Apis::Core::Hashable
      
        # Whether there are more search results for this source.
        # Corresponds to the JSON property `hasMoreResults`
        # @return [Boolean]
        attr_accessor :has_more_results
        alias_method :has_more_results?, :has_more_results
      
        # The estimated result count for this source.
        # Corresponds to the JSON property `resultCountEstimate`
        # @return [Fixnum]
        attr_accessor :result_count_estimate
      
        # The exact result count for this source.
        # Corresponds to the JSON property `resultCountExact`
        # @return [Fixnum]
        attr_accessor :result_count_exact
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_more_results = args[:has_more_results] if args.key?(:has_more_results)
          @result_count_estimate = args[:result_count_estimate] if args.key?(:result_count_estimate)
          @result_count_exact = args[:result_count_exact] if args.key?(:result_count_exact)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Set the scoring configuration. This allows modifying the ranking of results
      # for a source.
      class SourceScoringConfig
        include Google::Apis::Core::Hashable
      
        # Importance of the source.
        # Corresponds to the JSON property `sourceImportance`
        # @return [String]
        attr_accessor :source_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_importance = args[:source_importance] if args.key?(:source_importance)
        end
      end
      
      # Primary key for Space resource.
      class SpaceId
        include Google::Apis::Core::Hashable
      
        # Unique, immutable ID of the Space
        # Corresponds to the JSON property `spaceId`
        # @return [String]
        attr_accessor :space_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space_id = args[:space_id] if args.key?(:space_id)
        end
      end
      
      # 
      class SpellResult
        include Google::Apis::Core::Hashable
      
        # The suggested spelling of the query.
        # Corresponds to the JSON property `suggestedQuery`
        # @return [String]
        attr_accessor :suggested_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
        end
      end
      
      # Represents the set of members (of a given type) in a Google+ Square (see http:/
      # /go/squares). A Square with default member_type is currently (1/2012)
      # identical to the GaiaGroup with the same ID, but that is expected to change
      # soon (see http://go/superglue). Support for this principal type is currently (
      # 1/2012) incomplete -- e.g., Keystore does not support it yet (see b/5703421).
      class SquareProto
        include Google::Apis::Core::Hashable
      
        # The type of Square members to consider, e.g. "all members" vs. "owners" vs. "
        # admins". These are defined by legacy_relation_id values in social.graph.
        # storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.
        # proto. See square.pb (defined in production/config/cdd/socialgraph/
        # mixer_config/prod/node_type_config) for all valid edge types associated with
        # square. Currently required.
        # Corresponds to the JSON property `memberType`
        # @return [Fixnum]
        attr_accessor :member_type
      
        # Currently required.
        # Corresponds to the JSON property `squareId`
        # @return [Fixnum]
        attr_accessor :square_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member_type = args[:member_type] if args.key?(:member_type)
          @square_id = args[:square_id] if args.key?(:square_id)
        end
      end
      
      # Start upload file request.
      class StartUploadItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # 
      class StoredParticipantId
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `gaiaId`
        # @return [Fixnum]
        attr_accessor :gaia_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gaia_id = args[:gaia_id] if args.key?(:gaia_id)
        end
      end
      
      # Information about viewers of the stream.
      class StreamViewerStats
        include Google::Apis::Core::Hashable
      
        # The estimate of the current viewer count.
        # Corresponds to the JSON property `estimatedViewerCount`
        # @return [Fixnum]
        attr_accessor :estimated_viewer_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_viewer_count = args[:estimated_viewer_count] if args.key?(:estimated_viewer_count)
        end
      end
      
      # Information about a streaming session in conference.
      class StreamingSessionInfo
        include Google::Apis::Core::Hashable
      
        # The application type of the current streaming session.
        # Corresponds to the JSON property `applicationType`
        # @return [String]
        attr_accessor :application_type
      
        # A session event is something that happens to the streaming session in a
        # conference.
        # Corresponds to the JSON property `latestSessionEvent`
        # @return [Google::Apis::CloudsearchV1::SessionEvent]
        attr_accessor :latest_session_event
      
        # The display name of the owner of the recording output. It's only set when
        # there will be uploaded recordings. Currently, it's only set when application
        # type is RECORDING or GLIVE_STREAM.
        # Corresponds to the JSON property `ownerDisplayName`
        # @return [String]
        attr_accessor :owner_display_name
      
        # This is the REST name and unique identifier of this streaming session and has
        # the form `spaces//recordings/` This is returned whenever status is either `
        # STARTING` or `STARTED`.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # The current status of this streaming session. This can be used by clients to
        # show session status indicator and/or notification.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # When true, this recording may be used for training new transcription models.
        # Corresponds to the JSON property `trainingEnabled`
        # @return [Boolean]
        attr_accessor :training_enabled
        alias_method :training_enabled?, :training_enabled
      
        # The policy that controls who can view the broadcast. This setting applies for
        # broadcast session.
        # Corresponds to the JSON property `viewerAccessPolicy`
        # @return [String]
        attr_accessor :viewer_access_policy
      
        # Information about viewers of the stream.
        # Corresponds to the JSON property `viewerStats`
        # @return [Google::Apis::CloudsearchV1::StreamViewerStats]
        attr_accessor :viewer_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_type = args[:application_type] if args.key?(:application_type)
          @latest_session_event = args[:latest_session_event] if args.key?(:latest_session_event)
          @owner_display_name = args[:owner_display_name] if args.key?(:owner_display_name)
          @session_id = args[:session_id] if args.key?(:session_id)
          @status = args[:status] if args.key?(:status)
          @training_enabled = args[:training_enabled] if args.key?(:training_enabled)
          @viewer_access_policy = args[:viewer_access_policy] if args.key?(:viewer_access_policy)
          @viewer_stats = args[:viewer_stats] if args.key?(:viewer_stats)
        end
      end
      
      # A structured data object consisting of named properties.
      class StructuredDataObject
        include Google::Apis::Core::Hashable
      
        # The properties for the object. The maximum number of elements is 1000.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::CloudsearchV1::NamedProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Structured results that are returned as part of search request.
      class StructuredResult
        include Google::Apis::Core::Hashable
      
        # Object to represent a person.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Request of suggest API.
      class SuggestRequest
        include Google::Apis::Core::Hashable
      
        # The sources to use for suggestions. If not specified, the data sources are
        # taken from the current search application. NOTE: Suggestions are only
        # supported for the following sources: * Third-party data sources *
        # PredefinedSource.PERSON * PredefinedSource.GOOGLE_DRIVE
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # Partial query for which autocomplete suggestions will be shown. For example,
        # if the query is "sea", then the server might return "season", "search", "
        # seagull" and so on.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Shared request options for all RPC methods.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::CloudsearchV1::RequestOptions]
        attr_accessor :request_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @query = args[:query] if args.key?(:query)
          @request_options = args[:request_options] if args.key?(:request_options)
        end
      end
      
      # Response of the suggest API.
      class SuggestResponse
        include Google::Apis::Core::Hashable
      
        # List of suggestions.
        # Corresponds to the JSON property `suggestResults`
        # @return [Array<Google::Apis::CloudsearchV1::SuggestResult>]
        attr_accessor :suggest_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggest_results = args[:suggest_results] if args.key?(:suggest_results)
        end
      end
      
      # One suggestion result.
      class SuggestResult
        include Google::Apis::Core::Hashable
      
        # This field contains information about the person being suggested.
        # Corresponds to the JSON property `peopleSuggestion`
        # @return [Google::Apis::CloudsearchV1::PeopleSuggestion]
        attr_accessor :people_suggestion
      
        # This field does not contain anything as of now and is just used as an
        # indicator that the suggest result was a phrase completion.
        # Corresponds to the JSON property `querySuggestion`
        # @return [Google::Apis::CloudsearchV1::QuerySuggestion]
        attr_accessor :query_suggestion
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        # The suggested query that will be used for search, when the user clicks on the
        # suggestion
        # Corresponds to the JSON property `suggestedQuery`
        # @return [String]
        attr_accessor :suggested_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @people_suggestion = args[:people_suggestion] if args.key?(:people_suggestion)
          @query_suggestion = args[:query_suggestion] if args.key?(:query_suggestion)
          @source = args[:source] if args.key?(:source)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
        end
      end
      
      # Urls with additional bot related information.
      class SupportUrls
        include Google::Apis::Core::Hashable
      
        # Link to the admin configuration webpage for the bot. Configured by Pantheon,
        # may be empty.
        # Corresponds to the JSON property `adminConfigUrl`
        # @return [String]
        attr_accessor :admin_config_url
      
        # Link to the deletion policy webpage for the bot. Configured by Pantheon, may
        # be empty.
        # Corresponds to the JSON property `deletionPolicyUrl`
        # @return [String]
        attr_accessor :deletion_policy_url
      
        # Link to GWM page of the app. May be empty.
        # Corresponds to the JSON property `gwmUrl`
        # @return [String]
        attr_accessor :gwm_url
      
        # Link to the privacy policy webpage for the bot. May be empty.
        # Corresponds to the JSON property `privacyPolicyUrl`
        # @return [String]
        attr_accessor :privacy_policy_url
      
        # Link to the setup webpage for the bot. Configured by Pantheon, may be empty.
        # Corresponds to the JSON property `setupUrl`
        # @return [String]
        attr_accessor :setup_url
      
        # Link to the support webpage for the developer of the bot. May be empty.
        # Corresponds to the JSON property `supportUrl`
        # @return [String]
        attr_accessor :support_url
      
        # Link to the terms of service webpage for the bot. May be empty.
        # Corresponds to the JSON property `tosUrl`
        # @return [String]
        attr_accessor :tos_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_config_url = args[:admin_config_url] if args.key?(:admin_config_url)
          @deletion_policy_url = args[:deletion_policy_url] if args.key?(:deletion_policy_url)
          @gwm_url = args[:gwm_url] if args.key?(:gwm_url)
          @privacy_policy_url = args[:privacy_policy_url] if args.key?(:privacy_policy_url)
          @setup_url = args[:setup_url] if args.key?(:setup_url)
          @support_url = args[:support_url] if args.key?(:support_url)
          @tos_url = args[:tos_url] if args.key?(:tos_url)
        end
      end
      
      # 
      class SwitchWidget
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `controlType`
        # @return [String]
        attr_accessor :control_type
      
        # The name of the switch widget which is will be used in FormInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `onChange`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :on_change
      
        # 
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The value is what is passed back in apps script callback.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_type = args[:control_type] if args.key?(:control_type)
          @name = args[:name] if args.key?(:name)
          @on_change = args[:on_change] if args.key?(:on_change)
          @selected = args[:selected] if args.key?(:selected)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class TaskActionMarkup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `reloadTasks`
        # @return [Boolean]
        attr_accessor :reload_tasks
        alias_method :reload_tasks?, :reload_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reload_tasks = args[:reload_tasks] if args.key?(:reload_tasks)
        end
      end
      
      # 
      class TextButton
        include Google::Apis::Core::Hashable
      
        # The alternative text used for accessibility Next field number: 7.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Optional color of the button's background in RAISE mode. The default is the
        # secondary color from addon's manifest.
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # 
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        # 
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # Text color can be set via HTML markup.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @background_color = args[:background_color] if args.key?(:background_color)
          @disabled = args[:disabled] if args.key?(:disabled)
          @on_click = args[:on_click] if args.key?(:on_click)
          @style = args[:style] if args.key?(:style)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class TextField
        include Google::Apis::Core::Hashable
      
        # The initial set of auto complete items without any user input.
        # Corresponds to the JSON property `autoComplete`
        # @return [Google::Apis::CloudsearchV1::AutoComplete]
        attr_accessor :auto_complete
      
        # The refresh function which returns AutoComplete based on the user's input text.
        # If the callback is not specified, auto complete will be purely done in client
        # side based on the auto_complete items.
        # Corresponds to the JSON property `autoCompleteCallback`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :auto_complete_callback
      
        # When set to true, a user can input multiple auto-complet items.
        # Corresponds to the JSON property `autoCompleteMultipleSelections`
        # @return [Boolean]
        attr_accessor :auto_complete_multiple_selections
        alias_method :auto_complete_multiple_selections?, :auto_complete_multiple_selections
      
        # 
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # One of label or hint_text is required to be specified by the developers.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `maxLines`
        # @return [Fixnum]
        attr_accessor :max_lines
      
        # The name of the text field which is will be used in FormInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `onChange`
        # @return [Google::Apis::CloudsearchV1::FormAction]
        attr_accessor :on_change
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The default value when no input from user.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_complete = args[:auto_complete] if args.key?(:auto_complete)
          @auto_complete_callback = args[:auto_complete_callback] if args.key?(:auto_complete_callback)
          @auto_complete_multiple_selections = args[:auto_complete_multiple_selections] if args.key?(:auto_complete_multiple_selections)
          @hint_text = args[:hint_text] if args.key?(:hint_text)
          @label = args[:label] if args.key?(:label)
          @max_lines = args[:max_lines] if args.key?(:max_lines)
          @name = args[:name] if args.key?(:name)
          @on_change = args[:on_change] if args.key?(:on_change)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # This is deprecated and please use KeyValue.
      class TextKeyValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # 
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::CloudsearchV1::OnClick]
        attr_accessor :on_click
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Used to provide a search operator for text properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class TextOperatorOptions
        include Google::Apis::Core::Hashable
      
        # If true, the text value is tokenized as one atomic value in operator searches
        # and facet matches. For example, if the operator name is "genre" and the value
        # is "science-fiction" the query restrictions "genre:science" and "genre:fiction"
        # doesn't match the item; "genre:science-fiction" does. Text value matching is
        # case-sensitive and does not remove special characters. If false, the text is
        # tokenized. For example, if the value is "science-fiction" the queries "genre:
        # science" and "genre:fiction" matches the item.
        # Corresponds to the JSON property `exactMatchWithOperator`
        # @return [Boolean]
        attr_accessor :exact_match_with_operator
        alias_method :exact_match_with_operator?, :exact_match_with_operator
      
        # Indicates the operator name required in the query in order to isolate the text
        # property. For example, if operatorName is *subject* and the property's name is
        # *subjectLine*, then queries like *subject:<value>* show results only where the
        # value of the property named *subjectLine* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any text properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match_with_operator = args[:exact_match_with_operator] if args.key?(:exact_match_with_operator)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # 
      class TextParagraph
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The options for text properties.
      class TextPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for text properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::TextOperatorOptions]
        attr_accessor :operator_options
      
        # Indicates the search quality importance of the tokens within the field when
        # used for retrieval.
        # Corresponds to the JSON property `retrievalImportance`
        # @return [Google::Apis::CloudsearchV1::RetrievalImportance]
        attr_accessor :retrieval_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @retrieval_importance = args[:retrieval_importance] if args.key?(:retrieval_importance)
        end
      end
      
      # List of text values.
      class TextValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for text values is 2048 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The ThreadKey was set on some (subset of the) messages in this thread.
      class ThreadKeySet
        include Google::Apis::Core::Hashable
      
        # Messages on which the thread_key was changed.
        # Corresponds to the JSON property `messageKeys`
        # @return [Array<Google::Apis::CloudsearchV1::MultiKey>]
        attr_accessor :message_keys
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `newThreadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :new_thread_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_keys = args[:message_keys] if args.key?(:message_keys)
          @new_thread_key = args[:new_thread_key] if args.key?(:new_thread_key)
        end
      end
      
      # HistoryRecord for changes associated with a thread, namely: MESSAGE_ADDED
      # MESSAGE_DELETED LABEL_ADDED LABEL_REMOVED ATTRIBUTE_SET ATTRIBUTE_REMOVED
      # THREAD_KEY_SET All label_ids refer to the (unchanging) value as defined by the
      # Label.id field in labels.proto. In particular, it is *not* the canonical_name.
      class ThreadUpdate
        include Google::Apis::Core::Hashable
      
        # An attribute was deleted from some (subset of the) messages in this thread.
        # Corresponds to the JSON property `attributeRemoved`
        # @return [Google::Apis::CloudsearchV1::AttributeRemoved]
        attr_accessor :attribute_removed
      
        # An attribute was added to some (subset of the) messages in this thread.
        # Corresponds to the JSON property `attributeSet`
        # @return [Google::Apis::CloudsearchV1::AttributeSet]
        attr_accessor :attribute_set
      
        # A label was added to some (subset of the) messages in this thread.
        # Corresponds to the JSON property `labelAdded`
        # @return [Google::Apis::CloudsearchV1::LabelAdded]
        attr_accessor :label_added
      
        # A label was removed from some (subset of the) messages in this thread.
        # Corresponds to the JSON property `labelRemoved`
        # @return [Google::Apis::CloudsearchV1::LabelRemoved]
        attr_accessor :label_removed
      
        # Indicates the record id of the last operation that modified this thread.
        # Corresponds to the JSON property `lastHistoryRecordId`
        # @return [Fixnum]
        attr_accessor :last_history_record_id
      
        # A message was added. Specifying id and initial labels.
        # Corresponds to the JSON property `messageAdded`
        # @return [Google::Apis::CloudsearchV1::MessageAdded]
        attr_accessor :message_added
      
        # Some (subset of the) messages in this thread were deleted.
        # Corresponds to the JSON property `messageDeleted`
        # @return [Google::Apis::CloudsearchV1::MessageDeleted]
        attr_accessor :message_deleted
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `originalThreadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :original_thread_key
      
        # The PreStates of all messages before the transaction. These are suppressed if
        # the client requested that prestates not be included in the output of the
        # GetHistoryRequest.
        # Corresponds to the JSON property `preState`
        # @return [Array<Google::Apis::CloudsearchV1::PreState>]
        attr_accessor :pre_state
      
        # A union-like type for identifiying an object in storage. MultiKeys contain
        # multiple key fields, each in a separate key space. At least one key field must
        # be set. More than one key field may be set as long as all key values refer to
        # the same object. All objects in storage have unique server_id keys. All
        # MultiKeys returned from storage to storage clients will always have the
        # server_id field set. When creating an object, if a MultiKey without a
        # server_id is supplied to storage, the storage system will auto-assign a server
        # ID to the new object. For all other storage requests (i.e. those not creating
        # new objects), clients may omit server_id (as long as they supply another key).
        # Instead of server ids, clients can specify string based
        # client_assigned_perm_id keys. Mail message drafts are a prime example of these
        # kinds of objects. Each time a user saves a new version of a draft, the storage
        # system needs to create a new object with the updated draft content and needs
        # to delete the object containing the old content. The new object gets a new
        # SERVER_ID but should get the same CLIENT_ASSIGNED_PERM_ID as the now-deleted
        # object containing the old content. Carrying forward the perm ID allows it to
        # be used to consistently refer to the same logical object across revisions.
        # These perm IDs save sync clients from having to deal with changing object IDs.
        # For example, assume there's a mail message in storage with SERVER_ID = 123 and
        # CLIENT_ASSIGNED_PERM_ID = "foo". The following are all valid ways of
        # addressing the object using MultiKeys: 1) MultiKey ` server_id = 123 ` 2)
        # MultiKey ` server_id = 123, client_assigned_perm_id = "foo" ` 3) MultiKey `
        # client_assigned_perm_id = "foo" ` Multikeys are never serialized in the
        # storage. The individual keys are extracted and processed separately. Both the
        # integer ids as well as string ids are indexed for efficient retrieval using
        # the same fields in the backend. See go/tingle-multikeys for more information
        # on background and motivation.
        # Corresponds to the JSON property `threadKey`
        # @return [Google::Apis::CloudsearchV1::MultiKey]
        attr_accessor :thread_key
      
        # The ThreadKey was set on some (subset of the) messages in this thread.
        # Corresponds to the JSON property `threadKeySet`
        # @return [Google::Apis::CloudsearchV1::ThreadKeySet]
        attr_accessor :thread_key_set
      
        # Thread PLID
        # Corresponds to the JSON property `threadLocator`
        # @return [String]
        attr_accessor :thread_locator
      
        # 
        # Corresponds to the JSON property `topicStateUpdate`
        # @return [Google::Apis::CloudsearchV1::TopicStateUpdate]
        attr_accessor :topic_state_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_removed = args[:attribute_removed] if args.key?(:attribute_removed)
          @attribute_set = args[:attribute_set] if args.key?(:attribute_set)
          @label_added = args[:label_added] if args.key?(:label_added)
          @label_removed = args[:label_removed] if args.key?(:label_removed)
          @last_history_record_id = args[:last_history_record_id] if args.key?(:last_history_record_id)
          @message_added = args[:message_added] if args.key?(:message_added)
          @message_deleted = args[:message_deleted] if args.key?(:message_deleted)
          @original_thread_key = args[:original_thread_key] if args.key?(:original_thread_key)
          @pre_state = args[:pre_state] if args.key?(:pre_state)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @thread_key_set = args[:thread_key_set] if args.key?(:thread_key_set)
          @thread_locator = args[:thread_locator] if args.key?(:thread_locator)
          @topic_state_update = args[:topic_state_update] if args.key?(:topic_state_update)
        end
      end
      
      # Used to provide a search operator for timestamp properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class TimestampOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property using the greater-than operator. For example, if
        # greaterThanOperatorName is *closedafter* and the property's name is *closeDate*
        # , then queries like *closedafter:<value>* show results only where the value of
        # the property named *closeDate* is later than *<value>*. The operator name can
        # only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property using the less-than operator. For example, if
        # lessThanOperatorName is *closedbefore* and the property's name is *closeDate*,
        # then queries like *closedbefore:<value>* show results only where the value of
        # the property named *closeDate* is earlier than *<value>*. The operator name
        # can only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property. For example, if operatorName is *closedon* and the
        # property's name is *closeDate*, then queries like *closedon:<value>* show
        # results only where the value of the property named *closeDate* matches *<value>
        # *. By contrast, a search that uses the same *<value>* without an operator
        # returns all items where *<value>* matches the value of any String properties
        # or text within the content field for the item. The operator name can only
        # contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for timestamp properties.
      class TimestampPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for timestamp properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::TimestampOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # List of timestamp values.
      class TimestampValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Tombstoning is the act of leaving a contextual trace when deleting a message.
      # See more: go/tombstone-prd, go/hub-dynamite-tombstones-server-design-v2.
      class TombstoneMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates the type of Tombstone.
        # Corresponds to the JSON property `tombstoneType`
        # @return [String]
        attr_accessor :tombstone_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tombstone_type = args[:tombstone_type] if args.key?(:tombstone_type)
        end
      end
      
      # The Toolbar markup has been deprecated. The information is now specified in
      # the manifest.
      class Toolbar
        include Google::Apis::Core::Hashable
      
        # Background color of the toolbar in RBG hex representation.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # 
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class TopicId
        include Google::Apis::Core::Hashable
      
        # Id representing a group that could be a space, a chat, or a direct message
        # space. Which ID is set here will determine which group
        # Corresponds to the JSON property `groupId`
        # @return [Google::Apis::CloudsearchV1::GroupId]
        attr_accessor :group_id
      
        # Opaque, server-assigned ID of the Topic. While this ID is guaranteed to be
        # unique within the Space, it's not guaranteed to be globally unique. Internal
        # usage: this field can be empty in the following cases: 1. To create the first
        # message in a topic. 2. To list last N messages of a Space (regardless of topic)
        # .
        # Corresponds to the JSON property `topicId`
        # @return [String]
        attr_accessor :topic_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
        end
      end
      
      # State of an topic thread as maintained within Tingle.
      class TopicState
        include Google::Apis::Core::Hashable
      
        # Map of label => count of topic constituent messages with label These only
        # contain counts of labels that are relevant for topic normalization/
        # denormalization. Eg. If a topic thread has 5 constituents, 4 of which are in
        # inbox, this will contain ^i => 4. Some labels of interest are archive, inbox,
        # trash, spam, etc.
        # Corresponds to the JSON property `labelIdMessageCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :label_id_message_count
      
        # Number of constituents for this entity.
        # Corresponds to the JSON property `numConstituents`
        # @return [Fixnum]
        attr_accessor :num_constituents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_id_message_count = args[:label_id_message_count] if args.key?(:label_id_message_count)
          @num_constituents = args[:num_constituents] if args.key?(:num_constituents)
        end
      end
      
      # 
      class TopicStateUpdate
        include Google::Apis::Core::Hashable
      
        # State of an topic thread as maintained within Tingle.
        # Corresponds to the JSON property `topicState`
        # @return [Google::Apis::CloudsearchV1::TopicState]
        attr_accessor :topic_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic_state = args[:topic_state] if args.key?(:topic_state)
        end
      end
      
      # Storage information pertaining to the transaction with which a HistoryRecord
      # is associated.
      class TransactionContext
        include Google::Apis::Core::Hashable
      
        # The last HistoryRecord of the transaction. Note that this may correspond to a
        # record that is filtered by Tingle (and thus not returned to the client). See
        # http://b/9513464.
        # Corresponds to the JSON property `endingRecordId`
        # @return [Fixnum]
        attr_accessor :ending_record_id
      
        # The first HistoryRecord of the transaction. Note that this may be a record of
        # type INTERNAL.
        # Corresponds to the JSON property `startingRecordId`
        # @return [Fixnum]
        attr_accessor :starting_record_id
      
        # The microsecond timestamp of the transaction.
        # Corresponds to the JSON property `writeTimestampUs`
        # @return [Fixnum]
        attr_accessor :write_timestamp_us
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ending_record_id = args[:ending_record_id] if args.key?(:ending_record_id)
          @starting_record_id = args[:starting_record_id] if args.key?(:starting_record_id)
          @write_timestamp_us = args[:write_timestamp_us] if args.key?(:write_timestamp_us)
        end
      end
      
      # HistoryRecord for debug info associated with the transaction, namely:
      # TXN_DEBUG_INFO TODO(b/143845917) This is a short-term workaround for
      # unblocking fusebox writes migration. Clean up the code or land a long-term
      # solution after the rollout. go/diff-to-historyrecord
      class TransactionDebugInfo
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information about a transcription session.
      class TranscriptionSessionInfo
        include Google::Apis::Core::Hashable
      
        # Information about the state of a (recording, broadcast, transcription...)
        # session in a conference.
        # Corresponds to the JSON property `sessionStateInfo`
        # @return [Google::Apis::CloudsearchV1::SessionStateInfo]
        attr_accessor :session_state_info
      
        # A unique server-generated ID for the transcription session.
        # Corresponds to the JSON property `transcriptionSessionId`
        # @return [String]
        attr_accessor :transcription_session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_state_info = args[:session_state_info] if args.key?(:session_state_info)
          @transcription_session_id = args[:transcription_session_id] if args.key?(:transcription_session_id)
        end
      end
      
      # Transient generic data that will not be saved on the server.
      class TransientData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Trigger
        include Google::Apis::Core::Hashable
      
        # Each dispatcher should use an enum to for the actions that it supports. If a
        # dispatcher has only one action, this does not need to be set. (It can be
        # expanded later, defining the default behaviour as type 0.) For purposes such
        # as batching, the type of a trigger is (dispatcher, action_type).
        # Corresponds to the JSON property `actionType`
        # @return [Fixnum]
        attr_accessor :action_type
      
        # Maximum possible delay in micros that can be tolerated so triggers can be
        # batched, which makes processing more efficient compared to firing triggers
        # individually. Note that the actual fire time will be somewhere in the
        # timerange interval [fire_time_us, fire_time_us + batch_time_us).
        # Corresponds to the JSON property `batchTimeUs`
        # @return [Fixnum]
        attr_accessor :batch_time_us
      
        # Must be set for DISPATCHER_STUBBY_DISPATCHER.
        # Corresponds to the JSON property `dispatchId`
        # @return [Fixnum]
        attr_accessor :dispatch_id
      
        # Which server should interpret action_type.
        # Corresponds to the JSON property `dispatcher`
        # @return [String]
        attr_accessor :dispatcher
      
        # Earliest time to fire at in microseconds. The actual time that the trigger
        # will fire will be in the timerange: [fire_time_us, fire_time_us +
        # batch_time_us).
        # Corresponds to the JSON property `fireTimeUs`
        # @return [Fixnum]
        attr_accessor :fire_time_us
      
        # Identifies a jobsetted server as a target for Trigger dispatch.
        # Corresponds to the JSON property `jobsettedServerSpec`
        # @return [Google::Apis::CloudsearchV1::JobsettedServerSpec]
        attr_accessor :jobsetted_server_spec
      
        # The trigger key, if applicable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Options for Triggers dispatched via RPC.
        # Corresponds to the JSON property `rpcOptions`
        # @return [Google::Apis::CloudsearchV1::RpcOptions]
        attr_accessor :rpc_options
      
        # The slice_fire_time_us is automatically computed and stored as part of the
        # trigger write. It represents the exact fire time at which the trigger will be
        # queued to fire and will satisfy fire_time_us < slice_fire_time_us <=
        # fire_time_us + batch_time_us Triggers have an index row in the slice trigger
        # index with the row prefix matching this time. Note that this field is internal
        # to gmail_cp and is ignored if set by external clients when adding / updating
        # triggers.
        # Corresponds to the JSON property `sliceFireTimeUs`
        # @return [Fixnum]
        attr_accessor :slice_fire_time_us
      
        # Trigger action to perform. This should always be set.
        # Corresponds to the JSON property `triggerAction`
        # @return [Google::Apis::CloudsearchV1::TriggerAction]
        attr_accessor :trigger_action
      
        # A TriggerKey (type + instance_id) uniquely identifies a trigger within a
        # message for a message-trigger and within an account for an account-trigger.
        # Corresponds to the JSON property `triggerKey`
        # @return [Google::Apis::CloudsearchV1::TriggerKey]
        attr_accessor :trigger_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @batch_time_us = args[:batch_time_us] if args.key?(:batch_time_us)
          @dispatch_id = args[:dispatch_id] if args.key?(:dispatch_id)
          @dispatcher = args[:dispatcher] if args.key?(:dispatcher)
          @fire_time_us = args[:fire_time_us] if args.key?(:fire_time_us)
          @jobsetted_server_spec = args[:jobsetted_server_spec] if args.key?(:jobsetted_server_spec)
          @key = args[:key] if args.key?(:key)
          @rpc_options = args[:rpc_options] if args.key?(:rpc_options)
          @slice_fire_time_us = args[:slice_fire_time_us] if args.key?(:slice_fire_time_us)
          @trigger_action = args[:trigger_action] if args.key?(:trigger_action)
          @trigger_key = args[:trigger_key] if args.key?(:trigger_key)
        end
      end
      
      # 
      class TriggerAction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Clients should use extensions on the Trigger message instead.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # 
        # Corresponds to the JSON property `dataInt`
        # @return [Fixnum]
        attr_accessor :data_int
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @data = args[:data] if args.key?(:data)
          @data_int = args[:data_int] if args.key?(:data_int)
        end
      end
      
      # A TriggerKey (type + instance_id) uniquely identifies a trigger within a
      # message for a message-trigger and within an account for an account-trigger.
      class TriggerKey
        include Google::Apis::Core::Hashable
      
        # Identifier to distinguish multiple Triggers of the same type (per message or
        # per account).
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # A non-empty string that identifies the type of Trigger. Triggers of the same
        # type may be batched together. The universe of values for the type field should
        # be finite as it is used as a stats key.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Triggers
        include Google::Apis::Core::Hashable
      
        # A list of triggers.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::CloudsearchV1::Trigger>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @triggers = args[:triggers] if args.key?(:triggers)
        end
      end
      
      # Message containing a string that is safe to use in all URL contexts in DOM
      # APIs and HTML documents; even where the referred-to resource is interpreted as
      # code, e.g., as the src of a script element.
      class TrustedResourceUrlProto
        include Google::Apis::Core::Hashable
      
        # IMPORTANT: Never set or read this field, even from tests, it is private. See
        # documentation at the top of .proto file for programming language packages with
        # which to create or read this message.
        # Corresponds to the JSON property `privateDoNotAccessOrElseTrustedResourceUrlWrappedValue`
        # @return [String]
        attr_accessor :private_do_not_access_or_else_trusted_resource_url_wrapped_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_do_not_access_or_else_trusted_resource_url_wrapped_value = args[:private_do_not_access_or_else_trusted_resource_url_wrapped_value] if args.key?(:private_do_not_access_or_else_trusted_resource_url_wrapped_value)
        end
      end
      
      # Next tag: 2
      class TypeInfo
        include Google::Apis::Core::Hashable
      
        # Next tag: 2
        # Corresponds to the JSON property `videoInfo`
        # @return [Google::Apis::CloudsearchV1::VideoInfo]
        attr_accessor :video_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_info = args[:video_info] if args.key?(:video_info)
        end
      end
      
      # Universal phone access contains information required to dial into a conference
      # using one of a static list of phone numbers and a universal PIN. The phone
      # number list is distributed separately.
      class UniversalPhoneAccess
        include Google::Apis::Core::Hashable
      
        # The PIN that users must enter after dialing a universal number. The pin
        # consists of only decimal digits and the length may vary, though it generally
        # is longer than a PhoneAccess.pin.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        # This field has the same contents as the MeetingSpace.more_join_url field, and
        # is included for compatibility reasons. Clients should use the other field
        # instead. This field is deprecated and will be removed.
        # Corresponds to the JSON property `pstnInfoUrl`
        # @return [String]
        attr_accessor :pstn_info_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pin = args[:pin] if args.key?(:pin)
          @pstn_info_url = args[:pstn_info_url] if args.key?(:pstn_info_url)
        end
      end
      
      # 
      class UnmappedIdentity
        include Google::Apis::Core::Hashable
      
        # Reference to a user, group, or domain.
        # Corresponds to the JSON property `externalIdentity`
        # @return [Google::Apis::CloudsearchV1::Principal]
        attr_accessor :external_identity
      
        # The resolution status for the external identity.
        # Corresponds to the JSON property `resolutionStatusCode`
        # @return [String]
        attr_accessor :resolution_status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_identity = args[:external_identity] if args.key?(:external_identity)
          @resolution_status_code = args[:resolution_status_code] if args.key?(:resolution_status_code)
        end
      end
      
      # 
      class UnreserveItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The name of a queue to unreserve items from.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @queue = args[:queue] if args.key?(:queue)
        end
      end
      
      # 
      class UpdateBccRecipients
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bccRecipients`
        # @return [Array<Google::Apis::CloudsearchV1::Recipient>]
        attr_accessor :bcc_recipients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bcc_recipients = args[:bcc_recipients] if args.key?(:bcc_recipients)
        end
      end
      
      # 
      class UpdateBody
        include Google::Apis::Core::Hashable
      
        # A repeated field that contains a series of content to insert into the draft
        # that the user is currently editing. The content can contain HTML content or
        # plain text content.
        # Corresponds to the JSON property `insertContents`
        # @return [Array<Google::Apis::CloudsearchV1::InsertContent>]
        attr_accessor :insert_contents
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_contents = args[:insert_contents] if args.key?(:insert_contents)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class UpdateCcRecipients
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ccRecipients`
        # @return [Array<Google::Apis::CloudsearchV1::Recipient>]
        attr_accessor :cc_recipients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cc_recipients = args[:cc_recipients] if args.key?(:cc_recipients)
        end
      end
      
      # 
      class UpdateDataSourceRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Datasource is a logical namespace for items to be indexed. All items must
        # belong to a datasource. This is the prerequisite before items can be indexed
        # into Cloud Search.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::DataSource]
        attr_accessor :source
      
        # Only applies to [`settings.datasources.patch`](https://developers.google.com/
        # cloud-search/docs/reference/rest/v1/settings.datasources/patch). Update mask
        # to control which fields to update. Example field paths: `name`, `displayName`.
        # * If `update_mask` is non-empty, then only the fields specified in the `
        # update_mask` are updated. * If you specify a field in the `update_mask`, but
        # don't specify its value in the source, that field is cleared. * If the `
        # update_mask` is not present or empty or has the value `*`, then all fields are
        # updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @source = args[:source] if args.key?(:source)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class UpdateDraftActionMarkup
        include Google::Apis::Core::Hashable
      
        # If set, replaces the existing Bcc recipients of the draft the user is
        # currently editing.
        # Corresponds to the JSON property `updateBccRecipients`
        # @return [Google::Apis::CloudsearchV1::UpdateBccRecipients]
        attr_accessor :update_bcc_recipients
      
        # A field that contains a series of update actions to perform on the draft body
        # that the user is currently editing.
        # Corresponds to the JSON property `updateBody`
        # @return [Google::Apis::CloudsearchV1::UpdateBody]
        attr_accessor :update_body
      
        # If set, replaces the existing Cc recipients of the draft the user is currently
        # editing.
        # Corresponds to the JSON property `updateCcRecipients`
        # @return [Google::Apis::CloudsearchV1::UpdateCcRecipients]
        attr_accessor :update_cc_recipients
      
        # If set, replaces the existing subject of the draft the user is currently
        # editing.
        # Corresponds to the JSON property `updateSubject`
        # @return [Google::Apis::CloudsearchV1::UpdateSubject]
        attr_accessor :update_subject
      
        # If set, replaces the existing To recipients of the draft the user is currently
        # editing.
        # Corresponds to the JSON property `updateToRecipients`
        # @return [Google::Apis::CloudsearchV1::UpdateToRecipients]
        attr_accessor :update_to_recipients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_bcc_recipients = args[:update_bcc_recipients] if args.key?(:update_bcc_recipients)
          @update_body = args[:update_body] if args.key?(:update_body)
          @update_cc_recipients = args[:update_cc_recipients] if args.key?(:update_cc_recipients)
          @update_subject = args[:update_subject] if args.key?(:update_subject)
          @update_to_recipients = args[:update_to_recipients] if args.key?(:update_to_recipients)
        end
      end
      
      # 
      class UpdateSchemaRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The schema definition for a data source.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::CloudsearchV1::Schema]
        attr_accessor :schema
      
        # If true, the schema will be checked for validity, but will not be registered
        # with the data source, even if valid.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @schema = args[:schema] if args.key?(:schema)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # 
      class UpdateSubject
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # 
      class UpdateToRecipients
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `toRecipients`
        # @return [Array<Google::Apis::CloudsearchV1::Recipient>]
        attr_accessor :to_recipients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @to_recipients = args[:to_recipients] if args.key?(:to_recipients)
        end
      end
      
      # Represents an upload session reference. This reference is created via upload
      # method. This reference is valid for 30 days after its creation. Updating of
      # item content may refer to this uploaded content via contentDataRef.
      class UploadItemRef
        include Google::Apis::Core::Hashable
      
        # The name of the content reference. The maximum length is 2048 characters.
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
      
      # Annotation metadata for user Upload artifacts.
      class UploadMetadata
        include Google::Apis::Core::Hashable
      
        # Opaque token. Clients shall simply pass it back to the Backend. There is no
        # guarantee the attachment_token returned on subsequent reads is the same even
        # if nothing has changed. This field will NOT be saved into storage.
        # Corresponds to the JSON property `attachmentToken`
        # @return [String]
        attr_accessor :attachment_token
      
        # Metadata used only in Dynamite backend for uploaded attachments.
        # Corresponds to the JSON property `backendUploadMetadata`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedBackendUploadMetadata]
        attr_accessor :backend_upload_metadata
      
        # A combination of an identifier for a Drive resource (e.g. file, folder, or
        # drive) and any secrets needed to access it. The secrets should never be logged,
        # and this proto annotates those secret fields to ensure that they are not.
        # Clients are encouraged to use this proto rather than defining their own, to
        # ensure that secrets are correctly annotated.
        # Corresponds to the JSON property `clonedAuthorizedItemId`
        # @return [Google::Apis::CloudsearchV1::AuthorizedItemId]
        attr_accessor :cloned_authorized_item_id
      
        # DriveAction for organizing the cloned version of this upload in Drive, if the
        # file has been added to Drive. This field is not set if the file has not been
        # added to Drive. Additionally, this field is only set when part of a FileResult
        # in a ListFilesResponse.
        # Corresponds to the JSON property `clonedDriveAction`
        # @return [String]
        attr_accessor :cloned_drive_action
      
        # Reference to a Drive ID, if this upload file has been previously cloned to
        # Drive. Note: this is deprecated in favor of the AuthorizedItemId below.
        # Corresponds to the JSON property `clonedDriveId`
        # @return [String]
        attr_accessor :cloned_drive_id
      
        # The original file name for the content, not the full path.
        # Corresponds to the JSON property `contentName`
        # @return [String]
        attr_accessor :content_name
      
        # Type is from Scotty's best_guess by default: http://google3/uploader/agent/
        # scotty_agent.proto?l=51&rcl=140889785
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # LINT.IfChange
        # Corresponds to the JSON property `dlpMetricsMetadata`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedDlpMetricsMetadata]
        attr_accessor :dlp_metrics_metadata
      
        # The timestamp of the most recent virus scan completed (in microseconds).
        # Corresponds to the JSON property `latestVirusScanTimestamp`
        # @return [Fixnum]
        attr_accessor :latest_virus_scan_timestamp
      
        # A copy of the LocalId in Annotation. This field is supposed to be filled by
        # server only.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Dimension for the uploaded attachments.
        # Corresponds to the JSON property `originalDimension`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedDimension]
        attr_accessor :original_dimension
      
        # Reference to a transcoded video attachment.
        # Corresponds to the JSON property `videoReference`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedVideoReference]
        attr_accessor :video_reference
      
        # Result for a virus scan. It's duplicated in the above field apps.dynamite.
        # shared.BackendUploadMetadata
        # Corresponds to the JSON property `virusScanResult`
        # @return [String]
        attr_accessor :virus_scan_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_token = args[:attachment_token] if args.key?(:attachment_token)
          @backend_upload_metadata = args[:backend_upload_metadata] if args.key?(:backend_upload_metadata)
          @cloned_authorized_item_id = args[:cloned_authorized_item_id] if args.key?(:cloned_authorized_item_id)
          @cloned_drive_action = args[:cloned_drive_action] if args.key?(:cloned_drive_action)
          @cloned_drive_id = args[:cloned_drive_id] if args.key?(:cloned_drive_id)
          @content_name = args[:content_name] if args.key?(:content_name)
          @content_type = args[:content_type] if args.key?(:content_type)
          @dlp_metrics_metadata = args[:dlp_metrics_metadata] if args.key?(:dlp_metrics_metadata)
          @latest_virus_scan_timestamp = args[:latest_virus_scan_timestamp] if args.key?(:latest_virus_scan_timestamp)
          @local_id = args[:local_id] if args.key?(:local_id)
          @original_dimension = args[:original_dimension] if args.key?(:original_dimension)
          @video_reference = args[:video_reference] if args.key?(:video_reference)
          @virus_scan_result = args[:virus_scan_result] if args.key?(:virus_scan_result)
        end
      end
      
      # Annotation metadata for a Weblink. In case of pasted link it can qualify to be
      # other types in addition to being a URL - like DRIVE_DOC/DRIVE_SHEET and so on.
      # The URL metadata will also be present and it's up to the client to decide
      # which metadata to render it with. These fields are filled in using page render
      # service.
      class UrlMetadata
        include Google::Apis::Core::Hashable
      
        # Domain for this url. If it's an IP address the address is returned.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `gwsUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :gws_url
      
        # The expiration timestamp for GWS URL, only set when gws_url is set.
        # Corresponds to the JSON property `gwsUrlExpirationTimestamp`
        # @return [Fixnum]
        attr_accessor :gws_url_expiration_timestamp
      
        # Dimensions of the image: height. This field is string to match with page
        # render service response. Deprecated. Use int_image_height instead.
        # Corresponds to the JSON property `imageHeight`
        # @return [String]
        attr_accessor :image_height
      
        # Representative image of the website.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Dimensions of the image: width. This field is string to match with page render
        # service response. Deprecated. Use int_image_height instead.
        # Corresponds to the JSON property `imageWidth`
        # @return [String]
        attr_accessor :image_width
      
        # Dimensions of the image: height.
        # Corresponds to the JSON property `intImageHeight`
        # @return [Fixnum]
        attr_accessor :int_image_height
      
        # Dimensions of the image: width.
        # Corresponds to the JSON property `intImageWidth`
        # @return [Fixnum]
        attr_accessor :int_image_width
      
        # Mime type of the content (Currently mapped from Page Render Service ItemType)
        # Note that this is not necessarily the mime type of the http resource. For
        # example a text/html from youtube or vimeo may actually be classified as a
        # video type. Then we shall mark it as video/* since we don't know exactly what
        # type of video it is.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `redirectUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :redirect_url
      
        # If the UrlMetadata is missing data for rendering a chip. Deprecated. Use
        # Annotation.ChipRenderType instead.
        # Corresponds to the JSON property `shouldNotRender`
        # @return [Boolean]
        attr_accessor :should_not_render
        alias_method :should_not_render?, :should_not_render
      
        # Snippet/small description of the weblink.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # Title of the Weblink.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `url`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :url
      
        # 
        # Corresponds to the JSON property `urlSource`
        # @return [String]
        attr_accessor :url_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @gws_url = args[:gws_url] if args.key?(:gws_url)
          @gws_url_expiration_timestamp = args[:gws_url_expiration_timestamp] if args.key?(:gws_url_expiration_timestamp)
          @image_height = args[:image_height] if args.key?(:image_height)
          @image_url = args[:image_url] if args.key?(:image_url)
          @image_width = args[:image_width] if args.key?(:image_width)
          @int_image_height = args[:int_image_height] if args.key?(:int_image_height)
          @int_image_width = args[:int_image_width] if args.key?(:int_image_width)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @redirect_url = args[:redirect_url] if args.key?(:redirect_url)
          @should_not_render = args[:should_not_render] if args.key?(:should_not_render)
          @snippet = args[:snippet] if args.key?(:snippet)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
          @url_source = args[:url_source] if args.key?(:url_source)
        end
      end
      
      # User profile information. This user is not necessarily member of a space.
      class User
        include Google::Apis::Core::Hashable
      
        # URL for the avatar picture of the User in dynamite
        # Corresponds to the JSON property `avatarUrl`
        # @return [String]
        attr_accessor :avatar_url
      
        # User-block relationship
        # Corresponds to the JSON property `blockRelationship`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedUserBlockRelationship]
        attr_accessor :block_relationship
      
        # Bot-specific profile information.
        # Corresponds to the JSON property `botInfo`
        # @return [Google::Apis::CloudsearchV1::BotInfo]
        attr_accessor :bot_info
      
        # Deleted flag, if true, means User has been soft-deleted/purged Deprecated. Use
        # user_account_state field instead.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Email ID of the user
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # First or given name of the user
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # Gender of the user
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Primary key for User resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :id
      
        # Set to true if none of the depending services (Gaia, PeopleApi) returns any
        # info for this user.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # Last or family name of the user
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Non-unique, user-defined display name of the User
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains info about the entity that something is, or is owned by.
        # Corresponds to the JSON property `organizationInfo`
        # @return [Google::Apis::CloudsearchV1::AppsDynamiteSharedOrganizationInfo]
        attr_accessor :organization_info
      
        # Phone number(s) of the user
        # Corresponds to the JSON property `phoneNumber`
        # @return [Array<Google::Apis::CloudsearchV1::AppsDynamiteSharedPhoneNumber>]
        attr_accessor :phone_number
      
        # State of user's Gaia Account
        # Corresponds to the JSON property `userAccountState`
        # @return [String]
        attr_accessor :user_account_state
      
        # Visibility of user's Profile
        # Corresponds to the JSON property `userProfileVisibility`
        # @return [String]
        attr_accessor :user_profile_visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_url = args[:avatar_url] if args.key?(:avatar_url)
          @block_relationship = args[:block_relationship] if args.key?(:block_relationship)
          @bot_info = args[:bot_info] if args.key?(:bot_info)
          @deleted = args[:deleted] if args.key?(:deleted)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @gender = args[:gender] if args.key?(:gender)
          @id = args[:id] if args.key?(:id)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
          @last_name = args[:last_name] if args.key?(:last_name)
          @name = args[:name] if args.key?(:name)
          @organization_info = args[:organization_info] if args.key?(:organization_info)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @user_account_state = args[:user_account_state] if args.key?(:user_account_state)
          @user_profile_visibility = args[:user_profile_visibility] if args.key?(:user_profile_visibility)
        end
      end
      
      # Resource for displaying user info
      class UserDisplayInfo
        include Google::Apis::Core::Hashable
      
        # The avatar to show for this user
        # Corresponds to the JSON property `avatarUrl`
        # @return [String]
        attr_accessor :avatar_url
      
        # The name to show for this user
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_url = args[:avatar_url] if args.key?(:avatar_url)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Primary key for User resource.
      class UserId
        include Google::Apis::Core::Hashable
      
        # Optional. Opaque, server-assigned ID of the user profile associated with App/
        # user acting on behalf of the human user. This is currently only set when a 3P
        # application is acting on the user's behalf.
        # Corresponds to the JSON property `actingUserId`
        # @return [String]
        attr_accessor :acting_user_id
      
        # Opaque, server-assigned ID of the User.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifier of an App.
        # Corresponds to the JSON property `originAppId`
        # @return [Google::Apis::CloudsearchV1::AppId]
        attr_accessor :origin_app_id
      
        # Clients do not need to send UserType to Backend, but Backend will always send
        # this field to clients per the following rule: 1. For HUMAN Ids, the field is
        # empty but by default .getType() will return HUMAN. 2. For BOT Ids, the field
        # is ALWAYS set to BOT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acting_user_id = args[:acting_user_id] if args.key?(:acting_user_id)
          @id = args[:id] if args.key?(:id)
          @origin_app_id = args[:origin_app_id] if args.key?(:origin_app_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Contains info regarding the updater of an Activity Feed item. Next Id: 8
      class UserInfo
        include Google::Apis::Core::Hashable
      
        # Avatar url of the user who triggered the Drive Notification email. This field
        # will be populated if we can extract such information from the Drive
        # Notification email. This should only be used to fetch user avatars when
        # updater_to_show_email is not populated. This field is not set for non-Drive
        # Notification items.
        # Corresponds to the JSON property `driveNotificationAvatarUrl`
        # @return [String]
        attr_accessor :drive_notification_avatar_url
      
        # Describes how updater_count_to_show should be used.
        # Corresponds to the JSON property `updaterCountDisplayType`
        # @return [String]
        attr_accessor :updater_count_display_type
      
        # The number of updaters for clients to show depending on
        # UpdaterCountDisplayType.
        # Corresponds to the JSON property `updaterCountToShow`
        # @return [Fixnum]
        attr_accessor :updater_count_to_show
      
        # The email of the updater for clients to show used for Gmail items. For Drive
        # Notifications, this is the email of the user who triggered the Drive
        # Notification email. This field will be populated if we can extract such
        # information from the Drive Notification email. This is not the actual sender
        # of the email, as the sender is always comments-noreply@docs.google.com.
        # Corresponds to the JSON property `updaterToShowEmail`
        # @return [String]
        attr_accessor :updater_to_show_email
      
        # The gaia id of the updater for clients to show used for Gmail items. If the
        # updater is an external user, the email field below should be populated.
        # Corresponds to the JSON property `updaterToShowGaiaId`
        # @return [Fixnum]
        attr_accessor :updater_to_show_gaia_id
      
        # The display name of the updater for clients to show used for Gmail items. For
        # non-Drive Notification items, this field will always be populated. If the
        # display name cannot be found for the user, the fallback string will be the
        # email address. For Drive Notification items, this is the name of the user who
        # triggered the Drive notification email. This field will be populated if we can
        # extract such information from the Drive Notification email. If the name cannot
        # be extracted, then the email will be the fallback string, which is used as the
        # display name text in the UI when needed. This is not the actual sender of the
        # email, as the sender is always comments-noreply@docs.google.com.
        # Corresponds to the JSON property `updaterToShowName`
        # @return [String]
        attr_accessor :updater_to_show_name
      
        # Primary key for User resource.
        # Corresponds to the JSON property `updaterToShowUserId`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :updater_to_show_user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_notification_avatar_url = args[:drive_notification_avatar_url] if args.key?(:drive_notification_avatar_url)
          @updater_count_display_type = args[:updater_count_display_type] if args.key?(:updater_count_display_type)
          @updater_count_to_show = args[:updater_count_to_show] if args.key?(:updater_count_to_show)
          @updater_to_show_email = args[:updater_to_show_email] if args.key?(:updater_to_show_email)
          @updater_to_show_gaia_id = args[:updater_to_show_gaia_id] if args.key?(:updater_to_show_gaia_id)
          @updater_to_show_name = args[:updater_to_show_name] if args.key?(:updater_to_show_name)
          @updater_to_show_user_id = args[:updater_to_show_user_id] if args.key?(:updater_to_show_user_id)
        end
      end
      
      # Person metadata, for USER_MENTION segments. Should always contain at least one
      # of user_gaia_id, user_id, email or user. The exact set of populated fields may
      # differ depending on the context and the level in the serving stack; for
      # example, emails will be elided on the viewing path. But as a general rule, a
      # proto having any one of the four is valid, subject to the standard constraints
      # of the applied annotations -- that is, communication between servers and
      # clients will ignore jspb.ignore fields, and communication between servers and
      # other servers (or between servers and storage) will ignore client_only fields.
      # For more on the annotations, see the comments in social/common/
      # segment_annotations.proto
      class UserMentionData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A Principal represents something to which permissions are assigned, often but
        # not always a user or group of some kind. It is most appropriate for use in
        # ACLs and authorization checks. Callers should prefer to use the wrapper
        # classes in google3/security/credentials/public/principal.h google3/java/com/
        # google/security/credentials/Principal.java google3/security/credentials/go/
        # principal.go unless direct proto access is essential. If you update this
        # protocol buffer, please update the wrapper classes as well. LINT.IfChange
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::CloudsearchV1::PrincipalProto]
        attr_accessor :user
      
        # An unobfuscated gaia ID:
        # Corresponds to the JSON property `userGaiaId`
        # @return [Fixnum]
        attr_accessor :user_gaia_id
      
        # An obfuscated gaia ID:
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @user = args[:user] if args.key?(:user)
          @user_gaia_id = args[:user_gaia_id] if args.key?(:user_gaia_id)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Annotation metadata for user mentions (+/@/-).
      class UserMentionMetadata
        include Google::Apis::Core::Hashable
      
        # Display name of the mentioned user. This field should remain empty when
        # clients resolve a UserMention annotation. It will be filled in when a
        # UserMention is generated by the Integration Server.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Gender of the mentioned user. One of "female", "male" or "other". Used for
        # choosing accurate translations for strings that contain the UserMention, when
        # these need to be constructed (e.g. task assignment update message). This field
        # should remain empty when clients resolve a UserMention. It will be filled in
        # when a UserMention is generated by the Integration Server.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Primary key for User resource.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::CloudsearchV1::UserId]
        attr_accessor :id
      
        # Invitee information from a Dynamite invitation. See go/dynamite-invitee-mgmt.
        # Corresponds to the JSON property `inviteeInfo`
        # @return [Google::Apis::CloudsearchV1::InviteeInfo]
        attr_accessor :invitee_info
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Specific reason for the user mention failing, for fine-grained processing by
        # clients (i.e. specific error message for space limit exceeded case) IMPORTANT:
        # Set this only for FAILED_TO_ADD case.
        # Corresponds to the JSON property `userMentionError`
        # @return [String]
        attr_accessor :user_mention_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gender = args[:gender] if args.key?(:gender)
          @id = args[:id] if args.key?(:id)
          @invitee_info = args[:invitee_info] if args.key?(:invitee_info)
          @type = args[:type] if args.key?(:type)
          @user_mention_error = args[:user_mention_error] if args.key?(:user_mention_error)
        end
      end
      
      # 
      class VpcSettings
        include Google::Apis::Core::Hashable
      
        # The resource name of the GCP Project to be used for VPC SC policy check. VPC
        # security settings on this project will be honored for Cloud Search APIs after
        # project_name has been updated through CustomerService. Format: projects/`
        # project_id`
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Definition of a single value with generic type.
      class Value
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date_value
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # 
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # 
      class ValueFilter
        include Google::Apis::Core::Hashable
      
        # The `operator_name` applied to the query, such as *price_greater_than*. The
        # filter can work against both types of filters defined in the schema for your
        # data source: 1. `operator_name`, where the query filters results by the
        # property that matches the value. 2. `greater_than_operator_name` or `
        # less_than_operator_name` in your schema. The query filters the results for the
        # property values that are greater than or less than the supplied value in the
        # query.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Definition of a single value with generic type.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudsearchV1::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class VideoCallMetadata
        include Google::Apis::Core::Hashable
      
        # A meeting space is a persistent object that is the context for one or more
        # calls. The meeting space is what makes users find each other when they want to
        # meet and to find shared resources. With two exceptions, all the fields in the
        # meeting space resource are visible publicly to any client, even anonymous
        # users. The exceptions are that * The call_info field is only visible to
        # clients that have a device (as indicated by the meeting token) in the JOINED
        # or HIDDEN state. * The meeting_alias field will only be set for users who are
        # in the same domain as the meeting space. The meeting space resource (outside
        # call_info) should only contain information necessary to join a call in the
        # meeting space, and not any other metadata about the meeting space, such as
        # what organization it belongs to or things related to ongoing calls.
        # Corresponds to the JSON property `meetingSpace`
        # @return [Google::Apis::CloudsearchV1::MeetingSpace]
        attr_accessor :meeting_space
      
        # If this field is set to true, server should still contact external backends to
        # get metadata for search but clients should not render this chip.
        # Corresponds to the JSON property `shouldNotRender`
        # @return [Boolean]
        attr_accessor :should_not_render
        alias_method :should_not_render?, :should_not_render
      
        # Whether this meeting space was created via Dynamite in this Dynamite group.
        # Corresponds to the JSON property `wasCreatedInCurrentGroup`
        # @return [Boolean]
        attr_accessor :was_created_in_current_group
        alias_method :was_created_in_current_group?, :was_created_in_current_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meeting_space = args[:meeting_space] if args.key?(:meeting_space)
          @should_not_render = args[:should_not_render] if args.key?(:should_not_render)
          @was_created_in_current_group = args[:was_created_in_current_group] if args.key?(:was_created_in_current_group)
        end
      end
      
      # Next tag: 2
      class VideoInfo
        include Google::Apis::Core::Hashable
      
        # Duration of the video in milliseconds. This field can be absent for recently
        # uploaded video or inaccurate sometimes.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # Represents both long and short phone number that can be called or texted.
      # Short telephone numbers are used to reach local services. Short numbers and
      # their purpose differ from country to country. These numbers in US are in the
      # form of N11 which is a three-digit abbreviated dialing telephone number.
      class VoicePhoneNumber
        include Google::Apis::Core::Hashable
      
        # E.164 formatted full phone number with leading +. This field also represents
        # encoded form of short telephone numbers in E.164 format. e.g. "911" is encoded
        # as "+1911".
        # Corresponds to the JSON property `e164`
        # @return [String]
        attr_accessor :e164
      
        # Additional data that could be added using the libphonenumber API.
        # Corresponds to the JSON property `i18nData`
        # @return [Google::Apis::CloudsearchV1::VoicePhoneNumberI18nData]
        attr_accessor :i18n_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @e164 = args[:e164] if args.key?(:e164)
          @i18n_data = args[:i18n_data] if args.key?(:i18n_data)
        end
      end
      
      # 
      class VoicePhoneNumberI18nData
        include Google::Apis::Core::Hashable
      
        # The country calling code for this number, as defined by the ITU. For example,
        # this would be 1 for NANPA countries, and 33 for France (for more info see i18n.
        # phonenumbers.PhoneNumber.country_code).
        # Corresponds to the JSON property `countryCode`
        # @return [Fixnum]
        attr_accessor :country_code
      
        # Display number formatted using the INTERNATIONAL format.
        # Corresponds to the JSON property `internationalNumber`
        # @return [String]
        attr_accessor :international_number
      
        # When present, indicates the number is valid according to the libphonenumber's
        # isValidNumber API (see https://code.google.com/p/libphonenumber/).
        # Corresponds to the JSON property `isValid`
        # @return [Boolean]
        attr_accessor :is_valid
        alias_method :is_valid?, :is_valid
      
        # Display number formatted using the NATIONAL format.
        # Corresponds to the JSON property `nationalNumber`
        # @return [String]
        attr_accessor :national_number
      
        # A region (country, territory, continent, etc), as defined by Unicode's "CLDR",
        # itself based on ISO 3166 (UN country codes). For details, see https://www.corp.
        # google.com/~engdocs/java/com/google/i18n/identifiers/RegionCode.html
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # When set to a non-default value, indicates the validation reason that is set
        # when phone number is invalid (is_valid is false).
        # Corresponds to the JSON property `validationResult`
        # @return [String]
        attr_accessor :validation_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @international_number = args[:international_number] if args.key?(:international_number)
          @is_valid = args[:is_valid] if args.key?(:is_valid)
          @national_number = args[:national_number] if args.key?(:national_number)
          @region_code = args[:region_code] if args.key?(:region_code)
          @validation_result = args[:validation_result] if args.key?(:validation_result)
        end
      end
      
      # Information on a whiteboard attached to an active conference. A whiteboard is
      # a Jam document.
      class WhiteboardInfo
        include Google::Apis::Core::Hashable
      
        # The Cosmo Id of the whiteboard document (Jam).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the whiteboard document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The uri for whiteboard document.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # 
      class WidgetMarkup
        include Google::Apis::Core::Hashable
      
        # buttons is also oneof data and only one of these fields should be set.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::CloudsearchV1::Button>]
        attr_accessor :buttons
      
        # 
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::CloudsearchV1::DateTimePicker]
        attr_accessor :date_time_picker
      
        # 
        # Corresponds to the JSON property `divider`
        # @return [Google::Apis::CloudsearchV1::Divider]
        attr_accessor :divider
      
        # 
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::CloudsearchV1::Grid]
        attr_accessor :grid
      
        # The horizontal alignment of this widget.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::CloudsearchV1::Image]
        attr_accessor :image
      
        # This is deprecated and please use KeyValue.
        # Corresponds to the JSON property `imageKeyValue`
        # @return [Google::Apis::CloudsearchV1::ImageKeyValue]
        attr_accessor :image_key_value
      
        # 
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::CloudsearchV1::KeyValue]
        attr_accessor :key_value
      
        # This is deprecated and please use SelectionControl by setting type to DROPDOWN.
        # Corresponds to the JSON property `menu`
        # @return [Google::Apis::CloudsearchV1::Menu]
        attr_accessor :menu
      
        # 
        # Corresponds to the JSON property `selectionControl`
        # @return [Google::Apis::CloudsearchV1::SelectionControl]
        attr_accessor :selection_control
      
        # 
        # Corresponds to the JSON property `textField`
        # @return [Google::Apis::CloudsearchV1::TextField]
        attr_accessor :text_field
      
        # This is deprecated and please use KeyValue.
        # Corresponds to the JSON property `textKeyValue`
        # @return [Google::Apis::CloudsearchV1::TextKeyValue]
        attr_accessor :text_key_value
      
        # Read-only Widgets
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::CloudsearchV1::TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @date_time_picker = args[:date_time_picker] if args.key?(:date_time_picker)
          @divider = args[:divider] if args.key?(:divider)
          @grid = args[:grid] if args.key?(:grid)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @image = args[:image] if args.key?(:image)
          @image_key_value = args[:image_key_value] if args.key?(:image_key_value)
          @key_value = args[:key_value] if args.key?(:key_value)
          @menu = args[:menu] if args.key?(:menu)
          @selection_control = args[:selection_control] if args.key?(:selection_control)
          @text_field = args[:text_field] if args.key?(:text_field)
          @text_key_value = args[:text_key_value] if args.key?(:text_key_value)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # Message delete history record extension that exports /wonder/message_mapping/`
      # vertical` attribute of deleted messages which have any smartmail label (eg. ^
      # cob_sm_invoice). go/how-dd-card-deletion
      class WonderCardDelete
        include Google::Apis::Core::Hashable
      
        # Contains <`@code WonderCardType` enum value, value of /wonder/message_mapping/`
        # vertical` attribute of deleted message> pairs.
        # Corresponds to the JSON property `messageMappings`
        # @return [Hash<String,Google::Apis::CloudsearchV1::WonderMessageMapping>]
        attr_accessor :message_mappings
      
        # Message ID of the original deleted message
        # Corresponds to the JSON property `msgId`
        # @return [Fixnum]
        attr_accessor :msg_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_mappings = args[:message_mappings] if args.key?(:message_mappings)
          @msg_id = args[:msg_id] if args.key?(:msg_id)
        end
      end
      
      # Card mapping attached to original message as an attribute stored at /wonder/
      # message_mapping/`vertical` Next ID: 2
      class WonderMessageMapping
        include Google::Apis::Core::Hashable
      
        # List of wonder card (client-generated) message IDs generated based on the
        # original message.
        # Corresponds to the JSON property `wonderCardMessageId`
        # @return [Array<String>]
        attr_accessor :wonder_card_message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wonder_card_message_id = args[:wonder_card_message_id] if args.key?(:wonder_card_message_id)
        end
      end
      
      # A wrapper around a raw resource key. The secret should never be logged, and
      # this proto annotates those secret fields to ensure that they are not. Clients
      # are encouraged to use this proto rather than defining their own, to ensure
      # that secrets are correctly annotated.
      class WrappedResourceKey
        include Google::Apis::Core::Hashable
      
        # Resource key of the Drive item. This field should be unset if, depending on
        # the context, the item does not have a resource key, or if none was specified.
        # This must never be logged.
        # Corresponds to the JSON property `resourceKey`
        # @return [String]
        attr_accessor :resource_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_key = args[:resource_key] if args.key?(:resource_key)
        end
      end
      
      # Information about a YouTube broadcast session.
      class YouTubeBroadcastSessionInfo
        include Google::Apis::Core::Hashable
      
        # Statistics of the YouTube broadcast session.
        # Corresponds to the JSON property `broadcastStats`
        # @return [Google::Apis::CloudsearchV1::YouTubeBroadcastStats]
        attr_accessor :broadcast_stats
      
        # Information about the state of a (recording, broadcast, transcription...)
        # session in a conference.
        # Corresponds to the JSON property `sessionStateInfo`
        # @return [Google::Apis::CloudsearchV1::SessionStateInfo]
        attr_accessor :session_state_info
      
        # A unique server-generated ID for the broadcast session.
        # Corresponds to the JSON property `youTubeBroadcastSessionId`
        # @return [String]
        attr_accessor :you_tube_broadcast_session_id
      
        # Information about the broadcast to YouTube.
        # Corresponds to the JSON property `youTubeLiveBroadcastEvent`
        # @return [Google::Apis::CloudsearchV1::YouTubeLiveBroadcastEvent]
        attr_accessor :you_tube_live_broadcast_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @broadcast_stats = args[:broadcast_stats] if args.key?(:broadcast_stats)
          @session_state_info = args[:session_state_info] if args.key?(:session_state_info)
          @you_tube_broadcast_session_id = args[:you_tube_broadcast_session_id] if args.key?(:you_tube_broadcast_session_id)
          @you_tube_live_broadcast_event = args[:you_tube_live_broadcast_event] if args.key?(:you_tube_live_broadcast_event)
        end
      end
      
      # Statistics of the YouTube broadcast session.
      class YouTubeBroadcastStats
        include Google::Apis::Core::Hashable
      
        # Estimated concurrent viewer count.
        # Corresponds to the JSON property `estimatedViewerCount`
        # @return [Fixnum]
        attr_accessor :estimated_viewer_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_viewer_count = args[:estimated_viewer_count] if args.key?(:estimated_viewer_count)
        end
      end
      
      # Information about the broadcast to YouTube.
      class YouTubeLiveBroadcastEvent
        include Google::Apis::Core::Hashable
      
        # Input only. If the channel_id is for a YouTube Channel owned by a Brand
        # Account, client is required to populate this field with the obfuscated gaia id
        # of the Brand account when starting the broadcast.
        # Corresponds to the JSON property `brandAccountGaiaId`
        # @return [String]
        attr_accessor :brand_account_gaia_id
      
        # Input only. The broadcast id, used to control the lifecycle of the event on
        # YouTube
        # Corresponds to the JSON property `broadcastId`
        # @return [String]
        attr_accessor :broadcast_id
      
        # YouTube Channel associated with the broadcast.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # Output only. A URL that can be used to watch the meeting broadcast. Will be
        # populated by the backend.
        # Corresponds to the JSON property `viewUrl`
        # @return [String]
        attr_accessor :view_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand_account_gaia_id = args[:brand_account_gaia_id] if args.key?(:brand_account_gaia_id)
          @broadcast_id = args[:broadcast_id] if args.key?(:broadcast_id)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @view_url = args[:view_url] if args.key?(:view_url)
        end
      end
      
      # Annotation metadata for YouTube artifact.
      class YoutubeMetadata
        include Google::Apis::Core::Hashable
      
        # YouTube resource ID of the artifact.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # If this field is set to true, server should still contact external backends to
        # get metadata for search but clients should not render this chip.
        # Corresponds to the JSON property `shouldNotRender`
        # @return [Boolean]
        attr_accessor :should_not_render
        alias_method :should_not_render?, :should_not_render
      
        # YouTube query parameter for timestamp. YouTube specific flag that allows users
        # to embed time token when sharing a link. This property contains parsed time
        # token in seconds.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @should_not_render = args[:should_not_render] if args.key?(:should_not_render)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # 
      class YoutubeUserProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `youtubeUserId`
        # @return [Fixnum]
        attr_accessor :youtube_user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @youtube_user_id = args[:youtube_user_id] if args.key?(:youtube_user_id)
        end
      end
      
      # See go/zwieback. New uses of Zwieback sessions must be approved via go/
      # zwieback-request.
      class ZwiebackSessionProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `zwiebackSessionId`
        # @return [Fixnum]
        attr_accessor :zwieback_session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @zwieback_session_id = args[:zwieback_session_id] if args.key?(:zwieback_session_id)
        end
      end
    end
  end
end
