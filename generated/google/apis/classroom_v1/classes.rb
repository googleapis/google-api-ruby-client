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
    module ClassroomV1
      
      # A Course in Classroom.
      class Course
        include Google::Apis::Core::Hashable
      
        # Identifier for this course assigned by Classroom. When creating a course, you
        # may optionally set this identifier to an alias string in the request to create
        # a corresponding alias. The `id` is still assigned by Classroom and cannot be
        # updated after the course is created. Specifying this field in a course update
        # mask results in an error.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the course. For example, "10th Grade Biology". The name is required.
        # It must be between 1 and 750 characters and a valid UTF-8 string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Section of the course. For example, "Period 2". If set, this field must be a
        # valid UTF-8 string and no longer than 2800 characters.
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # Optional heading for the description. For example, "Welcome to 10th Grade
        # Biology." If set, this field must be a valid UTF-8 string and no longer than
        # 3600 characters.
        # Corresponds to the JSON property `descriptionHeading`
        # @return [String]
        attr_accessor :description_heading
      
        # Optional description. For example, "We'll be learning about the structure of
        # living creatures from a combination of textbooks, guest lectures, and lab work.
        # Expect to be excited!" If set, this field must be a valid UTF-8 string and no
        # longer than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional room location. For example, "301". If set, this field must be a valid
        # UTF-8 string and no longer than 650 characters.
        # Corresponds to the JSON property `room`
        # @return [String]
        attr_accessor :room
      
        # The identifier of the owner of a course. When specified as a parameter of a
        # create course request, this field is required. The identifier can be one of
        # the following: * the numeric identifier for the user * the email address of
        # the user * the string literal `"me"`, indicating the requesting user This must
        # be set in a create request. Specifying this field in a course update mask
        # results in an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `ownerId`
        # @return [String]
        attr_accessor :owner_id
      
        # Creation time of the course. Specifying this field in a course update mask
        # results in an error. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Time of the most recent update to this course. Specifying this field in a
        # course update mask results in an error. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Enrollment code to use when joining this course. Specifying this field in a
        # course update mask results in an error. Read-only.
        # Corresponds to the JSON property `enrollmentCode`
        # @return [String]
        attr_accessor :enrollment_code
      
        # State of the course. If unspecified, the default state is `PROVISIONED`.
        # Corresponds to the JSON property `courseState`
        # @return [String]
        attr_accessor :course_state
      
        # Absolute link to this course in the Classroom web UI. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # The email address of a Google group containing all teachers of the course.
        # This group does not accept email and can only be used for permissions. Read-
        # only.
        # Corresponds to the JSON property `teacherGroupEmail`
        # @return [String]
        attr_accessor :teacher_group_email
      
        # The email address of a Google group containing all members of the course. This
        # group does not accept email and can only be used for permissions. Read-only.
        # Corresponds to the JSON property `courseGroupEmail`
        # @return [String]
        attr_accessor :course_group_email
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `teacherFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :teacher_folder
      
        # Sets of materials that appear on the "about" page of this course. Read-only.
        # Corresponds to the JSON property `courseMaterialSets`
        # @return [Array<Google::Apis::ClassroomV1::CourseMaterialSet>]
        attr_accessor :course_material_sets
      
        # Whether or not guardian notifications are enabled for this course. Read-only.
        # Corresponds to the JSON property `guardiansEnabled`
        # @return [Boolean]
        attr_accessor :guardians_enabled
        alias_method :guardians_enabled?, :guardians_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @section = args[:section] if args.key?(:section)
          @description_heading = args[:description_heading] if args.key?(:description_heading)
          @description = args[:description] if args.key?(:description)
          @room = args[:room] if args.key?(:room)
          @owner_id = args[:owner_id] if args.key?(:owner_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @enrollment_code = args[:enrollment_code] if args.key?(:enrollment_code)
          @course_state = args[:course_state] if args.key?(:course_state)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @teacher_group_email = args[:teacher_group_email] if args.key?(:teacher_group_email)
          @course_group_email = args[:course_group_email] if args.key?(:course_group_email)
          @teacher_folder = args[:teacher_folder] if args.key?(:teacher_folder)
          @course_material_sets = args[:course_material_sets] if args.key?(:course_material_sets)
          @guardians_enabled = args[:guardians_enabled] if args.key?(:guardians_enabled)
        end
      end
      
      # Representation of a Google Drive folder.
      class DriveFolder
        include Google::Apis::Core::Hashable
      
        # Drive API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the Drive folder. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that can be used to access the Drive folder. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
        end
      end
      
      # A set of materials that appears on the "About" page of the course. These
      # materials might include a syllabus, schedule, or other background information
      # relating to the course as a whole.
      class CourseMaterialSet
        include Google::Apis::Core::Hashable
      
        # Title for this set.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Materials attached to this set.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::CourseMaterial>]
        attr_accessor :materials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @materials = args[:materials] if args.key?(:materials)
        end
      end
      
      # A material attached to a course as part of a material set.
      class CourseMaterial
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # YouTube video item.
        # Corresponds to the JSON property `youTubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :you_tube_video
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @you_tube_video = args[:you_tube_video] if args.key?(:you_tube_video)
          @link = args[:link] if args.key?(:link)
          @form = args[:form] if args.key?(:form)
        end
      end
      
      # Representation of a Google Drive file.
      class DriveFile
        include Google::Apis::Core::Hashable
      
        # Drive API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the Drive item. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that can be used to access the Drive item. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # URL of a thumbnail image of the Drive item. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
        end
      end
      
      # YouTube video item.
      class YouTubeVideo
        include Google::Apis::Core::Hashable
      
        # YouTube API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the YouTube video. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that can be used to view the YouTube video. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # URL of a thumbnail image of the YouTube video. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
        end
      end
      
      # URL item.
      class Link
        include Google::Apis::Core::Hashable
      
        # URL to link to. This must be a valid UTF-8 string containing between 1 and
        # 2024 characters.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Title of the target of the URL. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL of a thumbnail image of the target URL. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @title = args[:title] if args.key?(:title)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
        end
      end
      
      # Google Forms item.
      class Form
        include Google::Apis::Core::Hashable
      
        # URL of the form.
        # Corresponds to the JSON property `formUrl`
        # @return [String]
        attr_accessor :form_url
      
        # URL of the form responses document. Only set if respsonses have been recorded
        # and only when the requesting user is an editor of the form. Read-only.
        # Corresponds to the JSON property `responseUrl`
        # @return [String]
        attr_accessor :response_url
      
        # Title of the Form. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL of a thumbnail image of the Form. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @form_url = args[:form_url] if args.key?(:form_url)
          @response_url = args[:response_url] if args.key?(:response_url)
          @title = args[:title] if args.key?(:title)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
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
      
        # Courses that match the list request.
        # Corresponds to the JSON property `courses`
        # @return [Array<Google::Apis::ClassroomV1::Course>]
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
          @courses = args[:courses] if args.key?(:courses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Alternative identifier for a course. An alias uniquely identifies a course. It
      # must be unique within one of the following scopes: * domain: A domain-scoped
      # alias is visible to all users within the alias creator's domain and can be
      # created only by a domain admin. A domain-scoped alias is often used when a
      # course has an identifier external to Classroom. * project: A project-scoped
      # alias is visible to any request from an application using the Developer
      # Console project ID that created the alias and can be created by any project. A
      # project-scoped alias is often used when an application has alternative
      # identifiers. A random value can also be used to avoid duplicate courses in the
      # event of transmission failures, as retrying a request will return `
      # ALREADY_EXISTS` if a previous one has succeeded.
      class CourseAlias
        include Google::Apis::Core::Hashable
      
        # Alias string. The format of the string indicates the desired alias scoping. * `
        # d:` indicates a domain-scoped alias. Example: `d:math_101` * `p:` indicates a
        # project-scoped alias. Example: `p:abc123` This field has a maximum length of
        # 256 characters.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
        end
      end
      
      # Response when listing course aliases.
      class ListCourseAliasesResponse
        include Google::Apis::Core::Hashable
      
        # The course aliases.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::ClassroomV1::CourseAlias>]
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
          @aliases = args[:aliases] if args.key?(:aliases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing guardian invitations.
      class ListGuardianInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # Guardian invitations that matched the list request.
        # Corresponds to the JSON property `guardianInvitations`
        # @return [Array<Google::Apis::ClassroomV1::GuardianInvitation>]
        attr_accessor :guardian_invitations
      
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
          @guardian_invitations = args[:guardian_invitations] if args.key?(:guardian_invitations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An invitation to become the guardian of a specified user, sent to a specified
      # email address.
      class GuardianInvitation
        include Google::Apis::Core::Hashable
      
        # ID of the student (in standard format)
        # Corresponds to the JSON property `studentId`
        # @return [String]
        attr_accessor :student_id
      
        # Unique identifier for this invitation. Read-only.
        # Corresponds to the JSON property `invitationId`
        # @return [String]
        attr_accessor :invitation_id
      
        # Email address that the invitation was sent to. This field is only visible to
        # domain administrators.
        # Corresponds to the JSON property `invitedEmailAddress`
        # @return [String]
        attr_accessor :invited_email_address
      
        # The state that this invitation is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The time that this invitation was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @student_id = args[:student_id] if args.key?(:student_id)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
          @invited_email_address = args[:invited_email_address] if args.key?(:invited_email_address)
          @state = args[:state] if args.key?(:state)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
        end
      end
      
      # Response when listing guardians.
      class ListGuardiansResponse
        include Google::Apis::Core::Hashable
      
        # Guardians on this page of results that met the criteria specified in the
        # request.
        # Corresponds to the JSON property `guardians`
        # @return [Array<Google::Apis::ClassroomV1::Guardian>]
        attr_accessor :guardians
      
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
          @guardians = args[:guardians] if args.key?(:guardians)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Association between a student and a guardian of that student. The guardian may
      # receive information about the student's course work.
      class Guardian
        include Google::Apis::Core::Hashable
      
        # Identifier for the student to whom the guardian relationship applies.
        # Corresponds to the JSON property `studentId`
        # @return [String]
        attr_accessor :student_id
      
        # Identifier for the guardian.
        # Corresponds to the JSON property `guardianId`
        # @return [String]
        attr_accessor :guardian_id
      
        # Global information for a user.
        # Corresponds to the JSON property `guardianProfile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :guardian_profile
      
        # The email address to which the initial guardian invitation was sent. This
        # field is only visible to domain administrators.
        # Corresponds to the JSON property `invitedEmailAddress`
        # @return [String]
        attr_accessor :invited_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @student_id = args[:student_id] if args.key?(:student_id)
          @guardian_id = args[:guardian_id] if args.key?(:guardian_id)
          @guardian_profile = args[:guardian_profile] if args.key?(:guardian_profile)
          @invited_email_address = args[:invited_email_address] if args.key?(:invited_email_address)
        end
      end
      
      # Global information for a user.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # Identifier of the user. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Details of the user's name.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::ClassroomV1::Name]
        attr_accessor :name
      
        # Email address of the user. Read-only.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # URL of user's profile photo. Read-only.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # Global permissions of the user. Read-only.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ClassroomV1::GlobalPermission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @email_address = args[:email_address] if args.key?(:email_address)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Details of the user's name.
      class Name
        include Google::Apis::Core::Hashable
      
        # The user's first name. Read-only.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # The user's last name. Read-only.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The user's full name formed by concatenating the first and last name values.
        # Read-only.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @given_name = args[:given_name] if args.key?(:given_name)
          @family_name = args[:family_name] if args.key?(:family_name)
          @full_name = args[:full_name] if args.key?(:full_name)
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
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Teacher of a course.
      class Teacher
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier of the user. When specified as a parameter of a request, this
        # identifier can be one of the following: * the numeric identifier for the user *
        # the email address of the user * the string literal `"me"`, indicating the
        # requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @user_id = args[:user_id] if args.key?(:user_id)
          @profile = args[:profile] if args.key?(:profile)
        end
      end
      
      # Response when listing teachers.
      class ListTeachersResponse
        include Google::Apis::Core::Hashable
      
        # Teachers who match the list request.
        # Corresponds to the JSON property `teachers`
        # @return [Array<Google::Apis::ClassroomV1::Teacher>]
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
          @teachers = args[:teachers] if args.key?(:teachers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Student in a course.
      class Student
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier of the user. When specified as a parameter of a request, this
        # identifier can be one of the following: * the numeric identifier for the user *
        # the email address of the user * the string literal `"me"`, indicating the
        # requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :profile
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `studentWorkFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :student_work_folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @user_id = args[:user_id] if args.key?(:user_id)
          @profile = args[:profile] if args.key?(:profile)
          @student_work_folder = args[:student_work_folder] if args.key?(:student_work_folder)
        end
      end
      
      # Response when listing students.
      class ListStudentsResponse
        include Google::Apis::Core::Hashable
      
        # Students who match the list request.
        # Corresponds to the JSON property `students`
        # @return [Array<Google::Apis::ClassroomV1::Student>]
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
          @students = args[:students] if args.key?(:students)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An invitation to join a course.
      class Invitation
        include Google::Apis::Core::Hashable
      
        # Identifier assigned by Classroom. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifier of the invited user. When specified as a parameter of a request,
        # this identifier can be set to one of the following: * the numeric identifier
        # for the user * the email address of the user * the string literal `"me"`,
        # indicating the requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Identifier of the course to invite the user to.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Role to invite the user to have. Must not be `COURSE_ROLE_UNSPECIFIED`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @user_id = args[:user_id] if args.key?(:user_id)
          @course_id = args[:course_id] if args.key?(:course_id)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Response when listing invitations.
      class ListInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # Invitations that match the list request.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::ClassroomV1::Invitation>]
        attr_accessor :invitations
      
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
          @invitations = args[:invitations] if args.key?(:invitations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Course work created by a teacher for students of the course.
      class CourseWork
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Classroom-assigned identifier of this course work, unique per course. Read-
        # only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of this course work. The title must be a valid UTF-8 string containing
        # between 1 and 3000 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional description of this course work. If set, the description must be a
        # valid UTF-8 string containing no more than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Additional materials. CourseWork must have no more than 20 material items.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::Material>]
        attr_accessor :materials
      
        # Status of this course work. If unspecified, the default state is `DRAFT`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Absolute link to this course work in the Classroom web UI. This is only
        # populated if `state` is `PUBLISHED`. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Timestamp when this course work was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Timestamp of the most recent change to this course work. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and time
        # zone are either specified elsewhere or are not significant. The date is
        # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
        # year and month where the day is not significant, e.g. credit card expiration
        # date. The year may be 0 to represent a month and day independent of year, e.g.
        # anniversary date. Related types are google.type.TimeOfDay and `google.protobuf.
        # Timestamp`.
        # Corresponds to the JSON property `dueDate`
        # @return [Google::Apis::ClassroomV1::Date]
        attr_accessor :due_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may chose to allow leap seconds. Related types
        # are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dueTime`
        # @return [Google::Apis::ClassroomV1::TimeOfDay]
        attr_accessor :due_time
      
        # Maximum grade for this course work. If zero or unspecified, this assignment is
        # considered ungraded. This must be a non-negative integer value.
        # Corresponds to the JSON property `maxPoints`
        # @return [Float]
        attr_accessor :max_points
      
        # Type of this course work. The type is set when the course work is created and
        # cannot be changed. When creating course work, this must be `ASSIGNMENT`.
        # Corresponds to the JSON property `workType`
        # @return [String]
        attr_accessor :work_type
      
        # Whether this course work item is associated with the Developer Console project
        # making the request. See google.classroom.Work.CreateCourseWork for more
        # details. Read-only.
        # Corresponds to the JSON property `associatedWithDeveloper`
        # @return [Boolean]
        attr_accessor :associated_with_developer
        alias_method :associated_with_developer?, :associated_with_developer
      
        # Setting to determine when students are allowed to modify submissions. If
        # unspecified, the default value is `MODIFIABLE_UNTIL_TURNED_IN`.
        # Corresponds to the JSON property `submissionModificationMode`
        # @return [String]
        attr_accessor :submission_modification_mode
      
        # Additional details for assignments.
        # Corresponds to the JSON property `assignment`
        # @return [Google::Apis::ClassroomV1::Assignment]
        attr_accessor :assignment
      
        # Additional details for multiple-choice questions.
        # Corresponds to the JSON property `multipleChoiceQuestion`
        # @return [Google::Apis::ClassroomV1::MultipleChoiceQuestion]
        attr_accessor :multiple_choice_question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @description = args[:description] if args.key?(:description)
          @materials = args[:materials] if args.key?(:materials)
          @state = args[:state] if args.key?(:state)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @due_date = args[:due_date] if args.key?(:due_date)
          @due_time = args[:due_time] if args.key?(:due_time)
          @max_points = args[:max_points] if args.key?(:max_points)
          @work_type = args[:work_type] if args.key?(:work_type)
          @associated_with_developer = args[:associated_with_developer] if args.key?(:associated_with_developer)
          @submission_modification_mode = args[:submission_modification_mode] if args.key?(:submission_modification_mode)
          @assignment = args[:assignment] if args.key?(:assignment)
          @multiple_choice_question = args[:multiple_choice_question] if args.key?(:multiple_choice_question)
        end
      end
      
      # Material attached to course work. When creating attachments, only the Link
      # field may be specified.
      class Material
        include Google::Apis::Core::Hashable
      
        # Drive file that is used as material for course work.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::SharedDriveFile]
        attr_accessor :drive_file
      
        # YouTube video item.
        # Corresponds to the JSON property `youtubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :youtube_video
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @youtube_video = args[:youtube_video] if args.key?(:youtube_video)
          @link = args[:link] if args.key?(:link)
          @form = args[:form] if args.key?(:form)
        end
      end
      
      # Drive file that is used as material for course work.
      class SharedDriveFile
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # Mechanism by which students access the Drive item.
        # Corresponds to the JSON property `shareMode`
        # @return [String]
        attr_accessor :share_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @share_mode = args[:share_mode] if args.key?(:share_mode)
        end
      end
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and time
      # zone are either specified elsewhere or are not significant. The date is
      # relative to the Proleptic Gregorian Calendar. The day may be 0 to represent a
      # year and month where the day is not significant, e.g. credit card expiration
      # date. The year may be 0 to represent a month and day independent of year, e.g.
      # anniversary date. Related types are google.type.TimeOfDay and `google.protobuf.
      # Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if
        # specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @year = args[:year] if args.key?(:year)
          @month = args[:month] if args.key?(:month)
          @day = args[:day] if args.key?(:day)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may chose to allow leap seconds. Related types
      # are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @seconds = args[:seconds] if args.key?(:seconds)
          @nanos = args[:nanos] if args.key?(:nanos)
        end
      end
      
      # Additional details for assignments.
      class Assignment
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `studentWorkFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :student_work_folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @student_work_folder = args[:student_work_folder] if args.key?(:student_work_folder)
        end
      end
      
      # Additional details for multiple-choice questions.
      class MultipleChoiceQuestion
        include Google::Apis::Core::Hashable
      
        # Possible choices.
        # Corresponds to the JSON property `choices`
        # @return [Array<String>]
        attr_accessor :choices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choices = args[:choices] if args.key?(:choices)
        end
      end
      
      # Response when listing course work.
      class ListCourseWorkResponse
        include Google::Apis::Core::Hashable
      
        # Course work items that match the request.
        # Corresponds to the JSON property `courseWork`
        # @return [Array<Google::Apis::ClassroomV1::CourseWork>]
        attr_accessor :course_work
      
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
          @course_work = args[:course_work] if args.key?(:course_work)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Student submission for course work. StudentSubmission items are generated when
      # a CourseWork item is created. StudentSubmissions that have never been accessed
      # (i.e. with `state` = NEW) may not have a creation time or update time.
      class StudentSubmission
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier for the course work this corresponds to. Read-only.
        # Corresponds to the JSON property `courseWorkId`
        # @return [String]
        attr_accessor :course_work_id
      
        # Classroom-assigned Identifier for the student submission. This is unique among
        # submissions for the relevant course work. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifier for the student that owns this submission. Read-only.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # Creation time of this submission. This may be unset if the student has not
        # accessed this item. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Last update time of this submission. This may be unset if the student has not
        # accessed this item. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # State of this submission. Read-only.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Whether this submission is late. Read-only.
        # Corresponds to the JSON property `late`
        # @return [Boolean]
        attr_accessor :late
        alias_method :late?, :late
      
        # Optional pending grade. If unset, no grade was set. This must be a non-
        # negative integer value. This is only visible to and modifiable by course
        # teachers.
        # Corresponds to the JSON property `draftGrade`
        # @return [Float]
        attr_accessor :draft_grade
      
        # Optional grade. If unset, no grade was set. This must be a non-negative
        # integer value. This may be modified only by course teachers.
        # Corresponds to the JSON property `assignedGrade`
        # @return [Float]
        attr_accessor :assigned_grade
      
        # Absolute link to the submission in the Classroom web UI. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Type of course work this submission is for. Read-only.
        # Corresponds to the JSON property `courseWorkType`
        # @return [String]
        attr_accessor :course_work_type
      
        # Whether this student submission is associated with the Developer Console
        # project making the request. See google.classroom.Work.CreateCourseWork for
        # more details. Read-only.
        # Corresponds to the JSON property `associatedWithDeveloper`
        # @return [Boolean]
        attr_accessor :associated_with_developer
        alias_method :associated_with_developer?, :associated_with_developer
      
        # Student work for an assignment.
        # Corresponds to the JSON property `assignmentSubmission`
        # @return [Google::Apis::ClassroomV1::AssignmentSubmission]
        attr_accessor :assignment_submission
      
        # Student work for a short answer question.
        # Corresponds to the JSON property `shortAnswerSubmission`
        # @return [Google::Apis::ClassroomV1::ShortAnswerSubmission]
        attr_accessor :short_answer_submission
      
        # Student work for a multiple-choice question.
        # Corresponds to the JSON property `multipleChoiceSubmission`
        # @return [Google::Apis::ClassroomV1::MultipleChoiceSubmission]
        attr_accessor :multiple_choice_submission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @course_work_id = args[:course_work_id] if args.key?(:course_work_id)
          @id = args[:id] if args.key?(:id)
          @user_id = args[:user_id] if args.key?(:user_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @state = args[:state] if args.key?(:state)
          @late = args[:late] if args.key?(:late)
          @draft_grade = args[:draft_grade] if args.key?(:draft_grade)
          @assigned_grade = args[:assigned_grade] if args.key?(:assigned_grade)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @course_work_type = args[:course_work_type] if args.key?(:course_work_type)
          @associated_with_developer = args[:associated_with_developer] if args.key?(:associated_with_developer)
          @assignment_submission = args[:assignment_submission] if args.key?(:assignment_submission)
          @short_answer_submission = args[:short_answer_submission] if args.key?(:short_answer_submission)
          @multiple_choice_submission = args[:multiple_choice_submission] if args.key?(:multiple_choice_submission)
        end
      end
      
      # Student work for an assignment.
      class AssignmentSubmission
        include Google::Apis::Core::Hashable
      
        # Attachments added by the student. Drive files that correspond to materials
        # with a share mode of SUBMISSION_COPY may not exist yet if the student has not
        # accessed the assignment in Classroom. Some attachment metadata is only
        # populated if the requesting user has permission to access it. Identifier and
        # alternate_link fields are available, but others (e.g. title) may not be.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::ClassroomV1::Attachment>]
        attr_accessor :attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
        end
      end
      
      # Attachment added to student assignment work. When creating attachments, only
      # the Link field may be specified.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # YouTube video item.
        # Corresponds to the JSON property `youTubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :you_tube_video
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @you_tube_video = args[:you_tube_video] if args.key?(:you_tube_video)
          @link = args[:link] if args.key?(:link)
          @form = args[:form] if args.key?(:form)
        end
      end
      
      # Student work for a short answer question.
      class ShortAnswerSubmission
        include Google::Apis::Core::Hashable
      
        # Student response to a short-answer question.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # Student work for a multiple-choice question.
      class MultipleChoiceSubmission
        include Google::Apis::Core::Hashable
      
        # Student's select choice.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # Response when listing student submissions.
      class ListStudentSubmissionsResponse
        include Google::Apis::Core::Hashable
      
        # Student work that matches the request.
        # Corresponds to the JSON property `studentSubmissions`
        # @return [Array<Google::Apis::ClassroomV1::StudentSubmission>]
        attr_accessor :student_submissions
      
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
          @student_submissions = args[:student_submissions] if args.key?(:student_submissions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request to turn in a student submission.
      class TurnInStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to reclaim a student submission.
      class ReclaimStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to return a student submission.
      class ReturnStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to modify the attachments of a student submission.
      class ModifyAttachmentsRequest
        include Google::Apis::Core::Hashable
      
        # Attachments to add. A student submission may not have more than 20 attachments.
        # This may only contain link attachments.
        # Corresponds to the JSON property `addAttachments`
        # @return [Array<Google::Apis::ClassroomV1::Attachment>]
        attr_accessor :add_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_attachments = args[:add_attachments] if args.key?(:add_attachments)
        end
      end
    end
  end
end
