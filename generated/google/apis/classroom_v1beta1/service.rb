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
    module ClassroomV1beta1
      # Google Classroom API
      #
      # Google Classroom API
      #
      # @example
      #    require 'google/apis/classroom_v1beta1'
      #
      #    Classroom = Google::Apis::ClassroomV1beta1 # Alias the module
      #    service = Classroom::ClassroomService.new
      #
      # @see 
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
        
        # Creates a course. The user specified as the primary teacher in `
        # primary_teacher_id` is the owner of the created course and added as a teacher.
        # This method returns the following error codes: * `PERMISSION_DENIED` if the
        # requesting user is not permitted to create courses. * `NOT_FOUND` if the
        # primary teacher is not a valid user. * `ALREADY_EXISTS` if an alias was
        # specified and already exists.
        # @param [Google::Apis::ClassroomV1beta1::Course] course_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course(course_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Course
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to access the
        # requested course. * `NOT_FOUND` if no course exists with the requested ID.
        # @param [String] id
        #   Identifier of the course to return. This may either be the Classroom-assigned
        #   identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course(id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{id}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Course
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to modify the
        # requested course. * `NOT_FOUND` if no course exists with the requested ID.
        # @param [String] id
        #   Identifier of the course to update. This may either be the Classroom-assigned
        #   identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [Google::Apis::ClassroomV1beta1::Course] course_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_course(id, course_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{id}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Course
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates one or more fields a course. This method returns the following error
        # codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify
        # the requested course. * `NOT_FOUND` if no course exists with the requested ID.
        # * `INVALID_ARGUMENT` if invalid fields are specified in the update mask or if
        # no update mask is supplied.
        # @param [String] id
        #   Identifier of the course to update. This may either be the Classroom-assigned
        #   identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [Google::Apis::ClassroomV1beta1::Course] course_object
        # @param [String] update_mask
        #   Mask which identifies which fields on the course to update. This field is
        #   required to do an update. The update will fail if invalid fields are specified.
        #   Valid fields are listed below: * `name` * `section` * `descriptionHeading` * `
        #   description` * `room` * `courseState` When set in a query parameter, this
        #   should be specified as `updateMask=,,...`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Course] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Course]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_course(id, course_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{id}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.request_object = course_object
          command.response_representation = Google::Apis::ClassroomV1beta1::Course::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Course
          command.params['id'] = id unless id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a course. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to delete the
        # requested course. * `NOT_FOUND` if no course exists with the requested ID.
        # @param [String] id
        #   Identifier of the course to delete. This may either be the Classroom-assigned
        #   identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course(id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{id}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Empty
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of courses that the requesting user is permitted to view,
        # restricted to those that match the request. This method returns the following
        # error codes: * `INVALID_ARGUMENT` if the query argument is malformed. * `
        # NOT_FOUND` if any users specified in the query arguments do not exist.
        # @param [String] student_id
        #   Restricts returned courses to those having a student with the specified
        #   identifier, or an alias that identifies a student. The following aliases are
        #   supported: * the e-mail address of the user * the string literal `"me"`,
        #   indicating that the requesting user
        # @param [String] teacher_id
        #   Restricts returned courses to those having a teacher with the specified
        #   identifier, or an alias that identifies a teacher. The following aliases are
        #   supported: * the e-mail address of the user * the string literal `"me"`,
        #   indicating that the requesting user
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero or unspecified indicates that the
        #   server may assign a maximum. The server may return fewer than the specified
        #   number of results.
        # @param [String] page_token
        #   [nextPageToken][google.classroom.v1beta1.ListCoursesResponse.next_page_token]
        #   value returned from a previous [list][google.classroom.v1beta1.Courses.
        #   ListCourses] call, indicating that the subsequent page of results should be
        #   returned. The [list][google.classroom.v1beta1.Courses.ListCourses] request
        #   must be identical to the one which resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::ListCoursesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::ListCoursesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_courses(student_id: nil, teacher_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::ListCoursesResponse::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::ListCoursesResponse
          command.query['studentId'] = student_id unless student_id.nil?
          command.query['teacherId'] = teacher_id unless teacher_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an alias to a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to create the
        # alias. * `NOT_FOUND` if the course does not exist. * `ALREADY_EXISTS` if the
        # alias already exists.
        # @param [String] course_id
        #   The identifier of the course to alias. This may either be the Classroom-
        #   assigned identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [Google::Apis::ClassroomV1beta1::CourseAlias] course_alias_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::CourseAlias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::CourseAlias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_alias(course_id, course_alias_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/aliases'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::CourseAlias::Representation
          command.request_object = course_alias_object
          command.response_representation = Google::Apis::ClassroomV1beta1::CourseAlias::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::CourseAlias
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an alias of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to remove the
        # alias. * `NOT_FOUND` if the alias does not exist.
        # @param [String] course_id
        #   The identifier of the course whose alias should be deleted. This may either be
        #   the Classroom-assigned identifier or an [alias][google.classroom.v1beta1.
        #   CourseAlias].
        # @param [String] alias_
        #   The alias to delete. This may not be the Classroom-assigned identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_alias(course_id, alias_, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/aliases/{alias}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['alias'] = alias_ unless alias_.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the aliases of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to access the
        # course. * `NOT_FOUND` if the course does not exist.
        # @param [String] course_id
        #   The identifier of the course. This may either be the Classroom-assigned
        #   identifier or an [alias][google.classroom.v1beta1.CourseAlias].
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero or unspecified indicates that the
        #   server may assign a maximum. The server may return fewer than the specified
        #   number of results.
        # @param [String] page_token
        #   [nextPageToken][google.classroom.v1beta1.ListCourseAliasesResponse.
        #   next_page_token] value returned from a previous [list][google.classroom.
        #   v1beta1.Courses.ListCourseAliases] call, indicating that the subsequent page
        #   of results should be returned. The [list][google.classroom.v1beta1.Courses.
        #   ListCourseAliases] request must be identical to the one which resulted in this
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::ListCourseAliasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::ListCourseAliasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_aliases(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/aliases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::ListCourseAliasesResponse::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::ListCourseAliasesResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to create
        # teachers in this course. * `NOT_FOUND` if the requested course ID does not
        # exist. * `ALREADY_EXISTS` if the user is already a teacher or student in the
        # course.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [Google::Apis::ClassroomV1beta1::Teacher] teacher_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Teacher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Teacher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_teacher(course_id, teacher_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/teachers'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::Teacher::Representation
          command.request_object = teacher_object
          command.response_representation = Google::Apis::ClassroomV1beta1::Teacher::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Teacher
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to view teachers
        # of this course. * `NOT_FOUND` if no teacher of this course has the requested
        # ID or if the course does not exist.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the teacher to return, or an alias the identifies the user. the
        #   following aliases are supported: * the e-mail address of the user * the string
        #   literal `"me"`, indicating that the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Teacher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Teacher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course_teacher(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/teachers/{userId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Teacher::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Teacher
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a teacher of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to delete
        # teachers of this course. * `NOT_FOUND` if no teacher of this course has the
        # requested ID or if the course does not exist. * `FAILED_PRECONDITION` if the
        # requested ID belongs to the primary teacher of this course.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the teacher to delete, or an alias the identifies the user. the
        #   following aliases are supported: * the e-mail address of the user * the string
        #   literal `"me"`, indicating that the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_teacher(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/teachers/{userId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of teachers of this course that the requester is permitted to
        # view. Fails with `NOT_FOUND` if the course does not exist.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero means no maximum. The server may
        #   return fewer than the specified number of results.
        # @param [String] page_token
        #   [nextPageToken][google.classroom.v1beta1.ListTeachersResponse.next_page_token]
        #   value returned from a previous [list][google.classroom.v1beta1.Users.
        #   ListTeachers] call, indicating that the subsequent page of results should be
        #   returned. The [list][google.classroom.v1beta1.Users.ListTeachers] request must
        #   be identical to the one which resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::ListTeachersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::ListTeachersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_teachers(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/teachers'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::ListTeachersResponse::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::ListTeachersResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a user as a student of a course. This method returns the following error
        # codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create
        # students in this course. * `NOT_FOUND` if the requested course ID does not
        # exist. * `ALREADY_EXISTS` if the user is already a student or student in the
        # course.
        # @param [String] course_id
        #   Identifier of the course to create the student in. This may either be the
        #   Classroom-assigned identifier or an alias.
        # @param [Google::Apis::ClassroomV1beta1::Student] student_object
        # @param [String] enrollment_code
        #   Enrollment code of the course to create the student in. This is required if [
        #   userId][google.classroom.v1beta1.Student.user_id] corresponds to the
        #   requesting user; this may be omitted if the requesting user has administrative
        #   permissions to create students for any user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Student] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Student]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_course_student(course_id, student_object = nil, enrollment_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/students'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::ClassroomV1beta1::Student::Representation
          command.request_object = student_object
          command.response_representation = Google::Apis::ClassroomV1beta1::Student::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Student
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['enrollmentCode'] = enrollment_code unless enrollment_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a student of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to view students
        # of this course. * `NOT_FOUND` if no student of this course has the requested
        # ID or if the course does not exist.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the student to return, or an alias the identifies the user. The
        #   following aliases are supported: * the e-mail address of the user * the string
        #   literal `"me"`, indicating that the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Student] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Student]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_course_student(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/students/{userId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Student::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Student
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a student of a course. This method returns the following error codes: *
        # `PERMISSION_DENIED` if the requesting user is not permitted to delete
        # students of this course. * `NOT_FOUND` if no student of this course has the
        # requested ID or if the course does not exist.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [String] user_id
        #   Identifier of the student to delete, or an alias the identifies the user. The
        #   following aliases are supported: * the e-mail address of the user * the string
        #   literal `"me"`, indicating that the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_course_student(course_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/students/{userId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::Empty::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::Empty
          command.params['courseId'] = course_id unless course_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of students of this course that the requester is permitted to
        # view. Fails with `NOT_FOUND` if the course does not exist.
        # @param [String] course_id
        #   Unique identifier of the course. This may either be the Classroom-assigned
        #   identifier or an alias.
        # @param [Fixnum] page_size
        #   Maximum number of items to return. Zero means no maximum. The server may
        #   return fewer than the specified number of results.
        # @param [String] page_token
        #   [nextPageToken][google.classroom.v1beta1.ListStudentsResponse.next_page_token]
        #   value returned from a previous [list][google.classroom.v1beta1.Users.
        #   ListStudents] call, indicating that the subsequent page of results should be
        #   returned. The [list][google.classroom.v1beta1.Users.ListStudents] request must
        #   be identical to the one which resulted in this token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::ListStudentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::ListStudentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_course_students(course_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/courses/{courseId}/students'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::ListStudentsResponse::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::ListStudentsResponse
          command.params['courseId'] = course_id unless course_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a user profile. This method returns the following error codes: * `
        # PERMISSION_DENIED` if the requesting user is not permitted to access this user
        # profile. * `NOT_FOUND` if the profile does not exist.
        # @param [String] user_id
        #   Identifier of the profile to return, or an alias the identifies the user. The
        #   following aliases are supported: * the e-mail address of the user * the string
        #   literal `"me"`, indicating the requesting user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClassroomV1beta1::UserProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClassroomV1beta1::UserProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_profile(user_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/userProfiles/{userId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::ClassroomV1beta1::UserProfile::Representation
          command.response_class = Google::Apis::ClassroomV1beta1::UserProfile
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
