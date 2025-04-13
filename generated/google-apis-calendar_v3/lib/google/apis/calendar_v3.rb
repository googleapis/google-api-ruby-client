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

require 'google/apis/calendar_v3/service.rb'
require 'google/apis/calendar_v3/classes.rb'
require 'google/apis/calendar_v3/representations.rb'
require 'google/apis/calendar_v3/gem_version.rb'

module Google
  module Apis
    # Calendar API
    #
    # Manipulates events and other calendar data.
    #
    # @see https://developers.google.com/workspace/calendar/firstapp
    module CalendarV3
      # Version of the Calendar API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V3'

      # See, edit, share, and permanently delete all the calendars you can access using Google Calendar
      AUTH_CALENDAR = 'https://www.googleapis.com/auth/calendar'

      # See and change the sharing permissions of Google calendars you own
      AUTH_CALENDAR_ACLS = 'https://www.googleapis.com/auth/calendar.acls'

      # See the sharing permissions of Google calendars you own
      AUTH_CALENDAR_ACLS_READONLY = 'https://www.googleapis.com/auth/calendar.acls.readonly'

      # Make secondary Google calendars, and see, create, change, and delete events on them
      AUTH_CALENDAR_APP_CREATED = 'https://www.googleapis.com/auth/calendar.app.created'

      # See, add, and remove Google calendars you’re subscribed to
      AUTH_CALENDAR_CALENDARLIST = 'https://www.googleapis.com/auth/calendar.calendarlist'

      # See the list of Google calendars you’re subscribed to
      AUTH_CALENDAR_CALENDARLIST_READONLY = 'https://www.googleapis.com/auth/calendar.calendarlist.readonly'

      # See and change the properties of Google calendars you have access to, and create secondary calendars
      AUTH_CALENDAR_CALENDARS = 'https://www.googleapis.com/auth/calendar.calendars'

      # See the title, description, default time zone, and other properties of Google calendars you have access to
      AUTH_CALENDAR_CALENDARS_READONLY = 'https://www.googleapis.com/auth/calendar.calendars.readonly'

      # View and edit events on all your calendars
      AUTH_CALENDAR_EVENTS = 'https://www.googleapis.com/auth/calendar.events'

      # See the availability on Google calendars you have access to
      AUTH_CALENDAR_EVENTS_FREEBUSY = 'https://www.googleapis.com/auth/calendar.events.freebusy'

      # See, create, change, and delete events on Google calendars you own
      AUTH_CALENDAR_EVENTS_OWNED = 'https://www.googleapis.com/auth/calendar.events.owned'

      # See the events on Google calendars you own
      AUTH_CALENDAR_EVENTS_OWNED_READONLY = 'https://www.googleapis.com/auth/calendar.events.owned.readonly'

      # See the events on public calendars
      AUTH_CALENDAR_EVENTS_PUBLIC_READONLY = 'https://www.googleapis.com/auth/calendar.events.public.readonly'

      # View events on all your calendars
      AUTH_CALENDAR_EVENTS_READONLY = 'https://www.googleapis.com/auth/calendar.events.readonly'

      # View your availability in your calendars
      AUTH_CALENDAR_FREEBUSY = 'https://www.googleapis.com/auth/calendar.freebusy'

      # See and download any calendar you can access using your Google Calendar
      AUTH_CALENDAR_READONLY = 'https://www.googleapis.com/auth/calendar.readonly'

      # View your Calendar settings
      AUTH_CALENDAR_SETTINGS_READONLY = 'https://www.googleapis.com/auth/calendar.settings.readonly'
    end
  end
end
