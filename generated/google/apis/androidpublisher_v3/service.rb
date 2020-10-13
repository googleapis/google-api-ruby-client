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
    module AndroidpublisherV3
      # Google Play Android Developer API
      #
      # Lets Android application developers access their Google Play accounts.
      #
      # @example
      #    require 'google/apis/androidpublisher_v3'
      #
      #    Androidpublisher = Google::Apis::AndroidpublisherV3 # Alias the module
      #    service = Androidpublisher::AndroidPublisherService.new
      #
      # @see https://developers.google.com/android-publisher
      class AndroidPublisherService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://androidpublisher.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Commits an app edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_edit(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}:commit', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an app edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_edit(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/edits/{editId}', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an app edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new edit for an app.
        # @param [String] package_name
        #   Package name of the app.
        # @param [Google::Apis::AndroidpublisherV3::AppEdit] app_edit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_edit(package_name, app_edit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::AppEdit::Representation
          command.request_object = app_edit_object
          command.response_representation = Google::Apis::AndroidpublisherV3::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates an app edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppEdit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppEdit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_edit(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}:validate', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::AppEdit::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppEdit
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new APK without uploading the APK itself to Google Play, instead
        # hosting the APK at a specified URL. This function is only available to
        # organizations using Managed Play whose application is configured to restrict
        # distribution to the organizations.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedRequest] apks_add_externally_hosted_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def addexternallyhosted_edit_apk(package_name, edit_id, apks_add_externally_hosted_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/externallyHosted', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedRequest::Representation
          command.request_object = apks_add_externally_hosted_request_object
          command.response_representation = Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ApksAddExternallyHostedResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all current APKs of the app and edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ApksListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ApksListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_apks(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ApksListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ApksListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an APK and adds to the current edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Apk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Apk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_apk(package_name, edit_id, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::Apk::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Apk
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all current Android App Bundles of the app and edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::BundlesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::BundlesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_bundles(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::BundlesListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::BundlesListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a new Android App Bundle to this edit. If you are using the Google API
        # client libraries, please increase the timeout of the http request before
        # calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts
        # and Errors](https://developers.google.com/api-client-library/java/google-api-
        # java-client/errors) for an example in java.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Boolean] ack_bundle_installation_warning
        #   Must be set to true if the bundle installation may trigger a warning on user
        #   devices (for example, if installation size may be over a threshold, typically
        #   100 MB).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Bundle] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Bundle]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_bundle(package_name, edit_id, ack_bundle_installation_warning: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::Bundle::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Bundle
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['ackBundleInstallationWarning'] = ack_bundle_installation_warning unless ack_bundle_installation_warning.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a new deobfuscation file and attaches to the specified APK.
        # @param [String] package_name
        #   Unique identifier for the Android app.
        # @param [String] edit_id
        #   Unique identifier for this edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose Deobfuscation File is being uploaded.
        # @param [String] deobfuscation_file_type
        #   The type of the deobfuscation file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::DeobfuscationFilesUploadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::DeobfuscationFilesUploadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_deobfuscationfile(package_name, edit_id, apk_version_code, deobfuscation_file_type, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::DeobfuscationFilesUploadResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::DeobfuscationFilesUploadResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['deobfuscationFileType'] = deobfuscation_file_type unless deobfuscation_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of an app.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_detail(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/details', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches details of an app.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Google::Apis::AndroidpublisherV3::AppDetails] app_details_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_detail(package_name, edit_id, app_details_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/details', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::AppDetails::Representation
          command.request_object = app_details_object
          command.response_representation = Google::Apis::AndroidpublisherV3::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates details of an app.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Google::Apis::AndroidpublisherV3::AppDetails] app_details_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_detail(package_name, edit_id, app_details_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/details', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::AppDetails::Representation
          command.request_object = app_details_object
          command.response_representation = Google::Apis::AndroidpublisherV3::AppDetails::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::AppDetails
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the expansion file configuration for the specified APK.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose expansion file configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        #   The file type of the file configuration which is being read or modified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches the APK's expansion file configuration to reference another APK's
        # expansion file. To add a new expansion file use the Upload method.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose expansion file configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        #   The file type of the expansion file configuration which is being updated.
        # @param [Google::Apis::AndroidpublisherV3::ExpansionFile] expansion_file_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, expansion_file_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::ExpansionFile::Representation
          command.request_object = expansion_file_object
          command.response_representation = Google::Apis::AndroidpublisherV3::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the APK's expansion file configuration to reference another APK's
        # expansion file. To add a new expansion file use the Upload method.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose expansion file configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        #   The file type of the file configuration which is being read or modified.
        # @param [Google::Apis::AndroidpublisherV3::ExpansionFile] expansion_file_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ExpansionFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ExpansionFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, expansion_file_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::ExpansionFile::Representation
          command.request_object = expansion_file_object
          command.response_representation = Google::Apis::AndroidpublisherV3::ExpansionFile::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ExpansionFile
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a new expansion file and attaches to the specified APK.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [Fixnum] apk_version_code
        #   The version code of the APK whose expansion file configuration is being read
        #   or modified.
        # @param [String] expansion_file_type
        #   The file type of the expansion file configuration which is being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ExpansionFilesUploadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ExpansionFilesUploadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_expansionfile(package_name, edit_id, apk_version_code, expansion_file_type, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::ExpansionFilesUploadResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ExpansionFilesUploadResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['apkVersionCode'] = apk_version_code unless apk_version_code.nil?
          command.params['expansionFileType'] = expansion_file_type unless expansion_file_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the image (specified by id) from the edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German).
        # @param [String] image_type
        #   Type of the Image.
        # @param [String] image_id
        #   Unique identifier an image within the set of images attached to this edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_edit_image(package_name, edit_id, language, image_type, image_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.params['imageId'] = image_id unless image_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all images for the specified language and image type. Returns an empty
        # response if no images are found.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German). Providing a language that is not supported by the App is a
        #   no-op.
        # @param [String] image_type
        #   Type of the Image. Providing an image type that refers to no images is a no-op.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ImagesDeleteAllResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ImagesDeleteAllResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deleteall_edit_image(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ImagesDeleteAllResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ImagesDeleteAllResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all images. The response may be empty.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German). There must be a store listing for the specified language.
        # @param [String] image_type
        #   Type of the Image. Providing an image type that refers to no images will
        #   return an empty response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ImagesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ImagesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_images(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ImagesListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ImagesListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an image of the specified language and image type, and adds to the
        # edit.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German). Providing a language that is not supported by the App is a
        #   no-op.
        # @param [String] image_type
        #   Type of the Image.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ImagesUploadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ImagesUploadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_edit_image(package_name, edit_id, language, image_type, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::ImagesUploadResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ImagesUploadResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.params['imageType'] = image_type unless image_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a localized store listing.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_edit_listing(package_name, edit_id, language, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all store listings.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deleteall_edit_listing(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a localized store listing.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_listing(package_name, edit_id, language, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all localized store listings.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ListingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ListingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_listings(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ListingsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ListingsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a localized store listing.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German).
        # @param [Google::Apis::AndroidpublisherV3::Listing] listing_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_listing(package_name, edit_id, language, listing_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Listing::Representation
          command.request_object = listing_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a localized store listing.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] language
        #   Language localization code (a BCP-47 language tag; for example, "de-AT" for
        #   Austrian German).
        # @param [Google::Apis::AndroidpublisherV3::Listing] listing_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Listing] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Listing]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_listing(package_name, edit_id, language, listing_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Listing::Representation
          command.request_object = listing_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Listing::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Listing
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets testers.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   The track to read from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_tester(package_name, edit_id, track, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches testers.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   The track to update.
        # @param [Google::Apis::AndroidpublisherV3::Testers] testers_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_tester(package_name, edit_id, track, testers_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Testers::Representation
          command.request_object = testers_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates testers.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   The track to update.
        # @param [Google::Apis::AndroidpublisherV3::Testers] testers_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Testers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Testers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_tester(package_name, edit_id, track, testers_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Testers::Representation
          command.request_object = testers_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Testers::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Testers
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a track.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   Identifier of the track.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_edit_track(package_name, edit_id, track, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all tracks.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::TracksListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::TracksListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_edit_tracks(package_name, edit_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::TracksListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::TracksListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a track.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   Identifier of the track.
        # @param [Google::Apis::AndroidpublisherV3::Track] track_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_edit_track(package_name, edit_id, track, track_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Track::Representation
          command.request_object = track_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a track.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] edit_id
        #   Identifier of the edit.
        # @param [String] track
        #   Identifier of the track.
        # @param [Google::Apis::AndroidpublisherV3::Track] track_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Track] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Track]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_edit_track(package_name, edit_id, track, track_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Track::Representation
          command.request_object = track_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Track::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Track
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['editId'] = edit_id unless edit_id.nil?
          command.params['track'] = track unless track.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an in-app product (i.e. a managed product or a subscriptions).
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inappproduct(package_name, sku, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'androidpublisher/v3/applications/{packageName}/inappproducts/{sku}', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an in-app product, which can be a managed product or a subscription.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inappproduct(package_name, sku, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/inappproducts/{sku}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an in-app product (i.e. a managed product or a subscriptions).
        # @param [String] package_name
        #   Package name of the app.
        # @param [Google::Apis::AndroidpublisherV3::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_inappproduct(package_name, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/inappproducts', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all in-app products - both managed products and subscriptions.
        # @param [String] package_name
        #   Package name of the app.
        # @param [Fixnum] max_results
        #   How many results the list operation should return.
        # @param [Fixnum] start_index
        #   The index of the first element to return.
        # @param [String] token
        #   Pagination token. If empty, list starts at the first product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InappproductsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InappproductsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inappproducts(package_name, max_results: nil, start_index: nil, token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/inappproducts', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::InappproductsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InappproductsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches an in-app product (i.e. a managed product or a subscriptions).
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [Google::Apis::AndroidpublisherV3::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inappproduct(package_name, sku, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'androidpublisher/v3/applications/{packageName}/inappproducts/{sku}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an in-app product (i.e. a managed product or a subscriptions).
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] sku
        #   Unique identifier for the in-app product.
        # @param [Google::Apis::AndroidpublisherV3::InAppProduct] in_app_product_object
        # @param [Boolean] auto_convert_missing_prices
        #   If true the prices for all regions targeted by the parent app that don't have
        #   a price specified for this in-app product will be auto converted to the target
        #   currency based on the default price. Defaults to false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InAppProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InAppProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_inappproduct(package_name, sku, in_app_product_object = nil, auto_convert_missing_prices: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'androidpublisher/v3/applications/{packageName}/inappproducts/{sku}', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.request_object = in_app_product_object
          command.response_representation = Google::Apis::AndroidpublisherV3::InAppProduct::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InAppProduct
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['sku'] = sku unless sku.nil?
          command.query['autoConvertMissingPrices'] = auto_convert_missing_prices unless auto_convert_missing_prices.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an APK to internal app sharing. If you are using the Google API client
        # libraries, please increase the timeout of the http request before calling this
        # endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](
        # https://developers.google.com/api-client-library/java/google-api-java-client/
        # errors) for an example in java.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def uploadapk_internalappsharingartifact(package_name, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads an app bundle to internal app sharing. If you are using the Google API
        # client libraries, please increase the timeout of the http request before
        # calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts
        # and Errors](https://developers.google.com/api-client-library/java/google-api-
        # java-client/errors) for an example in java.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def uploadbundle_internalappsharingartifact(package_name, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle', options)
          else
            command = make_upload_command(:post, 'androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::InternalAppSharingArtifact
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refund a user's subscription or in-app purchase order.
        # @param [String] package_name
        #   The package name of the application for which this subscription or in-app item
        #   was purchased (for example, 'com.some.thing').
        # @param [String] order_id
        #   The order ID provided to the user when the subscription or in-app order was
        #   purchased.
        # @param [Boolean] revoke
        #   Whether to revoke the purchased item. If set to true, access to the
        #   subscription or in-app item will be terminated immediately. If the item is a
        #   recurring subscription, all future payments will also be terminated. Consumed
        #   in-app items need to be handled by developer's app. (optional).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refund_order(package_name, order_id, revoke: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/orders/{orderId}:refund', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['revoke'] = revoke unless revoke.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges a purchase of an inapp item.
        # @param [String] package_name
        #   The package name of the application the inapp product was sold in (for example,
        #   'com.some.thing').
        # @param [String] product_id
        #   The inapp product SKU (for example, 'com.some.thing.inapp1').
        # @param [String] token
        #   The token provided to the user's device when the inapp product was purchased.
        # @param [Google::Apis::AndroidpublisherV3::ProductPurchasesAcknowledgeRequest] product_purchases_acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_purchase_product(package_name, product_id, token, product_purchases_acknowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::ProductPurchasesAcknowledgeRequest::Representation
          command.request_object = product_purchases_acknowledge_request_object
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks the purchase and consumption status of an inapp item.
        # @param [String] package_name
        #   The package name of the application the inapp product was sold in (for example,
        #   'com.some.thing').
        # @param [String] product_id
        #   The inapp product SKU (for example, 'com.some.thing.inapp1').
        # @param [String] token
        #   The token provided to the user's device when the inapp product was purchased.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ProductPurchase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ProductPurchase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_purchase_product(package_name, product_id, token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ProductPurchase::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ProductPurchase
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges a subscription purchase.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [Google::Apis::AndroidpublisherV3::SubscriptionPurchasesAcknowledgeRequest] subscription_purchases_acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_purchase_subscription(package_name, subscription_id, token, subscription_purchases_acknowledge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::SubscriptionPurchasesAcknowledgeRequest::Representation
          command.request_object = subscription_purchases_acknowledge_request_object
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a user's subscription purchase. The subscription remains valid until
        # its expiration time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Defers a user's subscription purchase until a specified future expiration time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferRequest] subscription_purchases_defer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def defer_purchase_subscription(package_name, subscription_id, token, subscription_purchases_defer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferRequest::Representation
          command.request_object = subscription_purchases_defer_request_object
          command.response_representation = Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::SubscriptionPurchasesDeferResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks whether a user's subscription purchase is valid and returns its expiry
        # time.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::SubscriptionPurchase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::SubscriptionPurchase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::SubscriptionPurchase::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::SubscriptionPurchase
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refunds a user's subscription purchase, but the subscription remains valid
        # until its expiration time and it will continue to recur.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   "The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refund_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refunds and immediately revokes a user's subscription purchase. Access to the
        # subscription will be terminated immediately and it will stop recurring.
        # @param [String] package_name
        #   The package name of the application for which this subscription was purchased (
        #   for example, 'com.some.thing').
        # @param [String] subscription_id
        #   The purchased subscription ID (for example, 'monthly001').
        # @param [String] token
        #   The token provided to the user's device when the subscription was purchased.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revoke_purchase_subscription(package_name, subscription_id, token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke', options)
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the purchases that were canceled, refunded or charged-back.
        # @param [String] package_name
        #   The package name of the application for which voided purchases need to be
        #   returned (for example, 'com.some.thing').
        # @param [Fixnum] end_time
        #   The time, in milliseconds since the Epoch, of the newest voided purchase that
        #   you want to see in the response. The value of this parameter cannot be greater
        #   than the current time and is ignored if a pagination token is set. Default
        #   value is current time. Note: This filter is applied on the time at which the
        #   record is seen as voided by our systems and not the actual voided time
        #   returned in the response.
        # @param [Fixnum] max_results
        #   Defines how many results the list operation should return. The default number
        #   depends on the resource collection.
        # @param [Fixnum] start_index
        #   Defines the index of the first element to return. This can only be used if
        #   indexed paging is enabled.
        # @param [Fixnum] start_time
        #   The time, in milliseconds since the Epoch, of the oldest voided purchase that
        #   you want to see in the response. The value of this parameter cannot be older
        #   than 30 days and is ignored if a pagination token is set. Default value is
        #   current time minus 30 days. Note: This filter is applied on the time at which
        #   the record is seen as voided by our systems and not the actual voided time
        #   returned in the response.
        # @param [String] token
        #   Defines the token of the page to return, usually taken from TokenPagination.
        #   This can only be used if token paging is enabled.
        # @param [Fixnum] type
        #   The type of voided purchases that you want to see in the response. Possible
        #   values are: 0. Only voided in-app product purchases will be returned in the
        #   response. This is the default value. 1. Both voided in-app purchases and
        #   voided subscription purchases will be returned in the response. Note: Before
        #   requesting to receive voided subscription purchases, you must switch to use
        #   orderId in the response which uniquely identifies one-time purchases and
        #   subscriptions. Otherwise, you will receive multiple subscription orders with
        #   the same PurchaseToken, because subscription renewal orders share the same
        #   PurchaseToken.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::VoidedPurchasesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::VoidedPurchasesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_purchase_voidedpurchases(package_name, end_time: nil, max_results: nil, start_index: nil, start_time: nil, token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::VoidedPurchasesListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::VoidedPurchasesListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['token'] = token unless token.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single review.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] review_id
        #   Unique identifier for a review.
        # @param [String] translation_language
        #   Language localization code.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Review] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Review]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_review(package_name, review_id, translation_language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/reviews/{reviewId}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::Review::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Review
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['reviewId'] = review_id unless review_id.nil?
          command.query['translationLanguage'] = translation_language unless translation_language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all reviews.
        # @param [String] package_name
        #   Package name of the app.
        # @param [Fixnum] max_results
        #   How many results the list operation should return.
        # @param [Fixnum] start_index
        #   The index of the first element to return.
        # @param [String] token
        #   Pagination token. If empty, list starts at the first review.
        # @param [String] translation_language
        #   Language localization code.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ReviewsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ReviewsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_reviews(package_name, max_results: nil, start_index: nil, token: nil, translation_language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/reviews', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::ReviewsListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ReviewsListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['token'] = token unless token.nil?
          command.query['translationLanguage'] = translation_language unless translation_language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replies to a single review, or updates an existing reply.
        # @param [String] package_name
        #   Package name of the app.
        # @param [String] review_id
        #   Unique identifier for a review.
        # @param [Google::Apis::AndroidpublisherV3::ReviewsReplyRequest] reviews_reply_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::ReviewsReplyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::ReviewsReplyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reply_review(package_name, review_id, reviews_reply_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/reviews/{reviewId}:reply', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::ReviewsReplyRequest::Representation
          command.request_object = reviews_reply_request_object
          command.response_representation = Google::Apis::AndroidpublisherV3::ReviewsReplyResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::ReviewsReplyResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['reviewId'] = review_id unless review_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an APK which is suitable for inclusion in a system image from an
        # already uploaded Android App Bundle.
        # @param [String] package_name
        #   Unique identifier of the Android app.
        # @param [Fixnum] version_code
        #   The version code of the App Bundle.
        # @param [Google::Apis::AndroidpublisherV3::Variant] variant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_systemapk_variant(package_name, version_code, variant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants', options)
          command.request_representation = Google::Apis::AndroidpublisherV3::Variant::Representation
          command.request_object = variant_object
          command.response_representation = Google::Apis::AndroidpublisherV3::Variant::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Variant
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['versionCode'] = version_code unless version_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads a previously created system APK which is suitable for inclusion in a
        # system image.
        # @param [String] package_name
        #   Unique identifier of the Android app.
        # @param [Fixnum] version_code
        #   The version code of the App Bundle.
        # @param [Fixnum] variant_id
        #   The ID of a previously created system APK variant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_systemapk_variant(package_name, version_code, variant_id, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download', options)
          else
            command = make_download_command(:get, 'androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download', options)
            command.download_dest = download_dest
          end
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['versionCode'] = version_code unless version_code.nil?
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a previously created system APK variant.
        # @param [String] package_name
        #   Unique identifier of the Android app.
        # @param [Fixnum] version_code
        #   The version code of the App Bundle.
        # @param [Fixnum] variant_id
        #   The ID of a previously created system APK variant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_systemapk_variant(package_name, version_code, variant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::Variant::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::Variant
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['versionCode'] = version_code unless version_code.nil?
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of previously created system APK variants.
        # @param [String] package_name
        #   Unique identifier of the Android app.
        # @param [Fixnum] version_code
        #   The version code of the App Bundle.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroidpublisherV3::SystemApksListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroidpublisherV3::SystemApksListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_systemapk_variants(package_name, version_code, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants', options)
          command.response_representation = Google::Apis::AndroidpublisherV3::SystemApksListResponse::Representation
          command.response_class = Google::Apis::AndroidpublisherV3::SystemApksListResponse
          command.params['packageName'] = package_name unless package_name.nil?
          command.params['versionCode'] = version_code unless version_code.nil?
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
