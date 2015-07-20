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
    module ClassroomV1beta1
      
      # A Course in Classroom.
      class Course
        include Google::Apis::Core::Hashable
      
        # Unique identifier for this course assigned by Classroom. You may optionally
        # set this to an [alias string][google.classroom.v1beta1.CourseAlias] as part of
        # [creating a course][google.classroom.v1beta1.Courses.CreateCourse], creating a
        # corresponding alias. The `ID` cannot be updated after a course is created.
        # Specifying this field in a course update mask will result in an error.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the course. For example, "10th Grade Biology". This is required and
        # must be between 1 and 750 characters and a valid UTF-8 string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Section of the course For example, "Period 2". If set, this field must be a
        # valid UTF-8 string and no longer than 2800 characters.
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # Optional heading for the description. For example, "Welcome to 10th Grade
        # Biology" If set, this field must be a valid UTF-8 string and no longer than
        # 3600 characters.
        # Corresponds to the JSON property `descriptionHeading`
        # @return [String]
        attr_accessor :description_heading
      
        # Optional description. For example, "We'll be learning about about the
        # structure of living creatures from a combination of textbooks, guest lectures,
        # and lab work. Expect to be excited!" If set, this field must be a valid UTF-8
        # string and no longer than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional room location. For example, "301" If set, this field must be a valid
        # UTF-8 string and no longer than 650 characters.
        # Corresponds to the JSON property `room`
        # @return [String]
        attr_accessor :room
      
        # The identifier of the primary teacher of a course. When specified as a
        # parameter of CreateCourseRequest, this field is required. It may be the
        # numeric identifier for the user, or an alias that identifies the teacher. The
        # following aliases are supported: * the e-mail address of the user * the string
        # literal `"me"`, indicating that the requesting user This must be set in a
        # CreateRequest; specifying this field in a course update mask will result in an
        # error.
        # Corresponds to the JSON property `primaryTeacherId`
        # @return [String]
        attr_accessor :primary_teacher_id
      
        # Creation time of the course. Specifying this field in a course update mask
        # will result in an error. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Time of the most recent update to this course. Specifying this field in a
        # course update mask will result in an error. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Enrollment code to use when joining this course. Specifying this field in a
        # course update mask will result in an error. Read-only.
        # Corresponds to the JSON property `enrollmentCode`
        # @return [String]
        attr_accessor :enrollment_code
      
        # State of the course. If unspecified, the default state will be `PROVISIONED`.
        # Corresponds to the JSON property `courseState`
        # @return [String]
        attr_accessor :course_state
      
        # Absolute link to this course in the Classroom web UI. Read-only.
        # Corresponds to the JSON property `webLink`
        # @return [String]
        attr_accessor :web_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @section = args[:section] unless args[:section].nil?
          @description_heading = args[:description_heading] unless args[:description_heading].nil?
          @description = args[:description] unless args[:description].nil?
          @room = args[:room] unless args[:room].nil?
          @primary_teacher_id = args[:primary_teacher_id] unless args[:primary_teacher_id].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @update_time = args[:update_time] unless args[:update_time].nil?
          @enrollment_code = args[:enrollment_code] unless args[:enrollment_code].nil?
          @course_state = args[:course_state] unless args[:course_state].nil?
          @web_link = args[:web_link] unless args[:web_link].nil?
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
      
      # Response when listing courses.
      class ListCoursesResponse
        include Google::Apis::Core::Hashable
      
        # Courses that match the request.
        # Corresponds to the JSON property `courses`
        # @return [Array<Google::Apis::ClassroomV1beta1::Course>]
        attr_accessor :courses
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @courses = args[:courses] unless args[:courses].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Alternative identifier for a course. An alias uniquely identifies a course. It
      # will be unique within one of the following scopes: * domain: A domain-scoped
      # alias is visible to all users within the alias creator's domain and may only
      # be created by a domain admin. A domain-scoped alias is often used when a
      # course has an identifier external to Classroom. * project: A project-scoped
      # alias is visible to any request from an application using the Developer
      # Console Project ID that created the alias and may be created by any project. A
      # project-scoped alias is often used when an application has alternative
      # identifiers. A random value can also be used to avoid duplicate courses in the
      # event of transmission failures, as retrying a request will return
      # ALREADY_EXISTS if a previous one has succeeded.
      class CourseAlias
        include Google::Apis::Core::Hashable
      
        # Alias string. The format of the string indicated the desired alias scoping. * "
        # d:" indicates a domain-scoped alias. Example: d:math_101 * "p:" indicates a
        # project-scoped alias. Example: p:abc123 This field has a maximum length of 256
        # characters.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] unless args[:alias].nil?
        end
      end
      
      # Response when listing course aliases.
      class ListCourseAliasesResponse
        include Google::Apis::Core::Hashable
      
        # The course aliases.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::ClassroomV1beta1::CourseAlias>]
        attr_accessor :aliases
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] unless args[:aliases].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Global information for a user.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the user. Read-only
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Details of the user's name.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::ClassroomV1beta1::Name]
        attr_accessor :name
      
        # E-mail address of the user. Read-only
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Url of user's profile photo. Read-only
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # Global permissions of the user. Read-only
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ClassroomV1beta1::GlobalPermission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @email_address = args[:email_address] unless args[:email_address].nil?
          @photo_url = args[:photo_url] unless args[:photo_url].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # Details of the user's name.
      class Name
        include Google::Apis::Core::Hashable
      
        # The user's first name. Read-only
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # The user's last name. Read-only
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The user's full name formed by concatenating the first and last name values.
        # Read-only
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @given_name = args[:given_name] unless args[:given_name].nil?
          @family_name = args[:family_name] unless args[:family_name].nil?
          @full_name = args[:full_name] unless args[:full_name].nil?
        end
      end
      
      # Global user permission description.
      class GlobalPermission
        include Google::Apis::Core::Hashable
      
        # Permission value.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] unless args[:permission].nil?
        end
      end
      
      # Teacher of a course.
      class Teacher
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the course. Read-only
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # The identifier of the user. When specified as a parameter of request, this
        # field may be set to an alias that identifies the teacher. The following are
        # supported: * the e-mail address of the user * the string literal `"me"`,
        # indicating the requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1beta1::UserProfile]
        attr_accessor :profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] unless args[:course_id].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
          @profile = args[:profile] unless args[:profile].nil?
        end
      end
      
      # Response when listing teachers.
      class ListTeachersResponse
        include Google::Apis::Core::Hashable
      
        # The teachers who match the list request.
        # Corresponds to the JSON property `teachers`
        # @return [Array<Google::Apis::ClassroomV1beta1::Teacher>]
        attr_accessor :teachers
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @teachers = args[:teachers] unless args[:teachers].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Student in a course.
      class Student
        include Google::Apis::Core::Hashable
      
        # Unique identifier of the course. Read-only
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # The identifier of the user. When specified as a parameter of request, this
        # field may be set to an alias that identifies the student. The following are
        # supported: * the e-mail address of the user * the string literal `"me"`,
        # indicating that the requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1beta1::UserProfile]
        attr_accessor :profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] unless args[:course_id].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
          @profile = args[:profile] unless args[:profile].nil?
        end
      end
      
      # Response when listing students.
      class ListStudentsResponse
        include Google::Apis::Core::Hashable
      
        # The students who match the list request.
        # Corresponds to the JSON property `students`
        # @return [Array<Google::Apis::ClassroomV1beta1::Student>]
        attr_accessor :students
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @students = args[:students] unless args[:students].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
    end
  end
end
