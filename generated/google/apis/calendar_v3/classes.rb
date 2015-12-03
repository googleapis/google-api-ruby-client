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
    module CalendarV3
      
      # 
      class Acl
        include Google::Apis::Core::Hashable
      
        # ETag of the collection.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of rules on the access control list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CalendarV3::AclRule>]
        attr_accessor :items
      
        # Type of the collection ("calendar#acl").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access the next page of this result. Omitted if no further
        # results are available, in which case nextSyncToken is provided.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Token used at a later point in time to retrieve only the entries that have
        # changed since this result was returned. Omitted if further results are
        # available, in which case nextPageToken is provided.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @next_sync_token = args[:next_sync_token] unless args[:next_sync_token].nil?
        end
      end
      
      # 
      class AclRule
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier of the ACL rule.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource ("calendar#aclRule").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The role assigned to the scope. Possible values are:
        # - "none" - Provides no access.
        # - "freeBusyReader" - Provides read access to free/busy information.
        # - "reader" - Provides read access to the calendar. Private events will appear
        # to users with reader access, but event details will be hidden.
        # - "writer" - Provides read and write access to the calendar. Private events
        # will appear to users with writer access, and event details will be visible.
        # - "owner" - Provides ownership of the calendar. This role has all of the
        # permissions of the writer role with the additional ability to see and
        # manipulate ACLs.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The scope of the rule.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::CalendarV3::AclRule::Scope]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @role = args[:role] unless args[:role].nil?
          @scope = args[:scope] unless args[:scope].nil?
        end
        
        # The scope of the rule.
        class Scope
          include Google::Apis::Core::Hashable
        
          # The type of the scope. Possible values are:
          # - "default" - The public scope. This is the default value.
          # - "user" - Limits the scope to a single user.
          # - "group" - Limits the scope to a group.
          # - "domain" - Limits the scope to a domain.  Note: The permissions granted to
          # the "default", or public, scope apply to any user, authenticated or not.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # The email address of a user or group, or the name of a domain, depending on
          # the scope type. Omitted for type "default".
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @type = args[:type] unless args[:type].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
      end
      
      # 
      class Calendar
        include Google::Apis::Core::Hashable
      
        # Description of the calendar. Optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier of the calendar. To retrieve IDs call the calendarList.list()
        # method.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource ("calendar#calendar").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Geographic location of the calendar as free-form text. Optional.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Title of the calendar.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # The time zone of the calendar. (Formatted as an IANA Time Zone Database name,
        # e.g. "Europe/Zurich".) Optional.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location = args[:location] unless args[:location].nil?
          @summary = args[:summary] unless args[:summary].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
        end
      end
      
      # 
      class CalendarList
        include Google::Apis::Core::Hashable
      
        # ETag of the collection.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Calendars that are present on the user's calendar list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CalendarV3::CalendarListEntry>]
        attr_accessor :items
      
        # Type of the collection ("calendar#calendarList").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access the next page of this result. Omitted if no further
        # results are available, in which case nextSyncToken is provided.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Token used at a later point in time to retrieve only the entries that have
        # changed since this result was returned. Omitted if further results are
        # available, in which case nextPageToken is provided.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @next_sync_token = args[:next_sync_token] unless args[:next_sync_token].nil?
        end
      end
      
      # 
      class CalendarListEntry
        include Google::Apis::Core::Hashable
      
        # The effective access role that the authenticated user has on the calendar.
        # Read-only. Possible values are:
        # - "freeBusyReader" - Provides read access to free/busy information.
        # - "reader" - Provides read access to the calendar. Private events will appear
        # to users with reader access, but event details will be hidden.
        # - "writer" - Provides read and write access to the calendar. Private events
        # will appear to users with writer access, and event details will be visible.
        # - "owner" - Provides ownership of the calendar. This role has all of the
        # permissions of the writer role with the additional ability to see and
        # manipulate ACLs.
        # Corresponds to the JSON property `accessRole`
        # @return [String]
        attr_accessor :access_role
      
        # The main color of the calendar in the hexadecimal format "#0088aa". This
        # property supersedes the index-based colorId property. To set or change this
        # property, you need to specify colorRgbFormat=true in the parameters of the
        # insert, update and patch methods. Optional.
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # The color of the calendar. This is an ID referring to an entry in the calendar
        # section of the colors definition (see the colors endpoint). This property is
        # superseded by the backgroundColor and foregroundColor properties and can be
        # ignored when using these properties. Optional.
        # Corresponds to the JSON property `colorId`
        # @return [String]
        attr_accessor :color_id
      
        # The default reminders that the authenticated user has for this calendar.
        # Corresponds to the JSON property `defaultReminders`
        # @return [Array<Google::Apis::CalendarV3::EventReminder>]
        attr_accessor :default_reminders
      
        # Whether this calendar list entry has been deleted from the calendar list. Read-
        # only. Optional. The default is False.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Description of the calendar. Optional. Read-only.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The foreground color of the calendar in the hexadecimal format "#ffffff". This
        # property supersedes the index-based colorId property. To set or change this
        # property, you need to specify colorRgbFormat=true in the parameters of the
        # insert, update and patch methods. Optional.
        # Corresponds to the JSON property `foregroundColor`
        # @return [String]
        attr_accessor :foreground_color
      
        # Whether the calendar has been hidden from the list. Optional. The default is
        # False.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Identifier of the calendar.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource ("calendar#calendarListEntry").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Geographic location of the calendar as free-form text. Optional. Read-only.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The notifications that the authenticated user is receiving for this calendar.
        # Corresponds to the JSON property `notificationSettings`
        # @return [Google::Apis::CalendarV3::CalendarListEntry::NotificationSettings]
        attr_accessor :notification_settings
      
        # Whether the calendar is the primary calendar of the authenticated user. Read-
        # only. Optional. The default is False.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # Whether the calendar content shows up in the calendar UI. Optional. The
        # default is False.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # Title of the calendar. Read-only.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # The summary that the authenticated user has set for this calendar. Optional.
        # Corresponds to the JSON property `summaryOverride`
        # @return [String]
        attr_accessor :summary_override
      
        # The time zone of the calendar. Optional. Read-only.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_role = args[:access_role] unless args[:access_role].nil?
          @background_color = args[:background_color] unless args[:background_color].nil?
          @color_id = args[:color_id] unless args[:color_id].nil?
          @default_reminders = args[:default_reminders] unless args[:default_reminders].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @foreground_color = args[:foreground_color] unless args[:foreground_color].nil?
          @hidden = args[:hidden] unless args[:hidden].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location = args[:location] unless args[:location].nil?
          @notification_settings = args[:notification_settings] unless args[:notification_settings].nil?
          @primary = args[:primary] unless args[:primary].nil?
          @selected = args[:selected] unless args[:selected].nil?
          @summary = args[:summary] unless args[:summary].nil?
          @summary_override = args[:summary_override] unless args[:summary_override].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
        end
        
        # The notifications that the authenticated user is receiving for this calendar.
        class NotificationSettings
          include Google::Apis::Core::Hashable
        
          # The list of notifications set for this calendar.
          # Corresponds to the JSON property `notifications`
          # @return [Array<Google::Apis::CalendarV3::CalendarNotification>]
          attr_accessor :notifications
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @notifications = args[:notifications] unless args[:notifications].nil?
          end
        end
      end
      
      # 
      class CalendarNotification
        include Google::Apis::Core::Hashable
      
        # The method used to deliver the notification. Possible values are:
        # - "email" - Reminders are sent via email.
        # - "sms" - Reminders are sent via SMS. This value is read-only and is ignored
        # on inserts and updates. SMS reminders are only available for Google Apps for
        # Work, Education, and Government customers.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :delivery_method
      
        # The type of notification. Possible values are:
        # - "eventCreation" - Notification sent when a new event is put on the calendar.
        # - "eventChange" - Notification sent when an event is changed.
        # - "eventCancellation" - Notification sent when an event is cancelled.
        # - "eventResponse" - Notification sent when an event is changed.
        # - "agenda" - An agenda with the events of the day (sent out in the morning).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_method = args[:delivery_method] unless args[:delivery_method].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource. Value: the fixed string "api#channel".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @expiration = args[:expiration] unless args[:expiration].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @params = args[:params] unless args[:params].nil?
          @payload = args[:payload] unless args[:payload].nil?
          @resource_id = args[:resource_id] unless args[:resource_id].nil?
          @resource_uri = args[:resource_uri] unless args[:resource_uri].nil?
          @token = args[:token] unless args[:token].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class ColorDefinition
        include Google::Apis::Core::Hashable
      
        # The background color associated with this color definition.
        # Corresponds to the JSON property `background`
        # @return [String]
        attr_accessor :background
      
        # The foreground color that can be used to write on top of a background with '
        # background' color.
        # Corresponds to the JSON property `foreground`
        # @return [String]
        attr_accessor :foreground
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background = args[:background] unless args[:background].nil?
          @foreground = args[:foreground] unless args[:foreground].nil?
        end
      end
      
      # 
      class Colors
        include Google::Apis::Core::Hashable
      
        # A global palette of calendar colors, mapping from the color ID to its
        # definition. A calendarListEntry resource refers to one of these color IDs in
        # its color field. Read-only.
        # Corresponds to the JSON property `calendar`
        # @return [Hash<String,Google::Apis::CalendarV3::ColorDefinition>]
        attr_accessor :calendar
      
        # A global palette of event colors, mapping from the color ID to its definition.
        # An event resource may refer to one of these color IDs in its color field. Read-
        # only.
        # Corresponds to the JSON property `event`
        # @return [Hash<String,Google::Apis::CalendarV3::ColorDefinition>]
        attr_accessor :event
      
        # Type of the resource ("calendar#colors").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Last modification time of the color palette (as a RFC3339 timestamp). Read-
        # only.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar = args[:calendar] unless args[:calendar].nil?
          @event = args[:event] unless args[:event].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
      end
      
      # 
      class Error
        include Google::Apis::Core::Hashable
      
        # Domain, or broad category, of the error.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Specific reason for the error. Some of the possible values are:
        # - "groupTooBig" - The group of users requested is too large for a single query.
        # 
        # - "tooManyCalendarsRequested" - The number of calendars requested is too large
        # for a single query.
        # - "notFound" - The requested resource was not found.
        # - "internalError" - The API service has encountered an internal error.
        # Additional error types may be added in the future, so clients should
        # gracefully handle additional error statuses not included in this list.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] unless args[:domain].nil?
          @reason = args[:reason] unless args[:reason].nil?
        end
      end
      
      # 
      class Event
        include Google::Apis::Core::Hashable
      
        # Whether anyone can invite themselves to the event (currently works for Google+
        # events only). Optional. The default is False.
        # Corresponds to the JSON property `anyoneCanAddSelf`
        # @return [Boolean]
        attr_accessor :anyone_can_add_self
        alias_method :anyone_can_add_self?, :anyone_can_add_self
      
        # File attachments for the event. Currently only Google Drive attachments are
        # supported.
        # In order to modify attachments the supportsAttachments request parameter
        # should be set to true.
        # There can be at most 25 attachments per event,
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::CalendarV3::EventAttachment>]
        attr_accessor :attachments
      
        # The attendees of the event. See the Events with attendees guide for more
        # information on scheduling events with other calendar users.
        # Corresponds to the JSON property `attendees`
        # @return [Array<Google::Apis::CalendarV3::EventAttendee>]
        attr_accessor :attendees
      
        # Whether attendees may have been omitted from the event's representation. When
        # retrieving an event, this may be due to a restriction specified by the
        # maxAttendee query parameter. When updating an event, this can be used to only
        # update the participant's response. Optional. The default is False.
        # Corresponds to the JSON property `attendeesOmitted`
        # @return [Boolean]
        attr_accessor :attendees_omitted
        alias_method :attendees_omitted?, :attendees_omitted
      
        # The color of the event. This is an ID referring to an entry in the event
        # section of the colors definition (see the  colors endpoint). Optional.
        # Corresponds to the JSON property `colorId`
        # @return [String]
        attr_accessor :color_id
      
        # Creation time of the event (as a RFC3339 timestamp). Read-only.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # The creator of the event. Read-only.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::CalendarV3::Event::Creator]
        attr_accessor :creator
      
        # Description of the event. Optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The (exclusive) end time of the event. For a recurring event, this is the end
        # time of the first instance.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::CalendarV3::EventDateTime]
        attr_accessor :end
      
        # Whether the end time is actually unspecified. An end time is still provided
        # for compatibility reasons, even if this attribute is set to True. The default
        # is False.
        # Corresponds to the JSON property `endTimeUnspecified`
        # @return [Boolean]
        attr_accessor :end_time_unspecified
        alias_method :end_time_unspecified?, :end_time_unspecified
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Extended properties of the event.
        # Corresponds to the JSON property `extendedProperties`
        # @return [Google::Apis::CalendarV3::Event::ExtendedProperties]
        attr_accessor :extended_properties
      
        # A gadget that extends this event.
        # Corresponds to the JSON property `gadget`
        # @return [Google::Apis::CalendarV3::Event::Gadget]
        attr_accessor :gadget
      
        # Whether attendees other than the organizer can invite others to the event.
        # Optional. The default is True.
        # Corresponds to the JSON property `guestsCanInviteOthers`
        # @return [Boolean]
        attr_accessor :guests_can_invite_others
        alias_method :guests_can_invite_others?, :guests_can_invite_others
      
        # Whether attendees other than the organizer can modify the event. Optional. The
        # default is False.
        # Corresponds to the JSON property `guestsCanModify`
        # @return [Boolean]
        attr_accessor :guests_can_modify
        alias_method :guests_can_modify?, :guests_can_modify
      
        # Whether attendees other than the organizer can see who the event's attendees
        # are. Optional. The default is True.
        # Corresponds to the JSON property `guestsCanSeeOtherGuests`
        # @return [Boolean]
        attr_accessor :guests_can_see_other_guests
        alias_method :guests_can_see_other_guests?, :guests_can_see_other_guests
      
        # An absolute link to the Google+ hangout associated with this event. Read-only.
        # Corresponds to the JSON property `hangoutLink`
        # @return [String]
        attr_accessor :hangout_link
      
        # An absolute link to this event in the Google Calendar Web UI. Read-only.
        # Corresponds to the JSON property `htmlLink`
        # @return [String]
        attr_accessor :html_link
      
        # Event unique identifier as defined in RFC5545. It is used to uniquely identify
        # events accross calendaring systems and must be supplied when importing events
        # via the import method.
        # Note that the icalUID and the id are not identical and only one of them should
        # be supplied at event creation time. One difference in their semantics is that
        # in recurring events, all occurrences of one event have different ids while
        # they all share the same icalUIDs.
        # Corresponds to the JSON property `iCalUID`
        # @return [String]
        attr_accessor :i_cal_uid
      
        # Opaque identifier of the event. When creating new single or recurring events,
        # you can specify their IDs. Provided IDs must follow these rules:
        # - characters allowed in the ID are those used in base32hex encoding, i.e.
        # lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938
        # - the length of the ID must be between 5 and 1024 characters
        # - the ID must be unique per calendar  Due to the globally distributed nature
        # of the system, we cannot guarantee that ID collisions will be detected at
        # event creation time. To minimize the risk of collisions we recommend using an
        # established UUID algorithm such as one described in RFC4122.
        # If you do not specify an ID, it will be automatically generated by the server.
        # Note that the icalUID and the id are not identical and only one of them should
        # be supplied at event creation time. One difference in their semantics is that
        # in recurring events, all occurrences of one event have different ids while
        # they all share the same icalUIDs.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource ("calendar#event").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Geographic location of the event as free-form text. Optional.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Whether this is a locked event copy where no changes can be made to the main
        # event fields "summary", "description", "location", "start", "end" or "
        # recurrence". The default is False. Read-Only.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # The organizer of the event. If the organizer is also an attendee, this is
        # indicated with a separate entry in attendees with the organizer field set to
        # True. To change the organizer, use the move operation. Read-only, except when
        # importing an event.
        # Corresponds to the JSON property `organizer`
        # @return [Google::Apis::CalendarV3::Event::Organizer]
        attr_accessor :organizer
      
        # For an instance of a recurring event, this is the time at which this event
        # would start according to the recurrence data in the recurring event identified
        # by recurringEventId. Immutable.
        # Corresponds to the JSON property `originalStartTime`
        # @return [Google::Apis::CalendarV3::EventDateTime]
        attr_accessor :original_start_time
      
        # Whether this is a private event copy where changes are not shared with other
        # copies on other calendars. Optional. Immutable. The default is False.
        # Corresponds to the JSON property `privateCopy`
        # @return [Boolean]
        attr_accessor :private_copy
        alias_method :private_copy?, :private_copy
      
        # List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as
        # specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in
        # this field; event start and end times are specified in the start and end
        # fields. This field is omitted for single events or instances of recurring
        # events.
        # Corresponds to the JSON property `recurrence`
        # @return [Array<String>]
        attr_accessor :recurrence
      
        # For an instance of a recurring event, this is the id of the recurring event to
        # which this instance belongs. Immutable.
        # Corresponds to the JSON property `recurringEventId`
        # @return [String]
        attr_accessor :recurring_event_id
      
        # Information about the event's reminders for the authenticated user.
        # Corresponds to the JSON property `reminders`
        # @return [Google::Apis::CalendarV3::Event::Reminders]
        attr_accessor :reminders
      
        # Sequence number as per iCalendar.
        # Corresponds to the JSON property `sequence`
        # @return [Fixnum]
        attr_accessor :sequence
      
        # Source from which the event was created. For example, a web page, an email
        # message or any document identifiable by an URL with HTTP or HTTPS scheme. Can
        # only be seen or modified by the creator of the event.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CalendarV3::Event::Source]
        attr_accessor :source
      
        # The (inclusive) start time of the event. For a recurring event, this is the
        # start time of the first instance.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::CalendarV3::EventDateTime]
        attr_accessor :start
      
        # Status of the event. Optional. Possible values are:
        # - "confirmed" - The event is confirmed. This is the default status.
        # - "tentative" - The event is tentatively confirmed.
        # - "cancelled" - The event is cancelled.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Title of the event.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # Whether the event blocks time on the calendar. Optional. Possible values are:
        # - "opaque" - The event blocks time on the calendar. This is the default value.
        # - "transparent" - The event does not block time on the calendar.
        # Corresponds to the JSON property `transparency`
        # @return [String]
        attr_accessor :transparency
      
        # Last modification time of the event (as a RFC3339 timestamp). Read-only.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Visibility of the event. Optional. Possible values are:
        # - "default" - Uses the default visibility for events on the calendar. This is
        # the default value.
        # - "public" - The event is public and event details are visible to all readers
        # of the calendar.
        # - "private" - The event is private and only event attendees may view event
        # details.
        # - "confidential" - The event is private. This value is provided for
        # compatibility reasons.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anyone_can_add_self = args[:anyone_can_add_self] unless args[:anyone_can_add_self].nil?
          @attachments = args[:attachments] unless args[:attachments].nil?
          @attendees = args[:attendees] unless args[:attendees].nil?
          @attendees_omitted = args[:attendees_omitted] unless args[:attendees_omitted].nil?
          @color_id = args[:color_id] unless args[:color_id].nil?
          @created = args[:created] unless args[:created].nil?
          @creator = args[:creator] unless args[:creator].nil?
          @description = args[:description] unless args[:description].nil?
          @end = args[:end] unless args[:end].nil?
          @end_time_unspecified = args[:end_time_unspecified] unless args[:end_time_unspecified].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @extended_properties = args[:extended_properties] unless args[:extended_properties].nil?
          @gadget = args[:gadget] unless args[:gadget].nil?
          @guests_can_invite_others = args[:guests_can_invite_others] unless args[:guests_can_invite_others].nil?
          @guests_can_modify = args[:guests_can_modify] unless args[:guests_can_modify].nil?
          @guests_can_see_other_guests = args[:guests_can_see_other_guests] unless args[:guests_can_see_other_guests].nil?
          @hangout_link = args[:hangout_link] unless args[:hangout_link].nil?
          @html_link = args[:html_link] unless args[:html_link].nil?
          @i_cal_uid = args[:i_cal_uid] unless args[:i_cal_uid].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location = args[:location] unless args[:location].nil?
          @locked = args[:locked] unless args[:locked].nil?
          @organizer = args[:organizer] unless args[:organizer].nil?
          @original_start_time = args[:original_start_time] unless args[:original_start_time].nil?
          @private_copy = args[:private_copy] unless args[:private_copy].nil?
          @recurrence = args[:recurrence] unless args[:recurrence].nil?
          @recurring_event_id = args[:recurring_event_id] unless args[:recurring_event_id].nil?
          @reminders = args[:reminders] unless args[:reminders].nil?
          @sequence = args[:sequence] unless args[:sequence].nil?
          @source = args[:source] unless args[:source].nil?
          @start = args[:start] unless args[:start].nil?
          @status = args[:status] unless args[:status].nil?
          @summary = args[:summary] unless args[:summary].nil?
          @transparency = args[:transparency] unless args[:transparency].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
        
        # The creator of the event. Read-only.
        class Creator
          include Google::Apis::Core::Hashable
        
          # The creator's name, if available.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The creator's email address, if available.
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # The creator's Profile ID, if available. It corresponds to theid field in the
          # People collection of the Google+ API
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # Whether the creator corresponds to the calendar on which this copy of the
          # event appears. Read-only. The default is False.
          # Corresponds to the JSON property `self`
          # @return [Boolean]
          attr_accessor :self
          alias_method :self?, :self
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @email = args[:email] unless args[:email].nil?
            @id = args[:id] unless args[:id].nil?
            @self = args[:self] unless args[:self].nil?
          end
        end
        
        # Extended properties of the event.
        class ExtendedProperties
          include Google::Apis::Core::Hashable
        
          # Properties that are private to the copy of the event that appears on this
          # calendar.
          # Corresponds to the JSON property `private`
          # @return [Hash<String,String>]
          attr_accessor :private
        
          # Properties that are shared between copies of the event on other attendees'
          # calendars.
          # Corresponds to the JSON property `shared`
          # @return [Hash<String,String>]
          attr_accessor :shared
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @private = args[:private] unless args[:private].nil?
            @shared = args[:shared] unless args[:shared].nil?
          end
        end
        
        # A gadget that extends this event.
        class Gadget
          include Google::Apis::Core::Hashable
        
          # The gadget's display mode. Optional. Possible values are:
          # - "icon" - The gadget displays next to the event's title in the calendar view.
          # - "chip" - The gadget displays when the event is clicked.
          # Corresponds to the JSON property `display`
          # @return [String]
          attr_accessor :display_mode
        
          # The gadget's height in pixels. The height must be an integer greater than 0.
          # Optional.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # The gadget's icon URL. The URL scheme must be HTTPS.
          # Corresponds to the JSON property `iconLink`
          # @return [String]
          attr_accessor :icon_link
        
          # The gadget's URL. The URL scheme must be HTTPS.
          # Corresponds to the JSON property `link`
          # @return [String]
          attr_accessor :link
        
          # Preferences.
          # Corresponds to the JSON property `preferences`
          # @return [Hash<String,String>]
          attr_accessor :preferences
        
          # The gadget's title.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The gadget's type.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # The gadget's width in pixels. The width must be an integer greater than 0.
          # Optional.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_mode = args[:display_mode] unless args[:display_mode].nil?
            @height = args[:height] unless args[:height].nil?
            @icon_link = args[:icon_link] unless args[:icon_link].nil?
            @link = args[:link] unless args[:link].nil?
            @preferences = args[:preferences] unless args[:preferences].nil?
            @title = args[:title] unless args[:title].nil?
            @type = args[:type] unless args[:type].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
        
        # The organizer of the event. If the organizer is also an attendee, this is
        # indicated with a separate entry in attendees with the organizer field set to
        # True. To change the organizer, use the move operation. Read-only, except when
        # importing an event.
        class Organizer
          include Google::Apis::Core::Hashable
        
          # The organizer's name, if available.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The organizer's email address, if available. It must be a valid email address
          # as per RFC5322.
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # The organizer's Profile ID, if available. It corresponds to theid field in the
          # People collection of the Google+ API
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # Whether the organizer corresponds to the calendar on which this copy of the
          # event appears. Read-only. The default is False.
          # Corresponds to the JSON property `self`
          # @return [Boolean]
          attr_accessor :self
          alias_method :self?, :self
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @email = args[:email] unless args[:email].nil?
            @id = args[:id] unless args[:id].nil?
            @self = args[:self] unless args[:self].nil?
          end
        end
        
        # Information about the event's reminders for the authenticated user.
        class Reminders
          include Google::Apis::Core::Hashable
        
          # If the event doesn't use the default reminders, this lists the reminders
          # specific to the event, or, if not set, indicates that no reminders are set for
          # this event. The maximum number of override reminders is 5.
          # Corresponds to the JSON property `overrides`
          # @return [Array<Google::Apis::CalendarV3::EventReminder>]
          attr_accessor :overrides
        
          # Whether the default reminders of the calendar apply to the event.
          # Corresponds to the JSON property `useDefault`
          # @return [Boolean]
          attr_accessor :use_default
          alias_method :use_default?, :use_default
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @overrides = args[:overrides] unless args[:overrides].nil?
            @use_default = args[:use_default] unless args[:use_default].nil?
          end
        end
        
        # Source from which the event was created. For example, a web page, an email
        # message or any document identifiable by an URL with HTTP or HTTPS scheme. Can
        # only be seen or modified by the creator of the event.
        class Source
          include Google::Apis::Core::Hashable
        
          # Title of the source; for example a title of a web page or an email subject.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # URL of the source pointing to a resource. The URL scheme must be HTTP or HTTPS.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @title = args[:title] unless args[:title].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
      end
      
      # 
      class EventAttachment
        include Google::Apis::Core::Hashable
      
        # ID of the attached file. Read-only.
        # For Google Drive files, this is the ID of the corresponding Files resource
        # entry in the Drive API.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # URL link to the attachment.
        # For adding Google Drive file attachments use the same format as in
        # alternateLink property of the Files resource in the Drive API.
        # Corresponds to the JSON property `fileUrl`
        # @return [String]
        attr_accessor :file_url
      
        # URL link to the attachment's icon. Read-only.
        # Corresponds to the JSON property `iconLink`
        # @return [String]
        attr_accessor :icon_link
      
        # Internet media type (MIME type) of the attachment.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Attachment title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_id = args[:file_id] unless args[:file_id].nil?
          @file_url = args[:file_url] unless args[:file_url].nil?
          @icon_link = args[:icon_link] unless args[:icon_link].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # 
      class EventAttendee
        include Google::Apis::Core::Hashable
      
        # Number of additional guests. Optional. The default is 0.
        # Corresponds to the JSON property `additionalGuests`
        # @return [Fixnum]
        attr_accessor :additional_guests
      
        # The attendee's response comment. Optional.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The attendee's name, if available. Optional.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The attendee's email address, if available. This field must be present when
        # adding an attendee. It must be a valid email address as per RFC5322.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The attendee's Profile ID, if available. It corresponds to theid field in the
        # People collection of the Google+ API
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether this is an optional attendee. Optional. The default is False.
        # Corresponds to the JSON property `optional`
        # @return [Boolean]
        attr_accessor :optional
        alias_method :optional?, :optional
      
        # Whether the attendee is the organizer of the event. Read-only. The default is
        # False.
        # Corresponds to the JSON property `organizer`
        # @return [Boolean]
        attr_accessor :organizer
        alias_method :organizer?, :organizer
      
        # Whether the attendee is a resource. Read-only. The default is False.
        # Corresponds to the JSON property `resource`
        # @return [Boolean]
        attr_accessor :resource
        alias_method :resource?, :resource
      
        # The attendee's response status. Possible values are:
        # - "needsAction" - The attendee has not responded to the invitation.
        # - "declined" - The attendee has declined the invitation.
        # - "tentative" - The attendee has tentatively accepted the invitation.
        # - "accepted" - The attendee has accepted the invitation.
        # Corresponds to the JSON property `responseStatus`
        # @return [String]
        attr_accessor :response_status
      
        # Whether this entry represents the calendar on which this copy of the event
        # appears. Read-only. The default is False.
        # Corresponds to the JSON property `self`
        # @return [Boolean]
        attr_accessor :self
        alias_method :self?, :self
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_guests = args[:additional_guests] unless args[:additional_guests].nil?
          @comment = args[:comment] unless args[:comment].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @id = args[:id] unless args[:id].nil?
          @optional = args[:optional] unless args[:optional].nil?
          @organizer = args[:organizer] unless args[:organizer].nil?
          @resource = args[:resource] unless args[:resource].nil?
          @response_status = args[:response_status] unless args[:response_status].nil?
          @self = args[:self] unless args[:self].nil?
        end
      end
      
      # 
      class EventDateTime
        include Google::Apis::Core::Hashable
      
        # The date, in the format "yyyy-mm-dd", if this is an all-day event.
        # Corresponds to the JSON property `date`
        # @return [Date]
        attr_accessor :date
      
        # The time, as a combined date-time value (formatted according to RFC3339). A
        # time zone offset is required unless a time zone is explicitly specified in
        # timeZone.
        # Corresponds to the JSON property `dateTime`
        # @return [DateTime]
        attr_accessor :date_time
      
        # The time zone in which the time is specified. (Formatted as an IANA Time Zone
        # Database name, e.g. "Europe/Zurich".) For recurring events this field is
        # required and specifies the time zone in which the recurrence is expanded. For
        # single events this field is optional and indicates a custom time zone for the
        # event start/end.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] unless args[:date].nil?
          @date_time = args[:date_time] unless args[:date_time].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
        end
      end
      
      # 
      class EventReminder
        include Google::Apis::Core::Hashable
      
        # The method used by this reminder. Possible values are:
        # - "email" - Reminders are sent via email.
        # - "sms" - Reminders are sent via SMS. These are only available for Google Apps
        # for Work, Education, and Government customers. Requests to set SMS reminders
        # for other account types are ignored.
        # - "popup" - Reminders are sent via a UI popup.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :reminder_method
      
        # Number of minutes before the start of the event when the reminder should
        # trigger. Valid values are between 0 and 40320 (4 weeks in minutes).
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reminder_method = args[:reminder_method] unless args[:reminder_method].nil?
          @minutes = args[:minutes] unless args[:minutes].nil?
        end
      end
      
      # 
      class Events
        include Google::Apis::Core::Hashable
      
        # The user's access role for this calendar. Read-only. Possible values are:
        # - "none" - The user has no access.
        # - "freeBusyReader" - The user has read access to free/busy information.
        # - "reader" - The user has read access to the calendar. Private events will
        # appear to users with reader access, but event details will be hidden.
        # - "writer" - The user has read and write access to the calendar. Private
        # events will appear to users with writer access, and event details will be
        # visible.
        # - "owner" - The user has ownership of the calendar. This role has all of the
        # permissions of the writer role with the additional ability to see and
        # manipulate ACLs.
        # Corresponds to the JSON property `accessRole`
        # @return [String]
        attr_accessor :access_role
      
        # The default reminders on the calendar for the authenticated user. These
        # reminders apply to all events on this calendar that do not explicitly override
        # them (i.e. do not have reminders.useDefault set to True).
        # Corresponds to the JSON property `defaultReminders`
        # @return [Array<Google::Apis::CalendarV3::EventReminder>]
        attr_accessor :default_reminders
      
        # Description of the calendar. Read-only.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ETag of the collection.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of events on the calendar.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CalendarV3::Event>]
        attr_accessor :items
      
        # Type of the collection ("calendar#events").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access the next page of this result. Omitted if no further
        # results are available, in which case nextSyncToken is provided.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Token used at a later point in time to retrieve only the entries that have
        # changed since this result was returned. Omitted if further results are
        # available, in which case nextPageToken is provided.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        # Title of the calendar. Read-only.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # The time zone of the calendar. Read-only.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Last modification time of the calendar (as a RFC3339 timestamp). Read-only.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_role = args[:access_role] unless args[:access_role].nil?
          @default_reminders = args[:default_reminders] unless args[:default_reminders].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @next_sync_token = args[:next_sync_token] unless args[:next_sync_token].nil?
          @summary = args[:summary] unless args[:summary].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
      end
      
      # 
      class FreeBusyCalendar
        include Google::Apis::Core::Hashable
      
        # List of time ranges during which this calendar should be regarded as busy.
        # Corresponds to the JSON property `busy`
        # @return [Array<Google::Apis::CalendarV3::TimePeriod>]
        attr_accessor :busy
      
        # Optional error(s) (if computation for the calendar failed).
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::CalendarV3::Error>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @busy = args[:busy] unless args[:busy].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # 
      class FreeBusyGroup
        include Google::Apis::Core::Hashable
      
        # List of calendars' identifiers within a group.
        # Corresponds to the JSON property `calendars`
        # @return [Array<String>]
        attr_accessor :calendars
      
        # Optional error(s) (if computation for the group failed).
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::CalendarV3::Error>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendars = args[:calendars] unless args[:calendars].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # 
      class FreeBusyRequest
        include Google::Apis::Core::Hashable
      
        # Maximal number of calendars for which FreeBusy information is to be provided.
        # Optional.
        # Corresponds to the JSON property `calendarExpansionMax`
        # @return [Fixnum]
        attr_accessor :calendar_expansion_max
      
        # Maximal number of calendar identifiers to be provided for a single group.
        # Optional. An error will be returned for a group with more members than this
        # value.
        # Corresponds to the JSON property `groupExpansionMax`
        # @return [Fixnum]
        attr_accessor :group_expansion_max
      
        # List of calendars and/or groups to query.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CalendarV3::FreeBusyRequestItem>]
        attr_accessor :items
      
        # The end of the interval for the query.
        # Corresponds to the JSON property `timeMax`
        # @return [DateTime]
        attr_accessor :time_max
      
        # The start of the interval for the query.
        # Corresponds to the JSON property `timeMin`
        # @return [DateTime]
        attr_accessor :time_min
      
        # Time zone used in the response. Optional. The default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar_expansion_max = args[:calendar_expansion_max] unless args[:calendar_expansion_max].nil?
          @group_expansion_max = args[:group_expansion_max] unless args[:group_expansion_max].nil?
          @items = args[:items] unless args[:items].nil?
          @time_max = args[:time_max] unless args[:time_max].nil?
          @time_min = args[:time_min] unless args[:time_min].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
        end
      end
      
      # 
      class FreeBusyRequestItem
        include Google::Apis::Core::Hashable
      
        # The identifier of a calendar or a group.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # 
      class FreeBusyResponse
        include Google::Apis::Core::Hashable
      
        # List of free/busy information for calendars.
        # Corresponds to the JSON property `calendars`
        # @return [Hash<String,Google::Apis::CalendarV3::FreeBusyCalendar>]
        attr_accessor :calendars
      
        # Expansion of groups.
        # Corresponds to the JSON property `groups`
        # @return [Hash<String,Google::Apis::CalendarV3::FreeBusyGroup>]
        attr_accessor :groups
      
        # Type of the resource ("calendar#freeBusy").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The end of the interval.
        # Corresponds to the JSON property `timeMax`
        # @return [DateTime]
        attr_accessor :time_max
      
        # The start of the interval.
        # Corresponds to the JSON property `timeMin`
        # @return [DateTime]
        attr_accessor :time_min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendars = args[:calendars] unless args[:calendars].nil?
          @groups = args[:groups] unless args[:groups].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @time_max = args[:time_max] unless args[:time_max].nil?
          @time_min = args[:time_min] unless args[:time_min].nil?
        end
      end
      
      # 
      class Setting
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The id of the user setting.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource ("calendar#setting").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Value of the user setting. The format of the value depends on the ID of the
        # setting. It must always be a UTF-8 string of length up to 1024 characters.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class Settings
        include Google::Apis::Core::Hashable
      
        # Etag of the collection.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of user settings.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CalendarV3::Setting>]
        attr_accessor :items
      
        # Type of the collection ("calendar#settings").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access the next page of this result. Omitted if no further
        # results are available, in which case nextSyncToken is provided.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Token used at a later point in time to retrieve only the entries that have
        # changed since this result was returned. Omitted if further results are
        # available, in which case nextPageToken is provided.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @next_sync_token = args[:next_sync_token] unless args[:next_sync_token].nil?
        end
      end
      
      # 
      class TimePeriod
        include Google::Apis::Core::Hashable
      
        # The (exclusive) end of the time period.
        # Corresponds to the JSON property `end`
        # @return [DateTime]
        attr_accessor :end
      
        # The (inclusive) start of the time period.
        # Corresponds to the JSON property `start`
        # @return [DateTime]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
    end
  end
end
