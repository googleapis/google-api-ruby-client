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

require 'googleauth'
require 'google/apis/calendar_v3'

Calendar = Google::Apis::CalendarV3

calendar = Calendar::CalendarService.new
calendar.authorization = Google::Auth.get_application_default([Calendar::AUTH_CALENDAR])

# Create an event, adding any emails listed in the command line as attendees
event = Calendar::Event.new(summary: 'A sample event',
                            location: '1600 Amphitheatre Parkway, Mountain View, CA 94045',
                            attendees: ARGV.map { |email| Calendar::EventAttendee.new(email: email) },
                            start: Calendar::EventDateTime.new(date_time: DateTime.parse('2015-12-31T20:00:00')),
                            end: Calendar::EventDateTime.new(date_time: DateTime.parse('2016-01-01T02:00:00')))
event = calendar.insert_event('primary', event, send_notifications: true)
puts "Created event '#{event.summary}' (#{event.id})"

# List upcoming events
events = calendar.list_events('primary', max_results: 10, single_events: true,
                              order_by: 'startTime', time_min: Time.now.iso8601)
puts "Upcoming events:"
events.items.each do |evt|
  start = event.start.date || event.start.date_time
  puts "- #{event.summary} (#{start}) (ID: #{event.id})"
end

# Delete the event we created earlier
calendar.delete_event('primary', event.id, send_notifications: true)
puts "Event deleted"
