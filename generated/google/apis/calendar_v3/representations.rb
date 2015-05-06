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
      
      class Acl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AclRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Scope
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class Calendar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CalendarList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CalendarListEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class NotificationSettings
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class CalendarNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ColorDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Colors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Creator
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class ExtendedProperties
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Gadget
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Organizer
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Reminders
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Source
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class EventAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventAttendee
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class EventReminder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Events
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FreeBusyCalendar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FreeBusyGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FreeBusyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FreeBusyRequestItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FreeBusyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Setting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Acl
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::CalendarV3::AclRule, decorator: Google::Apis::CalendarV3::AclRule::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :next_sync_token, as: 'nextSyncToken'
        end
      end
      
      # @private
      class AclRule
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :role, as: 'role'
          property :scope, as: 'scope', class: Google::Apis::CalendarV3::AclRule::Scope, decorator: Google::Apis::CalendarV3::AclRule::Scope::Representation
      
        end
        
        # @private
        class Scope
          class Representation < Google::Apis::Core::JsonRepresentation
            property :type, as: 'type'
            property :value, as: 'value'
          end
        end
      end
      
      # @private
      class Calendar
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :summary, as: 'summary'
          property :time_zone, as: 'timeZone'
        end
      end
      
      # @private
      class CalendarList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::CalendarV3::CalendarListEntry, decorator: Google::Apis::CalendarV3::CalendarListEntry::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :next_sync_token, as: 'nextSyncToken'
        end
      end
      
      # @private
      class CalendarListEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_role, as: 'accessRole'
          property :background_color, as: 'backgroundColor'
          property :color_id, as: 'colorId'
          collection :default_reminders, as: 'defaultReminders', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminder::Representation
      
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :foreground_color, as: 'foregroundColor'
          property :hidden, as: 'hidden'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :notification_settings, as: 'notificationSettings', class: Google::Apis::CalendarV3::CalendarListEntry::NotificationSettings, decorator: Google::Apis::CalendarV3::CalendarListEntry::NotificationSettings::Representation
      
          property :primary, as: 'primary'
          property :selected, as: 'selected'
          property :summary, as: 'summary'
          property :summary_override, as: 'summaryOverride'
          property :time_zone, as: 'timeZone'
        end
        
        # @private
        class NotificationSettings
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :notifications, as: 'notifications', class: Google::Apis::CalendarV3::CalendarNotification, decorator: Google::Apis::CalendarV3::CalendarNotification::Representation
        
          end
        end
      end
      
      # @private
      class CalendarNotification
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_method, as: 'method'
          property :type, as: 'type'
        end
      end
      
      # @private
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class ColorDefinition
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background, as: 'background'
          property :foreground, as: 'foreground'
        end
      end
      
      # @private
      class Colors
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :calendar, as: 'calendar', class: Google::Apis::CalendarV3::ColorDefinition, decorator: Google::Apis::CalendarV3::ColorDefinition::Representation
      
          hash :event, as: 'event', class: Google::Apis::CalendarV3::ColorDefinition, decorator: Google::Apis::CalendarV3::ColorDefinition::Representation
      
          property :kind, as: 'kind'
          property :updated, as: 'updated', type: DateTime
      
        end
      end
      
      # @private
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :reason, as: 'reason'
        end
      end
      
      # @private
      class Event
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anyone_can_add_self, as: 'anyoneCanAddSelf'
          collection :attendees, as: 'attendees', class: Google::Apis::CalendarV3::EventAttendee, decorator: Google::Apis::CalendarV3::EventAttendee::Representation
      
          property :attendees_omitted, as: 'attendeesOmitted'
          property :color_id, as: 'colorId'
          property :created, as: 'created', type: DateTime
      
          property :creator, as: 'creator', class: Google::Apis::CalendarV3::Event::Creator, decorator: Google::Apis::CalendarV3::Event::Creator::Representation
      
          property :description, as: 'description'
          property :end, as: 'end', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTime::Representation
      
          property :end_time_unspecified, as: 'endTimeUnspecified'
          property :etag, as: 'etag'
          property :extended_properties, as: 'extendedProperties', class: Google::Apis::CalendarV3::Event::ExtendedProperties, decorator: Google::Apis::CalendarV3::Event::ExtendedProperties::Representation
      
          property :gadget, as: 'gadget', class: Google::Apis::CalendarV3::Event::Gadget, decorator: Google::Apis::CalendarV3::Event::Gadget::Representation
      
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
          property :organizer, as: 'organizer', class: Google::Apis::CalendarV3::Event::Organizer, decorator: Google::Apis::CalendarV3::Event::Organizer::Representation
      
          property :original_start_time, as: 'originalStartTime', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTime::Representation
      
          property :private_copy, as: 'privateCopy'
          collection :recurrence, as: 'recurrence'
          property :recurring_event_id, as: 'recurringEventId'
          property :reminders, as: 'reminders', class: Google::Apis::CalendarV3::Event::Reminders, decorator: Google::Apis::CalendarV3::Event::Reminders::Representation
      
          property :sequence, as: 'sequence'
          property :source, as: 'source', class: Google::Apis::CalendarV3::Event::Source, decorator: Google::Apis::CalendarV3::Event::Source::Representation
      
          property :start, as: 'start', class: Google::Apis::CalendarV3::EventDateTime, decorator: Google::Apis::CalendarV3::EventDateTime::Representation
      
          property :status, as: 'status'
          property :summary, as: 'summary'
          property :transparency, as: 'transparency'
          property :updated, as: 'updated', type: DateTime
      
          property :visibility, as: 'visibility'
        end
        
        # @private
        class Creator
          class Representation < Google::Apis::Core::JsonRepresentation
            property :display_name, as: 'displayName'
            property :email, as: 'email'
            property :id, as: 'id'
            property :self, as: 'self'
          end
        end
        
        # @private
        class ExtendedProperties
          class Representation < Google::Apis::Core::JsonRepresentation
            hash :private, as: 'private'
            hash :shared, as: 'shared'
          end
        end
        
        # @private
        class Gadget
          class Representation < Google::Apis::Core::JsonRepresentation
            property :display_mode, as: 'display'
            property :height, as: 'height'
            property :icon_link, as: 'iconLink'
            property :link, as: 'link'
            hash :preferences, as: 'preferences'
            property :title, as: 'title'
            property :type, as: 'type'
            property :width, as: 'width'
          end
        end
        
        # @private
        class Organizer
          class Representation < Google::Apis::Core::JsonRepresentation
            property :display_name, as: 'displayName'
            property :email, as: 'email'
            property :id, as: 'id'
            property :self, as: 'self'
          end
        end
        
        # @private
        class Reminders
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :overrides, as: 'overrides', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminder::Representation
        
            property :use_default, as: 'useDefault'
          end
        end
        
        # @private
        class Source
          class Representation < Google::Apis::Core::JsonRepresentation
            property :title, as: 'title'
            property :url, as: 'url'
          end
        end
      end
      
      # @private
      class EventAttachment
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class EventAttendee
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class EventDateTime
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', type: Date
      
          property :date_time, as: 'dateTime', type: DateTime
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      # @private
      class EventReminder
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reminder_method, as: 'method'
          property :minutes, as: 'minutes'
        end
      end
      
      # @private
      class Events
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_role, as: 'accessRole'
          collection :default_reminders, as: 'defaultReminders', class: Google::Apis::CalendarV3::EventReminder, decorator: Google::Apis::CalendarV3::EventReminder::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::CalendarV3::Event, decorator: Google::Apis::CalendarV3::Event::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :next_sync_token, as: 'nextSyncToken'
          property :summary, as: 'summary'
          property :time_zone, as: 'timeZone'
          property :updated, as: 'updated', type: DateTime
      
        end
      end
      
      # @private
      class FreeBusyCalendar
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :busy, as: 'busy', class: Google::Apis::CalendarV3::TimePeriod, decorator: Google::Apis::CalendarV3::TimePeriod::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::CalendarV3::Error, decorator: Google::Apis::CalendarV3::Error::Representation
      
        end
      end
      
      # @private
      class FreeBusyGroup
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :calendars, as: 'calendars'
          collection :errors, as: 'errors', class: Google::Apis::CalendarV3::Error, decorator: Google::Apis::CalendarV3::Error::Representation
      
        end
      end
      
      # @private
      class FreeBusyRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calendar_expansion_max, as: 'calendarExpansionMax'
          property :group_expansion_max, as: 'groupExpansionMax'
          collection :items, as: 'items', class: Google::Apis::CalendarV3::FreeBusyRequestItem, decorator: Google::Apis::CalendarV3::FreeBusyRequestItem::Representation
      
          property :time_max, as: 'timeMax', type: DateTime
      
          property :time_min, as: 'timeMin', type: DateTime
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      # @private
      class FreeBusyRequestItem
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      # @private
      class FreeBusyResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :calendars, as: 'calendars', class: Google::Apis::CalendarV3::FreeBusyCalendar, decorator: Google::Apis::CalendarV3::FreeBusyCalendar::Representation
      
          hash :groups, as: 'groups', class: Google::Apis::CalendarV3::FreeBusyGroup, decorator: Google::Apis::CalendarV3::FreeBusyGroup::Representation
      
          property :kind, as: 'kind'
          property :time_max, as: 'timeMax', type: DateTime
      
          property :time_min, as: 'timeMin', type: DateTime
      
        end
      end
      
      # @private
      class Setting
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :value, as: 'value'
        end
      end
      
      # @private
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::CalendarV3::Setting, decorator: Google::Apis::CalendarV3::Setting::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :next_sync_token, as: 'nextSyncToken'
        end
      end
      
      # @private
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', type: DateTime
      
          property :start, as: 'start', type: DateTime
      
        end
      end
    end
  end
end
