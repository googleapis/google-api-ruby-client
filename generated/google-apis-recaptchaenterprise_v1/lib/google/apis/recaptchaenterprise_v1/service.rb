# Copyright 2020 Google LLC
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
    module RecaptchaenterpriseV1
      # reCAPTCHA Enterprise API
      #
      # Help protect your website from fraudulent activity, spam, and abuse without
      #  creating friction.
      #
      # @example
      #    require 'google/apis/recaptchaenterprise_v1'
      #
      #    Recaptchaenterprise = Google::Apis::RecaptchaenterpriseV1 # Alias the module
      #    service = Recaptchaenterprise::RecaptchaEnterpriseService.new
      #
      # @see https://cloud.google.com/recaptcha-enterprise/
      class RecaptchaEnterpriseService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://recaptchaenterprise.googleapis.com/', '',
                client_name: 'google-apis-recaptchaenterprise_v1',
                client_version: Google::Apis::RecaptchaenterpriseV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Annotates a previously created Assessment to provide additional information on
        # whether the event turned out to be authentic or fraudulent.
        # @param [String] name
        #   Required. The resource name of the Assessment, in the format "projects/`
        #   project`/assessments/`assessment`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest] google_cloud_recaptchaenterprise_v1_annotate_assessment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def annotate_project_assessment(name, google_cloud_recaptchaenterprise_v1_annotate_assessment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:annotate', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_annotate_assessment_request_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Assessment of the likelihood an event is legitimate.
        # @param [String] parent
        #   Required. The name of the project in which the assessment will be created, in
        #   the format "projects/`project`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment] google_cloud_recaptchaenterprise_v1_assessment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_assessment(parent, google_cloud_recaptchaenterprise_v1_assessment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assessments', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_assessment_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Assessment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA
        # Enterprise actions can be executed. A project may have a maximum of 1000
        # policies.
        # @param [String] parent
        #   Required. The name of the project this policy will apply to, in the format "
        #   projects/`project`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy] google_cloud_recaptchaenterprise_v1_firewall_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_firewallpolicy(parent, google_cloud_recaptchaenterprise_v1_firewall_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/firewallpolicies', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_firewall_policy_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified firewall policy.
        # @param [String] name
        #   Required. The name of the policy to be deleted, in the format "projects/`
        #   project`/firewallpolicies/`firewallpolicy`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_firewallpolicy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified firewall policy.
        # @param [String] name
        #   Required. The name of the requested policy, in the format "projects/`project`/
        #   firewallpolicies/`firewallpolicy`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_firewallpolicy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all firewall policies that belong to a project.
        # @param [String] parent
        #   Required. The name of the project to list the policies for, in the format "
        #   projects/`project`".
        # @param [Fixnum] page_size
        #   Optional. The maximum number of policies to return. Default is 10. Max limit
        #   is 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous.
        #   ListFirewallPoliciesRequest, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_firewallpolicies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/firewallpolicies', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified firewall policy.
        # @param [String] name
        #   The resource name for the FirewallPolicy in the format "projects/`project`/
        #   firewallpolicies/`firewallpolicy`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy] google_cloud_recaptchaenterprise_v1_firewall_policy_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields of the policy get updated. If the
        #   mask is not present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_firewallpolicy(name, google_cloud_recaptchaenterprise_v1_firewall_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_firewall_policy_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new reCAPTCHA Enterprise key.
        # @param [String] parent
        #   Required. The name of the project in which the key will be created, in the
        #   format "projects/`project`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] google_cloud_recaptchaenterprise_v1_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_key(parent, google_cloud_recaptchaenterprise_v1_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keys', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_key_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified key.
        # @param [String] name
        #   Required. The name of the key to be deleted, in the format "projects/`project`/
        #   keys/`key`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified key.
        # @param [String] name
        #   Required. The name of the requested key, in the format "projects/`project`/
        #   keys/`key`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get some aggregated metrics for a Key. This data can be used to build
        # dashboards.
        # @param [String] name
        #   Required. The name of the requested metrics, in the format "projects/`project`/
        #   keys/`key`/metrics".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Metrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Metrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_key_metrics(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Metrics::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Metrics
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of all keys that belong to a project.
        # @param [String] parent
        #   Required. The name of the project that contains the keys that will be listed,
        #   in the format "projects/`project`".
        # @param [Fixnum] page_size
        #   Optional. The maximum number of keys to return. Default is 10. Max limit is
        #   1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous. ListKeysRequest,
        #   if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_keys(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/keys', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListKeysResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListKeysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise. Once a key is
        # migrated, it can be used from either product. SiteVerify requests are billed
        # as CreateAssessment calls. You must be authenticated as one of the current
        # owners of the reCAPTCHA Site Key, and your user must have the reCAPTCHA
        # Enterprise Admin IAM role in the destination project.
        # @param [String] name
        #   Required. The name of the key to be migrated, in the format "projects/`project`
        #   /keys/`key`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest] google_cloud_recaptchaenterprise_v1_migrate_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def migrate_project_key(name, google_cloud_recaptchaenterprise_v1_migrate_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:migrate', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_migrate_key_request_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified key.
        # @param [String] name
        #   The resource name for the Key in the format "projects/`project`/keys/`key`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] google_cloud_recaptchaenterprise_v1_key_object
        # @param [String] update_mask
        #   Optional. The mask to control which fields of the key get updated. If the mask
        #   is not present, all fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_key(name, google_cloud_recaptchaenterprise_v1_key_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_key_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the secret key related to the specified public key. You must use the
        # legacy secret key only in a 3rd party integration with legacy reCAPTCHA.
        # @param [String] key
        #   Required. The public key name linked to the requested secret key in the format
        #   "projects/`project`/keys/`key`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_key_legacy_secret_key(key, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+key}:retrieveLegacySecretKey', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
          command.params['key'] = key unless key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search group memberships related to a given account.
        # @param [String] project
        #   Required. The name of the project to search related account group memberships
        #   from. Specify the project name in the following format: "projects/`project`".
        # @param [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest] google_cloud_recaptchaenterprise_v1_search_related_account_group_memberships_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_relatedaccountgroupmemberships(project, google_cloud_recaptchaenterprise_v1_search_related_account_group_memberships_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+project}/relatedaccountgroupmemberships:search', options)
          command.request_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest::Representation
          command.request_object = google_cloud_recaptchaenterprise_v1_search_related_account_group_memberships_request_object
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List groups of related accounts.
        # @param [String] parent
        #   Required. The name of the project to list related account groups from, in the
        #   format "projects/`project`".
        # @param [Fixnum] page_size
        #   Optional. The maximum number of groups to return. The service might return
        #   fewer than this value. If unspecified, at most 50 groups are returned. The
        #   maximum value is 1000; values above 1000 are coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListRelatedAccountGroups`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListRelatedAccountGroups` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_relatedaccountgroups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/relatedaccountgroups', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get memberships in a group of related accounts.
        # @param [String] parent
        #   Required. The resource name for the related account group in the format `
        #   projects/`project`/relatedaccountgroups/`relatedaccountgroup``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to return. The service might return
        #   fewer than this value. If unspecified, at most 50 accounts are returned. The
        #   maximum value is 1000; values above 1000 are coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   ListRelatedAccountGroupMemberships` call. When paginating, all other
        #   parameters provided to `ListRelatedAccountGroupMemberships` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_relatedaccountgroup_memberships(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/memberships', options)
          command.response_representation = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse::Representation
          command.response_class = Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
