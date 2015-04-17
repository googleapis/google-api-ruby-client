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
      class AclRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AclRuleRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CalendarRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListEntryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ColorDefinitionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ColorsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventAttachmentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventAttendeeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventDateTimeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventReminderRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EventsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FreeBusyCalendarRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FreeBusyGroupRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FreeBusyRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FreeBusyRequestItemRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FreeBusyResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SettingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TimePeriodRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AclRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::CalendarV3::AclRule, decorator: Google::Apis::CalendarV3::AclRuleRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :next_sync_token, as: 'nextSyncToken'
      end

      # @private
      class AclRuleRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :role, as: 'role'
        property :scope, as: 'scope', class: Google::Apis::CalendarV3::AclRule::Scope do
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end

      # @private
      class CalendarRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location'
        property :summary, as: 'summary'
        property :time_zone, as: 'timeZone'
      end

      # @private
      class ListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::CalendarV3::ListEntry, decorator: Google::Apis::CalendarV3::ListEntryRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :next_sync_token, as: 'nextSyncToken'
      end

      # @private
      class ListEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :access_role, as: 'accessRole'
        property :background_color, as: 'backgroundColor'
        property :color_id, as: 'colorId'
        collection :default_reminders, as: 'defaultReminders', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminderRepresentation
        
        
        property :deleted, as: 'deleted'
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :foreground_color, as: 'foregroundColor'
        property :hidden, as: 'hidden'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location'
        property :notification_settings, as: 'notificationSettings', class: Google::Apis::CalendarV3::ListEntry::NotificationSettings do
          collection :notifications, as: 'notifications', class: Google::Apis::CalendarV3::Notification, decorator: Google::Apis::CalendarV3::NotificationRepresentation
        end
        
        property :primary, as: 'primary'
        property :selected, as: 'selected'
        property :summary, as: 'summary'
        property :summary_override, as: 'summaryOverride'
        property :time_zone, as: 'timeZone'
      end

      # @private
      class NotificationRepresentation < Google::Apis::Core::JsonRepresentation
        property :method_prop, as: 'method'
        property :type, as: 'type'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :address, as: 'address'
        property :expiration, as: 'expiration'
        property :id, as: 'id'
        property :kind, as: 'kind'
        hash :params, as: 'params'
        
        property :payload, as: 'payload'
        property :resource_id, as: 'resourceId'
        property :resource_uri, as: 'resourceUri'
        property :token, as: 'token'
        property :type, as: 'type'
      end

      # @private
      class ColorDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        property :background, as: 'background'
        property :foreground, as: 'foreground'
      end

      # @private
      class ColorsRepresentation < Google::Apis::Core::JsonRepresentation
        hash :calendar, as: 'calendar', class: Google::Apis::CalendarV3::ColorDefinition, decorator: Google::Apis::CalendarV3::ColorDefinitionRepresentation
        
        
        hash :event, as: 'event', class: Google::Apis::CalendarV3::ColorDefinition, decorator: Google::Apis::CalendarV3::ColorDefinitionRepresentation
        
        
        property :kind, as: 'kind'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
        property :domain, as: 'domain'
        property :reason, as: 'reason'
      end

      # @private
      class EventRepresentation < Google::Apis::Core::JsonRepresentation
        property :anyone_can_add_self, as: 'anyoneCanAddSelf'
        collection :attendees, as: 'attendees', class: Google::Apis::CalendarV3::EventAttendee, decorator: Google::Apis::CalendarV3::EventAttendeeRepresentation
        
        
        property :attendees_omitted, as: 'attendeesOmitted'
        property :color_id, as: 'colorId'
        property :created, as: 'created', type: DateTime
        property :creator, as: 'creator', class: Google::Apis::CalendarV3::Event::Creator do
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :id, as: 'id'
          property :self, as: 'self'
        end
        
        property :description, as: 'description'
        property :end, as: 'end', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTimeRepresentation
        
        property :end_time_unspecified, as: 'endTimeUnspecified'
        property :etag, as: 'etag'
        property :extended_properties, as: 'extendedProperties', class: Google::Apis::CalendarV3::Event::ExtendedProperties do
          hash :private, as: 'private'
          
          hash :shared, as: 'shared'
        end
        
        property :gadget, as: 'gadget', class: Google::Apis::CalendarV3::Event::Gadget do
          property :display_prop, as: 'display'
          property :height, as: 'height'
          property :icon_link, as: 'iconLink'
          property :link, as: 'link'
          hash :preferences, as: 'preferences'
          
          property :title, as: 'title'
          property :type, as: 'type'
          property :width, as: 'width'
        end
        
        property :guests_can_invite_others, as: 'guestsCanInviteOthers'
        property :guests_can_modify, as: 'guestsCanModify'
        property :guests_can_see_other_guests, as: 'guestsCanSeeOtherGuests'
        property :hangout_link, as: 'hangoutLink'
        property :html_link, as: 'htmlLink'
        property :i_cal_uid, as: 'iCalUID'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :location, as: 'location'
        property :locked, as: 'locked'
        property :organizer, as: 'organizer', class: Google::Apis::CalendarV3::Event::Organizer do
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :id, as: 'id'
          property :self, as: 'self'
        end
        
        property :original_start_time, as: 'originalStartTime', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTimeRepresentation
        
        property :private_copy, as: 'privateCopy'
        collection :recurrence, as: 'recurrence'
        
        property :recurring_event_id, as: 'recurringEventId'
        property :reminders, as: 'reminders', class: Google::Apis::CalendarV3::Event::Reminders do
          collection :overrides, as: 'overrides', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminderRepresentation
          
          
          property :use_default, as: 'useDefault'
        end
        
        property :sequence, as: 'sequence'
        property :source, as: 'source', class: Google::Apis::CalendarV3::Event::Source do
          property :title, as: 'title'
          property :url, as: 'url'
        end
        
        property :start, as: 'start', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTimeRepresentation
        
        property :status, as: 'status'
        property :summary, as: 'summary'
        property :transparency, as: 'transparency'
        property :updated, as: 'updated', type: DateTime
        property :visibility, as: 'visibility'
      end

      # @private
      class EventAttachmentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class EventAttendeeRepresentation < Google::Apis::Core::JsonRepresentation
        property :additional_guests, as: 'additionalGuests'
        property :comment, as: 'comment'
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :id, as: 'id'
        property :optional, as: 'optional'
        property :organizer, as: 'organizer'
        property :resource, as: 'resource'
        property :response_status, as: 'responseStatus'
        property :self, as: 'self'
      end

      # @private
      class EventDateTimeRepresentation < Google::Apis::Core::JsonRepresentation
        property :date, as: 'date', type: Date
        property :date_time, as: 'dateTime', type: DateTime
        property :time_zone, as: 'timeZone'
      end

      # @private
      class EventReminderRepresentation < Google::Apis::Core::JsonRepresentation
        property :method_prop, as: 'method'
        property :minutes, as: 'minutes'
      end

      # @private
      class EventsRepresentation < Google::Apis::Core::JsonRepresentation
        property :access_role, as: 'accessRole'
        collection :default_reminders, as: 'defaultReminders', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminderRepresentation
        
        
        property :description, as: 'description'
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::CalendarV3::Event, decorator: Google::Apis::CalendarV3::EventRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :next_sync_token, as: 'nextSyncToken'
        property :summary, as: 'summary'
        property :time_zone, as: 'timeZone'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class FreeBusyCalendarRepresentation < Google::Apis::Core::JsonRepresentation
        collection :busy, as: 'busy', class: Google::Apis::CalendarV3::TimePeriod, decorator: Google::Apis::CalendarV3::TimePeriodRepresentation
        
        
        collection :errors, as: 'errors', class: Google::Apis::CalendarV3::Error, decorator: Google::Apis::CalendarV3::ErrorRepresentation
      end

      # @private
      class FreeBusyGroupRepresentation < Google::Apis::Core::JsonRepresentation
        collection :calendars, as: 'calendars'
        
        collection :errors, as: 'errors', class: Google::Apis::CalendarV3::Error, decorator: Google::Apis::CalendarV3::ErrorRepresentation
      end

      # @private
      class FreeBusyRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :calendar_expansion_max, as: 'calendarExpansionMax'
        property :group_expansion_max, as: 'groupExpansionMax'
        collection :items, as: 'items', class: Google::Apis::CalendarV3::FreeBusyRequestItem, decorator: Google::Apis::CalendarV3::FreeBusyRequestItemRepresentation
        
        
        property :time_max, as: 'timeMax', type: DateTime
        property :time_min, as: 'timeMin', type: DateTime
        property :time_zone, as: 'timeZone'
      end

      # @private
      class FreeBusyRequestItemRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
      end

      # @private
      class FreeBusyResponseRepresentation < Google::Apis::Core::JsonRepresentation
        hash :calendars, as: 'calendars', class: Google::Apis::CalendarV3::FreeBusyCalendar, decorator: Google::Apis::CalendarV3::FreeBusyCalendarRepresentation
        
        
        hash :groups, as: 'groups', class: Google::Apis::CalendarV3::FreeBusyGroup, decorator: Google::Apis::CalendarV3::FreeBusyGroupRepresentation
        
        
        property :kind, as: 'kind'
        property :time_max, as: 'timeMax', type: DateTime
        property :time_min, as: 'timeMin', type: DateTime
      end

      # @private
      class SettingRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class SettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::CalendarV3::Setting, decorator: Google::Apis::CalendarV3::SettingRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :next_sync_token, as: 'nextSyncToken'
      end

      # @private
      class TimePeriodRepresentation < Google::Apis::Core::JsonRepresentation
        property :end, as: 'end', type: DateTime
        property :start, as: 'start', type: DateTime
      end
    end
  end
end
