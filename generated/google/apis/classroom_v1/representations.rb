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
      
      class Course
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveFolder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseMaterialSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseMaterial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YouTubeVideo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCoursesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseAlias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCourseAliasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuardianInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardianInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuardiansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Guardian
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Name
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Teacher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTeachersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Student
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStudentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseWork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Material
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SharedDriveFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleChoiceQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCourseWorkResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StudentSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignmentSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShortAnswerSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleChoiceSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStudentSubmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TurnInStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReclaimStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyAttachmentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Course
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :section, as: 'section'
          property :description_heading, as: 'descriptionHeading'
          property :description, as: 'description'
          property :room, as: 'room'
          property :owner_id, as: 'ownerId'
          property :creation_time, as: 'creationTime'
          property :update_time, as: 'updateTime'
          property :enrollment_code, as: 'enrollmentCode'
          property :course_state, as: 'courseState'
          property :alternate_link, as: 'alternateLink'
          property :teacher_group_email, as: 'teacherGroupEmail'
          property :course_group_email, as: 'courseGroupEmail'
          property :teacher_folder, as: 'teacherFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
          collection :course_material_sets, as: 'courseMaterialSets', class: Google::Apis::ClassroomV1::CourseMaterialSet, decorator: Google::Apis::ClassroomV1::CourseMaterialSet::Representation
      
          property :guardians_enabled, as: 'guardiansEnabled'
        end
      end
      
      class DriveFolder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :alternate_link, as: 'alternateLink'
        end
      end
      
      class CourseMaterialSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::CourseMaterial, decorator: Google::Apis::ClassroomV1::CourseMaterial::Representation
      
        end
      end
      
      class CourseMaterial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :you_tube_video, as: 'youTubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
        end
      end
      
      class DriveFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :alternate_link, as: 'alternateLink'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class YouTubeVideo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :alternate_link, as: 'alternateLink'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :title, as: 'title'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form_url, as: 'formUrl'
          property :response_url, as: 'responseUrl'
          property :title, as: 'title'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListCoursesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :courses, as: 'courses', class: Google::Apis::ClassroomV1::Course, decorator: Google::Apis::ClassroomV1::Course::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CourseAlias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
        end
      end
      
      class ListCourseAliasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases', class: Google::Apis::ClassroomV1::CourseAlias, decorator: Google::Apis::ClassroomV1::CourseAlias::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGuardianInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guardian_invitations, as: 'guardianInvitations', class: Google::Apis::ClassroomV1::GuardianInvitation, decorator: Google::Apis::ClassroomV1::GuardianInvitation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GuardianInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :student_id, as: 'studentId'
          property :invitation_id, as: 'invitationId'
          property :invited_email_address, as: 'invitedEmailAddress'
          property :state, as: 'state'
          property :creation_time, as: 'creationTime'
        end
      end
      
      class ListGuardiansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guardians, as: 'guardians', class: Google::Apis::ClassroomV1::Guardian, decorator: Google::Apis::ClassroomV1::Guardian::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Guardian
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :student_id, as: 'studentId'
          property :guardian_id, as: 'guardianId'
          property :guardian_profile, as: 'guardianProfile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
          property :invited_email_address, as: 'invitedEmailAddress'
        end
      end
      
      class UserProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name', class: Google::Apis::ClassroomV1::Name, decorator: Google::Apis::ClassroomV1::Name::Representation
      
          property :email_address, as: 'emailAddress'
          property :photo_url, as: 'photoUrl'
          collection :permissions, as: 'permissions', class: Google::Apis::ClassroomV1::GlobalPermission, decorator: Google::Apis::ClassroomV1::GlobalPermission::Representation
      
        end
      end
      
      class Name
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :given_name, as: 'givenName'
          property :family_name, as: 'familyName'
          property :full_name, as: 'fullName'
        end
      end
      
      class GlobalPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission'
        end
      end
      
      class Teacher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :user_id, as: 'userId'
          property :profile, as: 'profile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
        end
      end
      
      class ListTeachersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :teachers, as: 'teachers', class: Google::Apis::ClassroomV1::Teacher, decorator: Google::Apis::ClassroomV1::Teacher::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Student
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :user_id, as: 'userId'
          property :profile, as: 'profile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
          property :student_work_folder, as: 'studentWorkFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
        end
      end
      
      class ListStudentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :students, as: 'students', class: Google::Apis::ClassroomV1::Student, decorator: Google::Apis::ClassroomV1::Student::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Invitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :user_id, as: 'userId'
          property :course_id, as: 'courseId'
          property :role, as: 'role'
        end
      end
      
      class ListInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::ClassroomV1::Invitation, decorator: Google::Apis::ClassroomV1::Invitation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CourseWork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :id, as: 'id'
          property :title, as: 'title'
          property :description, as: 'description'
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::Material, decorator: Google::Apis::ClassroomV1::Material::Representation
      
          property :state, as: 'state'
          property :alternate_link, as: 'alternateLink'
          property :creation_time, as: 'creationTime'
          property :update_time, as: 'updateTime'
          property :due_date, as: 'dueDate', class: Google::Apis::ClassroomV1::Date, decorator: Google::Apis::ClassroomV1::Date::Representation
      
          property :due_time, as: 'dueTime', class: Google::Apis::ClassroomV1::TimeOfDay, decorator: Google::Apis::ClassroomV1::TimeOfDay::Representation
      
          property :max_points, as: 'maxPoints'
          property :work_type, as: 'workType'
          property :associated_with_developer, as: 'associatedWithDeveloper'
          property :submission_modification_mode, as: 'submissionModificationMode'
          property :assignment, as: 'assignment', class: Google::Apis::ClassroomV1::Assignment, decorator: Google::Apis::ClassroomV1::Assignment::Representation
      
          property :multiple_choice_question, as: 'multipleChoiceQuestion', class: Google::Apis::ClassroomV1::MultipleChoiceQuestion, decorator: Google::Apis::ClassroomV1::MultipleChoiceQuestion::Representation
      
        end
      end
      
      class Material
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::SharedDriveFile, decorator: Google::Apis::ClassroomV1::SharedDriveFile::Representation
      
          property :youtube_video, as: 'youtubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
        end
      end
      
      class SharedDriveFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :share_mode, as: 'shareMode'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :year, as: 'year'
          property :month, as: 'month'
          property :day, as: 'day'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :seconds, as: 'seconds'
          property :nanos, as: 'nanos'
        end
      end
      
      class Assignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :student_work_folder, as: 'studentWorkFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
        end
      end
      
      class MultipleChoiceQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :choices, as: 'choices'
        end
      end
      
      class ListCourseWorkResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :course_work, as: 'courseWork', class: Google::Apis::ClassroomV1::CourseWork, decorator: Google::Apis::ClassroomV1::CourseWork::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class StudentSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :course_work_id, as: 'courseWorkId'
          property :id, as: 'id'
          property :user_id, as: 'userId'
          property :creation_time, as: 'creationTime'
          property :update_time, as: 'updateTime'
          property :state, as: 'state'
          property :late, as: 'late'
          property :draft_grade, as: 'draftGrade'
          property :assigned_grade, as: 'assignedGrade'
          property :alternate_link, as: 'alternateLink'
          property :course_work_type, as: 'courseWorkType'
          property :associated_with_developer, as: 'associatedWithDeveloper'
          property :assignment_submission, as: 'assignmentSubmission', class: Google::Apis::ClassroomV1::AssignmentSubmission, decorator: Google::Apis::ClassroomV1::AssignmentSubmission::Representation
      
          property :short_answer_submission, as: 'shortAnswerSubmission', class: Google::Apis::ClassroomV1::ShortAnswerSubmission, decorator: Google::Apis::ClassroomV1::ShortAnswerSubmission::Representation
      
          property :multiple_choice_submission, as: 'multipleChoiceSubmission', class: Google::Apis::ClassroomV1::MultipleChoiceSubmission, decorator: Google::Apis::ClassroomV1::MultipleChoiceSubmission::Representation
      
        end
      end
      
      class AssignmentSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::ClassroomV1::Attachment, decorator: Google::Apis::ClassroomV1::Attachment::Representation
      
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :you_tube_video, as: 'youTubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
        end
      end
      
      class ShortAnswerSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
        end
      end
      
      class MultipleChoiceSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
        end
      end
      
      class ListStudentSubmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :student_submissions, as: 'studentSubmissions', class: Google::Apis::ClassroomV1::StudentSubmission, decorator: Google::Apis::ClassroomV1::StudentSubmission::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class TurnInStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReclaimStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReturnStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ModifyAttachmentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_attachments, as: 'addAttachments', class: Google::Apis::ClassroomV1::Attachment, decorator: Google::Apis::ClassroomV1::Attachment::Representation
      
        end
      end
    end
  end
end
