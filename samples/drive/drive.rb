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

require 'tempfile'
require 'googleauth'
require 'google/apis/drive_v2'

Drive = Google::Apis::DriveV2

drive = Drive::DriveService.new
drive.authorization = Google::Auth.get_application_default([Drive::AUTH_DRIVE])

# Insert a file
file = drive.insert_file({title: 'drive.rb'}, upload_source: 'drive.rb')
puts "Created file #{file.title} (#{file.id})"

# Search for it
files = drive.list_files(q: "title = 'drive.rb'")
puts "Search results:"
files.items.each do |file|
  puts "- File: #{file.title} (#{file.id})"
end

# Read it back
tmp = drive.get_file(file.id, download_dest: Tempfile.new('drive'))

# Delete it
drive.delete_file(file.id)
puts "File deleted"