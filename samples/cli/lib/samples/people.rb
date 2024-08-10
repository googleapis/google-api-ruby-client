# Copyright 2016 Google Inc.
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

require 'google/apis/people_v1'
require 'base_cli'

module Samples
  # Examples for the Google People API
  #
  # Sample usage:
  #
  #     $ ./google-api-samples people list_directory_people
  class People < BaseCli
    People = Google::Apis::PeopleV1

    desc 'list_directory_people', 'List people in the directory'
    def list_directory_people
      service = People::PeopleServiceService.new
      service.authorization = user_credentials_for(People::AUTH_DIRECTORY_READONLY)

      response = service.list_person_directory_people(read_mask: 'names,emailAddresses')
      response.people.each do |person|
        puts "Name: #{person.names.first.display_name}"
        puts "Email: #{person.email_addresses.first.value}" if person.email_addresses
      end
    end
  end
end
