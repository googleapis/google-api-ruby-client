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

require 'google/apis/classroom_v1beta1/service.rb'
require 'google/apis/classroom_v1beta1/classes.rb'
require 'google/apis/classroom_v1beta1/representations.rb'

module Google
  module Apis
    # Google Classroom API
    #
    # Google Classroom API
    #
    # @see 
    module ClassroomV1beta1
      VERSION = 'V1beta1'
      REVISION = '20150628'

      # Manage your Google Classroom classes
      AUTH_CLASSROOM_COURSES = 'https://www.googleapis.com/auth/classroom.courses'

      # View your Google Classroom classes
      AUTH_CLASSROOM_COURSES_READONLY = 'https://www.googleapis.com/auth/classroom.courses.readonly'

      # View the email addresses of people in your classes
      AUTH_CLASSROOM_PROFILE_EMAILS = 'https://www.googleapis.com/auth/classroom.profile.emails'

      # View the profile photos of people in your classes
      AUTH_CLASSROOM_PROFILE_PHOTOS = 'https://www.googleapis.com/auth/classroom.profile.photos'

      # Manage your Google Classroom class rosters
      AUTH_CLASSROOM_ROSTERS = 'https://www.googleapis.com/auth/classroom.rosters'

      # View your Google Classroom class rosters
      AUTH_CLASSROOM_ROSTERS_READONLY = 'https://www.googleapis.com/auth/classroom.rosters.readonly'
    end
  end
end
