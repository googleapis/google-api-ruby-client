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
    module SecuritycenterV1beta2
      # Security Command Center API
      #
      # Security Command Center API provides access to temporal views of assets and
      #  findings within an organization.
      #
      # @example
      #    require 'google/apis/securitycenter_v1beta2'
      #
      #    Securitycenter = Google::Apis::SecuritycenterV1beta2 # Alias the module
      #    service = Securitycenter::SecurityCommandCenterService.new
      #
      # @see https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview
      class SecurityCommandCenterService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://securitycenter.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to retrieve.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_container_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the EventThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to retrieve. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_event_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to retrieve. Formats:
        #   * organizations/`organization`/securityHealthAnalyticsSettings * folders/`
        #   folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_security_health_analytics_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the WebSecurityScannerSettings resource.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to retrieve. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_web_security_scanner_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the ContainerThreatDetectionSettings. Formats: *
        #   organizations/`organization`/containerThreatDetectionSettings * folders/`
        #   folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] container_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_container_threat_detection_settings(name, container_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.request_object = container_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the EventThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the EventThreatDetectionSettings. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] event_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_event_threat_detection_settings(name, event_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.request_object = event_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   The resource name of the SecurityHealthAnalyticsSettings. Formats: *
        #   organizations/`organization`/securityHealthAnalyticsSettings * folders/`folder`
        #   /securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] security_health_analytics_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_security_health_analytics_settings(name, security_health_analytics_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.request_object = security_health_analytics_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the WebSecurityScannerSettings resource.
        # @param [String] name
        #   The resource name of the WebSecurityScannerSettings. Formats: * organizations/`
        #   organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] web_security_scanner_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_web_security_scanner_settings(name, web_security_scanner_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.request_object = web_security_scanner_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective ContainerThreatDetectionSettings based on its level
        # in the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to calculate.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_folder_container_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective EventThreatDetectionSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to calculate. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_folder_event_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective SecurityHealthAnalyticsSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to calculate.
        #   Formats: * organizations/`organization`/securityHealthAnalyticsSettings *
        #   folders/`folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_folder_security_health_analytics_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective WebSecurityScannerSettings based on its level in the
        # resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to calculate. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_folder_web_security_scanner_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to retrieve.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_container_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the EventThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to retrieve. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_event_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the SecurityCenterSettings resource.
        # @param [String] name
        #   Required. The name of the SecurityCenterSettings to retrieve. Format:
        #   organizations/`organization`/securityCenterSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityCenterSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityCenterSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_security_center_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityCenterSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityCenterSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to retrieve. Formats:
        #   * organizations/`organization`/securityHealthAnalyticsSettings * folders/`
        #   folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_security_health_analytics_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the Subscription resource.
        # @param [String] name
        #   Required. The name of the subscription to retrieve. Format: organizations/`
        #   organization`/subscription
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::Subscription::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the WebSecurityScannerSettings resource.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to retrieve. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_web_security_scanner_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the ContainerThreatDetectionSettings. Formats: *
        #   organizations/`organization`/containerThreatDetectionSettings * folders/`
        #   folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] container_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_container_threat_detection_settings(name, container_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.request_object = container_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the EventThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the EventThreatDetectionSettings. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] event_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_event_threat_detection_settings(name, event_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.request_object = event_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   The resource name of the SecurityHealthAnalyticsSettings. Formats: *
        #   organizations/`organization`/securityHealthAnalyticsSettings * folders/`folder`
        #   /securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] security_health_analytics_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_security_health_analytics_settings(name, security_health_analytics_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.request_object = security_health_analytics_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the WebSecurityScannerSettings resource.
        # @param [String] name
        #   The resource name of the WebSecurityScannerSettings. Formats: * organizations/`
        #   organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] web_security_scanner_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_web_security_scanner_settings(name, web_security_scanner_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.request_object = web_security_scanner_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective ContainerThreatDetectionSettings based on its level
        # in the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to calculate.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_organization_container_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective EventThreatDetectionSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to calculate. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_organization_event_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective SecurityHealthAnalyticsSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to calculate.
        #   Formats: * organizations/`organization`/securityHealthAnalyticsSettings *
        #   folders/`folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_organization_security_health_analytics_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective WebSecurityScannerSettings based on its level in the
        # resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to calculate. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_organization_web_security_scanner_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to retrieve.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_container_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the EventThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to retrieve. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_event_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to retrieve. Formats:
        #   * organizations/`organization`/securityHealthAnalyticsSettings * folders/`
        #   folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_security_health_analytics_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the WebSecurityScannerSettings resource.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to retrieve. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_web_security_scanner_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the ContainerThreatDetectionSettings. Formats: *
        #   organizations/`organization`/containerThreatDetectionSettings * folders/`
        #   folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] container_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_container_threat_detection_settings(name, container_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.request_object = container_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the EventThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the EventThreatDetectionSettings. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] event_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_event_threat_detection_settings(name, event_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.request_object = event_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the SecurityHealthAnalyticsSettings resource.
        # @param [String] name
        #   The resource name of the SecurityHealthAnalyticsSettings. Formats: *
        #   organizations/`organization`/securityHealthAnalyticsSettings * folders/`folder`
        #   /securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] security_health_analytics_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_security_health_analytics_settings(name, security_health_analytics_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.request_object = security_health_analytics_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the WebSecurityScannerSettings resource.
        # @param [String] name
        #   The resource name of the WebSecurityScannerSettings. Formats: * organizations/`
        #   organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] web_security_scanner_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_web_security_scanner_settings(name, web_security_scanner_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.request_object = web_security_scanner_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective ContainerThreatDetectionSettings based on its level
        # in the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to calculate.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_container_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective EventThreatDetectionSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the EventThreatDetectionSettings to calculate. Formats: *
        #   organizations/`organization`/eventThreatDetectionSettings * folders/`folder`/
        #   eventThreatDetectionSettings * projects/`project`/eventThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_event_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::EventThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to retrieve.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cluster_container_threat_detection_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the ContainerThreatDetectionSettings resource.
        # @param [String] name
        #   The resource name of the ContainerThreatDetectionSettings. Formats: *
        #   organizations/`organization`/containerThreatDetectionSettings * folders/`
        #   folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] container_threat_detection_settings_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_cluster_container_threat_detection_settings(name, container_threat_detection_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta2/{+name}', options)
          command.request_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.request_object = container_threat_detection_settings_object
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective ContainerThreatDetectionSettings based on its level
        # in the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the ContainerThreatDetectionSettings to calculate.
        #   Formats: * organizations/`organization`/containerThreatDetectionSettings *
        #   folders/`folder`/containerThreatDetectionSettings * projects/`project`/
        #   containerThreatDetectionSettings * projects/`project`/locations/`location`/
        #   clusters/`cluster`/containerThreatDetectionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_location_cluster_container_threat_detection_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::ContainerThreatDetectionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective SecurityHealthAnalyticsSettings based on its level in
        # the resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the SecurityHealthAnalyticsSettings to calculate.
        #   Formats: * organizations/`organization`/securityHealthAnalyticsSettings *
        #   folders/`folder`/securityHealthAnalyticsSettings * projects/`project`/
        #   securityHealthAnalyticsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_security_health_analytics_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::SecurityHealthAnalyticsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Calculates the effective WebSecurityScannerSettings based on its level in the
        # resource hierarchy and its settings.
        # @param [String] name
        #   Required. The name of the WebSecurityScannerSettings to calculate. Formats: *
        #   organizations/`organization`/webSecurityScannerSettings * folders/`folder`/
        #   webSecurityScannerSettings * projects/`project`/webSecurityScannerSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def calculate_project_web_security_scanner_setting(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}:calculate', options)
          command.response_representation = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings::Representation
          command.response_class = Google::Apis::SecuritycenterV1beta2::WebSecurityScannerSettings
          command.params['name'] = name unless name.nil?
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
