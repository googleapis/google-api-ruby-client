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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ClassroomV1
      # Google Classroom API
      #
      # Google Classroom API
      #
      # @example
      #    require 'google/apis/classroom_v1'
      #
      #    Classroom = Google::Apis::ClassroomV1 # Alias the module
      #    service = Classroom::ClassroomService.new
      #
      # @see https://developers.google.com/classroom/
      class ClassroomService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://classroom.googleapis.com/', '')
        end
        
        # Creates a course. The user specified in `ownerId` is the owner of the created
        # course and added as a teacher. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to create courses
        # or for access errors. * `NOT_FOUND` if the primary teacher is not a valid user.
        # * `FAILED_PRECONDITION` if the course owner's account is disabled or for the
        # following request errors: * UserGroupsMembershipLimitReached * `ALREADY_EXISTS`
        # if an alias was specified in the `id` and already exists.
        # @param [Google::Apis::ClassroomV1::Course] course_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course(course_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/courses', options)
          command.request_representation = Google::Apis::ClassroomV1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1::Course
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to access the
        # requested course or for access errors. * `NOT_FOUND` if no course exists with
        # the requested ID.
        # @param [String] id
        #   Identifier of the course to return. This identifier can be either the
        #   Classroom-assigned identifier or an alias.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course(id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{id}', options)
          command.response_representation = Google::Apis::ClassroomV1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1::Course
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to modify the
        # requested course or for access errors. * `NOT_FOUND` if no course exists with
        # the requested ID. * `FAILED_PRECONDITION` for the following request errors: *
        # CourseNotModifiable
        # @param [String] id
        #   Identifier of the course to update. This identifier can be either the
        #   Classroom-assigned identifier or an alias.
        # @param [Google::Apis::ClassroomV1::Course] course_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_course(id, course_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/courses/{id}', options)
          command.request_representation = Google::Apis::ClassroomV1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1::Course
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates one or more fields in a course. This method returns the following
        # error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
        # modify the requested course or for access errors. * `NOT_FOUND` if no course
        # exists with the requested ID. * `INVALID_ARGUMENT` if invalid fields are
        # specified in the update mask or if no update mask is supplied. * `
        # FAILED_PRECONDITION` for the following request errors: * CourseNotModifiable
        # @param [String] id
        #   Identifier of the course to update. This identifier can be either the
        #   Classroom-assigned identifier or an alias.
        # @param [Google::Apis::ClassroomV1::Course] course_object
        # @param [String] update_mask
        #   Mask that identifies which fields on the course to update. This field is
        #   required to do an update. The update will fail if invalid fields are specified.
        #   The following fields are valid: * `name` * `section` * `descriptionHeading` *
        #   `description` * `room` * `courseState` When set in a query parameter, this
        #   field should be specified as `updateMask=,,...`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_course(id, course_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v1/courses/{id}', options)
          command.request_representation = Google::Apis::ClassroomV1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1::Course
          command.params['id'] = id unless id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to delete the
        # requested course or for access errors. * `NOT_FOUND` if no course exists with
        # the requested ID.
        # @param [String] id
        #   Identifier of the course to delete. This identifier can be either the
        #   Classroom-assigned identifier or an alias.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course(id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/courses/{id}', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of courses that the requesting user is permitted to view,
        # restricted to those that match the request. This method returns the following
        # error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if
        # the query argument is malformed. * `NOT_FOUND` if any users specified in the
        # query arguments do not exist.
        # @param [String] student_id
        #   Restricts returned courses to those having a student with the specified
        #   identifier. The identifier can be one of the following: * the numeric
        #   identifier for the user * the email address of the user * the string literal `"
        #   me"`, indicating the requesting user
        # @param [String] teacher_id
        #   Restricts returned courses to those having a teacher with the specified
        #   identifier. The identifier can be one of the following: * the numeric
        #   identifier for the user * the email address of the user * the string literal `"
        #   me"`, indicating the requesting user
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero or unspecified indicates that the
        #   server may assign a maximum. The server may return fewer than the specified
        #   number of results.
        # @param [String] page_token
        #   nextPageToken value returned from a previous list call, indicating that the
        #   subsequent page of results should be returned. The list request must be
        #   otherwise identical to the one that resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::ListCoursesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::ListCoursesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_courses(student_id: nil, teacher_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses', options)
          command.response_representation = Google::Apis::ClassroomV1::ListCoursesResponse::Representation
          command.response_class = Google::Apis::ClassroomV1::ListCoursesResponse
          command.query['studentId'] = student_id unless student_id.nil?
          command.query['teacherId'] = teacher_id unless teacher_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an alias for a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to create the
        # alias or for access errors. * `NOT_FOUND` if the course does not exist. * `
        # ALREADY_EXISTS` if the alias already exists.
        # @param [String] course_id
        #   Identifier of the course to alias. This identifier can be either the Classroom-
        #   assigned identifier or an alias.
        # @param [Google::Apis::ClassroomV1::CourseAlias] course_alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::CourseAlias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::CourseAlias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_alias(course_id, course_alias_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/courses/{courseId}/aliases', options)
          command.request_representation = Google::Apis::ClassroomV1::CourseAlias::Representation
          command.request_object = course_alias_object
          command.response_representation = Google::Apis::ClassroomV1::CourseAlias::Representation
          command.response_class = Google::Apis::ClassroomV1::CourseAlias
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an alias of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to remove the
        # alias or for access errors. * `NOT_FOUND` if the alias does not exist.
        # @param [String] course_id
        #   Identifier of the course whose alias should be deleted. This identifier can be
        #   either the Classroom-assigned identifier or an alias.
        # @param [String] alias_
        #   Alias to delete. This may not be the Classroom-assigned identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_alias(course_id, alias_, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/courses/{courseId}/aliases/{alias}', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['alias'] = alias_ unless alias_.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of aliases for a course. This method returns the following
        # error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
        # access the course or for access errors. * `NOT_FOUND` if the course does not
        # exist.
        # @param [String] course_id
        #   The identifier of the course. This identifier can be either the Classroom-
        #   assigned identifier or an alias.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero or unspecified indicates that the
        #   server may assign a maximum. The server may return fewer than the specified
        #   number of results.
        # @param [String] page_token
        #   nextPageToken value returned from a previous list call, indicating that the
        #   subsequent page of results should be returned. The list request must be
        #   otherwise identical to the one that resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::ListCourseAliasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::ListCourseAliasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_aliases(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{courseId}/aliases', options)
          command.response_representation = Google::Apis::ClassroomV1::ListCourseAliasesResponse::Representation
          command.response_class = Google::Apis::ClassroomV1::ListCourseAliasesResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to create
        # teachers in this course or for access errors. * `NOT_FOUND` if the requested
        # course ID does not exist. * `FAILED_PRECONDITION` if the requested user's
        # account is disabled, for the following request errors: *
        # CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached *
        # UserGroupsMembershipLimitReached * `ALREADY_EXISTS` if the user is already a
        # teacher or student in the course.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [Google::Apis::ClassroomV1::Teacher] teacher_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Teacher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Teacher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_teacher(course_id, teacher_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/courses/{courseId}/teachers', options)
          command.request_representation = Google::Apis::ClassroomV1::Teacher::Representation
          command.request_object = teacher_object
          command.response_representation = Google::Apis::ClassroomV1::Teacher::Representation
          command.response_class = Google::Apis::ClassroomV1::Teacher
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to view teachers
        # of this course or for access errors. * `NOT_FOUND` if no teacher of this
        # course has the requested ID or if the course does not exist.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the teacher to return. The identifier can be one of the
        #   following: * the numeric identifier for the user * the email address of the
        #   user * the string literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Teacher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Teacher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course_teacher(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{courseId}/teachers/{userId}', options)
          command.response_representation = Google::Apis::ClassroomV1::Teacher::Representation
          command.response_class = Google::Apis::ClassroomV1::Teacher
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to delete
        # teachers of this course or for access errors. * `NOT_FOUND` if no teacher of
        # this course has the requested ID or if the course does not exist. * `
        # FAILED_PRECONDITION` if the requested ID belongs to the primary teacher of
        # this course.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the teacher to delete. The identifier can be one of the
        #   following: * the numeric identifier for the user * the email address of the
        #   user * the string literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_teacher(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/courses/{courseId}/teachers/{userId}', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of teachers of this course that the requester is permitted to
        # view. This method returns the following error codes: * `NOT_FOUND` if the
        # course does not exist. * `PERMISSION_DENIED` for access errors.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero means no maximum. The server may
        #   return fewer than the specified number of results.
        # @param [String] page_token
        #   nextPageToken value returned from a previous list call, indicating that the
        #   subsequent page of results should be returned. The list request must be
        #   otherwise identical to the one that resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::ListTeachersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::ListTeachersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_teachers(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{courseId}/teachers', options)
          command.response_representation = Google::Apis::ClassroomV1::ListTeachersResponse::Representation
          command.response_class = Google::Apis::ClassroomV1::ListTeachersResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a user as a student of a course. This method returns the following error
        # codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create
        # students in this course or for access errors. * `NOT_FOUND` if the requested
        # course ID does not exist. * `FAILED_PRECONDITION` if the requested user's
        # account is disabled, for the following request errors: *
        # CourseMemberLimitReached * CourseNotModifiable *
        # UserGroupsMembershipLimitReached * `ALREADY_EXISTS` if the user is already a
        # student or teacher in the course.
        # @param [String] course_id
        #   Identifier of the course to create the student in. This identifier can be
        #   either the Classroom-assigned identifier or an alias.
        # @param [Google::Apis::ClassroomV1::Student] student_object
        # @param [String] enrollment_code
        #   Enrollment code of the course to create the student in. This code is required
        #   if userId corresponds to the requesting user; it may be omitted if the
        #   requesting user has administrative permissions to create students for any user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Student] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Student]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_student(course_id, student_object = nil, enrollment_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/courses/{courseId}/students', options)
          command.request_representation = Google::Apis::ClassroomV1::Student::Representation
          command.request_object = student_object
          command.response_representation = Google::Apis::ClassroomV1::Student::Representation
          command.response_class = Google::Apis::ClassroomV1::Student
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['enrollmentCode'] = enrollment_code unless enrollment_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a student of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to view students
        # of this course or for access errors. * `NOT_FOUND` if no student of this
        # course has the requested ID or if the course does not exist.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the student to return. The identifier can be one of the
        #   following: * the numeric identifier for the user * the email address of the
        #   user * the string literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Student] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Student]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course_student(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{courseId}/students/{userId}', options)
          command.response_representation = Google::Apis::ClassroomV1::Student::Representation
          command.response_class = Google::Apis::ClassroomV1::Student
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a student of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to delete
        # students of this course or for access errors. * `NOT_FOUND` if no student of
        # this course has the requested ID or if the course does not exist.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the student to delete. The identifier can be one of the
        #   following: * the numeric identifier for the user * the email address of the
        #   user * the string literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_student(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/courses/{courseId}/students/{userId}', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of students of this course that the requester is permitted to
        # view. This method returns the following error codes: * `NOT_FOUND` if the
        # course does not exist. * `PERMISSION_DENIED` for access errors.
        # @param [String] course_id
        #   Identifier of the course. This identifier can be either the Classroom-assigned
        #   identifier or an alias.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero means no maximum. The server may
        #   return fewer than the specified number of results.
        # @param [String] page_token
        #   nextPageToken value returned from a previous list call, indicating that the
        #   subsequent page of results should be returned. The list request must be
        #   otherwise identical to the one that resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::ListStudentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::ListStudentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_students(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/courses/{courseId}/students', options)
          command.response_representation = Google::Apis::ClassroomV1::ListStudentsResponse::Representation
          command.response_class = Google::Apis::ClassroomV1::ListStudentsResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an invitation. Only one invitation for a user and course may exist at
        # a time. Delete and re-create an invitation to make changes. This method
        # returns the following error codes: * `PERMISSION_DENIED` if the requesting
        # user is not permitted to create invitations for this course or for access
        # errors. * `NOT_FOUND` if the course or the user does not exist. * `
        # FAILED_PRECONDITION` if the requested user's account is disabled or if the
        # user already has this role or a role with greater permissions. * `
        # ALREADY_EXISTS` if an invitation for the specified user and course already
        # exists.
        # @param [Google::Apis::ClassroomV1::Invitation] invitation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Invitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Invitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_invitation(invitation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/invitations', options)
          command.request_representation = Google::Apis::ClassroomV1::Invitation::Representation
          command.request_object = invitation_object
          command.response_representation = Google::Apis::ClassroomV1::Invitation::Representation
          command.response_class = Google::Apis::ClassroomV1::Invitation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns an invitation. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to view the
        # requested invitation or for access errors. * `NOT_FOUND` if no invitation
        # exists with the requested ID.
        # @param [String] id
        #   Identifier of the invitation to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Invitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Invitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_invitation(id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/invitations/{id}', options)
          command.response_representation = Google::Apis::ClassroomV1::Invitation::Representation
          command.response_class = Google::Apis::ClassroomV1::Invitation
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an invitation. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to delete the
        # requested invitation or for access errors. * `NOT_FOUND` if no invitation
        # exists with the requested ID.
        # @param [String] id
        #   Identifier of the invitation to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_invitation(id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/invitations/{id}', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of invitations that the requesting user is permitted to view,
        # restricted to those that match the list request. *Note:* At least one of `
        # user_id` or `course_id` must be supplied. Both fields can be supplied. This
        # method returns the following error codes: * `PERMISSION_DENIED` for access
        # errors.
        # @param [String] user_id
        #   Restricts returned invitations to those for a specific user. The identifier
        #   can be one of the following: * the numeric identifier for the user * the email
        #   address of the user * the string literal `"me"`, indicating the requesting
        #   user
        # @param [String] course_id
        #   Restricts returned invitations to those for a course with the specified
        #   identifier.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero means no maximum. The server may
        #   return fewer than the specified number of results.
        # @param [String] page_token
        #   nextPageToken value returned from a previous list call, indicating that the
        #   subsequent page of results should be returned. The list request must be
        #   otherwise identical to the one that resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::ListInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::ListInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_invitations(user_id: nil, course_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/invitations', options)
          command.response_representation = Google::Apis::ClassroomV1::ListInvitationsResponse::Representation
          command.response_class = Google::Apis::ClassroomV1::ListInvitationsResponse
          command.query['userId'] = user_id unless user_id.nil?
          command.query['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts an invitation, removing it and adding the invited user to the teachers
        # or students (as appropriate) of the specified course. Only the invited user
        # may accept an invitation. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to accept the
        # requested invitation or for access errors. * `FAILED_PRECONDITION` for the
        # following request errors: * CourseMemberLimitReached * CourseNotModifiable *
        # CourseTeacherLimitReached * UserGroupsMembershipLimitReached * `NOT_FOUND` if
        # no invitation exists with the requested ID.
        # @param [String] id
        #   Identifier of the invitation to accept.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_invitation(id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/invitations/{id}:accept', options)
          command.response_representation = Google::Apis::ClassroomV1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1::Empty
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a user profile. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to access this user
        # profile or if no profile exists with the requested ID or for access errors.
        # @param [String] user_id
        #   Identifier of the profile to return. The identifier can be one of the
        #   following: * the numeric identifier for the user * the email address of the
        #   user * the string literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1::UserProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1::UserProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_profile(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/userProfiles/{userId}', options)
          command.response_representation = Google::Apis::ClassroomV1::UserProfile::Representation
          command.response_class = Google::Apis::ClassroomV1::UserProfile
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
